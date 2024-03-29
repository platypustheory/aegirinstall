#!/bin/bash -v
sudo apt-get update -yqq
sudo apt-get install -yqq git make unzip software-properties-common acl
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install -yqq ansible
ansible-galaxy install -r requirements.yaml
# Check the roles we need out of github/gitlab:
ansible-playbook -i inventory -c local git-roles.yaml
# Install Aegir:
ansible-playbook -i inventory -c local aegir3.yaml
