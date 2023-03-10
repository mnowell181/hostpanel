#!/bin/bash

rm -f /www/server/panel/data/home_host.pl

#开启面板的离线面板功能防止大量报错

echo 'True' >/www/server/panel/data/not_network.pl

cp -rf /www/server/panel/config/hosts.json /www/server/panel/config/hosts.json.bk

echo '[ "127.0.0.1" ]' >/www/server/panel/config/hosts.json

#解锁文件并清理原有的bt.cn规则

chattr -i /etc/hosts

sed -i "/bt.cn/d" /etc/hosts

#写入hosts规则

echo '127.0.0.1 bt.cn www.bt.cn api.bt.cn download.bt.cn dg2.bt.cn dg1.bt.cn check.bt.cn cpi.bt.cn hk1-node.bt.cn na1-node.bt.cn jp1-node.bt.cn' >>/etc/hosts
