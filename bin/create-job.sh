
target="./output/wifi_environment_auto_selector.plist"

echo '<?xml version="1.0" encoding="UTF-8"?>' > $target
echo '<!DOCTYPE plist PUBLIC "-//Apple Computer//DTD PLIST 1.0//EN"' >> $target
echo '"http://www.apple.com/DTDs/PropertyList-1.0.dtd">' >> $target
echo '<plist version="1.0">' >> $target
echo '<dict>' >> $target
echo '  <key>Label</key>' >> $target
echo '  <string>wifi_environment_auto_selector</string>' >> $target
echo '  <key>ProgramArguments</key>' >> $target
echo '  <array>' >> $target
echo '    <string>/bin/bash</string>' >> $target
echo "    <string>$(PWD)/bin/auto-switch.sh</string>" >> $target
echo '  </array>' >> $target
echo '  <key>RunAtLoad</key>' >> $target
echo '  <true/>' >> $target
echo '  <key>WatchPaths</key>' >> $target
echo '  <array>' >> $target
echo '    <string>/Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist</string>' >> $target
echo '  </array>' >> $target
echo '</dict>' >> $target
echo '</plist>' >> $target

