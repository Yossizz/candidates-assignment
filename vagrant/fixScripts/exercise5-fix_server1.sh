#!/bin/bash

ssh-keygen -t rsa -P '' -f /home/vagrant/.ssh/id_rsa
cp /home/vagrant/.ssh/id_rsa.pub /vagrant/

echo "Host *" > /home/vagrant/.ssh/config
echo "    StrictHostKeyChecking no" >> /home/vagrant/.ssh/config
chmod 400 /home/vagrant/.ssh/config
chown -R vagrant:vagrant /home/vagrant/.ssh/