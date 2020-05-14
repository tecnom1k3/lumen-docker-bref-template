provider "aws" {
  profile    = "personal"
  region     = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "digitec-terraform"
    key    = "auth/terraform.tfstate"
    region = "us-east-1"
    profile = "personal"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
