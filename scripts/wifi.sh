#! /bin/bash
wifi_line=$(iwconfig wlan0 | grep -i "ESSID")
IFS=" "
read -ra arr <<< "$wifi_line" # get the ESSID by splitting the lines using spaces
essid="${arr[3]}"
IFS=":"
read -ra arr2 <<< "$essid" # get the wifi name by splitting the ESSID using :
wifi_name="${arr2[1]:1:-1}" # get the second item in the array and truncate the quotation marks
echo $wifi_name

