# agent2
Vfx/Stacked Panel test agent - with clickbars for swapping window layouts from RR/Vfx, and relay group RR's

work in progress - current agent i'm throwing my ideas at, didn't have time to try and get Vfx to work in the Basic Agent so I left it as is.
Everything in this agent will change with new updates from Lax (team one sounds like it is in the works)- just spending time on testing/learning more about LavishScript atm.  I'll probably update this one as I learn more.

Setup for 2560x1080 - 1920x1080 monitor layout     
Vfx view - Mouse2 or MouseWheel for selecting - they are also tied into swapping out of RR fixed Layout

Vfx3 - grid: 3 rows, 3 columns....grow to the right     
Vfx4 - grid: 4 rows, 3 columns....grow to the right     
Vfx5 - grid: 4 rows, 5 columns....grow to the bottom

Utility toggle buttons are on the left side of the screen: All, RR -not used anymore, Party, ActionBars, UI - not used     
Toggle: Mouse1 on, MouseWheel off

Party Buttons are the only ones i use atm besides the toggles - they overlay half of my party frames - using Clique atm on the other side.     
Mouse1 - focus toon     
Mouse2:  1st btn - toggle on RR for relaygroup party. Kicks in Fixed Layout and shifts dxnothing over     
Mouse2:  2nd btn - toggle on RR ranged group. Kicks in Fixed Layout and shifts dxnothing over      
Mouse2:  3rd button - disable RR. Kicks back to Vfx View     
Mouse2:  4rth btn - toggle on RR mouse2 all.  Kicks back to Vfx View     
MouseWheel: RR Disable - driving mainly with my healer in Slot2 - GHK for slot2 also kicks it back to vfx view/rr disable

Relaygroups are base on 5man group 2 melee 3 ranged - RR party, ranged, mouse2 groupings.

first try at making a video with obs - turned out blurry - need to look up better settings for OBS ...but you can get the gist of what this does.   
Quick run thru of the agents, then layouts and startup of Vfx3,4,5 - partyframe buttons for RR at the end - also put in a relaygroup for ranged RR  
https://www.youtube.com/watch?v=cyTmA_B0oS0 for the vid

side note: combining the test ideas and agents kept crashing clients with quick swapping from fixed to vfx layout and using RR     
ran thru a bunch of things trying to figure it out -  once i disabled highlighter and performance, it ran better     
haven't messed with performance yet - probably not an issue, starting with highlighter first
messing with highlighter code to see if i can figure it out.  possibly onFrame, testing out MouseEnter/Exit atm.

** delete line 347 of BL.Uplink.iss if your games aren't listed correctly, I have dxNothing listed first and erase it from view

gameplay vid https://www.youtube.com/watch?v=UTv9qWHrfzY     
Monk tank, Priest heal, Mage, Warlock, Warrior - using EMA, Clique, GSE, Elvui - showing Elvui setup with the buttons - quick run thru of RR Party, Ranged, Mouse2 for looting/gathering - trying a mix with melee classes to see how IWT works.  Have roll in the sequence with monk - goes rolling off sometimes if the target is close...     
also use a razer keypad - try to use buttons as much as i can without using the keyboard.  Muscle memory isn't there yet with this new style of play...not the smoothest gameplay on my end.....ugh   
** video is with performance and highlighter agent off....haven't figured that out yet
