include <GlobalVariables.scad>



//Global Variables
    //quality=25;

//Local Variables
    gap_dist=15;
    
    piston_dist=10;
    bar_radius=2.5;
    
    gear_thickness=3;
    
    wheel_radius=piston_dist+bar_radius;
    wheel_height=12;
    groove_height=8;
    //groove_thickness;



union()
{

//bars
translate([0,0,piston_dist]) rotate([-90,0,0]) cylinder(r=bar_radius,h=gap_dist+gear_thickness,$fn=quality);
translate([piston_dist,(gap_dist+gear_thickness),0]) rotate([-90,0,0]) cylinder(r=bar_radius,h=gap_dist+gear_thickness,$fn=quality);
translate([0,(gap_dist+gear_thickness)*2,-piston_dist]) rotate([-90,0,0]) cylinder(r=bar_radius,h=gap_dist+gear_thickness,$fn=quality);
translate([-piston_dist,(gap_dist+gear_thickness)*3,0]) rotate([-90,0,0]) cylinder(r=bar_radius,h=gap_dist+gear_thickness,$fn=quality);



//gears here
for (i=[0:4])
{    
    translate([0,(gap_dist+gear_thickness)*i-gear_thickness/2,0]) rotate([-90,0,0]) cylinder(r=piston_dist+bar_radius,h=gear_thickness,$fn=quality);
}   



//attachment end joints
joint_radius=2.5;
joint_height=15;

//Grip Pegs
rotate([90,0,0]) cylinder(r=joint_radius,h=joint_height,$fn=quality);
translate([0,(gap_dist+gear_thickness)*4,0]) rotate([-90,0,0]) cylinder(r=joint_radius,h=joint_height,$fn=quality);




//Belt wheel
    difference()
    {
        translate([0,(gap_dist+gear_thickness)*4+joint_height,0]) rotate([-90,0,0]) cylinder(h=wheel_height,r=wheel_radius);
    }
}