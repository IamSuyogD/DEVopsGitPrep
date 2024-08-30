#!/bin/bash

#Script to check the resource usage in AWS

##########################################
#Author: Suyog Dande
#Date: 30/08/2024
#Version: 0.0.1

#Services EC2, S3, Lambda, IAM

#AWS S3 Buckets
echo"S3 Buckets"
aws s3 ls >> resourceusage

#AWS EC2 Instances
echo"EC2 Instances"
asw ec2 describe-instances|jq.'.Reservations[].Instances[].InstanceID'

#AWS Lambda Function
echo"Lambda Functions"
aws lambda list-functions >> resourceusage

#AWS IAM Users
echo"IAM Users"
aws iam list-users >> resourceusage

