terraform {
  required_providers {
    aws = {
      source  = "aws"
      version = "~>5.0"
    }
  }
}
provider "aws" {
  region                      = var.aws_region
  access_key                  = var.aws_access_key
  secret_key                  = var.aws_secret_key
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  endpoints {
    ec2 = "http://localhost:4566"
    sts = "http://localhost:4566"
    s3  = "http://s3.localhost.localstack.cloud:4566"
  }
}

module "vpc" {
  source = "./modules/vpc"
}

module "eks" {
  source = "./modules/eks"
}

module "ec2" {
  source             = "./modules/ec2"
  ami_id             = "ami-12345678"
  subnet_ids         = [module.vpc.private_subnet_ids[0], module.vpc.public_subnet_ids[0]]
  security_group_ids = [module.vpc.security_group_id]
  key_name           = var.key_name

}