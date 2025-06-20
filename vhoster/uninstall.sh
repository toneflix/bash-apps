#!/bin/bash

echo "❌ Uninstalling vhoster..."

if [[ -f "/usr/local/bin/vhoster" ]]; then
    rm /usr/local/bin/vhoster
    echo "✅ Removed /usr/local/bin/vhoster"
else
    echo "⚠️ vhoster is not installed."
fi
