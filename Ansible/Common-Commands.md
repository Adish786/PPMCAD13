# Test connection to all servers

ansible all -i inventory -m ping

ansible all -i inventory -a "ls -al ~"

ansible all -i inventory -a "cat /var/log/messages"


# Run the playbook using the local inventory file:

ansible-playbook -i inventory playbook1.yml

# Running with a variable file

ansible-playbook -i inventory playbook1.yml -e "@secrets.yaml"

# To run with specific tags:

# For Ubuntu nginx tasks
ansible-playbook -i inventory playbook.yml --tags nginx

# multiple skip tags
ansible-playbook -i inventory.ini playbook.yml -e "@secrets.yaml" --skip-tags redhat --skip-tags ubuntu

# For RedHat tasks
ansible-playbook -i inventory playbook.yml --tags redhat

# To check syntax first:

ansible-playbook -i inventory playbook.yml --check



---------------------------





ansible-playbook -i inventory-teamA teamA-playbook.yml

ansible-playbook -i inventory-teamB teamB-playbook.yml