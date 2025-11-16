#!/bin/bash

sudo dnf install ansible -y
ansible-pull -U https://github.com/gangadharkamanaboyina/expenseApp-ansible.git -e component=mysql main.yaml
