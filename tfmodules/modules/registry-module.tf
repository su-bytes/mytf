provider "aws" {
  region     = "us-east-1"
  access_key = "AKIASIOXR6J43LTNHGZH"
  secret_key = "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"
}

module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-0be2609ba883822ec"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-098ca220efe820ad9"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
