#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${CYAN}=========== SYSTEM SUMMARY REPORT ===========${NC}"

# Last reboot
echo -e "${YELLOW}Last Reboot:${NC}"
who -b

# Patching history
echo -e "\n${YELLOW}Last Patching (based on install history):${NC}"
if command -v rpm &> /dev/null; then
    rpm -qa --last | head -n 5
elif command -v dpkg &> /dev/null; then
    grep " install " /var/log/dpkg.log | tail -n 5
fi

# System issues
echo -e "\n${YELLOW}System-level issues (journalctl):${NC}"
journalctl -p 3 -xb | tail -n 10

# Zombie/hung processes
echo -e "\n${YELLOW}Zombie Processes:${NC}"
ps aux | awk '{ if ($8=="Z") print $0; }'

# Memory leaks (rough heuristic)
echo -e "\n${YELLOW}Processes with abnormal memory usage (>500MB):${NC}"
ps aux --sort=-rss | awk '$6 > 512000 {print $0}' | head -n 5

# Top memory consumers
echo -e "\n${YELLOW}Top 2 Memory Consuming Processes:${NC}"
ps aux --sort=-%mem | awk 'NR<=3{print $0}'

# Top CPU consumers
echo -e "\n${YELLOW}Top 2 CPU Consuming Processes:${NC}"
ps aux --sort=-%cpu | awk 'NR<=3{print $0}'

# System specs
echo -e "\n${YELLOW}System Specs:${NC}"
echo -e "${CYAN}Kernel:${NC} $(uname -r)"
echo -e "${CYAN}OS:${NC} $(grep -E '^PRETTY_NAME' /etc/os-release | cut -d= -f2- | tr -d \")"
echo -e "${CYAN}Architecture:${NC} $(uname -m)"

# RAM & Storage
echo -e "\n${YELLOW}Memory Info:${NC}"
free -h

echo -e "\n${YELLOW}Disk Usage:${NC}"
df -h --total | grep -E 'Filesystem|total'

# Network
echo -e "\n${YELLOW}Network Info:${NC}"
echo -e "${CYAN}Private IPs:${NC}"
hostname -I
echo -e "${CYAN}Public IP:${NC}"
curl -s ifconfig.me

echo -e "\n${CYAN}Network Speed (interface eth0 or similar):${NC}"
if command -v ethtool &> /dev/null; then
    sudo ethtool $(ip route | grep default | awk '{print $5}') 2>/dev/null | grep -i speed
fi

# Attached devices
echo -e "\n${YELLOW}Attached Block Devices:${NC}"
lsblk

# Users
echo -e "\n${YELLOW}Logged-in Users:${NC}"
who

# Updates and broken packages
echo -e "\n${YELLOW}Available Updates:${NC}"
if command -v apt &> /dev/null; then
    apt list --upgradable 2>/dev/null | tail -n +2
    echo -e "\n${YELLOW}Broken Packages:${NC}"
    dpkg -l | grep ^..r
elif command -v yum &> /dev/null || command -v dnf &> /dev/null; then
    yum check-update || dnf check-update
fi

echo -e "\n${CYAN}=========== END OF REPORT ===========${NC}"
