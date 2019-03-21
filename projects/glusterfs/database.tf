# Lab Database Server

# Define database server inside the public subnet
resource "aws_instance" "database" {
   ami  = "${var.AMI_ID}"
   instance_type = "${var.INSTANCE_TYPE}"
   availability_zone = "${var.AWS_AVAILABILITY_ZONE}"
   key_name = "Oracle-key"
   subnet_id = "${aws_subnet.two_tier_private-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.two_tier_private-sg.id}"]
   associate_public_ip_address = false 
   source_dest_check = false
   user_data = "${file("userdata.sh")}"

  tags {
    Name = "database"
  }
}
