#!/bin/bash -v
sudo apt-get update -yqq
sudo apt-get install -yqq git make unzip software-properties-common acl
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt-get install -yqq ansible
ansible-galaxy install -r requirements.yaml
ansible-playbook -i inventory -c local roles.yaml
echo "Done! Next: ansible-playbook aegir3.yaml --connection=local -i inventory"
