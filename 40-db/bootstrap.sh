#!/bin/bash
set -euo pipefail

sudo dnf install -y ansible git >/dev/null 2>&1

REPO="https://github.com/gangadharkamanaboyina/expenseApp-ansible.git"
DIR="/tmp/expenseApp-ansible"

rm -rf $DIR >/dev/null 2>&1

# Clone silently
git clone -q $REPO $DIR >/dev/null 2>&1

cd $DIR

# Run playbook with ONLY essential output
ansible-playbook main.yaml -c local -e "component=mysql" --quiet
