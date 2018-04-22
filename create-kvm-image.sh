#!/bin/bash

# create and provision ubuntu on kvm. Install everything needed to run the build

# install qemu
sudo apt-get install -y qemu

# install packer
wget https://releases.hashicorp.com/packer/1.2.2/packer_1.2.2_linux_amd64.zip && \
sudo unzip packer_1.2.2_linux_amd64.zip -d /usr/local/

# create and provision the image
sudo /usr/local/packer build packer/template.json
