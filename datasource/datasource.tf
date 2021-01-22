provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASIOXR6J43LTNHGZH"
  secret_key = "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"
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "instance-1" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"
}

/*
data "aws_ami" "example" {
   most_recent = true

   owners = ["self"]
   tags = {
    Name = "app-server"
    Tested = true
 }
}
*/
