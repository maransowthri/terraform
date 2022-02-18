resource "aws_instance" "base_ec2" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = var.instance_type
  key_name      = "terraform"
}
