# AliyunProtectUninstall
卸载阿里云云盾，屏蔽监控

### 阿里云
一键卸载:
```
wget https://raw.githubusercontent.com/HXHGTS/AliyunProtectUninstall/master/APU.sh -O APU.sh && bash APU.sh && rm -f APU.sh
```
### 腾讯云
一键卸载:
```
crontab -e
crontab -l
/usr/local/qcloud/stargate/admin/uninstall.sh
/usr/local/qcloud/YunJing/uninst.sh
/usr/local/qcloud/monitor/barad/admin/uninstall.sh
rm -rf /usr/local/qcloud
ps -A | grep agent

```

