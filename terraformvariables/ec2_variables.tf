provider "aws" {
  region = "us-east-1"
  access_key = "AKIASIOXR6J43LTNHGZH"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = var.instancetype
}
