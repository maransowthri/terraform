locals {
  name = "Hello World!"
  age  = var.age
  person = {
    name = "Maran Sowthri Kalailingam"
    address = {
      street = "KK Nagar"
      relatives = [
        {
          name : "Karan"
        },
        {
          name : "Kalees"
        },
        {
          name : "Mahesh"
        },
      ]
    }
  }

  uniques = toset(["hi", "Mom", "!"])
}

variable "age" {
  type = string
}

variable "tuples" {
  default = [false, "my_vcn", "10.0.0.0/16"]
}

variable "names" {
  type    = list(string)
  default = ["kmaran", "kkaran"]
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

output "names" {
  value = var.names # returns names = tolist(["kmaran", "kkaran",])
  # value = "Name: " + var.names[0] returns errors because can't perform + for strings
  # value = "5" + "6" returns 11 because both strings will be converted to number
  # value = "Names: ${var.names}" returns error because strings can't be appended with list
}

output "person" {
  value = local.person.address.relatives[0].*
}

output "uniques" {
  value = local.uniques
}

output "tuples" {
  value = var.tuples
}