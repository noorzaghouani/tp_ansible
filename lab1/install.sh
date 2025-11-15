#!/bin/bash 
ansible all -m yum -a "name=httpd" --become
ansible all -m service -a "name=httpd state=started enabled=yes" --become 
ansible all -m user -a "name=anna state=present" --become
ansible all -m copy -a "src=/etc/hosts dest=/tmp/hosts owner=root group=root mode=0044" --become

