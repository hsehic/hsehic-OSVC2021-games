#!/bin/bash

#server settings
#ip="163.172.169.5"
ip=""
port="27960"
name="urt_ctf"
mod="q3ut4"
base="/home/$username/UrbanTerror43"
home="/home/$username/UrbanTerror43"

#Remove any unwanted config files
#rm q3ut4/q3config_server.cfg

# change to the script's directory
cd $(dirname $0)

# start the server under screen
screen -AmdS $name ./Quake3-UrT.x86_64 \
+set fs_game $mod \
+set fs_basepath "$base" \
+set fs_homepath "$home" \
+set dedicated "2" \
+set com_hunkmegs "128" \
+set sv_sanitizeNames "1" \
+set net_port "$port" \
+set net_ip "$ip" \
+set standalone "1" \
+exec oscgame.cfg \
# net_ip is disabed to allow incoming connections from localhost
# if you enable net_ip option remember to add a trailing slash "\"
# to the end of the previous line.

#create pid of screen session
echo | screen -list | grep $name | cut -f1 -d'.' | sed 's/\W//g' > urt.pid

# all do
