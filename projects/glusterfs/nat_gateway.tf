# Lab Nat Gateway

resource "aws_eip" "lab_nat-eip" {
  #aws_nat_gateway = "lab-nat_gw"
  vpc = true
}

resource "aws_nat_gateway" "lab-nat_gw" {
  allocation_id = "${aws_eip.lab_nat-eip.id}"
  subnet_id     = "${aws_subnet.lab_public-subnet.id}"
  depends_on = ["aws_internet_gateway.lab-gw"]
  tags = {
    Name = "lab-nat_gw"
  }
}






