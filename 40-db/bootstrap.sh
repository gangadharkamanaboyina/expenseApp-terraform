# #!/bin/bash

# sudo dnf install -y ansible

# ansible-pull \
#   -U https://github.com/gangadharkamanaboyina/expenseApp-ansible.git \
#   main.yaml \
#   -e "component=mysql"

#!/bin/bash

REPO="https://github.com/gangadharkamanaboyina/expenseApp-ansible.git"
TMP="/tmp/expenseApp-ansible"

sudo dnf install -y ansible

# Fresh clone each run (or git pull if you prefer)
rm -rf "${TMP}"
git clone "${REPO}" "${TMP}"
cd "${TMP}"

# run playbook locally using repo inventory, force local connection
# -c local forces execution on localhost, so groups that map to localhost work fine
ansible-playbook main.yaml -i inventory.ini -c local -e "component=mysql" -v
