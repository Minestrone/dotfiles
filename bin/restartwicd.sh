#!/bin/bash

echo "Restarting Wireless Configuration.."

echo "Restarting Dbus, Wicd..."
sudo rc.d restart dbus wicd

if [ -e /var/run/wicd/wicd.pid ]
then
	echo "Removing wicd.pid..."
	sudo rm /var/run/wicd/wicd.pid
fi

echo "Starting Wicd..."
sudo wicd

echo "Done"
