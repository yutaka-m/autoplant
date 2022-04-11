$fn=54;
high = 49;
v_reso = 12;
difference() {
    cylinder(h=5,$fn=6,r1 = 13, r2=13,center=false);
    translate([0,0,-1]) linear_extrude(height=high,center=false,twist = 360*high/2,slices = high*v_reso)
    translate([0.687/2,0,0]) rotate([0,0,0]) offset(r=0.32) circle(r=7);
     
}
