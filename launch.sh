#!/bin/bash

ls -a

sed -i 's/{{PASSWD}}/'"$PASSWD"'/g' MinecraftClient.ini
sed -i 's/{{BOT_TOKEN}}/'"$BOT_TOKEN"'/g' MinecraftClient.ini

chmod a+x MinecraftClient-20230623-225-linux-x64

while true
do
    ./MinecraftClient-20230623-225-linux-x64 MinecraftClient.ini
done
