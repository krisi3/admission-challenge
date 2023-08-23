#!/bin/bash
# Perform network tests
curl http://www.textfiles.com/art/bnbascii.txt
ping 8.8.8.8
ping www.textfiles.com
ip route
route -n

# Install 'net-tools' package
sudo apt install -y net-tools

# Display routes again
route -n

# Delete specific route
sudo ip route del 208.86.224.90 dev enp0s8

# Perform curl after deleting the route
curl http://www.textfiles.com/art/bnbascii.txt
