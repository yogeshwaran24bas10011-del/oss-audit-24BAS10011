#!/bin/bash
# Script 1: System Identity Report
# Author: [Your Name]
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="[Your Name]"
SOFTWARE_CHOICE="Python"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(hostnamectl | grep "Operating System" | cut -d: -f2)
DATE_TIME=$(date)

# --- Display ---
echo "=========================================="
echo "           Open Source Audit              "
echo "=========================================="
echo "Student Name    : $STUDENT_NAME"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Kernel Version  : $KERNEL"
echo "Distribution    : $DISTRO"
echo "Current User    : $USER_NAME"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $DATE_TIME"
echo "------------------------------------------"
echo "License Note: This OS and Python are covered under Open Source licenses (GPL/PSF)."
