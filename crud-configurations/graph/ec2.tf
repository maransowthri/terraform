resource "aws_instance" "ec2_for_graph" {
  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
}
