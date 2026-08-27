$AppName = "maRS"
$ZipUrl = "https://laquali-ufla.github.io/maRS_install.zip"
$InstallDir = "$env:LOCALAPPDATA\Programs\$AppName"
$StartMenuDir = "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\$AppName"
$DesktopDir = [Environment]::GetFolderPath("Desktop")
$TempZip = "$env:TEMP\maRS_setup.zip"

# 1. Download and extraction
Invoke-WebRequest -Uri $ZipUrl -OutFile $TempZip
if (Test-Path $InstallDir) { Remove-Item $InstallDir -Recurse -Force }
Expand-Archive -Path $TempZip -DestinationPath $InstallDir -Force
Remove-Item $TempZip

# 2. Cache cleanup and Start Menu folder creation
Remove-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\MenuOrder\Start Menu\Programs\$AppName" -Force -ErrorAction SilentlyContinue
New-Item -Path $StartMenuDir -ItemType Directory -Force | Out-Null

$Wscript = New-Object -ComObject WScript.Shell

# 3. Start Menu shortcut
$s1 = $Wscript.CreateShortcut("$StartMenuDir\$AppName.lnk")
$s1.TargetPath = "$env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe"
$s1.Arguments = "-WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -File `"$InstallDir\appData\maRS.ps1`""
$s1.WorkingDirectory = $InstallDir
$s1.IconLocation = "$InstallDir\appData\www\logo_maRS.ico"
$s1.Save()

# 4. Desktop shortcut
$s2 = $Wscript.CreateShortcut("$DesktopDir\$AppName.lnk")
$s2.TargetPath = "$env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe"
$s2.Arguments = "-WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -File `"$InstallDir\appData\maRS.ps1`""
$s2.WorkingDirectory = $InstallDir
$s2.IconLocation = "$InstallDir\appData\www\logo_maRS.ico"
$s2.Save()

# 5. Interface refresh
Stop-Process -Name "StartMenuExperienceHost" -Force -ErrorAction SilentlyContinue
Write-Host "$AppName installation completed successfully!" -ForegroundColor Green
