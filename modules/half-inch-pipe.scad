halfGauge = 10;
diff = 2;

module TJunction() {
  translate([-17, 0, -7]) {
    rotate([0, 90, 0]) {
      difference() {
        color("brown") {
          cylinder(20, halfGauge + diff, halfGauge + diff, center=true, $fn=180);
        }
        cylinder(20 + diff, halfGauge - diff, halfGauge - diff, center=true, $fn=180);
      }
    }
    translate([17, 0, 17]) {
      difference() {
        color("brown") {
          cylinder(20, halfGauge + diff, halfGauge + diff, center=true, $fn=180);
        }
        cylinder(20 + diff, halfGauge - diff, halfGauge - diff, center=true, $fn=180);
      }    
    }
    translate([34, 0, 0]) {
      rotate([0, 90, 0]) {
        difference() {
          color("brown") {
            cylinder(20, halfGauge + diff, halfGauge + diff, center=true, $fn=180);
          }
          cylinder(20 + diff, halfGauge - diff, halfGauge - diff, center=true, $fn=180);
        }
      }
    }
    difference() {
      translate([17, 0, 0]) {
        rotate([0, 90, 0]) {
          halfInchPipe(21);
        }
      }
      translate([17, 0, 7]) {
        cylinder(10, 10, 10, center=true, $fn=180);
      }
    }
    difference() {
      translate([17, 0, 7]) {
        halfInchPipe(15);
      }
      translate([25, 0, 0]) {
        rotate([0, 90, 0]) {
          cylinder(50, 10, 10, center=true, $fn=180);
        }
      }
    }
  }
}

module kneeJunction() {
  translate([-21, 0, 21]) {
    rotate([-90, 0, 0]) {
      translate([10, 31, 0]) {
        rotate([0, 90, 0]) {
          difference() {
            color("brown") {
              cylinder(20, halfGauge + diff, halfGauge + diff, center=true, $fn=180);
            }
            cylinder(20 + diff, halfGauge - diff, halfGauge - diff, center=true, $fn=180);
          }
        }
      }
      translate([11, 11, 0]) {
        difference() {
          color("brown") {
            rotate_extrude(angle=90, $fn=180) {
              translate([20, 0, 0]) {
                circle(halfGauge, $fn=180);
              }
            }
          }
          rotate([0, 0, -1]) {
            rotate_extrude(angle=92, $fn=180) {
              translate([20, 0, 0]) {
                circle(halfGauge - diff, $fn=180);
              }
            }
          }
        }
      }
      translate([31, 10, 0]) {
        rotate([90, 0, 0]) {
          difference() {
            color("brown") {
              cylinder(20, halfGauge + diff, halfGauge + diff, center=true, $fn=180);
            }
            cylinder(20 + diff, halfGauge - diff, halfGauge - diff, center=true, $fn=180);
          }
        }
      }
    }
  }
}

module halfInchPipe(length) {
  difference() {
    color("brown") {
      cylinder(length, halfGauge, halfGauge, center=true, $fn=180);
    }
    cylinder(length + diff, halfGauge - diff, halfGauge - diff, center=true, $fn=180);
  }
}