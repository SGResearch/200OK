// 60% keyboard case
// Keyboard PCB
// Pizero W

keys_height=153;
keys_depth=35;
keys_width=429;

case_height=160;
case_depth=40;
case_width=436;

pizero_height=65;
pizero_depth=5;
pizero_width=30;

module case() {
    difference(){
        cube([case_height, case_depth, case_width], center=true);
        translate([0,11,0]){
            cube([keys_height, keys_depth, keys_width], center=true);
        }
    }
}

module pizero() {
    translate([-50,50,0]){
        rotate([0,90,0]){
            cube([pizero_height,pizero_depth,pizero_width], center=true);
        }
    }
}

module PCB() {
    translate([0,100,0]){
        rotate([0,180,0]){
            cube([keys_height,10,keys_width], center=true);
        }
    }
}

