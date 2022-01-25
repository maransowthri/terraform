locals {
  common_tags = {
    "team"     = "DEPLOY"
    "platform" = "DSS"
    "IsProd"   = var.is_prod
  }
}

resource "aws_instance" "sampleEC2" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
  tags          = local.common_tags
}
