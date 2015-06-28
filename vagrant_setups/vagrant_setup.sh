#!/bin/bash
mv /etc/localtime /etc/localtime.org
ln -s /usr/share/zoneinfo/Japan /etc/localtime
service iptables stop
chkconfig iptables off
yum install -y python
python /vagrant_setups/ez_setup.py
easy_install sphinx==1.2.3
easy_install -U sphinxcontrib-phpdomain
