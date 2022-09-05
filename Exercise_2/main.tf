provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
  token      = var.token
}

data "archive_file" "lambda_zip" {
  type        = "zip"
  source_file = "greet_lambda.py"
  output_path = "greet_lambda.zip"
}

resource "aws_cloudwatch_log_group" "lambda_log_group" {
  name              = "/udacity/project2/${var.lambda}"
  retention_in_days = 7
}

resource "aws_iam_role_policy_attachment" "lambda_logs_policy" {
  role       = var.lambda_role_name
  policy_arn = var.lambda_policy_arn
}


resource "aws_lambda_function" "greet_lambda" {
  function_name    = var.lambda
  filename         = data.archive_file.lambda_zip.output_path
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256
  handler          = "greet_lambda.lambda_handler"
  runtime          = "python3.8"
  role             = var.lambda_role_arn

  environment {
    variables = {
      greeting = "Hello World!"
    }
  }

  depends_on = [aws_iam_role_policy_attachment.lambda_logs_policy, aws_cloudwatch_log_group.lambda_log_group]
}