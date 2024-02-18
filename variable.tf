################################################
# Common Variables
################################################
variable "aws_region" {
  type    = string
  default = "eu-west-1"
}

variable "environment" {
  description = "The environment for deployment. dev/stg/prd"
  type        = string
}

variable "account_number" {
  description = "AWS account number"
  type        = string
}

variable "tags" {
  type = map(string)
}
