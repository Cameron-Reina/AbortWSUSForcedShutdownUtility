' AbortWSUSForcedShutdown.vbs

Set WshShell = CreateObject("WScript.Shell")
WshShell.Run "powershell -ExecutionPolicy Bypass -NoProfile -Command ""while ($true) { if (shutdown /a 2>&1 | Out-Null) {shutdown /a 2>&1 | Out-Null} Start-Sleep -Seconds 5 }""", 0, False
