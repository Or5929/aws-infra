provider "aws" {
  region = "eu-west-1"
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.60.0"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket = "oredri-s3"
    key    = "terraform/terraform.tfstate"
    region = "eu-west-1"
  }

}

