#!/bin/bash


sudo yum -y install tomcat
sudo systemctl start tomcat
sleep 1s
cp /vagrant/clusterjsp.war /usr/share/tomcat/webapps
sleep 1s
sudo systemctl restart tomcat

#mv /home/vagrant/serf /usr/bin/



#sudo cp /vagrant/serf.service /etc/systemd/system/
#sudo systemctl enable serf.service
#sudo systemctl start serf.service

#serf join 192.168.1.100
