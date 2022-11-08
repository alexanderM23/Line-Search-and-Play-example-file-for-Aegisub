# Line Search and Play example file for Aegisub program (plus some more 
tips).

#### This example shows how it is possible to use the Autohotkey and 
#### Mindmap files for creation of 'not complex' Search Library of your 
#### Video(-os) when you are working with multimedia. 
#### Following this template, it is possible to create so called - your "Fast 
#### access" database. And after that, you would not be confused of 
#### flooding "information waves" any more, because of the video that you 
#### create. 
#### 
#### Because of the information, which you create, usually "floats" from one 
#### video to another, and can be repeated - the author of this Template 
#### has developed the "Special steps algorithm" simplifying a routine and 
#### facilitating a task of "processing" of all media files of yours that already 
#### exist in your folders.
#### 
## Part 1. Description
####  
#### This is Autohotkey script, that allows you 
#### to play lines in Aegisub subtitle player program.
#### This script works fine for Monitor size = 1920 x 1080, 
#### and for Video file with High size = 720 pixels.
#### (For another Monitor size and Video file High size please use 
#### Autohotkey's Tool - Window Spy, to adjust the MouseClick's 
#### coordinates shown in script.)
#### 
#### The main idea of script is:
#### You just Play the video's 'lines' - forward and backward, for your 
#### convenience. Doing so, you are doing the 
#### Search of line's Number that you need to find.
#### Or, if the subtitle file was opened at first time, with 
#### a 'pre-Searched' line, all you need to do - just press 
#### NumpadLeft (Numpad4), to start from that line. 
#### ('pre-Searched' means: that the Line was edited the last, 
#### then an *.ass file was saved to different folder.
#### 
#### How you can edit the Line? - You should add some simbol to the end of 
#### the last word of a sentance (Press End hotkey). Just add a Space, for 
#### example. Then hit Ctrl+S - for Save the file. Now when you'll open that 
#### *.ass file again and again, that will be opened with that last edited line 
#### selected, and the video will remote to that line's timing again and 
#### again, too.) 
#### 
### The main hotkeys are:
#### 
#### NumpadIns (Numpad0) - Play Just this selected Line,
#### NumpadDel (Numpad(.)) - Play All lines 
#### (Continue to play with no stop),
#### NumpadEnd (Numpad1) - Insert '**' two stars as Text 
#### on front,
#### NumpadDown (Numpad2) - Go to previous line,
#### NumpadPgDn (Numpad3) - Go to next line (Make sure, 
#### all alphas are switched off),
#### NumpadLeft (Numpad4) - Play just a Saved Line's Number 
#### (Saved Line Position) straight away, after opening 
#### this file from one of S*someNumber* folders on your disk 
#### (the file should always have the same name. 
#### And the folders should always have the different name),
#### NumpadClear (Numpad5) - Pause button to press,
#### End - for Suspend toggle
#### ALT+CTRL+SHIFT+WIN+F12 - for quick script Exit
#### 
#### ----
## Part 2. The Scheme for Mind mapping program (or any).
#### 
#### 10*1[subtitle folder's name] (with *.ass file in it)
#### 	ǁ			ǁ
#### 	ǁ			╚ ▬ ▬ Link to folder
#### 	╚ ▬ script
#### 			ǁ
#### 			╚ ▬ ▬ file name (with high and percent) *.ahk
#### 				ǁ
#### 				╚ ▬ ▬ Link to file
#### 
#### 10*2[subtitle folder's 2 name, etc.] (with *.ass file in it)
####     ǁ            ǁ
####     ǁ            ╚ ▬ ▬ Link to folder
####     ╚ ▬ script
####             ǁ
####             ╚ ▬ ▬ file name (with high and percent, the same or new one) *.ahk
####                 ǁ
####                 ╚ ▬ ▬ Link to file                                             
#### 								
#### 				
#### Notes:
#### Open the README.md file in Notepad, to see this Scheme better.
#### 
#### 'Link to folder' - click on it, then go one level Up. 
#### Find the video with a same name. Drag-n-drop it to 
#### this folder. After you finished, return the video 
#### to it's original place.
#### 
#### Aegisub program can't load video automaticaly of links (*.lnk) files. So 
#### when you are loading an *.ass file of your Mindmap program, you 
#### should have the video file in same folder prepared already or a 
#### Simbolic link (Hardlink).
#### If you don't want to move the video file every time, you have two 
#### options:
#### 1) To Copy that same video file to each folder, where the *.ass file is 
#### (with the lines for that connected video file). - But that is not great idea 
#### to do so, because your are using the space of your hard drive, and it's 
#### Capacity wold be out of Free space very easely.
#### 
#### 2) The much better solution is: to create the 'Simbolic link' to that same 
#### video file, and put it in every folder, where video file should be.
#### There are couple of programs in Internet to do the Simbolic links, that 
#### you can find and download yourself. One of them called - 
#### 'HardLinkShellExt'.
#### 
### How to use it:
#### 1) Install that program;
#### 2) RMB on video file, 'Pick Link Source' to select;
#### 3) Select the folder, where you want to put the Simbolic link by RMB.
#### 4) In opened menu select - 'Drop as.../ Simbolic link' (it's beside the 
#### 'Hardlink' option).
#### 5) Now repeat steps 1-4 for your all other folders.
#### 
#### Now you can use Aegisub program as usual - as if your video file exist in 
#### each folder. And when you'll open any *.ass file of your mindmapping 
#### program, that should connect that Simbolic link automaticaly, too. - 
#### But let's look on your hard drive Free space! That looks the same now! 
#### That because the Simbolic links occupy nearly 0 bytes of hard drives 
#### space.
#### 
#### 'Link to file' - If video file was changed and if it has different size,  
#### suspend another AHK script, that was opened (started) before. Then, 
#### click on that new link for new AHK script.
#### 
#### ----
## Part 3. The SubtitleEdit v.3.6 program
#### 
#### These steps (that are given below) should be carried out only after you 
#### have already made the calculation with use of - "Audio to Text" plug-in 
#### (Menu/Video/Audio to Text.).
#### 
#### 1a) Check the language of keyboard layout on your system, 
#### first. That should be set to - ENG (English).
#### 
#### 1b) Press an icon Show/hide waveform on top Tools ribbon, 
#### so the Video Viewport should go to the Top-right corner, 
#### and an Audio Viewport (waveform Viewport) should be 
#### in the center of screen, as a bigger Viewport now.
#### Audio Viewport (waveform Viewport) helps to see better 
#### (and to control) what you are doing.
#### 
#### Press once this window in order that the first converting calculation 
#### was executed.
#### (This step is not necessarily to do, if that was written in GhostMouse 
#### already (at the file of steps performance). But if the file is big enough as 
#### 'text volume', then it is always better to carry out this step before-head 
#### manually also! The GhostMouse program can simply, without having 
#### waited for converting, to continue processing the other steps further 
#### very quick. And you will get an error, as a result.)
#### 
#### 2) Open the Menu/ Tools/ Merge short Lines. Maximum 
#### characters in one paragraph = 65. Only merge 
#### continuation lines - remove a tick (for the first time 
#### of using this tool).
#### 3) Go to Menu/ Tools/ Adjust durations. Put tick 
#### on Seconds. Add seconds to set = 15.000. OK.
#### 4) Menu/ Tools/ Bridge small gaps between subtitles. 
#### Bridge gaps smaller then = 1. Min. milliseconds 
#### between lines = 0. OK.
#### 5) Menu/ Tools/ Fix common errors. Apply selected fixes. 
#### Refresh available fixes. Then again - Apply selected 
#### fixes. Refresh available fixes. OK.
#### 6) Menu/ Tools/ Bridge small gaps between subtitles. 
#### Bridge gaps smaller then = 1. Min. milliseconds 
#### between lines = 0. OK.
#### 7) Menu/ Tools/ Merge short Lines. Only merge 
#### continuation lines - put back a tick (for the 2nd time 
#### of using this tool). (Maximum characters 
#### in one paragraph = 65.)
#### 8) Menu/ Tools/ Merge short Lines. Maximum characters 
#### in one paragraph = 65. Only merge continuation 
#### lines - remove a tick (for the last time of using 
#### this tool).
#### 9) Menu/ Tools/ Bridge small gaps between subtitles. 
#### Bridge gaps smaller then = 1. Min. milliseconds 
#### between lines = 0. OK.
#### 10) Go to top Ribbon. Save file As icon to click. 
#### Save file as *.ass format.
#### 11) That is OK, if not all '/br' were cleaned up before 
#### for majority of the lines.
#### 12) We will fix that very easily: Go to Explorer. 
#### Open this file in Notepad program.
#### And over there, with the help of simple Search and 
#### replacement of verbal value (chose -Normal, 
#### but not -Regex), you should find and replace 
#### everything with '\N' (without quotes) 
#### by simple 'Space' (press Spacebar).
#### 13) Save the file. Close it.
#### 14) Drag-n-drop it back to SubtitleEdit program. 
#### Save it as *.srt format now, too.
#### That's all the steps!
#### 
### Also, you can use free program - GhostMouse, 
#### to record all your steps. Then, to playback that. 
#### 1) Start GhostMouse program. Press Record.
#### 2) Stop recording, after you have finished. 
#### Save the file of this recording.
#### 3) Go to Menu/Options/Playback/Speed. 
#### Set the Speed = 2 X.
#### 4) Press Ctrl+F2 for Playback, to check.
#### At the next time, you don't need to repeat 
#### all those steps manualy. Just use Ctrl+F2 hotkeys 
#### for Playback (Or use the icon).
#### 5)The GhostMouse program's UI (window) is not really so "user 
#### friendly" to last versions of Windows. Therefore if you want to move 
#### that small window somewhere of the center, all you need to do:
#### Press it's most left corner (there are the first 4 pixels at the very left 
#### part), and on the top colored line. Then the window can be moved very 
#### easily.
#### 
#### Thank you very much!
#### (You can share a coffee with me  
#### on ko-fi.com/modelk2 Thanks a lot!)
####
