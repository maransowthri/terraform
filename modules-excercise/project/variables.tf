variable "access_key" {
  type      = string
  sensitive = true
}

variable "secret_key" {
  type      = string
  sensitive = true
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
