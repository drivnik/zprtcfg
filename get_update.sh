#!/bin/sh

/opt/zapret/init.d/openwrt/zapret stop
#opkg update
#opkg list-upgradable | cut -f 1 -d ' ' | xargs -r opkg upgrade  
#cd /opt/zapret && git reset --hard HEAD && git pull --rebase --autostash
#wget https://github.com/bol-van/zapret/releases/download/v70.3/zapret-v70.3-openwrt-embedded.tar.gz
#tar xvf  zapret-v70.3-openwrt-embedded.tar.gz
/opt/zapret/ipset/clear_lists.sh
/opt/zapret/ipset/get_user.sh
/opt/zapret/ipset/get_config.sh
/opt/zapret/init.d/openwrt/zapret start
/opt/zapret/init.d/openwrt/zapret restart
