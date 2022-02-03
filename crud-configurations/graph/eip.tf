resource "aws_eip" "eip_for_graph" {
  instance = aws_instance.ec2_for_graph
  vpc = true
}