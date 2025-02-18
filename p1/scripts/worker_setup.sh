#!/bin/sh

apt-get update
apt-get upgrade -y

apt-get install -y curl iptables net-tools

curl -sfL https://get.k3s.io | sh -s agent \
	--server https://192.168.56.110:6443 \
	--node-ip 192.168.56.111 \
	--token $(cat /vagrant/confs/node-token)
