#  One server

# Define webserver inside the public subnet
resource "aws_instance" "one" {
   ami  = "${var.AMI_ID}"
   instance_type = "${var.INSTANCE_TYPE}"
   availability_zone = "${var.AWS_AVAILABILITY_ZONE}"
   key_name = "Oracle-key"
   subnet_id = "${aws_subnet.one_public-subnet.id}"
   vpc_security_group_ids = ["${aws_security_group.one_public-sg.id}"]
   associate_public_ip_address = true
   source_dest_check = false
   user_data = "${file("userdata.sh")}"

   tags {
     Name = "one"
  }
}

