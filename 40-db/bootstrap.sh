#!/bin/bash

set -euo pipefail

REPO="https://github.com/gangadharkamanaboyina/expenseApp-ansible.git"
TMP="/tmp/expenseApp-ansible"
LOG_DIR="/var/logs/expenseApp"
LOG_FILE="$LOG_DIR/mysql.log"

sudo dnf install -y ansible git >/dev/null 2>&1

# Create log folder
mkdir -p "$LOG_DIR"

# Clear previous logs
echo "=== MySQL Provisioning Started at $(date) ===" > "$LOG_FILE"

# Fresh clone (silent)
rm -rf "$TMP" >/dev/null 2>&1
git clone -q "$REPO" "$TMP" >> "$LOG_FILE" 2>&1

cd "$TMP"

# Run Ansible locally (silent in console, logs only in file)
ansible-playbook main.yaml \
    -c local \
    -i inventory.ini \
    -e "component=mysql" 

echo "=== MySQL Provisioning Completed at $(date) ===" >> "$LOG_FILE"
