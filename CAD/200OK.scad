// 70% keyboard case // Keyboard PCB // Pizero W

Akeys=[153,15,381];
Apcb=[153,2,381];
Acase=[157,15,386];
Apizero=[65,2,30];

module case() {
    difference(){
        cube(case, center=true);
        translate([0,1,0]){
            cube(Akeys, center=true);
        }
    }
}

module pi_sd() {
    translate([-60,4,-26]){
        rotate([90,0,0]){
            cube([12,14,1], center=true);
        }
    }
}

module pi_cpu() {
    translate([-66,4,-8]){
        rotate([90,0,0]){
            cube([12,12,2], center=true);
        }
    }
}

module usb_power() {
    translate([-75,4,21]){
        rotate([0,90,0]){
            cube([6,2,4], center=true);
        }
    }
}

module micro_usb() {
    translate([-75,4,9]){
        rotate([0,90,0]){
            cube([6,2,4], center=true);
        }
    }
}

module hdmi() {
    translate([-74,4,-20]){
        rotate([0,90,0]){
            cube([10,3,6], center=true);
        }
    }
}

module pizero_pcb() {
    translate([-62,2,0]){
        rotate([0,90,0]){
            cube(Apizero, center=true);
        }
    }
}

module PCB() {
    translate([0,0,0]){
        rotate([0,180,0]){
            cube(Apcb, center=true);
        }
    }
}

module pizero() {
    translate([1,0,20]){
        rotate([180,180,0]){
            pizero_pcb();
            hdmi();
            micro_usb();
            usb_power();
            pi_cpu();
            pi_sd();
        }
    }
}

pizero();
//case();
//PCB();
