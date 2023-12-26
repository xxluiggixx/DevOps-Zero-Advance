#!/bin/bash

### This script prints system info ###
echo "Welcome to bash script."
echo

#checking system uptime
echo "#####################################"
echo "The uptime of the system is:"
uptime
echo

echo "#####################################"
echo "Memory Utilization"
free -mh
echo

echo "#####################################"
echo "Disk Utilization"
df -h
