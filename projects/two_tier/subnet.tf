# Lab Subnets

resource "aws_subnet" "two_tier_public-subnet" {
  vpc_id     = "${aws_vpc.two_tier-vpc.id}"
  cidr_block = "${var.LAB_PUBLIC_CIDR_BLOCK}"
  availability_zone = "${var.AWS_AVAILABILITY_ZONE}"

  tags = {
    Name = "two_tier_public-subnet"
  }
}

resource "aws_subnet" "two_tier_private-subnet" {
  vpc_id     = "${aws_vpc.two_tier-vpc.id}"
  cidr_block = "${var.LAB_PRIVATE_CIDR_BLOCK}"
  availability_zone = "${var.AWS_AVAILABILITY_ZONE}"

  tags = {
    Name = "two_tier_private-subnet"
  }
}
