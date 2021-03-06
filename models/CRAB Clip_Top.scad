include <GlobalVariables.scad>



//Global Variables
    //quality=25;
    //pin_socket=3;
    //backing_thickness=2;       //Defines the thickness of the part

//Local Variables
    bit_distance=45;            //Defines distance between the two holes
    front_thickness=5;   //increases the thickness of the different ends of the part
    back_thickness=1;   //both of these are multiplied by backing_thickness
    spacing=0.5;

//TODO: should probably use a computed variable instead of doing X_thickness*backing_thickness over and over again



difference(){
    union(){
        translate([0,0,-(front_thickness-spacing)+backing_thickness/2]) 
            cylinder(r=pin_socket*2,h=backing_thickness*front_thickness-spacing,$fn=quality);
        translate([bit_distance,0,-back_thickness+backing_thickness/2]) 
            //we don't have spacing on this cylinder because its already 1 unit in thickness
            cylinder(r=pin_socket*2,h=backing_thickness*back_thickness,$fn=quality);
        translate([0,-pin_socket*2,0]) cube([bit_distance,pin_socket*4,backing_thickness]);  
    }
    union(){
        translate([0,0,-front_thickness+backing_thickness/2]) 
            cylinder(r=pin_socket,h=backing_thickness*front_thickness,$fn=quality);
        translate([bit_distance,0,-back_thickness+backing_thickness/2]) 
            cylinder(r=pin_socket,h=backing_thickness*back_thickness,$fn=quality);
    }
}