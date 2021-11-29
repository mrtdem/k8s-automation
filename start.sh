#!/bin/bash
export ANSIBLE_CONFIG=/vagrant/inventories/ansible.cfg

# ansible-playbook \
#     --connection=ssh \
#     --timeout=30 \
#     /vagrant/playbooks/java-install.yaml

ansible-playbook \
    --connection=ssh \
    --timeout=30 \
    /vagrant/playbooks/jenkins-install.yaml