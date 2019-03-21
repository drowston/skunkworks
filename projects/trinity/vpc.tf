# Lab VPC

resource "aws_vpc" "trinity-vpc" {
  cidr_block       =  "${var.TRINITY_VPC_CIDR_BLOCK}" 
  instance_tenancy =  "default"

  tags {
    Name = "trinity-vpc"
  }

}
