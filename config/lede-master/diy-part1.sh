#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt for Amlogic s9xxx tv box
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/coolsnowwolf/lede / Branch: master
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '3s/src/#src/' feeds.conf.default
sed -i '2s/#//' feeds.conf.default
sed -i '$a src-git opentopd  https://github.com/sirpdboy/sirpdboy-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git nas https://github.com/linkease/nas-packages.git;master' feeds.conf.default
sed -i '$a src-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' feeds.conf.default
sed -i '$a src-git 5G_Modem_Support https://github.com/Siriling/5G-Modem-Support.git' feeds.conf.default

# other
# rm -rf package/lean/{samba4,luci-app-samba4,luci-app-ttyd}
sed -i '750a\<tr><td width="33%"><%:编译作者%></td><td style="color: rgb(135,206,235);font-weight: 1000;">魔法少女莉露露</td></tr>' package/lean/autocore/files/x86/index.htm
sed -i '751a\<tr><td width="33%"><%:源码%></td><td style="color: red;font-weight: 1000;">基于Lean大佬源码编译</td></tr>' package/lean/autocore/files/x86/index.htm
sed -i '750a\<tr><td width="33%"><%:编译作者%></td><td style="color: rgb(135,206,235);font-weight: 1000;">魔法少女莉露露</td></tr>' package/lean/autocore/files/arm/index.htm
sed -i '751a\<tr><td width="33%"><%:源码%></td><td style="color: red;font-weight: 1000;">基于Lean大佬源码编译</td></tr>' package/lean/autocore/files/arm/index.htm
