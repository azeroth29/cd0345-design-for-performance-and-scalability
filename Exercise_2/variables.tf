# TODO: Define the variable for aws_region
variable "access_key" {
  default = "ASIASC3MIA7ET4EISAMY"
}
variable "secret_key" {
  default = "3N+WlvXyBd2T/C1Gmxyj1aQThC4ye7DGrEoIytFl"
}

variable "token" {
  default = "FwoGZXIvYXdzEGIaDAthEr1LDo49bc/1PCLVAQ/ongy/RqBuNYKEfs+YeiPcCO9kVa+5riJg07osYsXNvpRbn+L8KtCZcgcBUNA8FZNZfwtImnAJuSCdlhiV1Zy8mxxllekxSGJDebewRgtna4FwAYR+qW2NJhDiosHQrU9qCItXxp/yduw1XDYIZOt3o4IjCb7+6JWupfjG3hiHFwqKpTaYoJEMjIsLOA8yarEIZ4IfmVE50X1IdtN7MGcEK3xQEUztfLgMwzw+RPI/R+GJe73XhGkLQnqbeVWNdFFSv1lcJwp2/IirRwzSoco8+V2RPCjaxdiYBjItVIBdfzwMkvOUR1xmK0ynWl/rDM4UgtfA2IekXTPq69s0t00Okn8ENIl7fXir"
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
