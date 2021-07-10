provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Main VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}