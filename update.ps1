Invoke-WebRequest -Uri "https://portswigger-cdn.net/burp/releases/download?product=pro&type=WindowsX64" -OutFile ".\burp.exe"
cmd /c ".\burp.exe"
Remove-Item -Path ".\burp.exe" -Force -Recurse -ErrorAction 0
