$fn=36;


    rotate([90,0,0]) translate([0,5,-30]) linear_extrude(60) circle(3);
    rotate([0,90,0]) translate([-5,0,-30]) linear_extrude(60) circle(3);

difference() {
    union() {
        translate([0,0,80]) linear_extrude(1) circle(40);
        linear_extrude(80) circle(30);
    }
    linear_extrude(85) circle(28);
    
    for(x = [0 : 1 : 3]) {
        rotate([0,0,90 * x]) translate([0, 0, 10]) linear_extrude(40) translate([10, 10, 0]) square([20, 20]);
    }
}


