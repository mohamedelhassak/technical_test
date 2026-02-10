terraform {
  backend "s3" {
    bucket = "prod-terraform-state-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
