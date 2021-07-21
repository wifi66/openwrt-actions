#!/bin/bash

# update libcap libcap-bin
rm -rf feeds/packages/libs/libcap
svn co https://github.com/openwrt/packages/branches/openwrt-21.02/libs/libcap/ feeds/packages/libs/libcap

# Modify DHCP client 
sed -i 's/\${vendorid:+-V "$vendorid"}/-V \"\"/g' package/network/config/netifd/files/lib/netifd/proto/dhcp.sh