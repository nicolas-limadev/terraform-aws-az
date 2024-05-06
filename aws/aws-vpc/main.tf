terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }

  backend "s3" {
    bucket = "nicklima-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"

  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Owner      = "nicklima"
      managed_by = "Terraform"
    }
  }
}
