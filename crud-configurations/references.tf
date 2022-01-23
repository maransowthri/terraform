resource "aws_instance" "myec2" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = var.instance_type[var.az]
  tags = {
    "name" = var.names[0]
  }
}

resource "aws_eip" "lb" {
  vpc = true
}

resource "aws_eip_association" "eip_asso" {
  instance_id   = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id
}

resource "aws_security_group" "allow_tls" {
  name = "allow_tls"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
  }
}
