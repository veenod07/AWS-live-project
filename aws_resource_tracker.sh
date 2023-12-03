#!/bin/sh

#############
# Author: Vinod
# Date: 3rd Dec
#
# version: v1
# This script will report the aws resource usage
set -x
# lsit s3 buckets
echo "listing s3 buckets"
aws s3 ls

# list EC2 Instance
echo "lsting ec2 instance"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lamda
echo "listing lambda"
aws lambda list-functions

# list IAM users
echo "lsiting iam users"
aws iam list-users
