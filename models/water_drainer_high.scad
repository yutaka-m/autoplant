union() {
    $fn=54;
    high = 15;
    v_reso = 12;
    difference() {
        union() {
            translate([0,0,25])
            linear_extrude(height=high,center=false,twist = 360*high/2,slices = high*v_reso)
            translate([0.687/2,0,0]) rotate([0,0,0]) circle(r=7);
            
            translate([0,0,25]) cylinder(r=6,h=35);
            translate([0,0,20]) cylinder(r1=5.5,r2=6.5,h=10);
            translate([0,0,10]) cylinder(r1=5.5,r2=6.5,h=10);
            translate([0,0,0]) cylinder(r1=5.5,r2=6.5,h=10);
        }
    
        rotate_extrude(){
            polygon(points = [[0,0],[0,60],
            [4.5,60],[4.5,0]],
            paths=[[0,1,2,3]]);
        }
    }
}
