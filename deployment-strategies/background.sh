#!/bin/bash
# So we can add and commit files
git config --global user.email "someone@example.com"
git config --global user.name "Your Name"

# Ensure ansible and ansible-base are not installed so we don't get
# conflicts when we pip install
apt-get -y remove ansible-base 
pip install ansible-base
curl -fsSL https://apt.releases.hashicorp.com/gpg |  apt-key add -
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
apt-get update && sudo apt-get install terraform

git clone https://github.com/anurag4516/thoughtworks_assgnment.git
cd thoughtworks_assgnment/

touch /tmp/background-finished
