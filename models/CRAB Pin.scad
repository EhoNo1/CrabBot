include <GlobalVariables.scad> //grabs our global variables for us



//Global Variables
    //quality=25;
    //pin_radius=2.5;
    //backing_thickness=2;

//Local Variables
pin_length=15;



difference()
{
    union() {
        cylinder(r=pin_radius,h=pin_length,$fn=quality);
        cylinder(r=pin_radius*2,h=backing_thickness,$fn=quality);
        
        //bell clip
        translate([0,0,pin_length]) cylinder(r1=pin_radius*1.5,r2=pin_radius,h=backing_thickness,$fn=quality);
    }
    union(){
        translate([0,pin_radius*1.5,pin_length+backing_thickness]) scale([1,1,5]) rotate([90,90,0]) cylinder(r=pin_radius,h=pin_radius*3,$fn=3);
        rotate([0,0,90]) union() {
            translate([pin_radius,-pin_radius*1.5,pin_length]) cube([pin_radius,pin_radius*3,pin_radius]);
            rotate([0,0,180]) translate([pin_radius,-pin_radius*1.5,pin_length]) cube([pin_radius,pin_radius*3,pin_radius]);
        }
    }
}