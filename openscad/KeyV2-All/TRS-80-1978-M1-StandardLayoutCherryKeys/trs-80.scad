include <./layout.scad>

trs80CherryKeyCaps_layout = [       // this is the size of each key, in units of 19.05mm (the size of a standard key)
  [1,1,1,1,1,1,1,1,1,1,1,1,1],
  [1,1,1,1,1,1,1,1,1,1,1,1,1,1],
  [1,1,1,1,1,1,1,1,1,1,1,2,1],
  [1.5,1,1,1,1,1,1,1,1,1,1,1.5],
  [8.01] ];


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
   [  ["1",5,0.8,"!",5,-0.8], ["2",5,0.8,"\"",5,-0.8], ["3",5,0.8,"#",4.5,-0.8], ["4",5,0.8,"$",5,-0.8], ["5",5,0.8,"%",4.5,-0.8], ["6",5,0.8,"&",4.5,-0.8], ["7",5,0.8,"'",5,-0.8], ["8",5,0.8,"(",4.5,-0.8], ["9",5,0.8,")",4.5,-0.8], ["0",5,0.8," ",5,-0.8], [":",5,0.8,"\u002A",5,-0.8], ["-",5,0.8,"=",5,-0.8], ["BREAK",2.25,0,"",5,0]  ],
  [ ["\u0080",8,0,"",8,0], ["Q",6,0,"",6,0], ["W",6,0,"",6,0], ["E",6,0,"",6,0], ["R",6,0,"",6,0], ["T",6,0,"",6,0], ["Y",6,0,"",6,0], ["U",6,0,"",6,0], ["I",6,0,"",6,0], ["O",6,0,"",6,0], ["P",6,0,"",6,0], ["@",6,0,"",6,0], ["\u007f",8,0,"",8,0], ["\u0081",8,0,"",8,0] ],
  [ ["\u0082",8,0,"",8,0], ["A",6,0,"",6,0], ["S",6,0,"",6,0], ["D",6,0,"",6,0], ["F",6,0,"",6,0], ["G",6,0,"",6,0], ["H",6,0,"",6,0], ["J",6,0,"",6,0], ["K",6,0,"",6,0], ["L",6,0,"",6,0], [";",5,0.8,"+",5,-0.8], ["ENTER",4,0,"",6,0], ["CLEAR",2.5,0,"",5,0] ],
  [ ["SHIFT",3,0,"",5,0], ["Z",6,0,"",6,0], ["X",6,0,"",6,0], ["C",6,0,"",6,0], ["V",6,0,"",6,0], ["B",6,0,"",6,0], ["N",6,0,"",6,0], ["M",6,0,"",6,0], [",",5,0.8,"<",5,-0.8], [".",5,0.8,">",5,-0.8], ["/",5,0.8,"?",5,-0.8], ["SHIFT",3,0,"",5,0] ],
  [  ["",6,0,"",6,0] ]
  ];



module trs80CherryKeyCaps(profile) {
// layout(list, profile="dcs", legends=undef, front_legends=undef, row_sculpting_offset=0, row_override=undef, column_sculpt_profile="2hands", column_override=undef) 
  offsets = [.75, 0, .5, .55, 3];
  for (r = [0 : len(trs80CherryKeyCaps_layout)-1]) {
    translate_u(offsets[r], -r)
      layout([trs80CherryKeyCaps_layout[r]],
             profile,
             [trs80CherryKeyCaps_legends[r]],
             front_legends=undef,
             row_sculpting_offset=1,
             row_override=r,
             column_sculpt_profile="2hands")
      children();
  }
}


