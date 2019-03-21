# Lab vars

variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION"  { default = "us-west-2" }
variable "AWS_AVAILABILITY_ZONE"  { default = "us-west-2a" }
variable "AMI_ID"  { default = "ami-005bdb005fb00e791" }
variable "INSTANCE_TYPE"  { default = "t2.micro" }
variable "TRINITY_VPC_CIDR_BLOCK" { default     = "200.0.0.0/24" }
variable "TRINITY_PUBLIC_CIDR_BLOCK" { default  = "200.0.0.0/28" }


