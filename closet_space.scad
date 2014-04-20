
// Define the Space
cl_ht=95;
cl_rct_ln=87;
cl_dpth=23;
cl_tr_ht=8;

door_ht=80;
door_ln=58.75;
door_wdth=5;


// floor is a triangle plus a rectangle

module closet_space(){

union(){
  cube([cl_dpth,cl_rct_ln,cl_ht]);
  linear_extrude(height = cl_ht) polygon([[0,0], [cl_dpth,0], [cl_dpth/3,-cl_tr_ht]]);
  translate([cl_dpth,16,0]) cube([door_wdth,door_ln,door_ht]);
};
};
