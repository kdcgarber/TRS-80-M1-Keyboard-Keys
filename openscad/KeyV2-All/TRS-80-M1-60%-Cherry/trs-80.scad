include <./layout.scad>

trs80CherryKeyCaps_layout = [       // this is the size of each key, in units of 19.05mm (the size of a standard key)
  [1,1,1,1,1,1,1,1,1,1,1,1,1,2],
  [1.5,1,1,1,1,1,1,1,1,1,1,1,1,1.5],
  [1.75,1,1,1,1,1,1,1,1,1,1,1,2.25],
  [2.25,1,1,1,1,1,1,1,1,1,1,2.75],
  [1.25,1.25,1.25,6.25,1.25,1.25,1.25,1.25]
];


////module legend(text, position=[0,0], size=undef, font=undef)

// [ Key text, text size, text offset,   shifted key text, shifted text size, shifted text offset ]
// ["A",5,-0.8,"",5,0.8]
// 0 = key text
// 1 = key text size
// 2 = key text offset (negative is up, positive is down)
// 3 = shifted key text
// 4 = shifted key text size
// 5 = shifted key text offset (negative is up, positive is down)
// "↑" = "\u0080"
// "↓" = "\u0082"
// "→" = "\u0081"
// "←" = "\u007f"

//Each row in the array is a row on the TRS-80 Keyboard
trs80CherryKeyCaps_legends = [
  [ ["\u0080",8,0,"",8,0], ["1",5,0.8,"!",5,-0.7], ["2",5,0.8,"\"",5,-0.7], ["3",5,0.8,"#",4.5,-0.7], ["4",5,0.8,"$",5,-0.7], ["5",5,0.8,"%",4.5,-0.7], ["6",5,0.8,"&",4.5,-0.7], ["7",5,0.8,"'",5,-0.7], ["8",5,0.8,"(",4.5,-0.7], ["9",5,0.8,")",4.5,-0.7], ["0",5,0.8," ",5,-0.7], [":",5,0.8,"\u002A",5,-0.7], ["-",5,0.8,"=",5,-0.7], ["BREAK",4,0,"",4,0] ],
  [ ["\u0082",8,0,"",8,0], ["Q",6,0,"",6,0], ["W",6,0,"",6,0], ["E",6,0,"",6,0], ["R",6,0,"",6,0], ["T",6,0,"",6,0], ["Y",6,0,"",6,0], ["U",6,0,"",6,0], ["I",6,0,"",6,0], ["O",6,0,"",6,0], ["P",6,0,"",6,0], ["@",6,0,"",6,0], ["\u007f",8,0,"",8,0], ["\u0081",8,0,"",8,0] ],
  [ ["Caps",5,0,"",5,0], ["A",6,0,"",6,0], ["S",6,0,"",6,0], ["D",6,0,"",6,0], ["F",6,0,"",6,0], ["G",6,0,"",6,0], ["H",6,0,"",6,0], ["J",6,0,"",6,0], ["K",6,0,"",6,0], ["L",6,0,"",6,0], [";",5,0.8,"+",5,-0.7], ["CLR",3,0,"",6,0], ["ENTER",5,0,"",5,0] ],
  [ ["SHIFT",5,0,"",5,0], ["Z",6,0,"",6,0], ["X",6,0,"",6,0], ["C",6,0,"",6,0], ["V",6,0,"",6,0], ["B",6,0,"",6,0], ["N",6,0,"",6,0], ["M",6,0,"",6,0], [",",5,0.8,"<",5,-0.7], [".",5,0.8,">",5,-0.7], ["/",5,0.8,"?",5,-0.7], ["SHIFT",5,0,"",5,0] ],
  [ ["Ctl",5,0,"",5,0], [" ",4,0,"",4,0], ["Alt",5,0,"",5,0], ["",6,0,"",6,0], ["Alt",5,0,"",5,0], [" ",4,0,"",4,0], ["Ctl",5,0,"",5,0], ["Fn",5,0,"",5,0] ]
];



module trs80CherryKeyCaps(profile) {
// layout(list, profile="dcs", legends=undef, front_legends=undef, row_sculpting_offset=0, row_override=undef, column_sculpt_profile="2hands", column_override=undef) 
	layout(
	  trs80CherryKeyCaps_layout,    // size of each key
	  profile,                      // profile to use for sculpting the keys
	  trs80CherryKeyCaps_legends,   // list of keys on top of keys
    front_legends=undef,          // front legend on the keys
	  row_sculpting_offset=1,       // row scuppting  0=flat 1=rounded cherry style,
    row_override=undef,
    column_sculpt_profile="2hands",
    column_override=undef,
    )       
    
    children();
 	  
 	  
}



