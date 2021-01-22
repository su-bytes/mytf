provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASIOXR6J43LTNHGZH"
  secret_key = "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"
}

resource "aws_instance" "ec2" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

variable "instance_type" {
  type = map(string)
  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "t2.medium"
  }
}
