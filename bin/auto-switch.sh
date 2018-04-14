#!bin/bash

if [ -z "$LAB_NETWORK" ]; then
  LAB_NETWORK="nislab"
fi

if [ -z "$LAB_SSID" ]; then
  LAB_SSID="KE-101-1"
fi

/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s | grep "$LAB_SSID"
if [ "$?" == 0 ]; then
  scselect $LAB_NETWORK
else 
  scselect Automatic
fi


