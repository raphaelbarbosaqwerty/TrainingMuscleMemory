#!/bin/bash
#sudo pacman -S nodejs
#sudo npm install -g coinmon

while true 
do 
clear
coinmon -c USD
sleep 60
done
