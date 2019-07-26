#!/bin/bash

regex='Mouse.*id=([0-9]+)'
# mouseline=$(xinput --list | egrep "$regex")
mouseline=`xinput --list | grep Mouse | head -n1`
[[ $mouseline =~ $regex ]]
mouseid="${BASH_REMATCH[1]}"

# find the prop id:
#xinput list-props 11 | grep -i nat

# propid 287 is by default:
# libinput Natural Scrolling Enabled (287):	0
# sometimes 285, sometimes 287
xinput set-prop $mouseid 285 1
