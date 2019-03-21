#!/usr/bin/env bash
# gets the public ips, and privite ips + hostname of instances in the default region 

# Public ip addresses only
  aws ec2 describe-instances   --query "Reservations[*].Instances[*].PublicIpAddress"   --output=text


# Private ip addresses and names
  aws ec2 describe-instances --query 'Reservations[].Instances[].[PrivateIpAddress,Tags[?Key==`Name`].Value[]]' --output text | sed '$!N;s/\n/ /'

