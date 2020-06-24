/* Raspberry Pi 3 holder for Monoprice Mini Delta (MPMD) 3D printer

    Author:  Tom Clupper
    Date: 4/11/2020
    License: Attribution-ShareAlike 4.0 International (https://creativecommons.org/licenses/by-sa/4.0)
    
    NOTES:
        - Print (2) parts (They hold the Pi between the rails)
        - This can be printd on a stock MPMD
        - All dimensions in mm
        - No supports needed
        - This part is strapped to the Pi with 4 cable ties: 2.54mm wide (0.1 inches) with
            at least 70mm (2-3/4 inches) of working length. Any standard "18 lbs"
            0.1 inch wide 4 inch cable tie will do
*/


zt_h = 1.5;
zt_w = 3.1;
b_h = 56;

difference() {
    
    linear_extrude(height=b_h, convexity=10, $fn=60) import(file = "PiHolderBracket.dxf", layer = "0"); 
    
    translate([3.5-zt_w/2,0,3.5-zt_h/2]) cube([zt_w,8,zt_h]);
    translate([3.5-zt_w/2,0,b_h-3.5-zt_h/2]) cube([zt_w,8,zt_h]);
    
    #translate([0,0,b_h/2]) rotate([-90,0,0]) rotate([0,0,45]) cylinder(h=2.5,d1=b_h+2.5,d2=b_h-2.5,center=false,$fn=4);
}