#!/bin/bash
ansible all -m yum -a "name=vsftpd state=installed" --become
ansible all -m service -a "name=vsftpd state=started enabled=yes" --become

