#!/usr/bin/env bash
clear
trap "echo oh;exit" SIGTERM SIGINT
echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" >  /etc/resolv.conf
cd /root/SDA_ALL/
rm -rf site_5_cheap
git reset --hard
git pull
cd /root/SDA_ALL/site_5_cheap/
chmod +x *
pwd
while true
do
	echo "NEW ..............."
	cd /root/SDA_ALL/site_5_cheap/
	timeout 5m python3 48_ads.py
done
