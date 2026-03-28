#!/bin/bash
# Script 1: System Identity Report
# Author: YOGESHWARAN
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="YOGESHWARAN"
SOFTWARE_CHOICE="Python"

# --- System Info Gathering ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(grep "PRETTY_NAME" /etc/os-release | cut -d '"' -f2)
CURRENT_DATE=$(date)

# --- Display ---
echo "=========================================="
echo "         Open Source Audit"
echo "=========================================="
echo "Student Name    : $STUDENT_NAME"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "OS Distribution : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "------------------------------------------"
echo "Philosophy: This system runs on the Linux Kernel (GPL v2)."
