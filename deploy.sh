#!/bin/bash

ls /tmp/repo && rm -rf /tmp/repo || true
mkdir -p /tmp/repo
cd /tmp/repo
git clone git@github.com:ggnanasekaran77/ggnanasekaran.com.git
cp -r ggnanasekaran.com/html/ /usr/share/nginx/html/
cp ggnanasekaran.com/deploy.sh /root/deploy.sh && chmod 755 /root/deploy.sh

