variable "vpn_ip" {
  default = "10.11.124.122/32"
  type    = string
}

variable "az" {
  type    = string
  default = "us-east-1"
}

variable "names" {
  type    = list(string)
  default = ["Karan", "Kalees", "Maran", "Mahesh"]
}

variable "instance_type" {
  type = map(string)
  default = {
    us-west-1 = "t2.micro"
    us-east-1 = "t2.nano"
    us-west-2 = "t3.micro"
  }
}
