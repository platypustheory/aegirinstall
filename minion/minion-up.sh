#!/bin/bash -v
sudo apt-get update -yqq
sudo apt-get install -yqq git make unzip
sudo apt-get install --assume-yes ansible
mkdir -p roles
git clone --recursive https://gitlab.com/consensus.enterprises/ansible-roles/ansible-role-aegir-minion roles/consensus.aegir-minion
git clone --recursive https://gitlab.com/consensus.enterprises/ansible-roles/ansible-role-mysql roles/consensus.mysql
git clone https://gitlab.com/consensus.enterprises/ansible-roles/ansible-role-nginx.git roles/consensus.nginx
git clone https://github.com/consensus-enterprises/ansible-role-php.git roles/consensus.php
git clone https://github.com/consensus-enterprises/ansible-role-php-versions.git roles/consensus.php-versions
ansible-galaxy collection install community.crypto community.general community.mysql
echo "ansible-playbook minion.yml --connection=local -i inventory"
