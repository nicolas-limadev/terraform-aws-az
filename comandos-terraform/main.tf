terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.34.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "curso-tf"
    storage_account_name = "nicklimacursotf"
    container_name       = "remote-state"
    key                  = "commands/terraform.tfstate"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "nicklima"
      managed_by = "terraform"
    }
  }
}
