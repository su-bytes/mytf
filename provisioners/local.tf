resource "aws_instance" "ec2" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.ec2.private_ip} >> private_ips.txt"
  }
}
