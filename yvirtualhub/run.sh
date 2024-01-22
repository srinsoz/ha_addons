#!/usr/bin/with-contenv bashio
lsusb
echo "check library dependency"
ldd ./VirtualHub
echo "start VirtualHub"
./VirtualHub -c /data/.virtualhub.dat