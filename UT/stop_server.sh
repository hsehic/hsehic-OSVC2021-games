#!/bin/bash

# change to the script's directory
cd $(dirname $0)

# kill, using the pid file
kill $(cat urt.pid)

# tidy up
screen -wipe > /dev/null
rm urt.pid

# all done
