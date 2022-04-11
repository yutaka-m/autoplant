l=[[5,8],[5,9],[7.5,9],[7.5,10],[5,12],[5,12],[3,13],[0,13],[0,11],[3,11],[4,10]];
l2=[[7.5,10],[10,10],[10,9],[7.5,9]];
l3=[[5,6],[10,6.5],[10,7],[5,7]];
l4=[[3,3],[1,2],[1,1],[4,1],[6,0],[8,0],[7,1],[6,2],[6,5],[5,5],[4,3]];
function a(h,c,of) = [for(i=[0:36])[(i/3.6)-5,  -h * sin(i*10*c) + of]];
function reverse(x) = [for(i=[0:len(x)-1]) x[len(x)-1-i]];

$fn=54;
high = 10;
v_reso = 12;
translate([0,14,20]) rotate([0,90,0]) rotate([0,0,-22])
rotate_extrude(angle=225) translate([6,0,0]) circle(2.5);

/*
translate([0,-0.4,0]) {
    rotate([0,0,15])
    rotate_extrude(angle=150)
    polygon([[4,0],[4,40],[5,40],[5,0]]);
}
*/
difference() {
    linear_extrude(40) {
        polygon(l);
        polygon(l2);
        //polygon(l3);
        mirror([90,0,0]) polygon(l);
        
        polygon(l4);
        mirror([90,0,0]) polygon(l4);
        
        //translate([0,2,0]) polygon(concat(a(1,2.5,0),reverse(a(1,2.5,1))));
        translate([-4,6,0]) rotate([0,0,-75]) polygon(concat(a(1,1,-0.2),reverse(a(1,1,1))));
        translate([4,6,0]) rotate([0,0,75]) polygon(concat(a(1,-1,-0.2),reverse(a(1,-1,1))));
        //translate([0,2,0]) polygon(concat(a(1,1.5,0),reverse(a(1,1.5,1))));
        //rotate([0,0,70]) translate([8.5,-5,0]) polygon(concat(a(0.8,2.5,0),reverse(a(0.8,2.5,1))));
        //rotate([0,0,-90]) translate([-6,-7,0]) polygon(concat(a(0.8,2.5,0),reverse(a(0.8,2.5,1))));
    }
    rotate([90,0,0]) {
        translate([0,33,-17]) linear_extrude(height=high,center=false,twist = 360*high/2,slices = high*v_reso)
        translate([0.687/2,0,0]) rotate([0,0,0]) offset(r=0.32) circle(r=3);
        translate([0,7,-17]) linear_extrude(height=high,center=false,twist = 360*high/2,slices = high*v_reso)
        translate([0.687/2,0,0]) rotate([0,0,0]) offset(r=0.32) circle(r=3);
    }
}

echo(reverse([[0,0],[1,1]]));
echo(a(3,2.5,0));
