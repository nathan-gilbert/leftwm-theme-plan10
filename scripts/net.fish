#!/usr/local/bin/fish

# Print network name and strength
# ifconfig iwm0 | awk '/ieee80211:/ { print $3 "(" $8 ")" }'

# Print only network strength
ifconfig iwm0 | awk '/ieee80211:/ { print $8 }'
