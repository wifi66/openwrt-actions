#!/bin/bash

# update libcap libcap-bin
rm -rf feeds/packages/libs/libcap
svn co https://github.com/openwrt/packages/branches/openwrt-21.02/libs/libcap/ feeds/packages/libs/libcap

# update forked-daapd
rm -rf feeds/packages/sound/forked-daapd
svn co https://github.com/coolsnowwolf/packages/trunk/sound/forked-daapd feeds/packages/sound/forked-daapd

# Modify DHCP client 
sed -i 's/\${vendorid:+-V "$vendorid"}/-V \"\"/g' package/network/config/netifd/files/lib/netifd/proto/dhcp.sh

# 兼容 luci 19.07
chmod +x ../convert.sh
mv ../convert.sh .
./convert.sh