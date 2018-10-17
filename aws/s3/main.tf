provider "aws" {
  region  = "${var.aws_region}"
  assume_role {
    role_arn     = "${var.aws_role_arn}"
    session_name = "terraform"
  }
}

terraform {
  backend "s3" {}
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket}"
  region = "${var.aws_region}"
  acl    = "${var.acl}"

  tags {
    customer = "${var.customer}"
    role     = "${var.role}"
    env      = "${var.env}"
  }
}
