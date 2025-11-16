#!/bin/bash

sudo dnf install -y ansible

ansible-pull \
  -U https://github.com/gangadharkamanaboyina/expenseApp-ansible.git \
  main.yaml \
  -e "component=mysql"
