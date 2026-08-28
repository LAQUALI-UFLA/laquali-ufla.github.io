$AppName = "maRS"
$InstallDir = "$env:LOCALAPPDATA\Programs\$AppName"
$StartMenuDir = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\$AppName"
$DesktopDir = [Environment]::GetFolderPath("Desktop")

Write-Host "Removing $AppName from the system..." -ForegroundColor Yellow

# 1. Remove Desktop shortcut
$DesktopShortcut = "$DesktopDir\$AppName.lnk"
if (Test-Path $DesktopShortcut) { Remove-Item $DesktopShortcut -Force }

# 2. Remove Start Menu folder and shortcuts
if (Test-Path $StartMenuDir) { Remove-Item $StartMenuDir -Recurse -Force }

# 3. Remove sorting cache registry key
Remove-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\MenuOrder\Start Menu\Programs\$AppName" -Force -ErrorAction SilentlyContinue

# 4. Remove application folder and all files
if (Test-Path $InstallDir) { Remove-Item $InstallDir -Recurse -Force }

# 5. Refresh Windows UI
Stop-Process -Name "StartMenuExperienceHost" -Force -ErrorAction SilentlyContinue

Write-Host "$AppName uninstallation completed successfully!" -ForegroundColor Green