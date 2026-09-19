variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  sensitive   = true
}

#VPC Creation
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "dev_public_subnet_1_name" {
  description = "Name of Dev Public Subnet 1"
  type        = string
}

variable "dev_public_subnet_1_cidr" {
  description = "CIDR block of Dev Public Subnet 1"
  type        = string
}

variable "dev_public_subnet_1_az" {
  description = "Availability Zone of Dev Public Subnet 1"
  type        = string
}

variable "dev_public_subnet_2_name" {
  description = "Name of Dev Public Subnet 2"
  type        = string
}

variable "dev_public_subnet_2_cidr" {
  description = "CIDR block of Dev Public Subnet 2"
  type        = string
}

variable "dev_public_subnet_2_az" {
  description = "Availability Zone of Dev Public Subnet 2"
  type        = string
}

variable "dev_private_subnet_1_name" {
  description = "Name of Dev Private Subnet 1"
  type        = string
}

variable "dev_private_subnet_1_cidr" {
  description = "CIDR block of Dev Private Subnet 1"
  type        = string
}

variable "dev_private_subnet_1_az" {
  description = "Availability Zone of Dev Private Subnet 1"
  type        = string
}

variable "dev_private_subnet_2_name" {
  description = "Name of Dev Private Subnet 2"
  type        = string
}

variable "dev_private_subnet_2_cidr" {
  description = "CIDR block of Dev Private Subnet 2"
  type        = string
}

variable "dev_private_subnet_2_az" {
  description = "Availability Zone of Dev Private Subnet 2"
  type        = string
}
variable "dev_igw_name" {
  description = "Name of Dev Internet Gateway"
  type        = string
}
variable "dev_public_rt_name" {
  description = "Name of Dev Public Route Table"
  type        = string
}

variable "dev_nat_eip_1_name" {
  description = "Name of Dev NAT Gateway EIP 1"
  type        = string
}

variable "dev_nat_eip_2_name" {
  description = "Name of Dev NAT Gateway EIP 2"
  type        = string
}

variable "dev_nat_1_name" {
  description = "Name of Dev NAT Gateway 1"
  type        = string
}

variable "dev_nat_2_name" {
  description = "Name of Dev NAT Gateway 2"
  type        = string
}

variable "dev_private_rt_1_name" {
  description = "Name of Dev Private Route Table 1"
  type        = string
}

variable "dev_private_rt_2_name" {
  description = "Name of Dev Private Route Table 2"
  type        = string
}
