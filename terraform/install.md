# Terraform installation


## Install Binary
### Mac
    brew install terraform
### Others
  * Download the terraform binary file https://www.terraform.io/downloads.html

## Minimal Viable Configuration

```
provider "${provider}" {
access_key = "${ACCESS_KEY}"
secret_key = "${SECRET_KEY}"
region     = "${availability_zone}"
}

resource "${resource_label}" "${resource_name}" {
ami           = "${ami_id}"
instance_type = "${instance type}"
}
```
