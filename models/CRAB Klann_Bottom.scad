include <GlobalVariables.scad>



//Global Variables
    //quality=25;
    //backing_thickness=2;
    //pin_socket=3;

//Local Variables
    bar_length=80;
    


difference() {
    union() {
        //backing
        cylinder(r=pin_radius*3,h=backing_thickness,$fn=quality);
        translate([bar_length,0,0]) cylinder(r=pin_radius*3,h=backing_thickness,$fn=quality);
        translate([0,-pin_radius*3,0]) cube([bar_length,pin_radius*6,backing_thickness]);
    }


    //socket generation
    union() {
        cylinder(r=pin_socket,h=backing_thickness,$fn=quality);
        translate([bar_length/2,0,0]) cylinder(r=pin_socket,h=backing_thickness,$fn=quality);
        translate([-pin_socket,-pin_radius*3,0]) cube([pin_socket*2,pin_radius*3,backing_thickness]);
    
        translate([bar_length,0,0]) cylinder(r=pin_socket,h=backing_thickness,$fn=quality); 
        translate([(bar_length/4)*3,0,0]) cylinder(r=pin_socket,h=backing_thickness,$fn=quality);
    }
}