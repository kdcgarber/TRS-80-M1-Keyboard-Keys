use <../functions.scad>
include <../settings.scad>
// The key profile for TRS-80 1978 M1. 
// Based on measurements of original keycaps and photos. added by TRG
// This originally started as dsa using its defaults to start this new look

module trs801978M1_row(row=3, column = 0) {
  //echo("--- Generating TRS-80 1978 M1 keycaps, row ", row, " column ", column);

  $key_shape_type = "sculpted_square";            // "rounded_square", "sculpted_square", "iso_enter", "square", "oblong"
  $bottom_key_width = 18.24;                      // 18.4; // Width of the keycap base in mm (bottom edge)
  $bottom_key_height = 18.24;                     // 18.4; // Height of the keycap base in mm (front-to-back at bottom)
  $width_difference = 6;                          // 5.7; // Reduction in width from base to top in mm (creates taper)
  $height_difference = 6;                         // 5.7; // Reduction in height from base to top in mm (creates taper)



  //$top_tilt = row == 5 ? -21 : (row-3) * 7;
  $top_tilt = 0;
  $top_skew = 0;
  $dish_type = "spherical";
  $dish_depth = 1.2;
  $dish_skew_x = 0;
  $dish_skew_y = 0;
  $height_slices = 40;


  $corner_sculpting = function(progress) pow(progress, 2);
  $side_sculpting = function(progress) (1 - progress) * 4.5;
  
  $corner_radius = 1;
  $more_side_sculpting_factor = 0.4;

  $top_tilt_y = side_tilt(column);
  extra_height = $double_sculpted ? extra_side_tilt_height(column) : 0;
 
  // 13 is about the keycap size itself not including the stem
  // these are all the same at 13 because all of the keys have the same height
  depth_raisers = [0, 0, 0, 0, 0, 0];
  if (row < 1 || row > 4) {
    $total_depth = 13 + depth_raisers[row] + extra_height;
    children();
  } else if (row == 1) {
    $total_depth = 13 + depth_raisers[row] + extra_height;
    children();
  } else if (row == 2) {
    $total_depth = 13 + depth_raisers[row] + extra_height;
    children();
  } else if (row == 3) {
    $total_depth = 13 + depth_raisers[row] + extra_height;
    children();
  } else if (row == 4) {
    $total_depth = 13 + depth_raisers[row] + extra_height;
    children();
  } else {
    children();
  }
}