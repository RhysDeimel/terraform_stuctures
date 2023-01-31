## Auto generated terraform.tf ##

terraform {
  required_version = ">=1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=4.45.0"
    }
  }

  backend "s3" {}
}

provider "aws" {
  allowed_account_ids = [var.allowed_account_ids]
  region              = var.region

  default_tags {
    tags = {
      managed_by = "Terraform"
      git_source = "your-org/repository_name/terraform"
    }
  }
}
