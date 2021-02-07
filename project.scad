use <four-inch-pipe.scad>;
use <half-inch-pipe.scad>;
use <solid.scad>

//--------------- Frame

// Left Bar
translate([7.5, -7.5, 210]) {
  solid(390);
}

// Botom Bar
translate([325, -7.5, 7.5]) {
  rotate([0, 90, 0]) {
    solid(650);
  }
}

// Right Bar
translate([642.5, -7.5, 210]) {
  solid(390);
}

// Top Bar
translate([325, -7.5, 412]) {
  rotate([0, 90, 0]) {
    solid(650);
  }
}

// Midle -> Midle Bar
translate([325, -7.5, 165]) {
  rotate([0, 90, 0]) {
    solid(620);
  }
}

// Midle -> Botom Bar
translate([325, -7.5, 65]) {
  rotate([0, 90, 0]) {
    solid(620);
  }
}

// Midle -> Bar One
translate([83, -7.5, 288.5]) {
  solid(232);
}

// Midle -> Bar Two
translate([260, -7.5, 288.5]) {
  solid(232);
}

// Midle -> Bar Three
translate([435, -7.5, 288.5]) {
  solid(232);
}

// Midle -> Bar Four
translate([562, -7.5, 288.5]) {
  solid(232);
}

//--------------- Pices

// Tube One
translate([85, -67, 276.5]) {
  fourInchPipeWithCaps(400, true, true);
}

// Box
translate([260, -80, 247.5]) {
  cube([200, 130, 150], center = true);
}

// Tube Two
translate([435, -67, 326.5]) {
  fourInchPipeWithCaps(300, true, true);
}

// Tube Three
translate([560, -67, 326.5]) {
  fourInchPipeWithCaps(300, false, true);
}

//----- Down Pipes

// Pipe One
translate([280, -54, 140]) {
  rotate([0, 90, 0]) {
    halfInchPipe(305);
  }
}

// First junction
translate([450, -54, 147]) {
  TJunction();
}

// Pipe Two
translate([503, -54, 140]) {
  rotate([0, 90, 0]) {
    halfInchPipe(75);
  }
}

// Second junction
translate([550, -54, 150]) {
  kneeJunction();
}

// Pipe Three
translate([450, -54, 170]) {
  halfInchPipe(25);
}

// Pipe Four
translate([560, -54, 170]) {
  halfInchPipe(25);
}

//--------------- Bases

//----- First Base

// Bar One
translate([45, -65, 65]) {
  rotate([90, 0, 0]) {
    solid(100);
  }
}

// Bar Two
translate([125, -65, 65]) {
  rotate([90, 0, 0]) {
    solid(100);
  }
}

// Bar Three
translate([45, -59.5, 37]) {
  rotate([63, 0, 0]) {
    solid(119);
  }
}

// Bar Four
translate([125, -59.5, 37]) {
  rotate([63, 0, 0]) {
    solid(119);
  }
}

//----- Second Base

// Bar One
translate([200, -65, 165]) {
  rotate([90, 0, 0]) {
    solid(100);
  }
}

// Bar Two
translate([311, -65, 165]) {
  rotate([90, 0, 0]) {
    solid(100);
  }
}

// Bar Three
translate([200, -59.5, 113]) {
  rotate([45, 0, 0]) {
    solid(141.2);
  }
}

// Bar Four
translate([311, -59.5, 113]) {
  rotate([45, 0, 0]) {
    solid(141.2);
  }
}

//----- Third Base

// Bar One
translate([396, -65, 165]) {
  rotate([90, 0, 0]) {
    solid(100);
  }
}

// Bar Two
translate([476, -65, 165]) {
  rotate([90, 0, 0]) {
    solid(100);
  }
}

// Bar Three
translate([396, -59.5, 113]) {
  rotate([45, 0, 0]) {
    solid(141.2);
  }
}

// Bar Four
translate([476, -59.5, 113]) {
  rotate([45, 0, 0]) {
    solid(141.2);
  }
}

//----- Fourth Base

// Bar One
translate([519, -65, 165]) {
  rotate([90, 0, 0]) {
    solid(100);
  }
}

// Bar Two
translate([601, -65, 165]) {
  rotate([90, 0, 0]) {
    solid(100);
  }
}

// Bar Three
translate([519, -59.5, 113]) {
  rotate([45, 0, 0]) {
    solid(141.2);
  }
}

// Bar Four
translate([601, -59.5, 113]) {
  rotate([45, 0, 0]) {
    solid(141.2);
  }
}