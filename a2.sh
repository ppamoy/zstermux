#!/data/data/com.termux/files/usr/bin/bash

nohup aria2c --enable-rpc --rpc-listen-all &

echo -e "\033[31maria2服务已在后台运行\033[0m"

if [ -d "$HOME/webui-aria2" ] ; then
	cd ~/webui-aria2
	nohup node node-server.js &
	echo -e "\033[31maria2面板已在后台运行\033[0m"
	echo -e "\033[31m请用chrome浏览器打开，localhost:8888\033[0m"
	
	cd ~
	bash zs.sh
else
	cd ~
	echo -e "\033[31m正在安装aria2面板\033[0m"
	git clone https://github.com/ziahamza/webui-aria2.git
	cd webui-aria2
        nohup node node-server.js &
        echo -e "\033[31maria2面板已在后台运行\033[0m"
	echo -e "\033[31m请用chrome浏览器打开，localhost:8888\033[0m"
	cd ~
	bash zs.sh
fi
exit