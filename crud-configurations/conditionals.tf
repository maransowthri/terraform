variable "is_prod" {
  type    = bool
  default = false
}

resource "aws_instance" "prod_instance" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
  count         = var.is_prod ? 1 : 0
}
