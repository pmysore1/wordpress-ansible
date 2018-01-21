#!/bin/bash
sudo ansible-playbook playbook.yml -i hosts -u root -e 'ansible_python_interpreter=/usr/bin/python3.5'
