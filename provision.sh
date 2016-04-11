#!/bin/bash
set -e
echo "Downloading dependencies/modules"
pip -q install os-client-config shade
ansible-galaxy install -r requirements.txt
ansible-playbook provisioners/openstack.yml
ansible-playbook -i openstack.py tasks/main.yml
