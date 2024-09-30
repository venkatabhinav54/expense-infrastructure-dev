#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/venkatabhinav54/expense-ansible.git
cd expense-ansible
ansible-playbook -i inventory.ini mysql.yml
ansible-playbook -i inventory.ini backend.yml
ansible-playbook -i inventory.ini frontend.yml
