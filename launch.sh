#!/bin/bash

ls -a

sed -i 's/{{PASSWD}}/'"$PASSWD"'/g' MinecraftClient.ini

chmod a+x MinecraftClient-20230614-223-linux-x64

./MinecraftClient-20230614-223-linux-x64 MinecraftClient.ini
