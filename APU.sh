#!/bin/sh

echo 正在执行. . .

yum install iptables-services -y

curl -sSL https://cdn.jsdelivr.net/gh/HXHGTS/AliyunProtectUninstall/uninstall.sh | sh

curl -sSL https://cdn.jsdelivr.net/gh/HXHGTS/AliyunProtectUninstall/quartz_uninstall.sh | sh

pkill aliyun-service

rm -rf /etc/init.d/agentwatch

rm -rf /usr/sbin/aliyun-service

rm -rf /usr/local/aegis*

iptables -I INPUT -s 140.205.201.0/28 -j DROP

iptables -I INPUT -s 140.205.201.16/29 -j DROP

iptables -I INPUT -s 140.205.201.32/28 -j DROP

iptables -I INPUT -s 140.205.225.192/29 -j DROP

iptables -I INPUT -s 140.205.225.200/30 -j DROP

iptables -I INPUT -s 140.205.225.184/29 -j DROP

iptables -I INPUT -s 140.205.225.183/32 -j DROP

iptables -I INPUT -s 140.205.225.206/32 -j DROP

iptables -I INPUT -s 140.205.225.205/32 -j DROP

service iptables save

service iptables restart

/usr/local/cloudmonitor/wrapper/bin/cloudmonitor.sh stop

/usr/local/cloudmonitor/wrapper/bin/cloudmonitor.sh remove

rm -rf /usr/local/cloudmonitor

rm -rf /usr/local/share/aliyun-assist

echo 执行成功!
