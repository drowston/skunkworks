# One Subnet

resource "aws_subnet" "trinity_public-subnet" {
  vpc_id     = "${aws_vpc.trinity-vpc.id}"
  cidr_block = "${var.TRINITY_PUBLIC_CIDR_BLOCK}"
  availability_zone = "${var.AWS_AVAILABILITY_ZONE}"

  tags = {
    Name = "trinity_public-subnet"
  }
}

