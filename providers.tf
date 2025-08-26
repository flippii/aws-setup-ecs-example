terraform {
  backend "s3" {}
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
  default_tags {
    tags = {
      Automation = true
      Team       = "DevOps"
      User       = "Managed by Terraform"
    }
  }
}
