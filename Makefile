
job=~/Library/LaunchAgents/wifi_environment_auto_selector.plist

init: clean output create-job
	ln -nf $(PWD)/output/wifi_environment_auto_selector.plist $(job)
	chmod +x ./bin/auto-switch.sh
	launchctl load $(job)

output:
	mkdir output

clean:
	rm -rf output

create-job:
	sh ./bin/create-job.sh

delete:
	launchctl unload $(job)
	unlink $(job) 

lint:
	plutil -lint $(PWD)/output/wifi_environment_auto_selector.plist
