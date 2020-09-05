#!/bin/bash
yum update
yum install httpd
systemctl start httpd
systemctl enable httpd