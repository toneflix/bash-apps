#!/bin/bash

set -e

echo "📦 Installing gh2do-firewall..."

curl -sL https://raw.githubusercontent.com/toneflix/bash-apps/main/gh2do-firewall/gh2do-firewall -o /usr/local/bin/gh2do-firewall
chmod +x /usr/local/bin/gh2do-firewall

echo "✅ Installed! Run \`gh2do-firewall\` to get started."
