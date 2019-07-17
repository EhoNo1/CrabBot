
quality=25;

pin_radius=2.5;
hook_radius=2.5;
backing_thickness=1;
bit_distance=30;

cylinder(r=hook_radius*2,h=backing_thickness,$fn=quality);
translate([bit_distance,0,0]) cylinder(r=pin_radius*2,h=backing_thickness,$fn=quality);


