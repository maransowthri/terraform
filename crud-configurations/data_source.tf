data "aws_ami" "ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "dsEC2" {
  ami           = data.aws_ami.ami.id
  instance_type = "t2.micro"
}
