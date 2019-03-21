# Lab Security Groups 
resource "aws_security_group" "two_tier_public-sg" {
  name = "two_tier_public-sg"
  description = "Allow incoming SSH & HTTP/s access"

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  vpc_id="${aws_vpc.two_tier-vpc.id}"

  tags {
    Name = "ssh_http_https-sg"
  }
}

# Private Subnet Security Group
resource "aws_security_group" "two_tier_private-sg"{
  name = "two_tier_private-sg"
  description = "Allow traffic from public subnet"

  ingress {
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
    cidr_blocks = ["${var.LAB_PUBLIC_CIDR_BLOCK}"]
  }

  ingress {
    from_port = -1
    to_port = -1
    protocol = "icmp"
    cidr_blocks = ["${var.LAB_PUBLIC_CIDR_BLOCK}"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["${var.LAB_PUBLIC_CIDR_BLOCK}"]
  }

  vpc_id = "${aws_vpc.two_tier-vpc.id}"

  tags {
    Name = "two_tier_private-sg"
  }
}
