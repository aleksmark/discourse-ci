#!/bin/bash

# Update and upgrade
apt-get -y update && apt-get -y upgrade

# Add packer user to sudoers.
echo "packer        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/packer
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Install Ansible.
apt-get install -y ansible

