l=[[3.6,0],[7,0],[5,2],[7,4],[5,6],[7,8],[6,10],[7,12],[5,14],[3,14],[0,14],[0,10],[4,10]];
$fn=54;
high = 20;
v_reso = 12;


difference() {
    union() {
        linear_extrude(5) circle(5,$fn=6);
        translate([0,0,2]) linear_extrude(height=high,center=false,twist = 360*high/2,slices = high*v_reso)
        translate([0.687/2,0,0]) rotate([0,0,0]) offset(r=0.32) circle(r=2.95);
    }    
    translate([0,0,4]) rotate_extrude(angle=360) polygon([[0,20],[10,10],[10,30],[0,30]]);
}

