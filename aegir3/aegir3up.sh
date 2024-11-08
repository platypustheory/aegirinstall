#!/bin/bash
set -e
set -x
sudo apt-get update -yqq
sudo apt-get install -yqq git make unzip software-properties-common acl
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install -yqq ansible
ansible-galaxy install -r requirements.yaml
mkdir -p roles
git clone --recursive -b 8-meta-unfork-dependent-roles-where-possible https://gitlab.com/consensus.enterprises/ansible-roles/ansible-role-aegir roles/ansible-role-aegir
# Install Aegir:
ansible-playbook -i inventory -c local aegir3.yaml
