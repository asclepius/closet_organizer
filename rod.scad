include <closet_space.scad>

rod_diameter=1;
units=" inches ";
brkt_height=sh_brkt_height*2;

module rod(length=24)
{
  translate([0.5*sh_depth,0,0]) rotate([-90,0,0]) cylinder(d=rod_diameter,h=length, $fn=20);
  echo(str("Rod: ",rod_diameter,units,"x ",length,units));
  // Brackets
  translate([0,0,-brkt_height/2]) cube([sh_depth,sh_width,brkt_height]);
  echo(str("Rod bracket: ",sh_depth,units,"x ",brkt_height,units,"x ",sh_width, units));
  translate([0,length-sh_width,-brkt_height/2]) cube([sh_depth,sh_width,brkt_height]);
  echo(str("Rod bracket: ",sh_depth,units,"x ",brkt_height,units,"x ",sh_width, units));
};

