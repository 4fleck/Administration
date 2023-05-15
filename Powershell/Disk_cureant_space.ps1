$a = 0
while($a -ne 'y')
{
Write-Host "Diskinfo"
$name = read-host "Enter computer name "
Get-WmiObject -Class Win32_LogicalDisk -ComputerName $name |
Select-Object -Property DeviceID, VolumeName, @{Label='FreeSpace (Gb)'; expression={($_.FreeSpace/1GB).ToString('F2')}},
@{Label='Total (Gb)'; expression={($_.Size/1GB).ToString('F2')}},
@{label='FreePercent'; expression={[Math]::Round(($_.freespace / $_.size) * 100, 2)}}|ft 
$a = read-host "Exit? [y/n}"
}