variable "customer" {}

variable "role" {}

variable "env" {}

variable "bucket" {}

variable "aws_profile" {}

variable "aws_role_arn" {}

variable "aws_region" {
  default = "us-west-2"
}

variable "acl" {
  default = "private"
}
