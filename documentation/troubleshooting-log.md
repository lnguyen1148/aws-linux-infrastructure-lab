# Troubleshooting Guide

This document records real issues encountered during the AWS Linux Infrastructure Lab and the steps taken to resolve them.

---

## Issue 1: AWS CLI not found

### Problem

Running:
```
aws --version
```

returned:
```
aws: command not found
```

### Cause

AWS CLI was not installed on the EC2 instance.

### Resolution

Installed AWS CLI and verified the installation

---

## Issue 2: Permission denied when uploading to S3

### Problem

Running:
```
aws s3 cp deployment-report.txt s3://...
```

returned an AccessDenied error.

### Cause 

The IAM policy only allowed uploads to the `health-reports/` prefix.

### Resolution

Uploaded the file to the correct location:

```
aws s3 cp ~/deployment-report.txt s3://linh-aws-linux-reports-2026/health-reports/deployment-report.txt
```

Also verified that the EC2 instance was using the correct IAM role.

---

## Issue 3: Unable to edit files in /var/www/html/

### Problem

Could not copy files directly into /var/www/html

### Cause 

Ubuntu user does not have write permission to that directory.

### Resolution

Uploaded files to the home directory first and then copied them using sudo:

```
sudo cp index.html /var/www/html/
```

---

## Lessons Learned
 
- Always verify IAM permissions before assuming AWS services are broken.
- Read AWS error carefully because they usually identify the missing permission.
