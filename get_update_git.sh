#!/bin/sh

cd /opt/zapret/zprtcfg && git pull --show-forced-updates
/opt/zapret/init.d/openwrt/zapret stop
opkg update
opkg list-upgradable | cut -f 1 -d ' ' | xargs -r opkg upgrade  
cd /opt/zapret && git reset --hard HEAD && git pull --rebase --autostash
cd /opt/zapret/zprtcfg && git reset --hard HEAD && git pull --rebase --autostash
/opt/zapret/ipset/clear_lists.sh
/opt/zapret/ipset/get_user.sh
/opt/zapret/ipset/get_config.sh
/opt/zapret/init.d/openwrt/zapret start
