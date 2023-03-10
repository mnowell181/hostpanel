#!/bin/bash

rm -f /www/server/panel/data/home_host.pl

rm -f /www/server/panel/data/not_network.pl

cp -rf /www/server/panel/config/hosts.json.bk /www/server/panel/config/hosts.json

chattr -i /etc/hosts

sed -i "/bt.cn/d" /etc/hosts
