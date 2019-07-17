
quality=25;

gap_dist=15;

union()
{

//bars
piston_dist=10;
bar_radius=2;
    
translate([0,0,piston_dist]) rotate([-90,0,0]) cylinder(r=bar_radius,h=gap_dist,$fn=quality);
translate([piston_dist,gap_dist,0]) rotate([-90,0,0]) cylinder(r=bar_radius,h=gap_dist,$fn=quality);
translate([0,gap_dist*2,-piston_dist]) rotate([-90,0,0]) cylinder(r=bar_radius,h=gap_dist,$fn=quality);
translate([-piston_dist,gap_dist*3,0]) rotate([-90,0,0]) cylinder(r=bar_radius,h=gap_dist,$fn=quality);



//gears here
gear_thickness=2;
    
translate([0,0-gear_thickness/2,0]) rotate([-90,0,0]) cylinder(r=piston_dist+bar_radius,h=gear_thickness,$fn=quality);
translate([0,gap_dist-gear_thickness/2,0]) rotate([-90,0,0]) cylinder(r=piston_dist+bar_radius,h=gear_thickness,$fn=quality);
translate([0,gap_dist*2-gear_thickness/2,0]) rotate([-90,0,0]) cylinder(r=piston_dist+bar_radius,h=gear_thickness,$fn=quality);
translate([0,gap_dist*3-gear_thickness/2,0]) rotate([-90,0,0]) cylinder(r=piston_dist+bar_radius,h=gear_thickness,$fn=quality);
translate([0,gap_dist*4-gear_thickness/2,0]) rotate([-90,0,0]) cylinder(r=piston_dist+bar_radius,h=gear_thickness,$fn=quality);



//attachment end joints
joint_radius=2.5;
joint_height=7;

rotate([90,0,0]) cylinder(r=joint_radius,h=joint_height,$fn=quality);
translate([0,gap_dist*4,0]) rotate([-90,0,0]) cylinder(r=joint_radius,h=joint_height,$fn=quality);
}