locals {
  time = formatdate("DD MMM YYYY hh:mm: ZZZ", timestamp())
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami_regions" {
  type = map(string)
  default = {
    "us-east-1" = "ami-08e4e35cccc6189f4"
    "us-west-2" = "dummy"
  }
}

variable "tags" {
  type    = list(string)
  default = ["first_ec2", "second_ec2"]
}

resource "aws_key_pair" "loginkey" {
  key_name   = "login-key"
  public_key = file("./id_rsa.pub")
}

resource "aws_instance" "functions_ec2" {
  ami           = lookup(var.ami_regions, var.region, "default-dummy-ami-id")
  instance_type = "t2.micro"
  key_name      = aws_key_pair.loginkey.key_name
  count         = 2
  tags = {
    "Name" = element(var.tags, count.index)
  }
}

output "time" {
  value = local.time
}
