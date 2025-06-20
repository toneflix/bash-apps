#!/usr/bin/env bash

set -e

APP_NAME="vhoster"
BIN_PATH="/usr/local/bin/$APP_NAME"
RAW_URL="https://raw.githubusercontent.com/toneflix/bash-apps/main/$APP_NAME/$APP_NAME"

# 🧹 Remove existing binary if it exists
if [[ -f "$BIN_PATH" ]]; then
    sudo rm -f "$BIN_PATH"
fi

# 📥 Download to a temp file
echo "📦 Downloading $APP_NAME..."
TEMP_FILE="$(mktemp)"
curl -fsSL "$RAW_URL" -o "$TEMP_FILE"

# 🧱 Make it executable and move to BIN_PATH
chmod +x "$TEMP_FILE"
sudo mv "$TEMP_FILE" "$BIN_PATH"

# ✅ Done
echo "✅ $APP_NAME installed successfully!"
echo "👉 Run '$APP_NAME --help' to get started."
