quality=25;

pin_socket=3;

backing_thickness=2;       //Defines the thickness of the part
bit_distance=30;            //Defines distance between the two holes

front_thickness=5;   //increases the thickness of the different ends of the part
back_thickness=3;   //both of these are multiplied by backing_thickness

//TODO: should probably use a computed variable instead of doing X_thickness*backing_thickness over and over again

//backing
difference(){
    union(){
        translate([0,0,-front_thickness+backing_thickness/2]) cylinder(r=pin_socket*2,h=backing_thickness*front_thickness,$fn=quality);
        translate([bit_distance,0,-back_thickness+backing_thickness/2]) cylinder(r=pin_socket*2,h=backing_thickness*back_thickness,$fn=quality);
        translate([0,-pin_socket*2,0]) cube([bit_distance,pin_socket*4,backing_thickness]);  
    }
    union(){
        translate([0,0,-front_thickness+backing_thickness/2]) cylinder(r=pin_socket,h=backing_thickness*front_thickness,$fn=quality);
        translate([bit_distance,0,-back_thickness+backing_thickness/2]) cylinder(r=pin_socket,h=backing_thickness*back_thickness,$fn=quality);
    }
}