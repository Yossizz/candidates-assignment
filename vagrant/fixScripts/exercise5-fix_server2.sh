#!/bin/bash

cat /vagrant/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh/

rm /vagrant/id_rsa.pub