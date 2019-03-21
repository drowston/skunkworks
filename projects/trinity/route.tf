# One Route Table

# Create public route
resource "aws_route_table" "trinity_public-rt" {
  vpc_id = "${aws_vpc.trinity-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.trinity-gw.id}"
  }

  tags {
    Name = "trinity_public-rt"
  }
}

# Assign the route table to the public Subnet
resource "aws_route_table_association" "trinity_public-rt_assoc" {
  subnet_id = "${aws_subnet.trinity_public-subnet.id}"
  route_table_id = "${aws_route_table.trinity_public-rt.id}"
}

