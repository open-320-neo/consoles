
$fs = 0.01;


// Roundedcube function inspired by Daniel Upshaw
module roundedcube(size = [1,1,1], center = true, radius = 0.5) {
    // Create 4 cylinders for all corners of the cube, then the hull of them is made
    hull() {
        translate([size[0]/2-radius, size[1]/2-radius, 0])cylinder(h = size[2], r = radius, center = true);
        translate([-size[0]/2+radius, size[1]/2-radius, 0])cylinder(h = size[2], r = radius, center = true);
        translate([size[0]/2-radius, -size[1]/2+radius, 0])cylinder(h = size[2], r = radius, center = true);
        translate([-size[0]/2+radius, -size[1]/2+radius, 0])cylinder(h = size[2], r = radius, center = true);
    }
}




difference() {
translate([0,0,0.5])
roundedcube([20,40,1], true, 1.5);

translate([0,17,0.5])
linear_extrude(1)
text("GRAVITY", size=3, font="DejaVu Sans", halign = "center", valign="center");

translate([0,10,0.5])
linear_extrude(1)
text("GEAR", size=4.6, font="DejaVu Sans", halign = "center", valign="center");

translate([0,4,0.5])
linear_extrude(1)
text("EXTN", size=4.6, font="DejaVu Sans", halign = "center", valign="center");
    
translate([0,-4,0.5])
linear_extrude(1)
text("PULL", size=4.6, font="DejaVu Sans", halign = "center", valign="center");
    
translate([0,-10,0.5])
linear_extrude(1)
text("&", size=4.6, font="DejaVu Sans", halign = "center", valign="center");

translate([0,-16,0.5])
linear_extrude(1)
text("TURN", size=4.6, font="DejaVu Sans", halign = "center", valign="center");
    
}


translate([0,0,20])
scale([1,1,0.5])
union() {

translate([0,17,0.5])
linear_extrude(1)
text("GRAVITY", size=3, font="DejaVu Sans", halign = "center", valign="center");

translate([0,10,0.5])
linear_extrude(1)
text("GEAR", size=4.6, font="DejaVu Sans", halign = "center", valign="center");

translate([0,4,0.5])
linear_extrude(1)
text("EXTN", size=4.6, font="DejaVu Sans", halign = "center", valign="center");
    
translate([0,-4,0.5])
linear_extrude(1)
text("PULL", size=4.6, font="DejaVu Sans", halign = "center", valign="center");
    
translate([0,-10,0.5])
linear_extrude(1)
text("&", size=4.6, font="DejaVu Sans", halign = "center", valign="center");

translate([0,-16,0.5])
linear_extrude(1)
text("TURN", size=4.6, font="DejaVu Sans", halign = "center", valign="center");
    
};