use <../src/key_transformations.scad>
use <../src/key_profiles.scad>
use <../src/key_sizes.scad>
use <../src/key_types.scad>

// sums all values, unless a value is negative, in which case it makes it positive
// dirty hack to allow for large gaps in keysets
function abs_sum(list, x=0) =
  len(list) <= 1 ?
    x + abs(list[0]) :
    abs_sum([for (x = [1: len(list) - 1]) list[x]], x+abs(list[0]));

function two_hands(index, total) = ((index+0.5) % (total/2)) - (total/4);
function cresting_wave(index, total, mod=4) = (index < total/2) ? (((index + 0.5) / total)*mod) : -(mod - ((index + 0.5) / total * mod));
function one_hand(index, total) = (index % (total)) - (total/2);


// chooses between all the sculpting options
// checks if column is smack in middle of row - if so, no sculpting
// since we are zero indexed, the 7th row has an index of 6 and is the center of 13. 6*2+1 = 13
function double_sculpted_column(column, row_length, column_sculpt_profile) =
  (column*2 + 1 == row_length) ?
    0 : (column_sculpt_profile == "2hands") ?
      two_hands(column, row_length) : (column_sculpt_profile == "1hand") ?
        one_hand(column, row_length) : (column_sculpt_profile == "cresting_wave") ?
          cresting_wave(column, row_length) : 0;

function trs80_stem_side_offset(key_length) = ($unit * (key_length - 1)) / 2;

function trs80_stem_x_offset(key_length, stem_location, center_offset=1) =
  stem_location == "left" ? center_offset - trs80_stem_side_offset(key_length) :
  stem_location == "right" ? center_offset + trs80_stem_side_offset(key_length) :
  center_offset;

function trs80_spacebar_clip_x(key_length, edge_inset=2) =
  trs80_stem_side_offset(key_length) - edge_inset;


module layout(list, profile="dcs", legends=undef, front_legends=undef, row_sculpting_offset=0, row_override=undef, column_sculpt_profile="2hands", column_override=undef, stem_locations=undef) {
  echo("---- Starting layout generation for ", len(list), " rows ----");
  for (row = [0:len(list)-1]){
    row_length = len(list[row]);
    for(column = column_override ? column_override : [0:len(list[row])-1]) {

      row_sculpting = (row_override != undef ? row_override : row) + row_sculpting_offset;
      key_length = list[row][column];
      stem_location = stem_locations != undef ? stem_locations[row][column] : "center";
      column_value = double_sculpted_column(column, row_length, column_sculpt_profile);
      column_distance = abs_sum([for (x = [0 : column]) list[row][x]]);

      //echo("\t**shiftValue**", list[column]); 
      //echo("Legends: ", legends[row][column][0],legends[row][column][3]); 

      // supports negative values for nonexistent keys
      if (key_length >= 1) {
        translate_u(column_distance - (key_length/2), -row) {
          //echo("--- translate_u: column=", column, "row=", row, "----");
          key_profile(profile, row_sculpting, column_value)
          u(key_length) {
             $stem_x_offset = trs80_stem_x_offset(key_length, stem_location, 0);  

            //--------- trg -----------------------------------------------------------------------------------------
            //module legend(text, position=[0,0], size=undef, font=undef)   --- Notes on the legend module
            //legend(legends ? legends[row][column]: "", position=[0,0], size=undef, font=undef)  
            // [ 0, 1, 2,   3, 4, 5 ]
            // ["1",8,0.6,"!",3,-0.2]
            // upper half and all the normal keys after the fist row  

          
            // This is used to determine the location of the stem on the keycap. The original TRS-80 1978 M1 keycaps have the stem in different locations depending on the key. This is based on measurements of original keycaps and photos. added by TRG
            legend(              (legends[row][column][3] != "") ? legends[row][column][3] : legends[row][column][0] ,                          	// Upper shift key or normal key
                  position = [0, (legends[row][column][3] != "") ? legends[row][column][5] : legends[row][column][2] ],					                  // Upper shift key location or normal key location
                  size     =     (legends[row][column][3] != "") ? legends[row][column][4] : legends[row][column][1],				                      // Upper Shift key size or normal key size
                  font     = "TRS80M1:style=Medium"  //Bold, Regular, Medium
            ) rotate([30,5,0])
            
            // lower half of the first row only
            legend(  
                  (legends[row][column][3] != "") ? legends[row][column][0] : "",					                                                       // Lower shift key 
                  position = [0, legends[row][column][2]],										                                                                   // Lower shift key location
                  size     = legends[row][column][1],											                                                                       // Lower shift key size
                  font     = "TRS80M1:style=Medium"  //Bold, Regular, Medium
            ) rotate([30,5,0])
            //---------------------------------------------------------------------------------------------------




            front_legend(front_legends ? front_legends[row][column] : ""){ 
              //echo("--- front_legend: row=", row, "column=", column, "key_length=", key_length);
              $row = row;
              $column = column;
              $stem_positions = [[0,0]];
              if (key_length == 6.25) {
                spacebar() {
                  if ($children) {
                    children();
                  } else {
                    key();
                  }
                }
              } else if (key_length == 8) {         // space bar is 8u and has a special stem with wire clips for the stabilizer.  The stem is a trs80_wire_clip_stem
                         
                $stabilizer_type = "trs80_wire_clip";
                $stabilizer_stem_inset = $stem_inset - 9.5;  // the 10 increase the lenght of the 2 outer stems to make them longer for the wire clips.  
                $stabilizers = [
                  [trs80_spacebar_clip_x (key_length), 0],   // move it 2mm off center of 0
                  [-trs80_spacebar_clip_x(key_length), 0]    // move it 2mm off center of 0
                ];
                if ($children) {
                  //echo("-- stabilizer children --");
                  children();
                } else {
                  //echo("-- stabilizer key --");
                  key();
                }
              } else if (key_length == 8.01) {
                $stem_positions = [[-48.5,0], [0,0], [48.5,0]];
                if ($children) {
                  children();
                } else {
                  key();
                }
              } else if (key_length == 2.25) {
                lshift() {
                  if ($children) {
                    children();
                  } else {
                    key();
                  }
                }
              } else if (key_length == 2) {
                backspace() {
                  if ($children) {
                    children();
                  } else {
                    key();
                  }
                }
              } else if (key_length == 2.75) {
                rshift() {
                  if ($children) {
                    children();
                  } else {
                    key();
                  }
                }
              } else {
                {
                  if ($children) {
                    children();
                  } else {
                    key();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}



// much simpler, decoupled layout function
// requires more setup - it only does what is in the layout array, which is translate
// and key length. you have to do row / column profile yourself and always pass
// children()
// this is probably the way we'll go forward
module simple_layout(list) {
  for (row = [0:len(list)-1]){
    /* echo("**ROW**:", row); */
    for(column = [0:len(list[row])-1]) {
      key_length = list[row][column];
      column_distance = abs_sum([for (x = [0 : column]) list[row][x]]);

      /* echo("\t**COLUMN**", "column_value", column_value, "column_distance", column_distance); */

      // supports negative values for nonexistent keys
      if (key_length >= 1) {
        translate_u(column_distance - (key_length/2), -row) {
          u(key_length) { // (row+4) % 5 + 1
            $row = row;
            $column = column;

            if (key_length == 6.25) {
              spacebar() children();
            } else if (key_length == 2.25) {
              lshift() children();
            } else if (key_length == 2) {
              backspace() children();
            } else if (key_length == 2.75) {
              rshift() children();
            } else {
              children();
            }
          }
        }
      }
    }
  }
}
