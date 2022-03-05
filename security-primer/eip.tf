resource "aws_eip" "myeip1" {
  vpc = true
}

resource "aws_eip" "myeip2" {
  provider = aws.secondary
  vpc      = true
}
