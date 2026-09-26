module trs80M1_stem(
  // The stem look from the original TRS-80 1978 M1 keycaps. added by TRG based on measurements of original keycaps and photos.
    depth, slop, throw
) {


  // trs80KeyCaps1978_stemLocation[]

  socket_h = depth ;  // i had a multiplier of 1.2 on here before i turned of the cut off in key.scad for the trs80M1 stem type

  trs80M1_z_offset = $total_depth;

  outer_w = $stem_shaft_w + $stem_wall*2;
  outer_d = $stem_shaft_d + $stem_wall*2;

  // shrink inner cavity slightly to avoid CGAL collapse
  inner_w = $stem_shaft_w + slop*2 - 0.05;
  inner_d = $stem_shaft_d + slop*2 - 0.05;

  // apply tilt BEFORE positioning
  rotate([$stem_tip_x, $stem_tip_y, 0])
  difference() {

    // Outer shell
    translate([$stem_x_offset - outer_w/2,
               $stem_y_offset - outer_d/2,
               -socket_h + trs80M1_z_offset])
      cube([outer_w, outer_d, socket_h]);

    // Inner hollow — lowered 0.02mm and made 0.04mm taller
    translate([$stem_x_offset - inner_w/2,
               $stem_y_offset - inner_d/2,
               -socket_h - 0.02 + trs80M1_z_offset])
      cube([inner_w, inner_d, socket_h + 0.04]);
  }
}
