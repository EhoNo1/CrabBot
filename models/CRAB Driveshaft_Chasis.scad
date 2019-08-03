
quality=25;

pin_radius=2.5;
pin_socket=3;

gear_dist=0;
gear_radius=15; //<--- include the spacing
extension_radius=2.5;
internal_shaft_length=65; // full body size is this plus 2 * extension_radius

leg_gap=10;

joint_radius=3;

casing_cube_length=internal_shaft_length+extension_radius*2;

difference() 
{
    union()
    {
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
            union()
            {
                translate([gear_radius+extension_radius,extension_radius,gear_radius+extension_radius]) rotate([-90,0,0]) cylinder(r=gear_radius,h=internal_shaft_length,$fn=quality);
                translate([0,extension_radius,extension_radius]) cube([gear_radius+extension_radius,internal_shaft_length,gear_radius*2]);
            }
            //shaft hole
            union()
            {
                translate([gear_radius+extension_radius,0,gear_radius+extension_radius]) rotate([-90,0,0]) cylinder(r=joint_radius,h=internal_shaft_length+extension_radius*2,$fn=quality);
                translate([0,0,gear_radius+extension_radius-joint_radius]) cube([gear_radius+extension_radius,extension_radius,joint_radius*2]);
            }
        }
    }
        rotate([-90,0,0]) cylinder(h=internal_shaft_length+extension_radius*2,r=pin_socket*2,$fn=quality);
        translate([0,0,gear_radius+extension_radius]*2) rotate([-90,0,0]) cylinder(h=internal_shaft_length+extension_radius*2,r=pin_socket*2,$fn=quality);
    }



    //pin ring body
    
    
        difference()
        {
            union()
            {
                rotate([-90,0,0]) cylinder(h=internal_shaft_length+extension_radius*2,r=pin_socket,$fn=quality);
                translate([0,0,gear_radius+extension_radius]*2) rotate([-90,0,0]) cylinder(h=internal_shaft_length+extension_radius*2,r=pin_socket,$fn=quality);
                
                for(i = [1:4])
                {
                    translate([-pin_socket*2,(internal_shaft_length/4 * i) - leg_gap,-pin_socket*2]) cube([pin_socket*4,leg_gap,gear_radius*4]);
                }
            }
            
            
          
        }
        
        
    }






