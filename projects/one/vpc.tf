# Lab VPC

resource "aws_vpc" "one-vpc" {
  cidr_block       =  "${var.ONE_VPC_CIDR_BLOCK}" 
  instance_tenancy =  "default"

  tags {
    Name = "one-vpc"
  }

}
