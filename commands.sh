#!/bin/sh
apt-get install nginx -y
test -x /usr/sbin/nginx && echo "Ngninx installed"
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.key -out localhost.crt -config localhost.conf
cp localhost.crt /etc/ssl/certs/localhost.crt
cp localhost.key /etc/ssl/private/localhost.key
systemctl stop nginx
cp nginxhttps.conf /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default
printf "[Service]\nExecStartPost=/bin/sleep 0.1\n" \
    > /etc/systemd/system/nginx.service.d/override.conf
systemctl daemon-reload
systemctl restart nginx
echo "nginx started"