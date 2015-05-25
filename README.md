CIS for Ubuntu 14.04
====================

[![Build Status](https://travis-ci.org/awailly/cis-ubuntu-ansible.svg?branch=master)](https://travis-ci.org/awailly/cis-ubuntu-ansible)  [![Documentation Status](https://readthedocs.org/projects/cis-ubuntu-ansible/badge/?version=latest)](https://readthedocs.org/projects/cis-ubuntu-ansible/?badge=latest)  [![Code coverage](https://drone.io/github.com/awailly/cis-ubuntu-ansible/files/coverage.png)](https://drone.io/github.com/awailly/cis-ubuntu-ansible)

Usage
-----

Create a placeholder:

    mkdir ansible
    cd ansible
    git clone https://github.com/awailly/cis-ubuntu-ansible.git
    mkdir roles-ubuntu
    cd roles-ubuntu
    mkdir roles
    ln -s ~/ansible/cis-ubuntu-ansible roles/cis

Create a playbook:

    cat playbook.yml
    ---
    - hosts: all
      roles:
        - { role:cis, when: "ansible_version.full | version_compare('1.8', '>=')" }

Create a file containing hosts:

    cat inventory.txt
    [projet]
    172.30.3.7

Run the playbook with a version of ansible higher than 1.8:

    ansible-playbook -e "pipelining=True" -s -u ubuntu --private-key=~/.ssh/id_rsa -i ./inventory.txt playbook.yml

CONTRIBUTING
------------

I need your github handle!
