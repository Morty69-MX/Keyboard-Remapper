; =================================================================================
; == KR (Key Remapper) - AutoHotkey v2.0 Script
; =================================================================================
;
; Instructions:
; 1. Run this script.
; 2. Press Caps Lock to toggle the remapping on or off.
;    - Low-pitched sound = On
;    - High-pitched sound = Off
;
; --- Initial Setup (v2.0 Syntax) ---
#SingleInstance
#Warn

; --- Global Variables ---
global isRemapActive := false ; Remapping starts disabled

; --- Toggle Key ---
CapsLock::
{
    global isRemapActive
    isRemapActive := !isRemapActive ; Invert the state (true/false)

    if (isRemapActive)
    {
        SoundBeep(500, 150)  ; Low-pitched sound for "On"
    }
    else
    {
        SoundBeep(1500, 150) ; High-pitched sound for "Off"
    }
    return
}

; --- Remapping Context ---
#HotIf isRemapActive

; --- Part 1: Game Panels ---
Numpad1::1
Numpad7::2
Numpad5::3
Numpad9::4
Numpad3::5

; --- Part 2: Menus and Navigation ---
Up::Numpad8
Down::Numpad2
Left::Numpad4
Right::Numpad6
Enter::Numpad5

; --- Reset #HotIf context ---
#HotIf
