#!/bin/bash

sudo k3d cluster create iotex03

sudo kubectl create namespace dev
sudo kubectl create namespace argocd
sudo kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

sudo kubectl apply -n argocd -f ../confs/application.yaml

