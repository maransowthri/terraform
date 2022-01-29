resource "aws_iam_user" "sample_iam_user" {
  name  = "my-user.${count.index}"
  count = 3
  path  = "/system/"
}

output "arns" {
  value = aws_iam_user.sample_iam_user[*].arn
}
