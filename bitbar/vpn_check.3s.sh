#!/bin/bash

# <bitbar.title>VPN Checker</bitbar.title>
# <bitbar.version>v1.0.0</bitbar.version>
# <bitbar.author>DevNul</bitbar.author>
# <bitbar.author.github>DevNul</bitbar.author.github>
# <bitbar.desc>Checks the availability of cisco VPN.</bitbar.desc>

if [ "$1" = 'enable' ]; then
	bash /Users/devnul/bin/vpn_on_msk.sh
    exit 0
fi

if [ "$1" = 'disable' ]; then
	bash /Users/devnul/bin/vpn_off.sh
    exit 0
fi

STATUS=$(/opt/cisco/anyconnect/bin/vpn state | grep "state:" | cut -d' ' -f 5 | head -n 1)

if [[ $STATUS = "Connected" ]]; then
	echo "VPN ⬆ | color=green"
else
	echo "VPN ⬇ | color=red"
fi

echo "---"
echo "Enable VPN MSK | bash='$0' param1=enable terminal=false"
echo "Disable VPN | bash='$0' param1=disable terminal=false"