#!bin/bash

labNetwork="nislab"
labWifi="KE-101-1"
currentNetwork=$(networksetup -getairportnetwork en0 | awk '{print $4}')

if [ "$currentNetwork" != "$labNetwork" -a \
     "$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s | grep '$labWifi')" ]; then
  scselect labNetwork
else 
  scselect Automatic
fi

