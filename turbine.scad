use <./naca4.scad>

$fa = 220; 
$fs = 220;
$fn = 220;

module blades(diam){
difference(){
union(){

difference(){
rotate([0,90,0])cylinder(r=diam-3,h=5.5);
rotate([0,90,0])cylinder(r=diam-5,h=5.5);
}

rotate([0,90,0])cylinder(r=8,h=5.5);
for ( i = [0 : 12] )
{
    rotate( i * 360 / 12, [1, 00, 0])
    translate([0, 1, 0])
    rotate([00,60,0]){
	cube([10,diam-6,0.5]);
	//wing();
}
}
}
rotate([0,90,0])cylinder(r=8/2,h=5.5);
#translate([-5,0,0])rotate([0,90,0])cylinder(r=diam-2.5,h=5.5);
#translate([5,0,0])rotate([0,90,0])cylinder(r=diam-2.5,h=5.5);
}
}

//29
module upper(diam){
difference(){


rotate([0,90,0])cylinder(r=diam,h=15);
rotate([0,90,0])cylinder(r=diam-2,h=6);
#translate([5,0,0])rotate([0,90,0])cylinder(r=22/2,h=8);
#translate([5,0,0])rotate([0,90,0])cylinder(r=18/2,h=12);

difference(){
rotate([0,90,0])cylinder(r=diam-2.5,h=20);
rotate([0,90,0])cylinder(r=12,h=20);
}

}
difference(){
union(){
translate([14,-4/2,0])cube([1,4,diam]);
translate([14,-4/2,-diam])cube([1,4,diam]);
translate([14,0,-4/2])cube([1,diam,4]);
translate([14,-diam,-4/2])cube([1,diam,4]);
}
rotate([0,90,0])cylinder(r=12,h=20);
}
}

module stator(diam){
difference(){


rotate([0,90,0])cylinder(r=diam,h=15);
#rotate([0,90,0])cylinder(r=diam-2,h=6);

#translate([5,0,0])rotate([0,90,0])cylinder(r=22/2,h=8);
#translate([-5,0,0])rotate([0,90,0])cylinder(r=18/2,h=25);

difference(){
rotate([0,90,0])cylinder(r=diam-2.5,h=20);
rotate([0,90,0])cylinder(r=12,h=20);
}

}
difference(){
union(){
for ( i = [0 : 12] )
{
    rotate( i * 360 / 12, [1, 00, 0])
    translate([6, 5, 0])
    rotate([00,-50,0]){
	cube([20,diam-8.5,0.5]);
	//wing();
}
}
}

translate([15,0,0])#rotate([0,90,0])cylinder(r=diam+2,h=5);
#translate([-10,0,0])rotate([0,90,0])cylinder(r=22/2,h=25);
}
}

//rotate([0,90,0])blades(35);
rotate([0,90,0])upper(35);
//translate([0,0,25])rotate([0,-90,0])stator(35);
