locals {
  name = "Hello World!"
  age  = var.age
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

output "age_from_local" {
  value = local.age
}
