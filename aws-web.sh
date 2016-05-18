#!/bin/bash

aws ec2 run-instances --image-id ami-775e4f16  --count 1 --instance-type t2.micro --key-name peacehavencorp --security-groups default --query 'Instances[0].InstanceId' --user-data file://C:/Users/mycomputer/Dropbox/http.sh
