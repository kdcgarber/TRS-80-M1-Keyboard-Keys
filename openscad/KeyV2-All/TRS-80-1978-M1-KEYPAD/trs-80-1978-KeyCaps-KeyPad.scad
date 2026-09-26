include <../includes.scad>
include <./trs-80.scad>



$hull_shape_type = "skin";                // ["hull", "linear extrude", "skin"]
$stabilizer_type = "disable";             // [costar_stabilizer, cherry_stabilizer, disable, rounded_cherry]  -- sets the stablizer stems

$font = "TRS80M1:style=Medium";           // Default font for legends. Can be overridden by legends array. Must be a font installed on your system. 


$stem_type = "trs80M1";                 // [alps, box_cherry, cherry, cherry_stabilizer, choc, filled, rounded_cherry, disable, trs80M1]  ---trs80M1 (new for 1978 trs-80 M1)] 
$support_type  = "trs801978M1bars";     // [disable, bars, flared, full, flat,trs801978M1bars
$stem_support_type = "disable";         // [tines, brim, disable]
$stem_inset = -3;                       // make stems stick out and its 4.0 mm post

$inset_legend_depth = 0.8;              // how recessed inset legends / artisans are from the top of the key  -- default was 0.2
$wall_thickness = 1.5;                    // Wall thickness, the thickness of the sides of the keycap. 
$keytop_thickness = 1.5;                  // Thickness of the top of the keycap, not including any dish. 

//colors
$primary_color = [1,1,1];               //sides of keys
$secondary_color = [1,1,1];             //top of keys
$tertiary_color = [1,1,1];              //legends
$quaternary_color = [1,1,1];            // unused
$warning_color = [1,1,1];               // for clearance check, if enabled
$legend_color = [0,0,0];                // for clearance check, if enabled

$trs80_m1_support_height_trim = -1;

$stem_support_height = 0.3;

$inter_key_gap_mm = 10; // mm gap between adjacent key units (used in src/key_transformations.scad)
 
//--- trs80M1_stem parameters   ----
$stem_tip_x = 10;       // forward/back tilt (+ forward, - backward)
$stem_tip_y = 0;        // left/right tilt (+ right, - left)
$stem_x_offset=0;       // move stem center left or right -- override in layout.scad for each keycap
$stem_y_offset=1.25;       // move stem center forward or backward (forward is toward the front of the keycap, aka away from the user, backward is toward the user) 
$stem_shaft_w = 4.75;   // width of the stem shaft (the part that goes into the keycap) /
$stem_shaft_d = 4.75;   // depth of the stem shaft (the part that goes into the keycap) /
$stem_wall = 1.0;       // thickness of the walls of the stem socket 



trs80KeyCaps1978("trs801978M1")  key();          //dcs,oem,dsa,dss,sa,asa,g20,hipro,grid,typewriter,hex,hexagon,octagon,cherry,mt3,disable,rounded_cherry,trs801978M1





// Notes on the legends array
// originaal Model 1 keycaps were Alps SKCC (“Tall Alps”) a square 4.0 mm post