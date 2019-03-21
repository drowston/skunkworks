# Lab Route Table

# Create public route
resource "aws_route_table" "two_tier_public-rt" {
  vpc_id = "${aws_vpc.two_tier-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.two_tier-gw.id}"
  }

  tags {
    Name = "two_tier_public-rt"
  }
}

# Assign the route table to the public Subnet
resource "aws_route_table_association" "two_tier_public-rt_assoc" {
  subnet_id = "${aws_subnet.two_tier_public-subnet.id}"
  route_table_id = "${aws_route_table.two_tier_public-rt.id}"
}


# Assign route from private subnet to NAT Gateway
resource "aws_route_table" "two_tier_private_subnet_to_nat-rt" {
  vpc_id = "${aws_vpc.two_tier-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.two_tier-nat_gw.id}"
  }

  tags {
    Name = "two_tier_private_subnet_to_nat-rt"
  }
}
