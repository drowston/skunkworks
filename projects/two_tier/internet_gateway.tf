# Lab Internet Gateway

resource "aws_internet_gateway" "two_tier-gw" {
  vpc_id = "${aws_vpc.two_tier-vpc.id}"

  tags = {
    Name = "two_tier-gw"
  }
}

