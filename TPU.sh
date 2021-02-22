#!/bin/sh

echo 正在执行. . .

echo > /var/spool/cron/root

crontab -l

/usr/local/qcloud/stargate/admin/uninstall.sh

/usr/local/qcloud/YunJing/uninst.sh

/usr/local/qcloud/monitor/barad/admin/uninstall.sh

rm -rf /usr/local/qcloud

kill 1404

ps -A | grep agent

echo 执行成功!
