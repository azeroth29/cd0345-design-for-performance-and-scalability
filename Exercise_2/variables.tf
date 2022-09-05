# TODO: Define the variable for aws_region
variable "access_key" {
}
variable "secret_key" {
}

variable "token" {
}
variable "region" {
  default = "us-east-1"
}

variable "subnet_id" {
  default = "subnet-0921154236b295b02"
}

variable "ami" {
  default = "ami-05fa00d4c63e32376"
}

variable "lambda" {
  default = "greet_lambda"
}

variable "lambda_role_arn" {
  default = "arn:aws:iam::143571552201:role/service-role/123-role-43f2csth"
}

variable "lambda_role_name" {
  default = "123-role-43f2csth"
}

variable "lambda_policy_arn" {
  default = "arn:aws:iam::143571552201:policy/lambda_logs_policy"
}
