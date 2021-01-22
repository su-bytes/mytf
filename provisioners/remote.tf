resource "aws_instance" "myec2" {
  ami           = "ami-0be2609ba883822ec"
  instance_type = "t2.micro"
  key_name      = "aa"

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("./aa.pem")
      host        = self.public_ip
    }
  }
}
