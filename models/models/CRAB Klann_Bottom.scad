

quality=25;


bar_length=80;
bar_thickness=2;

pin_radius=2.5;
gap_radius=3;
pin_length=12;

//bar backing

difference() 
{
    union()
    {
        //backing
        cylinder(r=pin_radius*3,h=bar_thickness,$fn=quality);
        translate([bar_length,0,0]) cylinder(r=pin_radius*3,h=bar_thickness,$fn=quality);
        translate([0,-pin_radius*3,0]) cube([bar_length,pin_radius*6,bar_thickness]);
}


//socket generation
union()
{
    cylinder(r=gap_radius,h=bar_thickness,$fn=quality);
    translate([bar_length/2,0,0]) cylinder(r=gap_radius,h=bar_thickness,$fn=quality);
    translate([-gap_radius,-pin_radius*3,0]) cube([gap_radius*2,pin_radius*3,bar_thickness]);
    //translate([-gap_radius + bar_length/2,0,0]) cube([gap_radius*2,pin_radius*3,bar_thickness]);
    
    translate([bar_length,0,0]) cylinder(r=gap_radius,h=pin_length,$fn=quality); 
    translate([(bar_length/4)*3,0,0]) cylinder(r=gap_radius,h=pin_length,$fn=quality);
}

}

