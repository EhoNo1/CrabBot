
quality=25;



gear_dist=0;
gear_radius=15; //<--- include the spacing
extension_radius=2.5;
whole_shaft_length=65;

joint_radius=3;

casing_cube_length=whole_shaft_length+extension_radius*2;

difference()
{
    union()
    {
        //mainchasis block
        cube([gear_radius*2+extension_radius*2,casing_cube_length,gear_radius*2+extension_radius*2]);
    }
    
    
    union()
    {
        //chamber
        translate([gear_radius+extension_radius,extension_radius,gear_radius+extension_radius]) rotate([-90,0,0]) cylinder(r=gear_radius,h=whole_shaft_length,$fn=quality);
        translate([0,extension_radius,extension_radius]) cube([gear_radius+extension_radius,whole_shaft_length,gear_radius*2]);
        
        //shaft hole
        translate([gear_radius+extension_radius,0,gear_radius+extension_radius]) rotate([-90,0,0]) cylinder(r=joint_radius,h=whole_shaft_length+extension_radius*2,$fn=quality);
        //Bar
        translate([0,0,gear_radius+extension_radius-joint_radius]) cube([gear_radius+extension_radius,extension_radius,joint_radius*2]);
    }
      
    
}

