variable "loadbalancers" {
  type    = list(any)
  default = ["dev-lb", "stage-lb", "prod-lb"]
}

resource "aws_iam_user" "lb" {
  #   name  = "loadbalancer${count.index}"
  name  = var.loadbalancers[count.index]
  count = 3
}
