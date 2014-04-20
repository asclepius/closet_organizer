board_width=16;
separation=2;
blade=1/8;

for( i = [0:4] ) {
 # translate([(16+separation)*i, 0 ,0])  cube([16,8*12, 0.5] );
};

//8 * 2
for( i=[0:17]){
  translate([3*(board_width+separation), (24+blade)*2+(2+blade)*i,0]) cube([16,2,0.75]);
}
//10 * 2
//Included above
//2 * 80
translate([0, 0, 0]) cube([board_width,80,0.75]);
translate([board_width+separation, 0,0]) cube([board_width,80,0.75]);
//5 * 24
for( i=[0:2]){
  translate([2*(board_width+separation), (24+blade)*i,0]) cube([16,24,0.75]);
}
for( i=[0:1]){
  translate([3*(board_width+separation), (24+blade)*i,0]) cube([16,24,0.75]);
}
//1 * 87
  translate([4*(board_width+separation), (24+blade)*i,0]) cube([16,87,0.75]);
