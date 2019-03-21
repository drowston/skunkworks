# Lab Internet Gateway

resource "aws_internet_gateway" "one-gw" {
  vpc_id = "${aws_vpc.one-vpc.id}"

  tags = {
    Name = "one-gw"
  }
}

