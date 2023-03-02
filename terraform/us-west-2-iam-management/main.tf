terraform {
  required_providers {
    aws = {
        source ="hashicorp/aws"
        version = "~>3.0"
    }
  }
}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key  
  region = var.region
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}