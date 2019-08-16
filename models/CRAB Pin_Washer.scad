include <GlobalVariables.scad>



//Global Variables
    //pin_socket=3;
    //backing_thickness=2;
    //quality=25;



difference() {
    cylinder(r=pin_socket*2,h=backing_thickness,$fn=quality);
    cylinder(r=pin_socket,h=backing_thickness,$fn=quality);
}