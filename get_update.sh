#!/bin/sh

#opkg update
#opkg list-upgradable | cut -f 1 -d ' ' | xargs -r opkg upgrade  
#cd /opt/zapret && git reset --hard HEAD && git pull --rebase --autostash
#cd /opt/zapret
#yes n | ./uninstall_easy.sh
#cd && rm -r "/opt/zapret"
#cd /tmp
#wget -O zapret.tar.gz "https://github.com/bol-van/zapret/releases/download/v71.1.1/zapret-v71.1.1-openwrt-embedded.tar.gz"
#tar -xzf  zapret.tar.gz
#cd /tmp/zapret-v71.1.1
#yes n | ./uninstall_easy.sh
#./install_bin.sh
#echo "nftables" | ./install_prereq.sh
#./blockcheck.sh 
#printf "y\n2\nn\nn\nn\n4\nn\nn\ny\nn\ny\n3\n1" | ./install_easy.sh
#cd /opt/zapret/
#opkg install git-http
#git clone https://github.com/drivnik/zprtcfg.git
#echo ". /opt/zapret/zprtcfg/config_git" > /opt/zapret/config

/opt/zapret/init.d/openwrt/zapret stop
/opt/zapret/ipset/clear_lists.sh
/opt/zapret/ipset/get_user.sh
/opt/zapret/ipset/get_config.sh
/opt/zapret/init.d/openwrt/zapret start
/opt/zapret/init.d/openwrt/zapret restart
