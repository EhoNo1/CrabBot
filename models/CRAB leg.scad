
quality=25;

difference()
{
union()
{
    //leg tip
    linear_extrude(height=5) polygon(points=[[10,0],[20,30],[15,30]]);

    //leg body
    linear_extrude(height=5) polygon(points=[[20,30],[20,70],[10,70],[15,30]]);

    //leg top
    translate([10,70,0]) cube([10,40,5]);
}

union()
{
    gap_radius=3;
    translate([15,70,-2.5]) cylinder(r=gap_radius,h=10,$fn=quality);
    translate([15,105,-2.5]) cylinder(r=gap_radius,h=10,$fn=quality);
}
}
