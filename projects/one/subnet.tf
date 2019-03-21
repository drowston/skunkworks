# One Subnet

resource "aws_subnet" "one_public-subnet" {
  vpc_id     = "${aws_vpc.one-vpc.id}"
  cidr_block = "${var.ONE_PUBLIC_CIDR_BLOCK}"
  availability_zone = "${var.AWS_AVAILABILITY_ZONE}"

  tags = {
    Name = "one_public-subnet"
  }
}

