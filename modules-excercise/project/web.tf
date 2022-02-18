module "web" {
  source        = "../my_modules/ec2"
  instance_type = "t2.micro"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name          = "single-instance"
  ami           = "ami-ebd02392"
  instance_type = "t2.micro"
  subnet_id     = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
