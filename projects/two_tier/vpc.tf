# Lab VPC

resource "aws_vpc" "two_tier-vpc" {
  cidr_block       =  "${var.LAB_VPC_CIDR_BLOCK}" 
  instance_tenancy =  "default"

  tags {
    Name = "two_tier-vpc"
  }

}
