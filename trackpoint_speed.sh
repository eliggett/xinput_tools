#!/bin/bash

# This script sets the trackpoint speed.

# original command: 
# xinput set-float-prop 12 298 -0.5
# (default value is 0.0. Higher values make it faster, lower make it slower. )
# Also, values are -0.99 to +0.99

# the easy way to grab the ID:
stringid=`xinput --list | grep "IBM TrackPoint" | awk '{print $6}'`
# returns "id=12"
id=$(($stringid))
#echo "id is: $id"
xinput set-float-prop $id 298 -0.5
#cmdstr="xinput set-float-prop $id 298 -0.5"
#echo "The command is: $cmdstr"
