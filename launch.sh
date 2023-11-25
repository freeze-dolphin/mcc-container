#!/bin/bash

mcc_exec="MinecraftClient-20231117-76-linux-x64"

ls -a

sed -i 's/{{PASSWD}}/'"$PASSWD"'/g' MinecraftClient.ini
sed -i 's/{{BOT_TOKEN}}/'"$BOT_TOKEN"'/g' MinecraftClient.ini

chmod a+x ${mcc_exec}

while true
do
    ./${mcc_exec} MinecraftClient.ini
done
