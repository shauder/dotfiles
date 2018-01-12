#!/bin/bash

# Write PID to that file so other processes can send signals to me
echo $$ > /tmp/volume_pid

while :         # This is the same as "while true".
do
	# I do this when I wake up
	~/Scripts/volume.sh
	# Then I go back to sleep
    sleep 1d 
	#echo "woke up!"
done
