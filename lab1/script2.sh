#!/bin/bash 
ansible ansible1.example.com -m copy -a "content='Bonjour ansible' dest=/etc/motd owner=root group=root mode=0644" --become

