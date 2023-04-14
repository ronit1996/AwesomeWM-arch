#! /bin/bash
device_info=$(bluetoothctl devices Connected | bluetoothctl info | grep -i "Name")
IFS=":"
read -ra arr <<< "$device_info" # get the device name by splitting using :
device_name="${arr[1]}"
if [ "$device_name" != "" ]
then
	echo $device_name
else
	echo "Not Connected"
fi

