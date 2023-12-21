#!/bin/bash -v
apt-get update -yqq
apt-get install -yqq git make unzip
apt-get install -yqq python3-minimal python3-pip python3-yaml python3-jinja2 python3-apt
update-alternatives --install /usr/bin/python python /usr/bin/python3 1
pip3 install jinja2-cli matrix-client
apt-get install --assume-yes ansible
mkdir -p roles
git clone https://github.com/consensus-enterprises/ansible-role-aegir.git roles/consensus.aegir
git clone https://github.com/consensus-enterprises/ansible-role-mysql.git roles/consensus.mysql
git clone https://gitlab.com/consensus.enterprises/ansible-roles/ansible-role-nginx.git roles/geerlingguy.nginx
git clone https://github.com/consensus-enterprises/ansible-role-php.git roles/consensus.php
git clone https://github.com/consensus-enterprises/ansible-role-php-versions.git roles/consensus.php-versions
ansible-galaxy collection install community.crypto community.general community.mysql
ansible-playbook aegir3.yml --connection=local -i inventory
