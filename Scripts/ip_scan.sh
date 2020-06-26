#!/bin/sh

if [ "$1" == ""]
then
echo "Usage : " + $0 + " <ip>" # Usage message when no IP is provided

else # If an IP is specified

for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | cut -d ":" -f 1 &
done

fi # End of if
