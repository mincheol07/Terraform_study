provider "aws" {
  region = "ap-northeast-2"
}


terraform {
  backend "s3" {
    bucket = "4809-terraform-state"
    key    = "terraform.tfstate"
    region = "ap-northeast-2"
  }
}