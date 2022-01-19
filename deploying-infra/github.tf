terraform {
  required_providers {
    github = {
      source : "integrations/github",
      version : "~> 4.0"
    }
  }
}

variable "token" {
  sensitive = true
}

provider "github" {
  token = var.token
}

resource "github_repository" "example" {
  name       = "sample"
  visibility = "private"
}
