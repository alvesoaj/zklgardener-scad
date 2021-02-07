halfGauge = 50;
diff = 2;
capHeight = 50;

module fourInchPipe(length) {
  difference() {
    color("white") {
      cylinder(length, halfGauge, halfGauge, center=true, $fn=180);
    }
    cylinder(length + 2, halfGauge - diff, halfGauge - diff, center=true, $fn=180);
  }
}

module fourInchCap() {
  difference() {
    color("white") {
      cylinder(capHeight, halfGauge + diff, halfGauge + diff, center=true, $fn=180);
    }
    translate([0, 0, -2]) {
      cylinder(52, halfGauge, halfGauge, center=true, $fn=180);
    }
  }
}

module fourInchPipeWithCaps(length, startCap=false, endCap=false) {
  fourInchPipe(length);
  if (startCap) {
    translate([0, 0, length / 2 - capHeight / 2 + 4]) {
      fourInchCap();
    }
  }
  if (endCap) {
    translate([0, 0, -length / 2 + capHeight / 2 - 4]) {
      rotate([180, 0, 0]) {
        fourInchCap();
      }
    }
  }
}