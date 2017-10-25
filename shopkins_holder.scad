$fn = 50;

peg_height = 20;
peg_nub_diameter = 7.5;
peg_base_diameter = 6;

base_diameter = 40;
base_thickness = 5;
base_height = 150;
base_pole_diameter = 12;
spacing = 35;

module peg() {
    translate([0, 0, peg_height / 2]) {
        cylinder(peg_height, peg_base_diameter / 2, peg_base_diameter / 2, true);
        translate([0, 0, peg_height / 2]) sphere(d = peg_nub_diameter);
    }
}



translate([0, 0, spacing]) {
    for (peg = [0:3]) {
    translate([0, 0, peg * spacing]) rotate([60, 0, 60]) peg();
    }
}

translate([0, 0, spacing * .5]) {
    for (peg = [0:3]) {
    translate([0, 0, peg * spacing]) rotate([60, 0, -60]) peg();
    }
}


translate([0, -base_diameter * .25]) cylinder(base_thickness, base_diameter / 2, base_diameter / 2, true);
translate([0, 0, base_height / 2]) cylinder(base_height, base_pole_diameter / 2, base_pole_diameter / 2, true);