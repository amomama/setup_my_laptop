#!/bin/bash

echo "###############################################################"
echo "# Provisioning started. Keep calm and press ENTER if necessary "
echo "###############################################################"

sudo apt update
sudo apt upgrade -y

sudo apt install -y --no-install-recommends \
    ansible \
    aptitude \
    openssh-server \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    git \
    python-pip \
    python-setuptools \
    python3-apt \
    python-apt

echo "###############################################################"
echo "#                  Please press ENTER 3 times                  "
echo "###############################################################"

if [ ! -d ~/.ssh ] || [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096
fi

cat ~/.ssh/id_rsa.pub > ~/.ssh/authorized_keys

ansible-playbook -i inventory.list ./playbooks/package-deploy.yml

echo "###############################################################"
echo "#          Setup finished! Please reboot your laptop.          "
echo "###############################################################"
