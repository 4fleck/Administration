Write-Host "RDP SHADOW"
$name = read-host "Enter computer name "
qwinsta /server:$name
$id_session = read-host "Enter Session ID "
mstsc.exe /shadow:$id_session  /control  /v:$name #/noConsentPrompt
Read-Host -Prompt "Press Enter to exit"