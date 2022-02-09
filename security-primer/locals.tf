locals {
  db_password = "super-secret"
}

output "db-password" {
  value     = local.db_password
  sensitive = true
}
