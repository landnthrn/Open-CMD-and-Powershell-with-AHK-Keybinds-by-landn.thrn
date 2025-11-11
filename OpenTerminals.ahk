; ===== Open CMD / PowerShell (normal + admin) =====
; AutoHotkey v1 — complete script

; Get current user's home folder (portable on any machine)
EnvGet, UserProfile, USERPROFILE

; ---------- CMD ----------
; Win + G → CMD at user folder
#g::
Run, cmd.exe /k color 2, %UserProfile%
return

; Win + Shift + G → CMD as Admin at user folder
#+g::
Run *RunAs cmd.exe /k color 2, %UserProfile%
return

; ---------- PowerShell ----------
; Win + H → PowerShell (non-admin) at user folder
#h::
Run, powershell.exe -NoExit -NoLogo -Command "Set-Location -LiteralPath $env:USERPROFILE", %UserProfile%
return

; Win + Shift + H → PowerShell as Admin at Windows\System32
#+h::
Run *RunAs powershell.exe -NoExit -NoLogo -Command "Set-Location -LiteralPath $env:WINDIR\System32", %A_WinDir%\System32
return
