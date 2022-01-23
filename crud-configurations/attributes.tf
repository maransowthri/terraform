terraform {
  required_providers {
    aws = {
      source : "hashicorp/aws"
      version : "3.73.0"
    }
  }
}

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

resource "aws_eip" "lb1" {
  vpc = true
}

output "eip" {
  value = aws_eip.lb.public_ip
}

resource "aws_s3_bucket" "myS3" {
  bucket = "maransowthri-mys3"
}

output "myS3" {
  value = aws_s3_bucket.myS3.bucket_domain_name
}
