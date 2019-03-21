# Lab VPC

resource "aws_vpc" "lab-vpc" {
  cidr_block       =  "${var.LAB_VPC_CIDR_BLOCK}" 
  instance_tenancy =  "default"

  tags {
    Name = "lab-vpc"
  }

}
