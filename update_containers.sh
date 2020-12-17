#!/bin/bash
LOGFILE=~/podwatch/logs/update_containers_log_$(date +"%Y_%m_%d").txt

source ~/virtualenvs/podwatch/bin/activate
cd ~/podwatch
ansible-playbook ./podwatch.yml 2>&1 >$LOGFILE
