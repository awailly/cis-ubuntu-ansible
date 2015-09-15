#!/bin/bash

set -o errexit

sudo apt-get update

local_co=""
if [ -z "$IP" ]; then
  IP="127.0.0.1"
  local_co="-c local"
  sudo apt-get install aptitude
fi

sudo apt-get install -y python-pip git python-dev
sudo pip install ansible markupsafe

mkdir -p ansible/roles-ubuntu/roles
cd ansible/roles-ubuntu
if [ ! -e "roles/cis" ]; then
  git clone https://github.com/awailly/cis-ubuntu-ansible.git roles/cis
fi

if [ ! -e "playbook.yml" ]; then
  cat >> playbook.yml << 'EOF'
---
- hosts: all
  roles:
    - cis
EOF
fi

hash_vars=`md5sum roles/cis/vars/main.yml | awk '{ print $1 }'`
if [ "$hash_vars" == "ebc1b1c57552ba806018f7231b33f30d" ]; then
  cp roles/cis/tests/desktop_defaults.yml roles/cis/vars/main.yml
fi

ansible-playbook -b -u $USER $local_co -i "$IP," playbook.yml --ask-become-pass
