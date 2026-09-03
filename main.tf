resource "aws_vpc" "dev_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = var.vpc_name
    Environment = var.environment
  }
}

#Dev Public Subnet
resource "aws_subnet" "dev_public_subnet_1" {
  vpc_id                  = aws_vpc.dev_vpc.id
  cidr_block              = var.dev_public_subnet_1_cidr
  availability_zone       = var.dev_public_subnet_1_az
  map_public_ip_on_launch = true

  tags = {
    Name = var.dev_public_subnet_1_name
  }
}

resource "aws_subnet" "dev_public_subnet_2" {
  vpc_id                  = aws_vpc.dev_vpc.id
  cidr_block              = var.dev_public_subnet_2_cidr
  availability_zone       = var.dev_public_subnet_2_az
  map_public_ip_on_launch = true

  tags = {
    Name = var.dev_public_subnet_2_name
  }
}

# Dev Private Subnet 
resource "aws_subnet" "dev_private_subnet_1" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.dev_private_subnet_1_cidr
  availability_zone = var.dev_private_subnet_1_az

  tags = {
    Name = var.dev_private_subnet_1_name
  }
}

resource "aws_subnet" "dev_private_subnet_2" {
  vpc_id            = aws_vpc.dev_vpc.id
  cidr_block        = var.dev_private_subnet_2_cidr
  availability_zone = var.dev_private_subnet_2_az

  tags = {
    Name = var.dev_private_subnet_2_name
  }
}
