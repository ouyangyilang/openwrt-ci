rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led
git clone https://github.com/cokebar/openwrt-vlmcsd.git package/vlmcsd/openwrt-vlmcsd
git clone https://github.com/cokebar/luci-app-vlmcsd.git package/vlmcsd/luci-app-vlmcsd
