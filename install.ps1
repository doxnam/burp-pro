<#
.SYNOPSIS
	install Burpsuite Pro + add license
.DESCRIPTION
	
.EXAMPLE
	PS> ./install-burp
.LINK
	https://gitlab.com/hypnguyen1209/burp-pro
.NOTES
	Author: t.me/hiepnv
#>

$host.UI.RawUI.WindowTitle = "====== Burpsuite Professional (t.me/hiepnv) ======"

Clear-Host

Write-Host @"

====== Burpsuite Professional (t.me/hiepnv) ======


"@

$Answer = Read-Host "Do you want to install or activate the license?`n1. Install Burpsuite + activate [1] (default)  2. Activate license [2]`nPress (1|2)"

function Activate {

    $PathShortcut = "$Env:USERPROFILE\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Burp Suite Professional"

    if (-Not (Test-Path $PathShortcut)) {

        Write-Output "BurpSuite not installed"

        cmd /c 'pause'

        exit 1

    }

    $PathShortcut += "\Burp Suite Professional.lnk"

    $WScript = New-Object -ComObject WScript.Shell

    $FolderInstalled = [system.io.path]::GetDirectoryName($WScript.CreateShortcut($PathShortcut).TargetPath)

    Invoke-WebRequest -Uri "https://gitlab.com/hypnguyen1209/burp-pro/-/raw/main/BurpSuitePro.vmoptions" -OutFile $FolderInstalled\BurpSuitePro.vmoptions

    Invoke-WebRequest -Uri "https://gitlab.com/hypnguyen1209/burp-pro/-/raw/main/burploader.jar" -OutFile $FolderInstalled\burploader.jar

    Start-Process -WindowStyle Hidden -FilePath $FolderInstalled\jre\bin\java -ArgumentList "-jar", $FolderInstalled\burploader.jar

    cmd /c $PathShortcut

}


function InstallBurpSuite {
    
    Write-Output "Installing BurpSuite Pro..."

    $DownloadBurpPath = Join-Path $Env:Temp $(New-Guid)

    New-Item -Type Directory -Path $DownloadBurpPath | Out-Null

    Invoke-WebRequest -Uri "https://portswigger-cdn.net/burp/releases/download?product=pro&type=WindowsX64" -OutFile $DownloadBurpPath\Burp.exe
    
    cmd /c $DownloadBurpPath\Burp.exe

    Activate

    Write-Output "Done."

    Remove-Item $DownloadBurpPath -Recurse -Force -ErrorAction 0

}

if ($Answer -eq "1") {

    InstallBurpSuite
    
}

elseif ($answer -eq "2") {

    Activate

}

else {
    
    InstallBurpSuite

}


cmd /c 'pause'

exit 1
