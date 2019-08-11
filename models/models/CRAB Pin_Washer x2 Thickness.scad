quality=25;

pin_gap_radius=3;

backing_thickness=2*2;



difference()
{
  cylinder(r=pin_gap_radius*2,h=backing_thickness,$fn=quality);
  cylinder(r=pin_gap_radius,h=backing_thickness,$fn=quality);
        
}