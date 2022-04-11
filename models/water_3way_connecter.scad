
union() {
    difference() {
        for(i=[0:2]) {
            rotate([0,i*120,0])
                
            translate([0,0,-40])
            union() {
                translate([0,0,30]) cylinder(r1=5.5,r2=6.5,h=10);
                translate([0,0,20]) cylinder(r1=5.5,r2=6.5,h=10);
                translate([0,0,10]) cylinder(r1=5.5,r2=6.5,h=10);
                translate([0,0,0]) cylinder(r1=5.5,r2=6.5,h=10);
            }
        }
        for(i=[0:2]) {
            rotate([0,i*120,0])
            
            translate([0,0,-41])
            rotate_extrude(){
                polygon(points = [[0,0],[0,40],
                [4.5,40],[4.5,0]],
                paths=[[0,1,2,3]]);
            }
        }
    }
}