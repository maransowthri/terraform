locals {
  name = "Hello World!"
}

variable "age" {
  default = 10
}

output "name" {
  value = local.name
}

output "age" {
  value = var.age
}
