#!/bin/bash

# --- Function to print section headers ---
print_header() {
    echo ""
    echo "============================="
    echo "  $1"
    echo "============================="
}

# --- Main health check ---
echo "🚀 DevOps Server Health Check"
echo "Report generated on: $(date)"

# Running Processes (Top 10 by CPU)
print_header "⚡ Running Processes"
ps aux --sort=-%cpu | head -n 11

# Disk Usage
print_header "💾 Disk Usage"
df -h
