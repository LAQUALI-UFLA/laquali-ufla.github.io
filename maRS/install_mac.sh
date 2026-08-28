#!/usr/bin/env bash

APP_NAME="maRS"
ZIP_URL="https://laquali-ufla.github.io/maRS_install.zip"
INSTALL_DIR="$HOME/Library/Application Support/$APP_NAME"
APPLICATIONS_DIR="$HOME/Applications"
TEMP_ZIP="/tmp/maRS_setup.zip"

# 1. Download and extraction
echo "Downloading $APP_NAME..."
curl -fsSL "$ZIP_URL" -o "$TEMP_ZIP"

if [ -d "$INSTALL_DIR" ]; then
    rm -rf "$INSTALL_DIR"
fi

mkdir -p "$INSTALL_DIR"
unzip -q -o "$TEMP_ZIP" -d "$INSTALL_DIR"
rm -f "$TEMP_ZIP"

# Grant execution permission to the main script
chmod +x "$INSTALL_DIR/appData/maRS.sh" 2>/dev/null

# 2. Applications folder shortcut (.app)
mkdir -p "$APPLICATIONS_DIR"
APP_BUNDLE="$APPLICATIONS_DIR/$APP_NAME.app"

if [ -d "$APP_BUNDLE" ]; then
    rm -rf "$APP_BUNDLE"
fi

# Create native macOS app bundle launcher
osacompile -o "$APP_BUNDLE" -e "do shell script \"bash \\\"$INSTALL_DIR/appData/maRS.sh\\\" > /dev/null 2>&1 &\"" 2>/dev/null

# 3. Interface refresh
killall Dock 2>/dev/null || true

# Colored output
GREEN='\033[0;32m'
NC='\033[0m'
echo -e "${GREEN}$APP_NAME installation completed successfully!${NC}"