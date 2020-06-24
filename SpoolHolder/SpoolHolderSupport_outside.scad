/* Spool holder for Monoprice Mini Delta (MPMD) 3D printer

    Author:  Tom Clupper
    Date: 4/11/2020
    License: Attribution-ShareAlike 4.0 International (https://creativecommons.org/licenses/by-sa/4.0)
    
    NOTES:
        - Print (1) part (it goes away from the printer)
        - This can be printd on a stock MPMD
        - All dimensions in mm
        - No Supports needed
        - This part is strapped down with one cable tie: 2.54mm wide (0.1 inches) with
            at least 115mm (4.5 inches) of working length. The part number was Ty-Its UB140A-B,
            but any "18 lbs" 2.54mm wide cable tie will do
        - I did add more infill to the post locally using PrusaSlicer.
*/

CenterHeight = 14.5;
Width = 20;
Thickness = 10;
BearingSupportDiameter = 8;
BearingSupportHeight = 8;
        
difference(){
    
    union(){
        // Main block
        cube([CenterHeight+13-Width/2, Width, Thickness]);
        
        translate([CenterHeight+13-Width/2, Width/2, 0]) cylinder(h=Thickness, r=Width/2, center=false, $fn=30);
        
        // Bearing support
        translate([CenterHeight, Width/2,Thickness]) cylinder(h=BearingSupportHeight, r=BearingSupportDiameter/2, center=false, $fn=30);
        translate([CenterHeight, Width/2,Thickness+BearingSupportHeight]) cylinder(h=2, r1=BearingSupportDiameter/2, r2=BearingSupportDiameter/3, center=false, $fn=30);   
        
    }
    
    translate([-Width/2, Width/2, Thickness-3.5-.5]) ziptie();
    
}

module ziptie(){
    difference() {
        cylinder(h=3.4, r=Width/1.2, center=false, $fn=30);

        cylinder(h=3.4, r=Width/1.2-2, center=false, $fn=30);        
    }
}
