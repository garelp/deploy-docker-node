#!/bin/bash

apt -y install python

my_hostname=$(hostname)
my_ip=$(ifconfig ens3 | awk -F"[: ]+" '/inet addr:/ {print $4}')
echo "$my_ip $my_hostname" >> /etc/hosts
