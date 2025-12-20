terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.19.0"
    }
  }

  backend "s3" {
    bucket         = "aryan-s3-buckt"  # Update your S3 bucket
    key            = "learn-tf-modules/dev/terraform.tfstate"
    region         = "ap-southeast-1"       # Update to your region
    dynamodb_table = "terraform-lock"  # CHANGE: your lock table name
    encrypt        = true
  }
}

provider "aws" {
  region  = var.region
  profile = var.aws_profile
}
