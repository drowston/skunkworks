# Lab Subnets

resource "aws_subnet" "lab_public-subnet" {
  vpc_id     = "${aws_vpc.lab-vpc.id}"
  cidr_block = "${var.LAB_PUBLIC_CIDR_BLOCK}"
  availability_zone = "${var.AWS_AVAILABILITY_ZONE}"

  tags = {
    Name = "lab_public-subnet"
  }
}

resource "aws_subnet" "lab_private-subnet" {
  vpc_id     = "${aws_vpc.lab-vpc.id}"
  cidr_block = "${var.LAB_PRIVATE_CIDR_BLOCK}"
  availability_zone = "${var.AWS_AVAILABILITY_ZONE}"

  tags = {
    Name = "lab_private-subnet"
  }
}
