## Auto generated terraform.tf ##

terraform {
  required_version = ">=1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=4.45.0"
    }
  }

  backend "s3" {
    bucket         = "tf-backend-444455556666-ap-southeast-2"
    dynamodb_table = "tf-backend-444455556666"
    encrypt        = "true"
    key            = "global/route53/terraform.tfstate"
    region         = "ap-southeast-2"
  }
}

provider "aws" {
  allowed_account_ids = ["444455556666"]
  region              = "ap-southeast-2"

  default_tags {
    tags = {
      managed_by = "Terraform"
      git_source = "your-org/repository_name/accounts/cards-prod/global/route53"
    }
  }
}