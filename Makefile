
job=~/Library/LaunchAgents/wifi_environment_auto_selector.plist

init:
	ln -nf $(PWD)/wifi_environment_auto_selector.plist $(job)
	launchctl load $(job)

delete:
	launchctl unload $(job)
	unlink $(job) 

