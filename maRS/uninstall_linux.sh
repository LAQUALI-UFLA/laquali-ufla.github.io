#!/usr/bin/env bash

APP_NAME="maRS"
INSTALL_DIR="$HOME/.local/share/$APP_NAME"
APP_MENU_DIR="$HOME/.local/share/applications"

# Colors for output
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${YELLOW}Removing $APP_NAME from the system...${NC}"

# 1. Remove Application Menu shortcut
MENU_SHORTCUT="$APP_MENU_DIR/$APP_NAME.desktop"
if [ -f "$MENU_SHORTCUT" ]; then
    rm -f "$MENU_SHORTCUT"
fi

# 2. Remove application folder and all files
if [ -d "$INSTALL_DIR" ]; then
    rm -rf "$INSTALL_DIR"
fi

# 3. Refresh Linux UI
update-desktop-database "$APP_MENU_DIR" 2>/dev/null || true

echo -e "${GREEN}$APP_NAME uninstallation completed successfully!${NC}"