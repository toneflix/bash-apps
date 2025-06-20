#!/usr/bin/env bash
set -e
DEST=/usr/local/bin/update-firewall

echo "📥 Installing update-firewall to $DEST..."
sudo curl -L https://raw.githubusercontent.com/toneflix/bash-apps/main/update-firewall -o "$DEST"
sudo chmod +x "$DEST"
echo "✅ Installed! Run with: update-firewall"
