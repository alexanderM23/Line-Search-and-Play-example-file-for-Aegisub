#NoEnv
#SingleInstance Force
/*
----
'Line Search-and-Play' example file for Aegisub
by Aleksandr Mamajevs 
----
This is Autohotkey script, that allows you to play lines in  
Aegisub subtitle player program.
This script works fine for Monitor size = 1920 x 1080, and for Video file with High size = 720 pixels.
(For another Monitor size and Video file High size please use Autohotkey's Tool - Window Spy, to adjust the MouseClick's coordinates shown below.)

The main idea of script is:
You just Play the video's 'lines' - forward and backward, for your convenience. Doing so, you are doing the Search of line's Number that you need to find.
Or, if the subtitle file was opened at first time, with a 'pre-Searched' line, all you need to do - just press NumpadLeft (Numpad4), to start from that line. ('pre-Searched' means: that the Line was edited the last, then a *.ass file was saved to different folder).

The main hotkeys are:

NumpadIns (Numpad0) - Play Just this selected Line,
NumpadDel (Numpad(.)) - Play All lines (Continue to play with no stop),
NumpadEnd (Numpad1) - Insert '**' two stars as Text on front,
NumpadDown (Numpad2) - Go to previous line,
NumpadPgDn (Numpad3) - Go to next line (Make sure, all alphas are switched off),
NumpadLeft (Numpad4) - Play just a Saved Line's Number (Saved Line Position) straight away, after opening this file from one of S*someNumber* folders on your disk (the file should always have the same name. And the folders should always have the different name),
NumpadClear (Numpad5) - Pause button to press,
End - for Suspend toggle
ALT+CTRL+SHIFT+WIN+F12 - for quick script Exit
*/

; #NoTrayIcon
#KeyHistory 0
SetBatchLines -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed. Recommended for new scripts due to its superior speed and reliability.
; SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir% ; Ensures a consistent starting directory.
; SplitPath, A_ScriptName, , , , MyScriptName ; store the script file name (without extension) in MyScriptName
; DetectHiddenWindows,On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
SetMouseDelay,-1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag
#MaxThreadsPerHotkey,1 ; no re-entrant hotkey handling
#Warn  ; Enable warnings to assist with detecting common errors.

; WinWait, Aegisub, 
; IfWinNotActive, * Aegisub, , WinActivate, * Aegisub, 
; WinWaitActive, Aegisub,
;~ WinActivate, * Aegisub
#IfWinActive ahk_class wxWindowNR

WinGetPos, X, Y, Width, Height

NumpadIns:: ; Numpad0 - Play Just this selected Line 
; (Use ~ sign before NumpadIns, if your antivirus program works differently. As well as for other keyboard keys.)
Sleep, 50
MouseClick, left, 65, 925 ; Pause button to press
Sleep, 100
MouseClick, left, 265, 65 ; Select all dialog lines that are visible on the current video frame, button
Sleep, 50
MouseClick, left, 265, 65 ; x2 time to press: Select all dialog lines that are visible on the current video frame, button
Sleep, 200
MouseClick, left, 40, 925 ; Play Just this selected Line, button
Sleep, 50
return

NumpadDel:: ;  Numpad(.) - Play All (Continue to play)
Sleep, 50
MouseClick, left, 265, 60 ; Select all dialog lines that are visible on the current video frame, button
Sleep, 50
MouseClick, left, 265, 65 ; x2 time to press: Select all dialog lines that are visible on the current video frame, button
Sleep, 50
; MouseClick, left, 40, 925 ; Play Just this selected Line, button
Sleep, 50
Send, {Down} ; Select next line
Sleep, 50
MouseClick, left, 15, 925 ; Play all, button
Sleep, 50
Return

NumpadEnd:: ; Numpad1 - Insert '**' two stars as Text on front
Sleep, 50
MouseClick, left, 65, 925 ; Pause button to press
Sleep, 50
MouseClick, left, 265, 60 ; Select all dialog lines that are visible on the current video frame, button
Sleep, 50
MouseClick, left, 1900, 550 ; Put cursor in the area
Sleep, 50
Send, {Home} ; Set cursor in the area to very front
Sleep, 50
Send, ** ; Text to print, as '**' signs
Sleep, 50
return

NumpadDown:: ;  Numpad2 - Go to previous line
Sleep, 50
MouseClick, left, 20, 950 ; Press on № sign (just for jump to proper field - back, after text field)
Sleep, 50
MouseClick, left, 265, 60 ; Select all dialog lines that are visible on the current video frame, button
Sleep, 50
MouseClick, left, 265, 65 ; x2 time to press: Select all dialog lines that are visible on the current video frame, button
Sleep, 50
MouseClick, left, 46, 928  ; Play Just this selected Line, button
Sleep, 50
Send, {Up} ; Select previous line
Sleep, 50
MouseClick, left, 46, 928 ; Play Just this selected Line, button
Return

NumpadPgDn:: ; Numpad3 - Go to next line (Make sure, all alphas are switched off)
Sleep, 50
MouseClick, left, 23, 953 ; Press on № sign (just for jump to proper field - back, after text field)
Sleep, 50
MouseClick, left, 265, 60 ; Select all dialog lines that are visible on the current video frame, button
Sleep, 50
MouseClick, left, 265, 65 ; x2 time to press: Select all dialog lines that are visible on the current video frame, button
Sleep, 50
; MouseClick, left, 46, 928 ; Play Just this selected Line, button
Sleep, 50
Send, {Down} ; Select next line
Sleep, 50
MouseClick, left, 46, 928 ; Play Just this selected Line, button
return

NumpadLeft:: ; Numpad4 - Play Just this selected Line straight away (after open this file from S* folder)
Sleep, 50
MouseClick, left, 46, 928  ; Play Just this selected Line, button
Sleep, 50
return

NumpadClear:: ; Numpad5 - Pause button to press
Sleep, 50
MouseClick, left, 65, 925 ; Pause button to press
Sleep, 100
MouseClick, left, 265, 60 ; Select all dialog lines that are visible on the current video frame, button
Sleep, 50
MouseClick, left, 265, 65 ; x2 time to press: Select all dialog lines that are visible on the current video frame, button
Sleep, 50
return

^!+#F10::ExitApp ; press CTRL+ALT+SHIFT+WIN+F12 buttons phisicaly for Quick Exit, just for ensurance
End::Suspend, Toggle ; press End for Suspend Toggle
return

#IfWinActive