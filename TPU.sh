#!/bin/sh

echo 正在执行. . .

echo > /var/spool/cron/root

crontab -l

systemctl stop tat_agent

systemctl disable tat_agent

rm -rf /etc/systemd/system/tat_agent.service

rm -rf /usr/local/qcloud 
 
kill $(ps -A | grep agent)

echo 执行成功!
