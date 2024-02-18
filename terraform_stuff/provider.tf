terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.28.0"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "2.4.1"
    }
  }

  required_version = ">= 1.2.4"
}

provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
  }
}
