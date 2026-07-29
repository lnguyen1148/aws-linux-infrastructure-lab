#!/bin/bash

echo "====== Server Health Check ====="

echo "Hostname:"
hostname

echo
echo "Current Time:"
date

echo
echo "Disk Usage:"
df -h

echo
echo "Memory:"
free -h

echo
echo "Nginx Status:"
systemctl status nginx --no-pager
