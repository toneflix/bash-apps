#!/bin/bash

echo "❌ Uninstalling gh2do-firewall..."

if [[ -f "/usr/local/bin/gh2do-firewall" ]]; then
    rm /usr/local/bin/gh2do-firewall
    echo "✅ Removed /usr/local/bin/gh2do-firewall"
else
    echo "⚠️ gh2do-firewall is not installed."
fi
