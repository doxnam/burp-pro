Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run("powershell -executionpolicy bypass -noexit -file .\update.ps1")
