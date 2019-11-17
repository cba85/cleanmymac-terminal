#!/bin/sh

# Clan user cache
sudo rm -rf /Library/Caches/*

# Clean system logs
sudo rm -rf /Library/Logs/*

# Remove incomplete downloads on iTunes
sudo rm -rf ~/Music/iTunes/iTunes Media/Downloads/*

# Run maintenance scripts
sudo periodic daily weekly monthly

# Flush DNS cache
sudo dscacheutil -flushcache
sudo killall -HUP mDNSResponder

# Rebuild launch services
sudo /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user
