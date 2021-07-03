#chipset
$url = "https://download.msi.com/dvr_exe/intel_chipset_9.zip"
$output = "c:\users\Saund\Downloads\chipset.zip"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken (chipset): $((Get-Date).Subtract($start_time).Seconds) second(s)"
Set-Location C:\Users\Saund\Downloads
Expand-Archive -Path chipset.zip -DestinationPath c:\users\Saund\Downloads\chipset
Set-Location "\Users\Saund\Downloads\chipset\Intel 10.1.1.45\"
start SetupChipset.exe

#chrome
$url = "http://dl.google.com/chrome/install/375.126/chrome_installer.exe"
$output = "c:\users\Saund\Downloads\chrome.exe"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken (chipset): $((Get-Date).Subtract($start_time).Seconds) second(s)"
Set-Location C:\Users\Saund\Downloads
start chrome.exe

#steam
$url = "https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe"
$output = "c:\users\Saund\Downloads\steam.exe"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken (steam): $((Get-Date).Subtract($start_time).Seconds) second(s)"
Set-Location C:\Users\Saund\Downloads
start steam.exe

#epic games store
$url = "https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi"
$output = "c:\users\Saund\Downloads\epic.msi"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken (egs): $((Get-Date).Subtract($start_time).Seconds) second(s)"
Set-Location C:\Users\Saund\Downloads
start epic.msi

#Realtek audio
$url = "https://download.msi.com/dvr_exe/mb/realtek_hd_audio.zip"
$output = "c:\users\Saund\Downloads\audio.zip"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken (audio): $((Get-Date).Subtract($start_time).Seconds) second(s)"
Set-Location C:\Users\Saund\Downloads
Expand-Archive -Path audio.zip -DestinationPath c:\users\Saund\Downloads\audio
Set-Location "C:\Users\Saund\Downloads\audio\Rtklegacy-Realtek-6.0.1.8703"
start setup.exe

#Realtek Lan
$url = "https://download.msi.com/dvr_exe/mb/realtek_pcielan_w10.zip"
$output = "c:\users\Saund\Downloads\lan.zip"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken (lan): $((Get-Date).Subtract($start_time).Seconds) second(s)"
Set-Location C:\Users\Saund\Downloads
Expand-Archive -Path lan.zip -DestinationPath c:\users\Saund\Downloads\lan
Set-Location "C:\Users\Saund\Downloads\lan\realtek_pcielan_w10_v10.46.1231.2020"
start setup.exe

#CPUz
$url = "https://download.msi.com/uti_exe/mb/CPU_Z.zip"
$output = "c:\users\Saund\Downloads\cpuZ.zip"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken (CPUz): $((Get-Date).Subtract($start_time).Seconds) second(s)"
Set-Location C:\Users\Saund\Downloads
Expand-Archive -Path cpuz.zip -DestinationPath c:\users\Saund\Downloads\cpuz
Set-Location "C:\Users\Saund\Downloads\cpuz\CPU-Z MSI GAMING"
Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("1","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("2","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("3","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("4","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("5","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("6","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("7","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("8","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("9","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("0","")}
start cpu-z_.-msi-en.exe

#GPUz (2.4.0 update with app)
$url = "https://www.techspot.com/downloads/downloadnow/4452/?evp=f061b416afb3e678ccb3acb765b02a15&file=1"
$output = "c:\users\Saund\Downloads\gpuz.exe"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken (GPUz): $((Get-Date).Subtract($start_time).Seconds) second(s)"
New-Item -path "C:\Program Files\gpuz\" -ItemType Directory ; Copy-Item -Path C:\Users\Saund\Downloads\gpuz.exe -Destination "C:\Program Files\gpuz\gpuz.exe"
$TargetFile = "c:\Program Files\gpuz\gpuz.exe"
$ShortcutFile = "C:\Users\Saund\Downloads\GPUz.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($ShortcutFile)
$Shortcut.TargetPath = $TargetFile
$Shortcut.Save()

#MSI AfterBurner
$url = "https://download.msi.com/uti_exe/vga/MSIAfterburnerSetup.zip?__token__=exp=1624153286~acl=/*~hmac=c601e08550fc2fb3318fd838ad265735171df5ae709647066a3bce269b608d43"
$output = "c:\users\Saund\Downloads\msiab.zip"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken (MSI AB): $((Get-Date).Subtract($start_time).Seconds) second(s)"
Set-Location C:\Users\Saund\Downloads
Expand-Archive -Path msiab.zip -DestinationPath c:\users\Saund\Downloads\msiab
Set-Location "C:\Users\Saund\Downloads\msiab\"
Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("1","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("2","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("3","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("4","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("5","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("6","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("7","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("8","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("9","")} ; Get-ChildItem *.exe | ForEach-Object {Rename-Item $_ $_.name.replace("0","")}
start MSIAfterburnerSetupBeta.exe

#HWInfo64
$url = "https://www.fosshub.com/HWiNFO.html?dwl=hwi_704.exe"
$output = "c:\users\Saund\Downloads\hwinfo.exe"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output
Write-Output "Time taken (HWInfo): $((Get-Date).Subtract($start_time).Seconds) second(s)"
Set-Location C:\Users\Saund\Downloads
start hwinfo.exe