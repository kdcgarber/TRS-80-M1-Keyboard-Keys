use <../functions.scad>
include <../settings.scad>

// based off GMK keycap set

module cherry_row(row=3, column=0) {

 $bottom_key_width = 18.16;                         // Width of the keycap base in mm (bottom edge)
  $bottom_key_height = 18.16;                       // Height of the keycap base in mm (front-to-back at bottom)
  $width_difference = $bottom_key_width - 11.85;    // Reduction in width from base to top in mm (creates taper)
  $height_difference = $bottom_key_height - 14.64;  // Reduction in height from base to top in mm (creates taper)
  $dish_type = "cylindrical";                       // Shape of the top dish (cylindrical for curved scoop)
  $dish_depth = 0.65;                               // Depth of the dish cutout in mm (how deep the curve digs into the top)
  $dish_skew_x = 0;                                 // Horizontal skew of the dish in mm (0 = centered, positive = shifted right)
  $dish_skew_y = 0;                                 // Vertical skew of the dish in mm (0 = centered, positive = shifted back)
  $top_skew = 2;                                    // Overall skew of the keycap top in mm (shifts the top toward the back for ergonomics)

  $top_tilt_y = side_tilt(column);
  extra_height = $double_sculpted ? extra_side_tilt_height(column) : 0;

  // NOTE: cherry keycaps have this stem inset, but I'm reticent to turn it on
  // since it'll be surprising to folks. the height has been adjusted accordingly
  // $stem_inset = 0.6;
  extra_stem_inset_height = max(0.6 - $stem_inset, 0);

  // <= is a hack so you can do these in a for loop. function row = 0
  if (row <= 1) {
    $total_depth = 9.8 - extra_stem_inset_height + extra_height;
    $top_tilt = 0;

    children();
  } else if (row == 2) {
    $total_depth = 7.45 - extra_stem_inset_height + extra_height;
    $top_tilt = 2.5;

    children();
  } else if (row == 3) {
    $total_depth = 6.55 - extra_stem_inset_height + extra_height;
    $top_tilt = 5;
    children();
  } else if (row == 3) {
    $total_depth = 6.7 + 0.65 - extra_stem_inset_height + extra_height;
    $top_tilt = 11.5;
    children();
  } else if (row >= 4) {
    $total_depth = 6.7 + 0.65 - extra_stem_inset_height + extra_height;
    $top_tilt = 11.5;
    children();
  } else {
    children();
  }
}
