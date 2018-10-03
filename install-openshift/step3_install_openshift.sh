#!/bin/bash
set -xe
pubkey=/home/emem/.ssh/id_rsa.pub
ssh -i ${pubkey%.*} -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no root@35.231.106.45 "sudo /root/install_openshift.sh"
