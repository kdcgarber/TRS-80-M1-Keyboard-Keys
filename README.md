![TRS-80-M1-Keyboard-Keys](/images/trs-80MotherboardKeyBoard3.jpg?raw=true "Header")

# TRS-80 Model 1 Keyboard Keycaps 
This project is my way of 3D printing my own keycaps for my TRS-80 M1. <br>
I have an M1 motherboard that had no case or keyboard and needed a place to live. <br>
All of the parts needed to do this have been reproduced already by others, but I wanted to play a little more on my own. <br>

This site has .stl and .3mf files I created for my reproduction of my missing 1978 Keycaps.  <br>
For one iteration, I used a modern keyboard with cherry-style keycaps but arranged them with a look to resemble the layout of an original, yet I used an off-the-shelf keyboard.  <br>
Since I was already creating those keys, I thought I'd also create the keys that fit the standard 1978 keys just for fun.  <br>
Even though I didn’t need them currently, it was fun to create and make available for others now to either print their own or take inspiration in their own way to reproduce other keycaps.  <br>

A common element across all the keycaps is the set of glyphs I created to mimic the original Model I keyboard font style.  <br>
I've included those also as .ttf files. In the end, I primarily used Medium .ttf.   <br>
I first tried Regular, but the characters looked too thin.  <br>
I tested Bold as well, but it appeared oversized. So, in true Goldilocks fashion, Medium was just right.  <br>
Because of that, I never went back to refine the Bold version’s glyph shapes. <br>

These keys are inexpensive to reproduce if you have access to a 3D printer.  <br>
The estimated cost of printing a full set in a single-color PLA on my own machine is about $3.37, making them very affordable. <br>

The keys are not really cherry style though they fit the classic + shaped key switches. <br>
I labeled them as cherry because I started with a 60% keyboard that I was replacing that had cherry keycaps.  <br>
The new look is a mix, but maybe more in the DSA keycap style. <br>

There are two styles for the keys with several variations, the Hi-Tek and the Alps. <br>
The Alps I went with a rectangular pattern instead of round stems. <br>
The round stems were a little weaker in design, so I went with the rectangular “+" shape that seemed to work the best. <br>
I don’t have a TRS-80 Alps keyboard to test those on, only the newer "+" shaped keyboards. <br>


<table>
  <tr>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/bothNew.jpg" width="500" height="300"></td>
  </tr>
</table>  

<br>
The keyboard on the left is my Amazon ordered $15 USB keyboard with the new 3d printed keys, next to my first M1 with my replacement 3d PLA keycaps filled then with white UV resin.
Both came out very well, though not profesional purchased keys.
 
## Content in repository
	📂 M1-Fonts		    -- M1 keyboard fonts to be used with key cap creation
	│
	├── TRS80M1-Bold.sfd        - Bold     fontforge editable file
	├── TRS80M1-Bold.ttf        - Bold     Font file
	├── TRS80M1-Medium.sfd      - Medium   fontforge editable file
	├── TRS80M1-Medium.ttf      - Medium   Font file
	├── TRS80M1-Regular.sfd     - Regular  fontforge editable file
	├── TRS80M1-Regular.ttf     - Regular  font file
	│
 	📂 openscad/KeyV2-All
	│
	├─📂 TRS-80-1978-M1/				        -- 1978 style M1 Keys with (HI-Tek) square stems
	│    ├── trs-80-1978-KeyCaps-FromSTL.3mf	-- My edited version I use to print. it's all ready to print more keys
	│    ├── trs-80-1978-KeyCaps.stl		    -- An outputted .stl file with fonts just inset in one color
	│    ├── trs-80-1978-KeyCaps.3mf		    -- An outputted .3mf file with 2 colors if you want to print in 2 colors
	│    └── trs-80-1978-KeyCaps.scad		    -- Run this OpenSCAD file to edit or generate the current keys
	│
	├─📂 TRS-80-1978-M1-KEYPAD/			            -- M1 Key Pad Keys with (Hi-Tek) square stems
	│    ├── trs-80-1978-KeyCaps-KeyPad-FromSTL.3mf	-- My edited version I use to print. it's all ready to print more keys
	│    ├── trs-80-1978-KeyCaps-KeyPad.stl		    -- An outputted .stl file with fonts just inset in one color
	│    ├── trs-80-1978-KeyCaps-KeyPad.3mf		    -- An outputted .3mf file with 2 colors if you want to print in 2 colors
	│    └── trs-80-1978-KeyCaps-KeyPad.scad	    -- Run this OpenSCAD file to edit or generate the current keys
	│
	├─📂 TRS-80-1978-M1-StandardLayoutCherryKeys    				-- Similar the new (ALPS) Cherry key style switches, but only the keys for a new replacment M1 keyboard with the standard + stem connector 
	│    ├── TRS-80-1978-M1-StandardLayoutCherryKeys-FromSTL.3mf	-- My edited version I use to print. it's all ready to print more keys
	│    ├── TRS-80-1978-M1-StandardLayoutCherryKeys.stl			-- An outputted .stl file with fonts just inset in one color
	│    ├── TRS-80-1978-M1-StandardLayoutCherryKeys.3mf			-- An outputted .3mf file with 2 colors if you want to print in 2 colors
	│    └── TRS-80-1978-M1-StandardLayoutCherryKeys.scad			-- Run this OpenSCAD file to edit or generate the current keys
	│
	├─📂 TRS-80-1978-M1-StandardLayoutCherryKeysFlat/			        -- M1 low profile (ALPS) keys with the standard + stem connector 
	│    ├── TRS-80-1978-M1-StandardLayoutCherryKeysFlat-FromSTL.3mf	-- My edited version I use to print. it's all ready to print more keys
	│    ├── TRS-80-1978-M1-StandardLayoutCherryKeysFlat.stl		    -- An outputted .stl file with fonts just inset in one color
	│    ├── TRS-80-1978-M1-StandardLayoutCherryKeysFlat.3mf		    -- An outputted .3mf file with 2 colors if you want to print in 2 colors
	│    └── TRS-80-1978-M1-StandardLayoutCherryKeysFlat.scad	    	-- Run this OpenSCAD file to edit or generate the current keys
	│
	├─📂 TRS-80-1978-M1-StandardLayoutCherryKeysRotatedStems    				-- Similar to the new (ALPS) Cherry key style switches but the stems are rotated for the standard + stem connector 
	│    ├── TRS-80-1978-M1-StandardLayoutCherryKeysRotatedStems-FromSTL.3mf	-- My edited version I use to print. it's all ready to print more keys
	│    ├── TRS-80-1978-M1-StandardLayoutCherryKeysRotatedStems.stl			-- An outputted .stl file with fonts just inset in one color
	│    ├── TRS-80-1978-M1-StandardLayoutCherryKeysRotatedStems.3mf			-- An outputted .3mf file with 2 colors if you want to print in 2 colors
	│    └── TRS-80-1978-M1-StandardLayoutCherryKeysRotatedStems.scad			-- Run this OpenSCAD file to edit or generate the current keys
	│    
	└─📂 TRS-80-M1-60%-Cherry					                -- M1 Keys for a new (ALPS) Cherry key style key switches with the standard + stem connector 
	     ├── trs-80-60% Cherry Key Caps-From-STL.3mf			-- My edited version I use to print. it's all ready to print more keys
	     ├── trs-80-60% Cherry Key Caps.stl				        -- An outputted .stl file with fonts just inset in one color
	     ├── trs-80-60% Cherry Key Caps.3mf				        -- An outputted .3mf file with 2 colors if you want to print in 2 colors
		 └── trs-80-60% Cherry Key Caps.scad			        -- Run this OpenSCAD file to edit or generate the current keys

<br>

## The Keycaps:
I chose to use OpenSCAD to recreate the keycaps for my model 1 keyboards. https://openscad.org/ <br>
I also found a keycap library to get me started which was very helpful.  That template was found at https://github.com/rsheldiii/Keyv2. <br>

I have a Bambu Lab X1 carbon which has a bed size of 256x256x256mm that prints them all very well. <br>
I tried many renditions of the keycaps having the fonts raised and inset and many iterations of placement of the stems of the original keycaps. <br>
I used the regular font shape and only had that single TRS80M1-Medium.ttf installed to ensure I ran with the correct font on the keycaps. <br>

I also recreated characters to represent those on the original keycaps. <br>
I used https://fontforge.org/en-US/downloads/ to help lay those out. <br>
Though none of this is perfect, it creates very nice replacement for M1 keycaps that can be easily 3d printed at home. <br>


The .3mf files that were direct exports of the OpenSCAD creations will print a 2-color keycap if you would prefer. <br>
They do print, but I had poor luck printing any of them in two colors without changing to the Bold font. <br>
I didn’t prefer the look though of the Bold font and chose the two-step approach of adding resin after the single-color print with the medium characters. <br>
My printer does the material handler, so it changes colors for me automatically, though it's purges around 100 times before completing and takes quite a while to print. <br>

In the end I chose the .3mf files with the -FromSTL.3mf ending. <br>
These keycaps are print in a single color with the characters inset in the keycap tops. <br>
I then use a white UV 3d resin to fill the relief and replicate the black keys with white letters. <br>
The resin was added using a craft syringe filled with UV resin and slowly added to each key (also a fiddly task). <br>  
I then set the key under the UV light right away to keep the resin from bleeding into the layer lines. <br>
<img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/UVLight.jpg" width="300" height="300">

# Samples:

<table>
  <tr>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/KeyCapTypes.jpg" width="700" height="700"></td>
  </tr>
</table>


<pre>
1 Original 1978 M1 with square (Hi-Tek) keycap stems
2 Cherry key horizontal and keycap with relief glyphs filled with white resin
3 Keycaps with vertical  layout (this keycap has not been filled with white resin yet)
4 Horizontal black PLA keycaps from .mf3 printed including white PLA glyphs 
5 Horizontal key with low profile black PLA keycaps with white PLA glyphs
6 Standard USB keyboard replaced with black PLA keycaps designed like the 1978 M1 layout
</pre>


### 1978 M1
 -- Number 1 
<table>
  <tr>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/1978-M1.jpg" width="300" height="300"></td>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/m1keys-beforewhite.jpg" width="500" height="300"></td>
  </tr>
  <tr>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/m1keys-onplate2.jpg" width="300" height="300"></td>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/trs-80-1978-KeyCapsSliceResults.png" width="500" height="300"></td>
  </tr>
    <tr>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/M1-1978.jpg" width="300" height="300"></td>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/m1key-removing-supports.jpg" width="500" height="300"></td>
  </tr>
</table>

### 1978 M1 KEYPAD
 -- These go with number 1
<table>
  <tr>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/keypadkeys.jpg" width="300" height="300"></td>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/originalkeyswithkeypad.jpg" width="500" height="300"></td>
  </tr>
</table>




### TRS-80-1978-M1-noLetters
 -- These are just number 6 with no glyphs
### TRS-80-1978-M1-StandardLayoutCherryKeys
 -- Number 2
### TRS-80-1978-M1-StandardLayoutCherryKeysFlat
 -- Number 5
### TRS-80-1978-M1-StandardLayoutCherryKeysRotatedStems
 -- Number 3


### M1 60% Cherry Keys
 -- Number 6
<table>
  <tr>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/m1keys-onplate2.jpg" width="300" height="300"></td>
	<td><img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/m1keys-usb.jpg" width="500" height="300"></td>
  </tr>
</table>


## The fonts:
I've installed all 3 ttf files on MS windows 11, but my code for creating keys is using just the Medium definition. <br>
For the caps I only used medium though any of them can be used, so I just installed that single .ttf, Though I've tested and used all 3 types. <br>
I used the windows font manager to look at any/all the installed fonts, and it allows them to be removed also. <br>

To reproduce the keys the included -FromSTL.3mf files or the .stl will print what I've done and none of the other tools need to be installed. <br>

The output of the keys is pre-slanted to reduce the layer lines of rounded corners at them top of keys to make them very smooth with no need to sand and paint. <br>
Because there are supports needed to print the key caps, there will be support removal on each piece which is fiddly. <br>
The final result is a good reproduction that can be reproduced at home and not require a purchased solution. <br>
Though, as mentioned, it’s not perfect. <br>

I used a tool in windows called FontForge to design each glyph in the font file. <br>


### Material used
<pre>
● Glue Syringe Needle Tip Squeeze Bottle                             https://www.amazon.com/dp/B0DD7MFKGP                                                   $6.78
● TINMORRY Matte PLA Filament 1.75 mm, 1 KG, Matte Black             https://www.amazon.com/TINMORRY-Filament-Printing-Compatible-Printers/dp/B0DSFWTXDX   $13.99
● SUNLU Water Washable 3D Printer Resin                              https://www.amazon.com/dp/B0B943KWSQ                                                  $14.56
● HATCHBOX PLA Filament 1.75mm Black, 3D Printer Filament 1KG Spool  https://www.amazon.com/dp/B00J0ECR5I?th=1									           $21.99
</pre>


I tested both types of PLA and even other different color PLA and ASA choices. <br>
I preferer the matte back of the Tinmorry, though matte may not be what everyone likes. <br>

### Next up:
I bought some HATCHBOX black PLA to test. It has a darker slightly glossier finish and looks good. <br>
I'm testing laser etching of keycaps glyphs to see if I can get anything to look good instead of hand filling each keycap. <br>
To start this testing, I created a keycap tray that I printed to hold the keycaps correctly for etching (I hope).
<img src="https://github.com/kdcgarber/TRS-80-M1-Keyboard-Keys/blob/main/images/KeycapsInTray.jpg" width="500" height="300">


<br><br>