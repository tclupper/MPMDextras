/* Spool holder for Monoprice Mini Delta (MPMD) 3D printer

    Author:  Tom Clupper
    Date: 4/11/2020
    License: Attribution-ShareAlike 4.0 International (https://creativecommons.org/licenses/by-sa/4.0)
    
    NOTES:
        - Print (1) part
        - This can be printd on a stock MPMD
        - All dimensions in mm
        - No Supports needed
        - For use with standard 608ZZ ball bearing (8x22x7 mm)
*/

OD = 26-0.2;
ID = 19;
Height = 80;
BearingDiameter = 22;
BearingHeight = 7-0.5;


difference(){

    // Main cylinder
    cylinder(h=Height, r=OD/2, center=false, $fn=50);
        
    // Through hole
    cylinder(h=Height, r=ID/2, center=false, $fn=30);
        
   // Top bearing relief
    translate([0,0,Height-BearingHeight]) cylinder(h=BearingHeight, r=BearingDiameter/2, center=false, $fn=30);
        
   // Bottom bearing relief
    translate([0,0,0]) cylinder(h=BearingHeight, r=BearingDiameter/2, center=false, $fn=30);
    translate([0,0,BearingHeight]) cylinder(h=2,r1=BearingDiameter/2,r2=ID/2,center=false,$fn=30);
    
}
