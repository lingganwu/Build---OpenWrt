#!/usr/bin/env bash

# Use dnsmasq-full for enhanced DNS features if not already enabled
if ! grep -q "dnsmasq-full" include/target.mk; then
    sed -i 's/dnsmasq/dnsmasq-full/g' include/target.mk
fi

# Refresh geodata package to the latest release
. $(dirname $0)/../extra-files/update-geodata.sh
