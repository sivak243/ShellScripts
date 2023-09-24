!/bin/bash     


set -x   # Debug mode
set -e   # exist the script when there is an exception
set -o pipefail # This should be used aling with Set -e .. When using the pipeline command


#############################
# Date : 24/Sep/2023
# Developer : Siva Kumar K
# This Script is to print the status of your RAM Memory
# Incident : I12345678
# 
##############################

x=$(free -h | grep "Mem:" | awk '{print $4}' | tr -d 'Mi')

echo "free memory space is : ${x}Mib"

if [ $x -le 100 ] 
then
    echo "Less RAM Memory ${x}Mib "
else
    echo "Current RAM Free Memory is : $x "
    echo "Your are having good RAM Memory"
fi
