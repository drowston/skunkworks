# Lab Internet Gateway

resource "aws_internet_gateway" "lab-gw" {
  vpc_id = "${aws_vpc.lab-vpc.id}"

  tags = {
    Name = "lab-gw"
  }
}

