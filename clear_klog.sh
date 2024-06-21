#!/bin/bash
sudo sh -c 'echo "" > /var/log/kern.log'
sudo sh -c 'echo "" > /var/log/syslog'
sudo service syslog restart
