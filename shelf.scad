include <closet_space.scad>

sh_tot_height=80;
sh_width=0.75;
sh_depth=16;
sh_length=24;
sh_brkt_height=2;
units=" inches ";


module shelf (depth=sh_depth,width=sh_width,length=sh_length,height=0)
{
  translate([0,0,height]) 
  union(){
    cube([depth,length,width]);
    echo(str("Shelf: ",depth,units,"x ",length,units,"x ", width, units));
    translate([0,0,-sh_brkt_height]) cube([depth,width,sh_brkt_height]);
    echo(str("Shelf bracket: ",depth,units,"x ",sh_brkt_height,units,"x ", width, units));
    translate([0,length-width,-sh_brkt_height]) cube([depth,width,sh_brkt_height]);
    echo(str("Shelf bracket: ",depth,units,"x ",sh_brkt_height,units,"x ", width, units));
  };
};


module shelves ()
{
  num_shelves=5;
  //Individual shelves
  for( i = [1:(num_shelves)] )
  {
    shelf(height = i*sh_tot_height/(num_shelves+1));
    // Brackets
  }
  // Upright
  translate([0,-sh_width,0]) cube([sh_depth,sh_width,sh_tot_height]);
  echo(str("Shelf upright: ",sh_depth,units,"x ",sh_tot_height,units,"x ", sh_width, units));
  translate([0,sh_length,0]) cube([sh_depth,sh_width,sh_tot_height]);
  echo(str("Shelf upright: ",sh_depth,units,"x ",sh_tot_height,units,"x ", sh_width, units));

};

module top_shelf()
{
  translate([0,0,sh_tot_height]) cube([sh_depth, cl_rct_ln, sh_width]);
  echo(str("Top shelf: ",sh_depth,units,"x ",cl_rct_ln,units,"x ", sh_width, units));
};

