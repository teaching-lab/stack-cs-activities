d = 50; // inner radius of the token

magnet_d = 4; // magnet diameter
magnet_h = 1; // magnet height
magnet_alpha = 30; // angle between magnets

bottom_t = 1; // thickness of the inner circle

corner_t = 2; // cut of the corner of token
t = 1; // minimal thickness of material around magnet
h = 3; // height


big_d = d + magnet_d*2 + corner_t*2 + t*4;


// resolution values
$fa = 0.5; 
$fs = 0.5; 

difference(){

union(){
    translate([0,0,h - corner_t]){
        cylinder(d1=big_d, d2=big_d - corner_t*2, h=corner_t);
    }

    cylinder(d=big_d, h=h - corner_t);
}

    translate([0,0,bottom_t])
        cylinder(d=d,h=10);

    for(a=[0:magnet_alpha:360])
        rotate([0,0,a])
        translate([big_d/2 - magnet_d/2 - corner_t - t, 0, 0])
            cylinder(d=magnet_d, h=4, center=true);

}