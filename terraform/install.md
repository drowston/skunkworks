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
  * 
