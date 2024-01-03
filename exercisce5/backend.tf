terraform {
  backend "s3" {
    bucket = "terraform-state-dove125"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}