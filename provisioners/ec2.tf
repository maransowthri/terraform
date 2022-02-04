resource "aws_instance" "web" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
  key_name      = "terraform"

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ec2-user"
      private_key = file("./terraform.pem")
    }
  }

  provisioner "local-exec" {
    command = "echo Private IP: ${self.private_ip} >> data.txt"
  }
}
