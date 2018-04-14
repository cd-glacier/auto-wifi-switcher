
job=~/Library/LaunchAgents/wifi_environment_auto_selector.plist

init:
	ln -nf $(PWD)/wifi_environment_auto_selector.plist $(job)
	chmod u+x ./bin/auto-switch.sh
	launchctl load $(job)

delete:
	launchctl unload $(job)
	unlink $(job) 

lint:
	plutil -lint $(job)
