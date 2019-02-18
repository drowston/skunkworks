# Terraform installation


## Install Binary
### Mac
    brew install terraform
### Others
  * Download the terraform binary file https://www.terraform.io/downloads.html

## Create Terraform User in AWS
  * https://console.aws.amazon.com/iam/home?region=us-west-1#/home
  * Click users
    * Add User
      * Enter name: terraform
      * Check: Programmic access
      * Goto Permissions
      * Add User to Group
        * AdminGroup
      * Goto Tags
        * Skip Tags for now
      * Goto Review
      * Create User
    * Click Security Credentials Tab
      * Create Access Key
      * Copy both keys for later use

## Minimal Viable Configuration

```
provider "${provider}" {
access_key = "${ACCESS_KEY}"
secret_key = "${SECRET_KEY}"
region     = "${availability_zone}"
}

resource "${resource_type}" "${resource_name}" {
ami           = "${ami_id}"
instance_type = "${instance type}"
}
```

## Variable Lookup

### provider
  * "aws" 

### Access and Secret Keys
  * See Create Terraform User in AWS above 

### availability_zone
  * "us-west-2"
  * See "https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html" for details.

### resource_type
  * "aws_instance" 

### ami_id
  * See ../aws/aws_find_ami_image_ids.md 

### instance_type
  * See https://aws.amazon.com/ec2/instance-types/

```
Model 	      vCPU* 	Mem (GB)   Storage Network Performance
t2.nano 	1 	0.5 	   Low
t2.micro 	1 	1 	   Low to Moderate
t2.small 	1 	2 	   Low to Moderate
t2.medium 	2 	4 	   Low to Moderate
t2.large 	2 	8 	   Low to Moderate
t2.xlarge 	4 	16 	   Moderate
t2.2xlarge 	8 	32 	   Moderate
```
