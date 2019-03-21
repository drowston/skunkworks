# Lab Route Table

# Create public route
resource "aws_route_table" "lab_public-rt" {
  vpc_id = "${aws_vpc.lab-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.lab-gw.id}"
  }

  tags {
    Name = "lab_public-rt"
  }
}

# Assign the route table to the public Subnet
resource "aws_route_table_association" "lab_public-rt_assoc" {
  subnet_id = "${aws_subnet.lab_public-subnet.id}"
  route_table_id = "${aws_route_table.lab_public-rt.id}"
}


# Assign route from private subnet to NAT Gateway
resource "aws_route_table" "lab_private_subnet_to_nat-rt" {
  vpc_id = "${aws_vpc.lab-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.lab-nat_gw.id}"
  }

  tags {
    Name = "lab_private_subnet_to_nat-rt"
  }
}
