
quality=25;

leg_thickness=7;
top_clip_gap=3;

difference()
{
union()
{
    //leg tip
    linear_extrude(height=leg_thickness) polygon(points=[[10,0],[20,30],[15,30]]);

    //leg body
    linear_extrude(height=leg_thickness) polygon(points=[[20,30],[20,70],[10,70],[15,30]]);

    //leg top
    translate([10,70,0]) cube([10,40,leg_thickness]);
}

union()
{
    gap_radius=3;
    translate([15,70,0]) cylinder(r=gap_radius,h=leg_thickness,$fn=quality);
    translate([15,105,0]) cylinder(r=gap_radius,h=leg_thickness,$fn=quality);
    translate([10,95,leg_thickness/2 - top_clip_gap/2]) cube([10,15,top_clip_gap]);
}
}
