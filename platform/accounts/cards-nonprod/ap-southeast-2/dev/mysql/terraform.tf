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
    bucket         = "tf-backend-111122223333-ap-southeast-2"
    dynamodb_table = "tf-backend-111122223333"
    encrypt        = "true"
    key            = "ap-southeast-2/dev/mysql"
    region         = "ap-southeast-2"
  }
}

provider "aws" {
  allowed_account_ids = ["111122223333"]
  region              = "ap-southeast-2"

  default_tags {
    tags = {
      managed_by = "Terraform"
      git_source = "your-org/repository_name/accounts/cards-nonprod/ap-southeast-2/dev/mysql"
    }
  }
}
