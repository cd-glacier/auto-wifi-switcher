#!bin/bash

labNetwork="nislab"
currentNetwork=$(networksetup -getairportnetwork en0 | awk '{print $4}')

if [ "$currentNetwork" = "$labNetwork" ]; then
  scselect labNetwork
else 
  scselect Automatic
fi

