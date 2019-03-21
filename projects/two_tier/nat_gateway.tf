# Lab Nat Gateway

resource "aws_eip" "two_tier_nat-eip" {
  #aws_nat_gateway = "two_tier-nat_gw"
  vpc = true
}

resource "aws_nat_gateway" "two_tier-nat_gw" {
  allocation_id = "${aws_eip.two_tier_nat-eip.id}"
  subnet_id     = "${aws_subnet.two_tier_public-subnet.id}"
  depends_on = ["aws_internet_gateway.two_tier-gw"]
  tags = {
    Name = "two_tier-nat_gw"
  }
}






