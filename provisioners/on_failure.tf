resource "aws_security_group" "allow_ssh" {
  name = "allow_ssh"

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allowing SSH Permission"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }
}

resource "aws_instance" "ec2-for-on-failure-check" {
  ami                    = "ami-08e4e35cccc6189f4"
  instance_type          = "t2.micro"
  key_name               = "terraform"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  provisioner "remote-exec" {
    inline = [
      "sudo yum install -y nano"
    ]
    on_failure = continue

    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("./terraform.pem")
    }
  }
}
