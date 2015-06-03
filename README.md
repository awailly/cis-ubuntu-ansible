CIS for Ubuntu 14.04
====================

[![Build Status](https://travis-ci.org/awailly/cis-ubuntu-ansible.svg?branch=master)](https://travis-ci.org/awailly/cis-ubuntu-ansible)
[![Build Status](https://drone.io/github.com/awailly/cis-ubuntu-ansible/status.png)](https://drone.io/github.com/awailly/cis-ubuntu-ansible/latest)
[![Documentation Status](https://readthedocs.org/projects/cis-ubuntu-ansible/badge/?version=latest)](https://readthedocs.org/projects/cis-ubuntu-ansible/?badge=latest)
[![Code coverage](https://drone.io/github.com/awailly/cis-ubuntu-ansible/files/coverage.png?version=latest)](https://drone.io/github.com/awailly/cis-ubuntu-ansible)
[![Coverage Status](https://coveralls.io/repos/awailly/cis-ubuntu-ansible/badge.svg?branch=master)](https://coveralls.io/r/awailly/cis-ubuntu-ansible?branch=master)



Prerequisites
-----

Install dependencies (on Ubuntu 14.04)

    $ sudo apt-get install ansible

Usage
-----

Create a placeholder:

    $ mkdir ansible
    $ cd ansible
    $ git clone https://github.com/awailly/cis-ubuntu-ansible.git
    $ mkdir roles-ubuntu
    $ cd roles-ubuntu
    $ mkdir roles
    $ ln -s ~/ansible/cis-ubuntu-ansible roles/cis

Create a playbook in the roles-ubuntu folder:

    $ cat >>  playbook.yml << 'EOF'
    ---
    - hosts: all
      roles:
        - { role:cis, when: "ansible_version.full | version_compare('1.8', '>=')" }
    EOF

Create a file containing hosts:

    $ cat >>  inventory.txt << 'EOF'
    [projet]
    172.30.3.7
    EOF

Run the playbook with a version of ansible higher than 1.8:

    $ ansible-playbook -e "pipelining=True" -s -u ubuntu --private-key=~/.ssh/id_rsa -i ./inventory.txt playbook.yml

CONTRIBUTING
------------

I need your github handle!
