#!/bin/bash

set -o errexit

local_co=""
if [ -z "$IP" ]; then
  IP="127.0.0.1"
  local_co="-c local"
  sudo apt-get install aptitude
fi

sudo apt-get install -y python-pip git
sudo pip install ansible

mkdir -p ansible/roles-ubuntu/roles
cd ansible/roles-ubuntu
git clone https://github.com/awailly/cis-ubuntu-ansible.git roles/cis

cat >> playbook.yml << 'EOF'
---
- hosts: all
  roles:
    - cis
EOF

cp roles/cis/tests/desktop_defaults.yml roles/cis/vars/main.yml

ansible-playbook -b -u $USER $local_co -i "$IP," playbook.yml --ask-become-pass
