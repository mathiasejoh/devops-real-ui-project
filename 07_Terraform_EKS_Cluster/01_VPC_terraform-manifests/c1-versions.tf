terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"
    }
  }
# Remote Backend
  backend "s3" {
    bucket         = "devopsdemo-5erbjm"
    key            = "vpc/dev/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    use_lockfile = true
  }   
}

provider "aws" {
  region = var.aws_region
}