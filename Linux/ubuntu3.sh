#!/bin/bash

#Disables guest option and usernames on login screen (in /etc/lightdm/lightdm.donf)
TEXT="[SeatDefaults]\nautologin-guest=false\nautologin-user=none\nautologin-user-timeout=0\nautologin-session=lightdm-autologin\nallow-guest=false\ngreeter-hide-users=true"
printf $TEXT > /etc/lightdm/lightdm.conf
