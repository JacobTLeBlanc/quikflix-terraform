provider "aws" {
  region = var.region
}

# Main VPC
module "vpc" {
  source     = "cloudposse/vpc/aws"
  version    = "0.25.0"
  namespace  = var.namespace
  stage      = var.stage
  name       = "main-vpc"
  cidr_block = "10.0.0.0/16"
}