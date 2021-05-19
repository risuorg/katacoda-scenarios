#!/bin/bash
# Disable showing commands as being typed
stty -echo
export LC_ALL=en_US.utf8
export PSBACKUP="$PS1"
export PS1=""
clear
yum -y remove ntp chrony >/dev/null 2>&1
clear

echo -e "\nEnvironment is ready, go ahead"

# Restore prompt
export PS1="$PSBACKUP"

# Enable back showing commands when typed
stty echo
