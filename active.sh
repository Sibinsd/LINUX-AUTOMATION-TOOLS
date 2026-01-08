#!/bin/bash
read -p "Enter app name:" app
if [ command -v "$app" &>/dev/null ];
then 
	echo "already installed"
else
	sudo dnf install $app
fi
echo "----------------------------------------------------------------------"
echo "Active connections"
dev=$(nmcli -t -f DEVICE,STATE,TYPE device | grep ':connected' | cut -d: -f1)
echo "Active connections $dev"
nmcli connection down $dev
$app &
echo "-----------------------------------------------------------------------"
echo "turning on network connection "
sleep 5
nmcli connection up $dev

