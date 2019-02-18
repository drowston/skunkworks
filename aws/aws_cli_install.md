# AWS Cli Installation

## AWS Cli User Guide
    https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html

## To install Python and pip3 on Mac
    brew install python

## Ensure pip is installed 
    pip3 --version
    ###### Note: it should be included in the brew package

## To upgrade pip3
    pip3 install --upgrade pip

## To install Python and pip3 on Mac
    brew install python 

## Install AWS cli
    pip3 install awscli --upgrade --user

## Add to Path
    echo "PATH=${PATH}:/Users/$(whoami)/Library/Python/3.7/bin" >> ~.profile

## Configure AWS cli
    aws configure
    ```
    AWS Access Key ID [None]: ${ACCESS_KEY} 
    AWS Secret Access Key [None]: ${SECRET_KEY} 
    Default region name [None]: ${region} # us-west-2
    Default output format [None]: ${default_output} # json
    ```
## Verify
    aws ec2 describe-instances
 
    {
       "Reservations": []
    }    
