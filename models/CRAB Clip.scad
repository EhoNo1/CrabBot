ismale=true;

quality=25;

pin_radius=2.5;
pin_length=12;

hole_radius=3;
backing_thickness=2;
bit_distance=30;


//backing
difference()
{
    union()
    {
        translate([0,0,-backing_thickness/2]) union()
        {
            cylinder(r=hole_radius*2,h=backing_thickness,$fn=quality);
            translate([bit_distance,0,0]) cylinder(r=hole_radius*2,h=backing_thickness,$fn=quality);
            translate([0,-hole_radius*2,0]) cube([bit_distance,hole_radius*4,backing_thickness]);  
        }
        
    }
    union()
    {
        translate([0,0,-backing_thickness/2]) cylinder(r=hole_radius,h=backing_thickness,$fn=quality);
        translate([bit_distance,0,-backing_thickness/2]) cylinder(r=hole_radius,h=backing_thickness,$fn=quality);
    }
}