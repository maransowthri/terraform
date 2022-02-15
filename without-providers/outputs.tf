locals {
  name = "Hello World!"
  age  = var.age
}

variable "age" {
  type = string
  default = 10 // will be accepted though it is a number
}

output "name" {
  value = local.name
}

output "age" {
  value = var.age
}

output "age_from_local" {
  value = local.age
}
