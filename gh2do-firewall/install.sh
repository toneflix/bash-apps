#!/usr/bin/env bash

set -e

APP_NAME="gh2do-firewall"
BIN_PATH="/usr/local/bin/${APP_NAME}"
REPO_URL="https://github.com/toneflix/bash-apps"
SCRIPT_URL="${REPO_URL}/raw/main/${APP_NAME}/${APP_NAME}.sh"

# 💣 Remove existing binary if it exists
if [[ -f "$BIN_PATH" ]]; then
    sudo rm -f "$BIN_PATH"
fi

# 📥 Download latest version
echo "📦 Installing latest $APP_NAME from $REPO_URL..."
curl -sL "$SCRIPT_URL" -o "$APP_NAME.sh"

# 🧱 Make it executable and move it
chmod +x "$APP_NAME.sh"
sudo mv "$APP_NAME.sh" "$BIN_PATH"

# ✅ Done
echo "✅ $APP_NAME installed successfully."
echo "🔧 Run '$APP_NAME --help' to get started."
