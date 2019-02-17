# AWS Cli Installation

## AWS Cli User Guide
    https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html

## Ensure pip is installed
    pip3 --version

## To upgrade pip3
    pip3 install --upgrade pip

## To install Python and pip3 on Mac
    brew install python 

## Install AWS cli
    pip3 install awscli --upgrade --user
    add path to .bashrc: echo "PATH=${PATH}:/Users/$(whoami)/Library/Python/3.7/bin" >> ~.profile

## Configure AWS cli
    aws configure
    ```
AWS Access Key ID [None]: ${ACCESS_KEY} 
AWS Secret Access Key [None]: ${SECRET_KEY} 
Default region name [None]: ${region} # us-west-2
Default output format [None]: ${default_output} # json
```
