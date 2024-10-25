#!/bin/bash

# List of tools integrated with SCAN-PA
tools=(
  "host"
  "wget"
  "uniscan"
  "wafw00f"
  "nmap"
  "theHarvester"
  "dnsrecon"
  "dnswalk"
  "whois"
  "sslyze"
  "lbd"
  "golismero"
  "dirb"
  "xsser"
  "nikto"
  "fierce"
  "dmitry"
  "davtest"
  "whatweb"
  "amass"
  "wapiti"
  "sslscan"
  "dnsenum"
  "whatweb"
  "sslscan"
  "sqlmap"
)

# Variable to count installed tools
installed_count=0

echo "Checking installed tools..."

# Loop through the list of tools and check if they are installed
for tool in "${tools[@]}"; do
  if command -v $tool &> /dev/null; then
    echo "$tool is installed."
    installed_count=$((installed_count + 1))
  else
    echo "$tool is NOT installed."
  fi
done

# Print the total number of installed tools
echo "Total number of installed tools: $installed_count"

