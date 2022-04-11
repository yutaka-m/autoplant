$fn=72;
difference() {
    linear_extrude(25,offset = 10, slices = 10) circle(r=61);
    translate([0,0,4]) linear_extrude(30,offset = -1, slices = 10) circle(r=57);
}
