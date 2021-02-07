module solid(length) {
  difference() {
    color("black") { 
      cube([15, 15, length], center=true, $fn=180);
    }
    cube([11, 11, length + 2], center=true, $fn=180);
  }
}