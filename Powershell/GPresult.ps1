$a = 0
while($a -ne 'y')
{
Write-Host "GPRESULT"
$name = read-host "Enter computer name "
qwinsta /server:$name 
$user = read-host "enter username"
GPRESULT /s $name /USER $user  /H  C:\Gpreport\$user.$name.html
$a = read-host "Exit? [y/n}"
}   
