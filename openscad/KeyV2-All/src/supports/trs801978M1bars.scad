module trs801978M1bars(stem_type, loft, height) {
  //echo("--- Adding TRS-80 1978 M1 style bars for stem type ", stem_type, " loft ", loft, " height ", height);

  bar_w = 2;        // thickness of vertical bars
  bar_d = 2;        // thickness of horizontal bars
  bar_len = 100;    // long dimension of each bar
  // Increase this value to make supports shorter.
  support_height_trim = is_undef($trs80_m1_support_height_trim) ? 1 : $trs80_m1_support_height_trim;
  bar_h = height - support_height_trim;

  // Half sizes
  stem_half_w = ($stem_shaft_w / 2) + 0.5;
  stem_half_d = ($stem_shaft_d / 2) + 0.5;

  // Vertical bar half-length (top & bottom)
  v_half = bar_len / 2;

  // Horizontal bar half-length (left & right)
  h_half = bar_len / 2;

    translate([$stem_x_offset, $stem_y_offset, loft + height/2]) {

      // --- TOP vertical bar ---
      rotate([$stem_tip_x, $stem_tip_y, 0])
        translate([0, stem_half_d + v_half, + 1])
          cube([bar_w, bar_len + 3.0, bar_h -2], center=true);

      // --- BOTTOM vertical bar --- this one touches the bottom of the keycap so that it stops it being pushed in to far when the keycap is pressed.  The other bars are 2mm shorter than the top and bottom of the keycap so that they don't touch the key itself and cause it to be pushed in too stick. 
        translate([0, -(stem_half_d + v_half), +1])
          cube([bar_w, bar_len - 3.0, bar_h +3], center=true);  // the +3 makes it hit the bottom of the keycap.

      // --- RIGHT horizontal bar ---
      translate([stem_half_w + h_half, 0, +1])
          cube([bar_len, bar_d, bar_h], center=true);

      // --- LEFT horizontal bar ---

      translate([-(stem_half_w + h_half), 0, +1])
          cube([bar_len, bar_d, bar_h], center=true);

  }

}
