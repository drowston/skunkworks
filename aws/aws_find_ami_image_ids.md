# Finding AWS Ami Image IDs

## Ubuntu Amazon EC2 AMI Locator
    https://cloud-images.ubuntu.com/locator/ec2/
    us-west-2	bionic	18.04 LTS	arm64	hvm:ebs-ssd	20181121	ami-0221842fe3a17b6ed	hvm



## CentOS
    https://wiki.centos.org/Cloud/AWS
    aws --region us-west-2 ec2 describe-images --owners aws-marketplace --filters Name=product-code,Values=aw0evgkw8e5c1q413zgy5pjce --output table

```
----------------------------------------------------------------------------------------------------------------------------------------------------
|                                                                  DescribeImages                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------+
||                                                                     Images                                                                     ||
|+--------------------+---------------------------------------------------------------------------------------------------------------------------+|
||  Architecture      |  x86_64                                                                                                                   ||
||  CreationDate      |  2019-01-30T23:43:37.000Z                                                                                                 ||
||  Description       |  CentOS Linux 7 x86_64 HVM EBS ENA 1901_01                                                                                ||
||  EnaSupport        |  True                                                                                                                     ||
||  Hypervisor        |  xen                                                                                                                      ||
||  ImageId           |  ami-01ed306a12b7d1c96                                                                                                    ||
||  ImageLocation     |  aws-marketplace/CentOS Linux 7 x86_64 HVM EBS ENA 1901_01-b7ee8a69-ee97-4a49-9e68-afaee216db2e-ami-05713873c6794f575.4   ||
||  ImageOwnerAlias   |  aws-marketplace                                                                                                          ||
||  ImageType         |  machine                                                                                                                  ||
||  Name              |  CentOS Linux 7 x86_64 HVM EBS ENA 1901_01-b7ee8a69-ee97-4a49-9e68-afaee216db2e-ami-05713873c6794f575.4                   ||
||  OwnerId           |  679593333241                                                                                                             ||
||  Public            |  True                                                                                                                     ||
||  RootDeviceName    |  /dev/sda1                                                                                                                ||
||  RootDeviceType    |  ebs                                                                                                                      ||
||  SriovNetSupport   |  simple                                                                                                                   ||
||  State             |  available                                                                                                                ||
||  VirtualizationType|  hvm                                                                                                                      ||
|+--------------------+---------------------------------------------------------------------------------------------------------------------------+|
|||                                                              BlockDeviceMappings                                                             |||
||+-------------------------------------------------------------------------+--------------------------------------------------------------------+||
|||  DeviceName                                                             |  /dev/sda1                                                         |||
||+-------------------------------------------------------------------------+--------------------------------------------------------------------+||
||||                                                                     Ebs                                                                    ||||
|||+-----------------------------------------------------------------+--------------------------------------------------------------------------+|||
||||  DeleteOnTermination                                            |  False                                                                   ||||
||||  Encrypted                                                      |  False                                                                   ||||
||||  SnapshotId                                                     |  snap-040d21883a90fad29                                                  ||||
||||  VolumeSize                                                     |  8                                                                       ||||
||||  VolumeType                                                     |  gp2                                                                     ||||
|||+-----------------------------------------------------------------+--------------------------------------------------------------------------+|||
|||                                                                 ProductCodes                                                                 |||
||+-------------------------------------------------------+--------------------------------------------------------------------------------------+||
|||  ProductCodeId                                        |  aw0evgkw8e5c1q413zgy5pjce                                                           |||
|||  ProductCodeType                                      |  marketplace                                                                         |||
```
