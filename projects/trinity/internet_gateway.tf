# Lab Internet Gateway

resource "aws_internet_gateway" "trinity-gw" {
  vpc_id = "${aws_vpc.trinity-vpc.id}"

  tags = {
    Name = "trinity-gw"
  }
}

