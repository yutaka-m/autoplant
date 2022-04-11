union() {
    $fn=54;
    high = 15;
    v_reso = 12;
    difference() {
        union() {

        }

        
    }

    difference() {        
        union() {
            translate([0,0,25])
            linear_extrude(height=high,center=false,twist = 360*high/2,slices = high*v_reso)
            translate([0.687/2,0,0]) rotate([0,0,0]) circle(r=7);

            translate([0,0,0]) cylinder(r=6,h=60);
            /*
            translate([0,0,20]) cylinder(r1=5.5,r2=6.5,h=10);
            translate([0,0,10]) cylinder(r1=5.5,r2=6.5,h=10);
            translate([0,0,0]) cylinder(r1=5.5,r2=6.5,h=10);
            */
            
            translate([-45 , 0, 0]) rotate([0, 90, 0]) translate([0,0,25]) cylinder(r=6,h=20);
            translate([-45 , 0, 0]) rotate([0, 90, 0]) translate([0,0,20]) cylinder(r1=5.5,r2=6.5,h=10);
            translate([-45 , 0, 0]) rotate([0, 90, 0]) translate([0,0,10]) cylinder(r1=5.5,r2=6.5,h=10);
            translate([-45 , 0, 0]) rotate([0, 90, 0]) translate([0,0,0]) cylinder(r1=5.5,r2=6.5,h=10);
            translate([-45 , 0, 0]) rotate([0, 90, 0]) translate([0,0,45]) sphere(6);
        }
    
        rotate_extrude(){
            polygon(points = [[0,0],[0,60],
            [4,60],[1.5,45],[1.5,40],[3,39],[4,35],[4,0]],
            paths=[[0,1,2,3,4,5,6,7]]);
        }
        translate([0,0,42]) rotate([90,0,0]) cylinder(h=10,r1=0.5,r2=2);
        
        translate([-45 , 0, 0]) rotate([0, 90, 0]) translate([0,0,45]) sphere(4);
        translate([-45 , 0, 0]) rotate([0, 90, 0]) translate([0,0,-15]) cylinder(r=4, h=60);
    }
}
