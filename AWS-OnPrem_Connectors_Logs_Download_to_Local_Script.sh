#!/bin/bash

bastionHost="34.222.46.248"

echo "Enter Appliance Host(IP): "
read applianceHost

echo "Enter Path of file in Appliance which you want to copy (Note: Please Enter Path after /home/ubuntu/ ): "
read path_to_copy

#echo $bastionHost
#echo $applianceHost
#echo $path_to_copy

#echo "scp -oStrictHostKeyChecking=no -i ~/Downloads/aws.pem -oProxyCommand="ssh -oStrictHostKeyChecking=no -i ~/Downloads/aws.pem -W %h:%p ec2-user@$bastionHost" ubuntu@$applianceHost:/home/ubuntu/$path_to_copy ."
scp -oStrictHostKeyChecking=no -i ~/Downloads/aws.pem -oProxyCommand="ssh -oStrictHostKeyChecking=no -i ~/Downloads/aws.pem  -W %h:%p ec2-user@$bastionHost" ubuntu@$applianceHost:/home/ubuntu/$path_to_copy .