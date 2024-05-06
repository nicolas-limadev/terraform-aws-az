terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }

  backend "s3" {
    bucket = "nicklima-remote-state"
    key    = "aws-vm-vpc/terraform.tfstate"
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

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "nicklima-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }
}