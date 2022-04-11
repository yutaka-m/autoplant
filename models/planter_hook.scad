$fn=24;

difference() {
    linear_extrude(40) difference() {
        union() {
            translate([-38,-17,0]) square([70,45]);
            translate([0,5,0]) polygon([[32,23],[70,23],[75,-23],[35,-23],[32,-23]]);
        }
        square([62,40], true);
    }

    translate([30,10,20]) rotate([0,90,0]) bolt();
    translate([30,-10,20]) rotate([0,90,0]) bolt();
}

for(x= [1 : 7]) {
    translate([-31,20,5*x]) rotate([0,90,0]) linear_extrude(70) circle(3);
    translate([-32,20,5*x]) rotate([90,0,0]) linear_extrude(30) circle(3);
    translate([-40,28,5*x]) rotate([0,90,0]) linear_extrude(80) circle(3);
    translate([-38,31,5*x]) rotate([90,0,0]) linear_extrude(40) circle(3);
}


module bolt() {
    linear_extrude(5) circle(6);
    linear_extrude(100) circle(3);
}
