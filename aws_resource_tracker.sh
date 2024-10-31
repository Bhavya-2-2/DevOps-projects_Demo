#!/bin/bash

############################
# Author : BHAVYA
# Date : 28th oct 2024
#
# version : v1
#
# This script will report the aws resource usage
############################

set +x #put script iin debug mode

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 bucket
echo "print list of s3 bucket"
aws s3 ls

#list EC2 Instance
echo "print list of ec2 buckets"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
aws ec2 describe-instances

#list lambda
echo "print list of lambda functions"
aws lambda list-functions

#list IAM Users
echo "print list of iam user"
aws iam list-users


