#!/bin/bash

# So we can add and commit files
git config --global user.email "someone@example.com"
git config --global user.name "Your Name"

# Ensure ansible and ansible-base are not installed so we don't get
# conflicts when we pip install
apt-get -y remove ansible ansible-base
touch /tmp/background-finished
yum install epel-release -y
yum install ansible -y
yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
yum -y install terraform
git clone https://github.com/anurag4516/thoughtworks_assgnment.git
cd thoughtworks_assgnment/
