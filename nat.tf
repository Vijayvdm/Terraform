# Dev NAT Gateway EIP 1
resource "aws_eip" "dev_nat_eip_1" {
  domain = "vpc"

  tags = {
    Name = var.dev_nat_eip_1_name
  }
}

# Dev NAT Gateway EIP 2
resource "aws_eip" "dev_nat_eip_2" {
  domain = "vpc"

  tags = {
    Name = var.dev_nat_eip_2_name
  }
}

# Dev NAT Gateway 1
resource "aws_nat_gateway" "dev_nat_1" {
  allocation_id = aws_eip.dev_nat_eip_1.id
  subnet_id     = aws_subnet.dev_public_subnet_1.id

  tags = {
    Name = var.dev_nat_1_name
  }

  depends_on = [
    aws_internet_gateway.dev_igw
  ]
}

# Dev NAT Gateway 2
resource "aws_nat_gateway" "dev_nat_2" {
  allocation_id = aws_eip.dev_nat_eip_2.id
  subnet_id     = aws_subnet.dev_public_subnet_2.id

  tags = {
    Name = var.dev_nat_2_name
  }

  depends_on = [
    aws_internet_gateway.dev_igw
  ]
}

# Dev Private Route Table 1
resource "aws_route_table" "dev_private_rt_1" {
  vpc_id = aws_vpc.dev_vpc.id

  tags = {
    Name = var.dev_private_rt_1_name
  }
}

# Dev Private Route Table 2
resource "aws_route_table" "dev_private_rt_2" {
  vpc_id = aws_vpc.dev_vpc.id

  tags = {
    Name = var.dev_private_rt_2_name
  }
}

# Private Route 1  NAT Gateway 1
resource "aws_route" "dev_private_route_1" {
  route_table_id         = aws_route_table.dev_private_rt_1.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.dev_nat_1.id
}

# Private Route 2  NAT Gateway 2
resource "aws_route" "dev_private_route_2" {
  route_table_id         = aws_route_table.dev_private_rt_2.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.dev_nat_2.id
}

# Private Subnet 1 Association
resource "aws_route_table_association" "dev_private_subnet_1_association" {
  subnet_id      = aws_subnet.dev_private_subnet_1.id
  route_table_id = aws_route_table.dev_private_rt_1.id
}

# Private Subnet 2 Association
resource "aws_route_table_association" "dev_private_subnet_2_association" {
  subnet_id      = aws_subnet.dev_private_subnet_2.id
  route_table_id = aws_route_table.dev_private_rt_2.id
}
