// Wire-stabilizer clip for the TRS-80 8u spacebar.
// Built as a simple post with a tie rod wire hole.
module trs80_wire_clip_stem(depth, slop, throw) {
  clip_w = 7.0 - slop;       // X width
  clip_d = 8.0 - slop;       // Y depth
  clip_h = depth +3;        // make hole for the outer wire clips 6 mm taller than the normal stem
  hole_d = 1.9 + slop * 0.25;
  // Place hole near the stem end (away from the keycap body).
  hole_z = max(hole_d/2 + 0.4, clip_h * 0.18) -3; // 0.4 mm clearance from the top of the clip, or 18% of the clip height, whichever is greater

  difference() {
    translate([0, -1, clip_h / 2])
      cube([clip_w, clip_d, clip_h ], center=true);

    // Horizontal wire hole along Y (right-to-left).
    translate([0, -2.5, hole_z])
      rotate([90, 0, 90])
        cylinder(h = clip_d + 1, d = hole_d, center=true, $fn=32);
  }
}