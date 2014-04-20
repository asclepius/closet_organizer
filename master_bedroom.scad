include <closet_space.scad>
include <shelf.scad>
include <rod.scad>

% closet_space();

minimum_pants_length=35;
rod_length=(cl_rct_ln-sh_length-2*sh_width)/2;

translate([0,cl_rct_ln/2-sh_length/2,0]) shelves();
top_shelf();
translate([0,0,sh_tot_height-2]) rod(length=rod_length);
translate([0,rod_length+sh_length+2*sh_width,sh_tot_height-2]) rod(length=rod_length);
translate([0,0,minimum_pants_length]) rod(length=rod_length);
translate([0,rod_length+sh_length+2*sh_width,minimum_pants_length]) rod(length=rod_length);
//translate([0,24+sh_length+sh_width,33]) rod(length=cl_rct_ln-(24+sh_length+sh_width));
//translate([0,24+sh_length+sh_width,sh_tot_height-4]) rod(length=cl_rct_ln-(24+sh_length+sh_width));


