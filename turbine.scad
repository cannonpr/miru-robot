use <./naca4.scad>

module blades(){
difference(){
union(){

difference(){
rotate([0,90,0])cylinder(r=26.5,h=5.5);
rotate([0,90,0])cylinder(r=25,h=5.5);
}

rotate([0,90,0])cylinder(r=8,h=5.5);
for ( i = [0 : 12] )
{
    rotate( i * 360 / 12, [1, 00, 0])
    translate([0, 7, 0])
    rotate([00,40,0]){
	minkowski()
	{
	cube([5,18,0.1]);
	cylinder([1,1,0.1]);
	}
}
}
}
rotate([0,90,0])cylinder(r=8/2,h=5.5);
#translate([-5,0,0])rotate([0,90,0])cylinder(r=26.5,h=5.5);
}
}


module upper(){
difference(){


rotate([0,90,0])cylinder(r=29,h=15);
rotate([0,90,0])cylinder(r=27,h=6);
#translate([5,0,0])rotate([0,90,0])cylinder(r=22/2,h=8);
#translate([5,0,0])rotate([0,90,0])cylinder(r=18/2,h=12);

difference(){
rotate([0,90,0])cylinder(r=26.5,h=20);
rotate([0,90,0])cylinder(r=12,h=20);
}

}
difference(){
union(){
translate([14,-4/2,0])cube([1,4,29]);
translate([14,-4/2,-29])cube([1,4,29]);
translate([14,0,-4/2])cube([1,29,4]);
translate([14,-29,-4/2])cube([1,29,4]);
}
rotate([0,90,0])cylinder(r=12,h=20);
}
}

//rotate([0,90,0])blades();
//rotate([0,90,0])upper();

wing();