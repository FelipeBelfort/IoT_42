#!/bin/sh

sudo apt-get update
sudo apt-get install -y curl net-tools
curl -sfL https://get.k3s.io | sh -s server --flannel-iface=eth1 --write-kubeconfig-mode 644

while [ ! -f /var/lib/rancher/k3s/server/node-token ]; do
    sleep 1
done

sudo cat /var/lib/rancher/k3s/server/node-token > /vagrant/confs/node-token
