#! /bin/bash
device=$(bluetoothctl devices)
IFS=" "
read -ra arr <<< "$device" # get the ESSID by splitting the lines using spaces
device_id="${arr[1]}"
check_connection=$(bluetoothctl devices Connected)
if [ "$check_connection" = "" ]
then
	bluetoothctl connect $device_id
else
	bluetoothctl disconnect $device_id
fi
