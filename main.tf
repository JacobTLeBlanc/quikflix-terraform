provider "aws" {
  region = var.region
}

# Main VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}