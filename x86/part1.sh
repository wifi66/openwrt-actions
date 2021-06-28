#!/bin/bash

# vlmcsd 及其 luci 界面
git clone --depth=1 https://github.com/mchome/openwrt-vlmcsd package/vlmcsd
git clone --depth=1 https://github.com/mchome/luci-app-vlmcsd package/luci-app-vlmcsd

# ddns-scripts_dnspod OpenWrt 官方 DDNS 插件的 dnspod_cn 更新脚本
git clone -b v0.0.1 --depth=1 https://github.com/VergilGao/ddns-scripts_dnspod package/ddns-scripts_dnspod