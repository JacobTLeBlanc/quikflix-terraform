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

module "subnets" {
  source     = "cloudposse/dynamic-subnets/aws"
  version    = "0.39.3"
  namespace  = var.namespace
  stage      = var.stage
  name       = "main-subnet"
  vpc_id     = module.vpc.vpc_id
  igw_id     = module.vpc.igw_id
  cidr_block = "10.0.0.0/16"
}