provider "aws" {
  region = "us-east-1"
  access_key = "AKIASIOXR6J43LTNHGZH"
  secret_key = "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"
}

variable "istest" {}

resource "aws_instance" "dev" {
  ami = "ami-0be2609ba883822ec"
  instance_type = "t2.micro"
  count = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami = "ami-0be2609ba883822ec"
  instance_type = "t2.medium"
  count = var.istest == false ? 1 : 0
}
