#!/bin/bash

echo "====== Server Health Check ====="

REPORT_FILE="$HOME/deployment-report.txt"

{
	echo "AWS Linux Infrastructure Lab"
	echo "============================"
	echo

	echo "Report Generated:"
	date
	echo

	echo "Hostname:"
	hostname
	echo

	echo "Operating System:"
	grep PRETTY_NAME /etc/os-release
	echo

	echo "System Uptime:"
	uptime -p
	echo

	echo "Disk Usage:"
	df -h

	echo
	echo "Memory:"
	free -h

	echo
	echo "Nginx Service Status:"
	if systemctl is-active --quiet nginx; then
		echo "Nginx is active and running."
	else
		echo "Nginx is not runnning."
	fi
	echo

	echo "Website Test:"
	if curl -s --head http://localhost | grep "200 OK" > /dev/null; then
		echo "Website responded successfully with HTTP 200."
	else
		echo "Website test failed."
	fi
	echo

	echo "AWS IAM Identity:"
	aws sts get-caller-identity
	echo

} > "$REPORT_FILE"

echo "Health-check report created at:"
echo "$REPORT_FILE"

