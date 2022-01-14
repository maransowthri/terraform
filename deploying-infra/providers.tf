# Below are officially supported by Terraform
provider "aws" {}
provider "azurerm" {}

# DigitalOcean is a verified provider, but not officially supported by HashiCorp. Hence we must define required_providers
terraform {
  required_providers{
    digitalocean = {
      source: "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {}