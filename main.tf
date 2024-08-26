terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# Configure the AWS Provider
provider "aws" {
  region = var.region
}


// create a new VPC
resource "aws_vpc" "main_trfm" {
  cidr_block = var.vpc_cidr_block
  tags = {
    Name = "${var.main_vpc_name}"
  }
}

// create a new subnet
resource "aws_subnet" "main_trfm" {
  vpc_id     = aws_vpc.main_trfm.id
  cidr_block = var.web_subnet
  availability_zone = var.availability_zone
  tags = {
    Name = "Main Subnet"
  }
}
