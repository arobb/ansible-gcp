# Directions
Basic configuration https://gist.github.com/arobb/f572fdd8946df2f037e9b8e515698fb7
Edit the `hosts` files.

Deploy using Ansible (install instructions for Ansible are in requirements below).
```
# For the new playbooks:
ansible-playbook -e 'host_key_checking=False' -i hosts --ask-pass new-pi-playbook.yaml

# For all other playbooks
ansible-playbook -i hosts unifi-playbook.yaml
```

## Install Ansible Galaxy dependencies
```
ansible-galaxy install -r requirements.yml
```

## Ad-hoc commands
```
ansible all -a "cat /proc/cpuinfo" [-u username] [--become] [--ask-become-pass]
```

# Unifi
Install LetsEncrypt certificates (or renew an expired one)
```
ansible-playbook -i hosts unifi-playbook.yaml
```

## Version changes
SSH to the host, then do `sudo apt update` to manually accept changes to updated repositories (should just be unifi)