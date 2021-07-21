#!/bin/bash

# vlmcsd 及其 luci 界面
git clone --depth=1 https://github.com/mchome/openwrt-vlmcsd package/vlmcsd
git clone --depth=1 https://github.com/mchome/luci-app-vlmcsd package/luci-app-vlmcsd

# ddns-scripts-dnspod OpenWrt 官方 DDNS 插件的 dnspod_cn 更新脚本
git clone -b 19.07 --depth=1 https://github.com/VergilGao/ddns-scripts-dnspod package/ddns-scripts-dnspod

# luci-app-adblock-plus 基于DNS的广告过滤
git clone -b 1.0-8 --depth=1 https://github.com/small-5/luci-app-adblock-plus package/luci-app-adblock-plus

# luci-theme-argon
git clone -b v2.2.5 --depth=1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
git clone --depth=1 https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config

# luci-app-jd-dailybonus
git clone --depth=1 https://github.com/jerrykuku/luci-app-jd-dailybonus package/luci-app-jd-dailybonus

# kcptun
git clone --depth=1 https://github.com/kuoruan/openwrt-kcptun package/openwrt-kcptun

# OpenClash
git clone --depth=1  https://github.com/vernesong/OpenClash /tmp/clash
mv /tmp/clash/luci-app-openclash package/luci-app-openclash

# luci-app-smartdns
git clone --depth=1 https://github.com/VergilGao/openwrt-smartdns package/openwrt-smartdns
git clone -b lede --depth=1 https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

# luci-app-music-remote-center
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-music-remote-center package/luci-app-music-remote-center

# 追加feeds
echo 'src-git openwrt_switch_lan_play https://github.com/htynkn/openwrt-switch-lan-play.git' >> feeds.conf.default
