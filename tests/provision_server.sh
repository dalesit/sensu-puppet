#!/bin/bash

# Installs appropriate packages for Vagrant vms

# apt-get install -y python-software-properties
wget --quiet https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb -O /tmp/puppetlabs-release-pc1-trusty.deb
dpkg -i /tmp/puppetlabs-release-pc1-trusty.deb
apt-get update
apt-get install -y ruby-json redis-server puppet-agent ruby-dev #masterless puppet
sed -i '/templatedir/d' /etc/puppet/puppet.conf
puppet module install sensu/sensu
puppet module install puppetlabs/rabbitmq

