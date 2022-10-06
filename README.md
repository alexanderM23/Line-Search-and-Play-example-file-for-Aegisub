# Line-Search-and-Play-example-file-for-Aegisub
#### Part 1. Description
#### 
#### This is Autohotkey script, that allows you to play lines in  
#### Aegisub subtitle player program.
#### This script works fine for Monitor size = 1920 x 1080, and for Video file with High size = 720 pixels.
#### (For another Monitor size and Video file High size please use Autohotkey's Tool - Window Spy, to adjust the MouseClick's coordinates shown below.)
#### 
#### The main idea of script is:
#### You just Play the video's 'lines' - forward and backward, for your convenience. Doing so, you are doing the #### Search of line's Number that you need to find.
#### Or, if the subtitle file was opened at first time, with a 'pre-Searched' line, all you need to do - just press NumpadLeft (Numpad4), to start from that line. ('pre-Searched' means: that the Line was edited the last, then a *.ass file was saved to different folder). 
#### 
#### The main hotkeys are:
#### 
#### NumpadIns (Numpad0) - Play Just this selected Line,
#### NumpadDel (Numpad(.)) - Play All lines (Continue to play with no stop),
#### NumpadEnd (Numpad1) - Insert '**' two stars as Text on front,
#### NumpadDown (Numpad2) - Go to previous line,
#### NumpadPgDn (Numpad3) - Go to next line (Make sure, all alphas are switched off),
#### NumpadLeft (Numpad4) - Play just a Saved Line's Number (Saved Line Position) straight away, after opening this file from one of S*someNumber* folders on your disk (the file should always have the same name. And the folders should always have the different name),
#### NumpadClear (Numpad5) - Pause button to press,
#### End - for Suspend toggle
#### ALT+CTRL+SHIFT+WIN+F12 - for quick script Exit
#### 
#### ----
#### Part 2. The Scheme for Mind mapping program (or any).
#### 
#### 10*1[subtitle folder's name] (with *.ass file in it)
#### 	ǁ		          			ǁ
#### 	ǁ				   			    ╚ ▬ ▬ Link to folder
#### 	ǁ
#### 	ǁ
####  ╚ ▬ script
#### 			ǁ
#### 			╚ ▬ ▬ file name (with high and percent) *.ahk
#### 						ǁ
#### 						╚ ▬ ▬ Link to file
#### 													
#### Note:
#### 'Link to folder' - click on it, then go one level Up. Find the video with a same name. Drag-n-drop it to this folder. After you finished, return the video to it's original place.
#### 
#### 'Link to file' - suspend another script, that was opened (started) before. Then, click on this link.
#### 
#### ----
#### Part 3. The SubtitleEdit v.3.6.7 program
#### 
#### 1)Check the language of keyboard layout first. That should be set to - English (ENG).
#### 2) Menu/ Tools/ Merge short Lines. Maximum characters in one paragraph = 65. Only merge continuation lines - remove a tick (for the first time of using this tool).
#### 3) Go to Menu/ Tools/ Adjust durations. Put tick on Seconds. Add seconds to set = 15.000. OK.
#### 4) Menu/ Tools/ Bridge small gaps between subtitles. Bridge gaps smaller then = 1. Min. milliseconds between lines = 0. OK.
#### 5) Menu/ Tools/ Fix common errors. Apply selected fixes. Refresh available fixes. Then again - Apply selected fixes. Refresh available fixes. OK.
#### 6) Menu/ Tools/ Bridge small gaps between subtitles. Bridge gaps smaller then = 1. Min. milliseconds between lines = 0. OK.
#### 7) Menu/ Tools/ Merge short Lines. Only merge continuation lines - put back a tick (for the 2nd time of using this tool). (Maximum characters in one paragraph = 65.)
#### 8) Menu/ Tools/ Merge short Lines. Maximum characters in one paragraph = 65. Only merge continuation lines - remove a tick (for the last time of using this tool).
#### 9) Menu/ Tools/ Bridge small gaps between subtitles. Bridge gaps smaller then = 1. Min. milliseconds between lines = 0. OK.
#### 10) Go to top Ribbon. Save file As icon to click. Save file as *.ass format.
#### 11) That is OK, if not all '/br' were cleaned up before for majority of the lines.
#### 12) We will fix that very easily: Go to Explorer. Open this file in Notepad program.
#### And over there, with the help of simple Search and replacement of verbal value (chose -Normal, but not -Regex), you should find and replace everything with '\N' (without quotes) by simple 'Space' (press Spacebar).
#### 13) Save the file. Close it.
#### 14) Drag-n-drop it back to SubtitleEdit program. Save it as *.srt format now, too.
#### That's all the steps!
#### 
#### Also, you can use free program - GhostMouse, to record all your steps. Then, to playback that. 
#### 1) Start GhostMouse program. Press Record.
#### 2) Stop recording, after you have finished. Save the file of this recording.
#### 3) Go to Menu/Options/Playback/Speed. Set the Speed = 2 X.
#### 4) Press Ctrl+F2 for Playback, to check.
#### At the next time, you don't need to repeat all those steps manualy. Just use Ctrl+F2 hotkeys for Playback (Or use the icon).
#### Thank you very much!
####
