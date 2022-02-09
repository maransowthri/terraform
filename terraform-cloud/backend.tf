terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "landed-on-mars"
    workspaces {
      name = "terraform-cloud-demo"
    }
  }
}
