include <../includes.scad>
include <./trs-80.scad>

//Stems = alps,box_cherry,cherry,cherry_stablizer,choc,filled,rounded_cherry

$hull_shape_type = "hull";              // ["hull", "linear extrude", "skin"]
// I usedcostar_stalizers and it made the outter stems to tight for the keyboard, switching to rounded_cherry made the outter stems on the spacebar,break,and 2 shift have round stems which were looser and allowd the keys to work better for me
$stabilizer_type = "rounded_cherry";    // [costar_stabilizer, cherry_stabilizer, disable, rounded_cherry]  -- sets the stablizer stems on the 3 stem keys to the correct type for the cherry profile. this is needed since the cherry profile has a stem inset, which reduces the height of the keycap, and cherry profile keycaps are already pretty short. setting this to rounded_cherry will make the stabilizer stems taller to better match the original keycaps.
//$stem_type = "cherry";  // [cherry, alps, rounded_cherry, box_cherry, filled, disable]

$font = "TRS80M1:style=Medium";           // Default font for legends. Can be overridden by legends array. Must be a font installed on your system. 


$inter_key_gap_mm = 4;                 // mm gap between adjacent key units (used in src/key_transformations.scad)

$inset_legend_depth = 0.8;              // how recessed inset legends / artisans are from the top of the key  -- default was 0.2
$wall_thickness = 1.5;                  // Wall thickness, the thickness of the sides of the keycap. 
$keytop_thickness = 2.0;                  // Thickness of the top of the keycap, not including any dish. 



//colors
$primary_color = [1,1,1];               //sides of keys
$secondary_color = [1,1,1];             //top of keys
$tertiary_color = [1,1,1];              //legends
$quaternary_color = [1,1,1];            // unused
$warning_color = [1,1,1];               // for clearance check, if enabled
$legend_color = [0,0,0];                // for clearance check, if enabled



$support_type  = "bars";                // [disable, bars, flared, full]
$stem_support_type = "disable";         // [tines, brim, disable]

$inset_legend_depth = 0.4;              // how recessed inset legends / artisans are from the top of the key  -- default was 0.2

//trs80CherryKeyCaps("rounded_cherry")  key(); //dcs,oem,dsa,dss,sa,asa,g20,hipro,grid,typewriter,hex,hexagon,octagon,cherry,mt3,disable,rounded_cherry
trs80CherryKeyCaps("trs801978M1")  key(); //dcs,oem,dsa,dss,sa,asa,g20,hipro,grid,typewriter,hex,hexagon,octagon,cherry,mt3,disable,rounded_cherry




// Notes on the legends array
// originaal Model 1 keycaps were Alps SKCC (“Tall Alps”) a square 4.0 mm post
