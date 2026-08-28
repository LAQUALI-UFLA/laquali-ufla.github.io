#!/usr/bin/env bash

APP_NAME="maRS"
INSTALL_DIR="$HOME/Library/Application Support/$APP_NAME"
APPLICATIONS_DIR="$HOME/Applications"

# Colors for output
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${YELLOW}Removing $APP_NAME from the system...${NC}"

# 1. Remove Applications shortcut (.app)
MAIN_APP="$APPLICATIONS_DIR/$APP_NAME.app"
if [ -d "$MAIN_APP" ]; then
    rm -rf "$MAIN_APP"
fi

# 2. Remove application folder and all files
if [ -d "$INSTALL_DIR" ]; then
    rm -rf "$INSTALL_DIR"
fi

# 3. Refresh macOS UI
killall Dock 2>/dev/null || true

echo -e "${GREEN}$APP_NAME uninstallation completed successfully!${NC}"