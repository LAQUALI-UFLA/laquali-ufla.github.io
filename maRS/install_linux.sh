#!/usr/bin/env bash

APP_NAME="maRS"
ZIP_URL="https://laquali-ufla.github.io/maRS_install.zip"
INSTALL_DIR="$HOME/.local/share/$APP_NAME"
APP_MENU_DIR="$HOME/.local/share/applications"
DESKTOP_DIR="$(xdg-user-dir DESKTOP 2>/dev/null || echo "$HOME/Desktop")"
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

# 2. Application Menu shortcut (.desktop)
mkdir -p "$APP_MENU_DIR"
MENU_SHORTCUT="$APP_MENU_DIR/$APP_NAME.desktop"

cat <<EOF > "$MENU_SHORTCUT"
[Desktop Entry]
Version=1.0
Type=Application
Name=$APP_NAME
Exec=bash "$INSTALL_DIR/appData/maRS.sh"
Icon=$INSTALL_DIR/appData/www/logo_maRS.ico
Path=$INSTALL_DIR
Terminal=false
Categories=Utility;
EOF

chmod +x "$MENU_SHORTCUT"

# 3. Desktop shortcut
if [ -d "$DESKTOP_DIR" ]; then
    DESKTOP_SHORTCUT="$DESKTOP_DIR/$APP_NAME.desktop"
    cp "$MENU_SHORTCUT" "$DESKTOP_SHORTCUT"
    chmod +x "$DESKTOP_SHORTCUT"
    # Mark shortcut as trusted for GNOME Desktop Environments
    gio set "$DESKTOP_SHORTCUT" metadata::trusted true 2>/dev/null || true
fi

# 4. Interface refresh
update-desktop-database "$APP_MENU_DIR" 2>/dev/null || true

# Colored output
GREEN='\033[0;32m'
NC='\033[0m'
echo -e "${GREEN}$APP_NAME installation completed successfully!${NC}"