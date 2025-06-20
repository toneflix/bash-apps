#!/usr/bin/env bash

set -e

APP_NAME="vhoster"
BIN_PATH="/usr/local/bin/$APP_NAME"
RAW_URL="https://raw.githubusercontent.com/toneflix/bash-apps/main/$APP_NAME/$APP_NAME"

# 🧹 Remove existing binary if it exists
if [[ -f "$BIN_PATH" ]]; then
    sudo rm -f "$BIN_PATH"
fi

# 📥 Download latest version
echo "📦 Downloading $APP_NAME..."
curl -fsSL "$RAW_URL" -o "$APP_NAME"

# 🧱 Make it executable and move it
chmod +x "$APP_NAME"
sudo mv "$APP_NAME" "$BIN_PATH"

# ✅ Done
echo "✅ $APP_NAME installed successfully!"
echo "👉 Run '$APP_NAME --help' to get started."
