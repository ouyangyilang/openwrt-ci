#修改基础信息
sed -i 's/192.168.1.1/192.168.9.1/g' package/base-files/files/bin/config_generate
sed -i -e "s/set system\.@system\[-1\]\.hostname='ImmortalWrt'/set system.@system[-1].hostname='Oyyl_Router'/" package/base-files/files/bin/config_generate
sed -i -e "s/timezone='GMT0'/timezone='CST-8'/" package/base-files/files/bin/config_generate
sed -i -e "s/zonename='UTC'/zonename='Asia\/Shanghai'/" package/base-files/files/bin/config_generate
sed -i -e "s/system\.ntp\.server='time\.apple\.com'/system.ntp.server='ntp.tencent.com'/g" package/base-files/files/bin/config_generate
sed -i -e "s/system\.ntp\.server='time1\.google\.com'/system.ntp.server='ntp.aliyun.com'/g" package/base-files/files/bin/config_generate
sed -i -e "/add_list system.ntp.server='time.cloudflare.com'/d" package/base-files/files/bin/config_generate
sed -i -e "/add_list system.ntp.server='pool.ntp.org'/d" package/base-files/files/bin/config_generate
sed -i 's/^root:::0:99999:7:::/#&/' package/base-files/files/etc/shadow
sed -i '/^#root:::0:99999:7:::/a\root:$5$xmxpvLvUA0puov/Q$8VyXs7lx90md2yVksUedqKP5JyCQzpU7wY8JyqQv9e/:20389:0:99999:7:::' package/base-files/files/etc/shadow
# 移除 openwrt feeds 自带的核心库
rm -rf feeds/packages/net/{xray-core,v2ray-geodata,sing-box,chinadns-ng,dns2socks,hysteria,ipt2socks,microsocks,naiveproxy,shadowsocks-libev,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,trojan-plus,tuic-client,v2ray-plugin,xray-plugin,geoview,shadow-tls}
git clone https://github.com/Openwrt-Passwall/openwrt-passwall-packages package/passwall/passwall-packages
# 移除 openwrt feeds 过时的luci版本
rm -rf feeds/luci/applications/luci-app-passwall
git clone https://github.com/Openwrt-Passwall/openwrt-passwall2 package/passwall/passwall-luci
git clone --depth=1 https://github.com/laipeng668/luci-app-gecoosac package/openwrt-gecoosac
git clone --depth 1 --branch master --single-branch --no-checkout https://github.com/muink/openwrt-stuntman.git package/stuntman
git clone --depth 1 --branch master --single-branch --no-checkout https://github.com/muink/openwrt-natmapt.git package/natmapt
git clone --depth 1 --branch master --single-branch --no-checkout https://github.com/muink/luci-app-natmapt.git package/luci-app-natmapt
