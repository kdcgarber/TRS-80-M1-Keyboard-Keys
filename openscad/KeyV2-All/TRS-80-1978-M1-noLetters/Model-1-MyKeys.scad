//////////////////////////////////////////////////////////////
// Alps SKCC Keycap (TRS-80 Model I style)
// Fully standalone, produces a real keycap shape
//////////////////////////////////////////////////////////////

// === MAIN ENTRY ===
keycap_skcc();

module keycap_skcc(
    w = 18,          // width (1u)
    d = 18,          // depth
    h = 12.5,        // height
    wall = 1.2,      // shell thickness
    dish_depth = 1,  // top dish depth
    row_angle = 6,   // tilt
    stem_depth = 6   // SKCC socket depth
) {
    difference() {
        // Outer cap
        keycap_outer(w, d, h, row_angle, dish_depth);

        // Hollow interior
        translate([0,0,wall])
            keycap_inner(w, d, h, wall, row_angle, dish_depth);

        // SKCC square stem socket
        translate([0,0,wall])
            skcc_socket(stem_depth);
    }
}

//////////////////////////////////////////////////////////////
// OUTER SHAPE WITH TAPER + DISH
//////////////////////////////////////////////////////////////
module keycap_outer(w, d, h, angle, dish) {
    rotate([angle,0,0])
    union() {
        // Tapered block
        hull() {
            translate([-w/2, -d/2, 0])
                cube([w, d, 0.1]);

            translate([-w/2+0.8, -d/2+0.8, h])
                cube([w-1.6, d-1.6, 0.1]);
        }

        // Dish
        translate([0,0,h])
            keycap_dish(w, d, dish);
    }
}

//////////////////////////////////////////////////////////////
// INNER SHAPE (HOLLOW)
//////////////////////////////////////////////////////////////
module keycap_inner(w, d, h, wall, angle, dish) {
    rotate([angle,0,0])
    union() {
        hull() {
            translate([-(w-2*wall)/2, -(d-2*wall)/2, 0])
                cube([w-2*wall, d-2*wall, 0.1]);

            translate([-(w-2*wall)/2+0.6, -(d-2*wall)/2+0.6, h-wall])
                cube([w-2*wall-1.2, d-2*wall-1.2, 0.1]);
        }

        // Inner dish cut
        translate([0,0,h-wall])
            keycap_dish(w-2*wall, d-2*wall, dish);
    }
}

//////////////////////////////////////////////////////////////
// TOP DISH (CYLINDRICAL)
//////////////////////////////////////////////////////////////
module keycap_dish(w, d, depth) {
    difference() {
        cube([w, d, 0.1], center=true);
        translate([0,0,-depth])
            cylinder(r=max(w,d), h=depth, $fn=80);
    }
}

//////////////////////////////////////////////////////////////
// SKCC STEM SOCKET (SQUARE, TAPERED)
//////////////////////////////////////////////////////////////
module skcc_socket(depth) {
    socket_top = 4.2;
    socket_bottom = 3.8;

    // Tapered square socket
    linear_extrude(height = depth, scale = socket_bottom/socket_top)
        square([socket_top, socket_top], center=true);
}
