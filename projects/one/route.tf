# One Route Table

# Create public route
resource "aws_route_table" "one_public-rt" {
  vpc_id = "${aws_vpc.one-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.one-gw.id}"
  }

  tags {
    Name = "one_public-rt"
  }
}

# Assign the route table to the public Subnet
resource "aws_route_table_association" "one_public-rt_assoc" {
  subnet_id = "${aws_subnet.one_public-subnet.id}"
  route_table_id = "${aws_route_table.one_public-rt.id}"
}

