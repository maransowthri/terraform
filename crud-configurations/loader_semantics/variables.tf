variable "access_key" {
  sensitive = true
}

variable "secret_key" {
  sensitive = true
}

variable "iam_user" {
  type    = string
  default = "demouser"
}
