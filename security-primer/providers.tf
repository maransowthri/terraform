terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "personal"

  # assume_role {
  #   role_arn     = "your-role-name"
  #   session_name = "could-be-anything"
  # }
}

provider "aws" {
  alias   = "secondary"
  region  = "us-west-2"
  profile = "personal"
}
