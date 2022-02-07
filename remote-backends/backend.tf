terraform {
  backend "s3" {
    bucket         = "maransowthri"
    key            = "remote-demo.tf"
    region         = "us-east-1"
    dynamodb_table = "s3-state-lock" # Add a primary key named LockID
    # access_key = "XXX" -> will be fetched from backend.conf
    # secret_key = "XXX" -> will be fetched from backend.conf
  }
}
