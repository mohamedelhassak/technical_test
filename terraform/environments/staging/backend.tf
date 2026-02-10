terraform {
  backend "s3" {
    bucket = "staging-terraform-state-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
