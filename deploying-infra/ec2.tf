variable "access_key" {
  sensitive = true
}

variable "secret_key" {
  sensitive = true
}

provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "FirstInstancefromTerraform" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
}
