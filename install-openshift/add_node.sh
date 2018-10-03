#!/bin/bash
set -xe
ansible-playbook add_node.yaml
pubkey=/home/emem/.ssh/id_rsa.pub
ssh -i ${pubkey%.*} -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@35.231.106.45 "sudo /root/add_node.sh"
ssh -i ${pubkey%.*} -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@35.231.106.45 "sudo rm -rf add_node.sh"
