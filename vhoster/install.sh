#!/bin/bash

set -e

echo "📦 Installing vhoster..."

curl -sL https://raw.githubusercontent.com/toneflix/bash-apps/main/vhoster/vhoster -o /usr/local/bin/vhoster
chmod +x /usr/local/bin/vhoster

echo "✅ Installed! Run \`vhoster --help\` to get started."
