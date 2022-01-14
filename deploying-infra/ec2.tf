terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "XXXX"
  secret_key = "XXX"
}

resource "aws_instance" "FirstInstancefromTerraform" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
}
