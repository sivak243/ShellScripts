#!/bin/bash

#aws --version
#aws configure list


read -p "Please enter the AMI id for creating the instance (ex :ami-0f5ee92e2d63afc18): "  AMI_ID
read -p "Please enter the Key Value for Instance(ex :SivAWSTraining)  :" Key_Value
read -p "Please enter the region (ex : ap-south-1) :" Region

# Run the AWS EC2 run-instances command and capture the output
instance_output=$(aws ec2 run-instances --image-id "$AMI_ID" --instance-type t2.micro --key-name "$Key_Value" --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=ShellScriptAutomation}]' --region "$Region")

# Extract the instance ID from the output using jq
instance_id=$(echo "$instance_output" | jq -r '.Instances[0].InstanceId')


# Check the exit status
if [[ $? -eq 0 ]]; then
  echo "************************************************************************"
  echo "+++++++++++++++EC2 instance creation successful.++++++++++++++++++++++++"
  echo "Please have your new created instance id : $instance_id"
else
  echo "EC2 instance creation failed."
fi
