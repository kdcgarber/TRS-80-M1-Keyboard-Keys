use <../functions.scad>
include <../settings.scad>

module trs80flat_row(row=3, column = 0) {
  $bottom_key_width = 18.16;
  $bottom_key_height = 18.16;
  $width_difference = 2;
  $height_difference = 2;
  $top_tilt = 2.5;
  $top_skew = 0.75;
  $dish_type = "disable";

  // something weird is going on with this and legends - can't put it below .0.863 or they won't show
  // 0.863 the legends just start to show on the top of the keycaps
  // dish_depth if the legends are not inset, controlls how tall the legends appear on the keycap
  $dish_depth = 0.9;  

  $dish_skew_x = 0;
  $dish_skew_y = 0;
  $minkowski_radius = 1.75;
  $key_bump_depth = 0.6;
  $key_bump_edge = 2;
  //also,
  $rounded_key = true;

  $top_tilt_y = side_tilt(column);
  extra_height =  $double_sculpted ? extra_side_tilt_height(column) : 0;

  $total_depth = 6 + abs((row-3) * 0.5) + extra_height;
  //echo("--- Total_depth: ", $total_depth);
 
  $top_tilt =  0;
  children();

}
