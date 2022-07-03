#!/bin/sh

echo 正在执行. . .

systemctl stop AssistDaemon

systemctl disable AssistDaemon

systemctl stop aliyun

systemctl disable aliyun

systemctl stop cloud-init

systemctl disable cloud-init

systemctl stop cloud-final

systemctl disable cloud-final

systemctl stop cloud-config

systemctl disable cloud-config

systemctl stop cloud-init-local

systemctl disable cloud-init-local

bash /usr/local/share/aliyun-assist/2.2.3.282/init/uninstall

bash /usr/local/share/aliyun-assist/2.2.3.282/init/clean

rm -rf /usr/local/share/assist-daemon

rm -rf /usr/local/share/aliyun-assist

echo 执行成功!
