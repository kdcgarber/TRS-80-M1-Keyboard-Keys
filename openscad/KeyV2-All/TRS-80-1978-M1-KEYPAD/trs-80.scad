include <./layout.scad>

trs80KeyCaps1978_layout = [       // this is the size of each key, in units of 19.05mm (the size of a standard key)
  [1,1,1],
  [1,1,1],
  [1,1,1],
  [1,1,1]
];



trs80KeyCaps1978_stemLocation = [       // left,right,center -- these values place the stems location on a key
  ["center","center","center"],
  ["center","center","center"],
  ["center","center","center"],
  ["center","center","center"]
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
trs80KeyCaps1978_legends = [
  [ ["7",6,0,"",6,0], ["8",6,0,"",6,0], ["9",6,0,"",6,0] ],
  [ ["4",6,0,"",6,0], ["5",6,0,"",6,0], ["6",6,0,"",6,0] ],
  [ ["1",6,0,"",6,0], ["2",6,0,"",6,0], ["3",6,0,"",6,0] ],  
  [ ["0",6,0,"",6,0], [".",6,0,"",6,0], ["ENTER",2,0,"",2,0] ]
];




module trs80KeyCaps1978(profile) {                // layout(list, profile="dcs", legends=undef, front_legends=undef, row_sculpting_offset=0, row_override=undef, column_sculpt_profile="2hands", column_override=undef) 
  offsets = [.75, 0, .5, .55, 3]; // per-row horizontal shifts in key units
  for (r = [0 : len(trs80KeyCaps1978_layout)-1]) {
    translate_u(offsets[r], -r)
      layout([trs80KeyCaps1978_layout[r]],              // size of each key
             profile,                                   // profile to use for sculpting the keys
             [trs80KeyCaps1978_legends[r]],             // list of keys on top of keys
             front_legends=undef,                       // front legend on the keys
             row_sculpting_offset=1,                    // row scuppting  0=flat 1=rounded cherry style,
             row_override=r,
             column_sculpt_profile="2hands",
             stem_locations=[trs80KeyCaps1978_stemLocation[r]])
      children();
  }
}



