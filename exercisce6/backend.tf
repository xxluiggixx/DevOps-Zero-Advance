terraform {
  backend "s3" {
    bucket = "terraform-state-dove125"
    key    = "terraform/backend_exercisce6"
    region = "us-east-1"
  }
}