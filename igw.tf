resource "aws_internet_gateway" "dev_igw" {
  vpc_id = aws_vpc.dev_vpc.id

  tags = {
    Name = var.dev_igw_name
  }
}

#Route Table
resource "aws_route_table" "dev_public_rt" {
  vpc_id = aws_vpc.dev_vpc.id

  tags = {
    Name = var.dev_public_rt_name
  }
}

resource "aws_route" "dev_public_route" {
  route_table_id         = aws_route_table.dev_public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.dev_igw.id
}

# Public Subnet 1 Association
resource "aws_route_table_association" "dev_public_subnet_1_association" {
  subnet_id      = aws_subnet.dev_public_subnet_1.id
  route_table_id = aws_route_table.dev_public_rt.id
}
# Public Subnet 2 Association
resource "aws_route_table_association" "dev_public_subnet_2_association" {
  subnet_id      = aws_subnet.dev_public_subnet_2.id
  route_table_id = aws_route_table.dev_public_rt.id
}
