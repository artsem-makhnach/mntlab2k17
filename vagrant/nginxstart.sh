#!/bin/bash


sudo yum -y install nginx
sudo systemctl start nginx
sudo sed -i '/http {/a upstream backend \{\nserver 192.168.1.11:8080;\nserver 192.168.1.12:8080;\n\}' /etc/nginx/nginx.conf
sudo sed -i -e '/location \/ {/{a proxy_pass http://backend;' -e ':a;n;ba}' /etc/nginx/nginx.conf
sudo systemctl restart nginx

#mv /home/vagrant/serf /usr/bin/

#serf agent -node=webserver.local -bind=192.168.1.100 &>/dev/null &disown


#sudo cp /vagrant/serf.service /etc/systemd/system/
#sudo systemctl enable serf.service
#sudo systemctl start serf

#./serf join webserver.local
#sudo yum -y install avahi avahi-autoipd avahi-compat-libdns_sd avahi-glib avahi-gobject avahi-tools nss-mdns nss-mdns.i?86
