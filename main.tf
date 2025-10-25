provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "sctp-ce11-tfstate"
    key    = "ryan-coaching16-tfstate.tfstate"
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "ryan-coaching16-test-bucket"
}