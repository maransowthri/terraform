resource "aws_instance" "app" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

variable "instance_type" {
  type = map(string)

  default = {
    "default" = "t2.nano"
    "dev"     = "t2.micro"
    "prod"    = "t2.large"
  }
}
