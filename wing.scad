use <../MCAD/involute_gears.scad>

module wing(){

$fn = 10;
hull(){
hull () {

for ( i = [0:20] ) {
	#translate([((i/4)-2)*((i/4)-2)*((i/4)-2),i*5,0]) cylinder(r=1,h=1);}  
					}

 					
#translate([-5.7,7,1.4]){rotate([90,0,-20]){cylinder(r=2.8/2,h=10);}}
}
translate([-15,4,0])rotate([0,0,141])hull(){
for ( i = [0:20] ) {
	translate([((i/4)-2)*((i/4)-2)*((i/4)-2),i*-5,0]) cylinder(r=1,h=1);
					}
}
}

module feather(tip){

$fn = 50;
difference(){
union(){
hull(){
hull(){

for(i=[0:10])
    translate([0,(i*2),0])cube([0.5,2,sin(i*10)*10]);//cylinder(r=1,h=sin(i*10)*10);
for(i=[0:10])
    translate([0,20+i*2,0])cube([0.5,2,cos(i*1)*10]);//cylinder(r=1,h=cos(i*1)*10);
    
    
for(i=[0:10])
    translate([0,40+i*2,0])cube([0.5,2,cos(i*2)*10]);//cylinder(r=1,h=cos(i*2)*10);
    
for(i=[0:10])
    translate([0,60+i*2,0])cube([0.5,2,cos(i*2)*9]);//cylinder(r=1,h=cos(i*2)*10);
    
    
for(i=[0:10])
    translate([0,80+i*2,0])cube([0.5,2,cos(i*8)*8.5]);//cylinder(r=1,h=cos(i*9)*10);
}

difference(){
translate([0,0,7])mirror([0,0,1])hull(){

for(i=[0:10])
    translate([0,(i*2),0])cube([0.5,2,sin(i*10)*10]);//cylinder(r=1,h=sin(i*10)*10);
for(i=[0:10])
    translate([0,20+i*2,0])cube([0.5,2,cos(i*1)*10]);//cylinder(r=1,h=cos(i*1)*10);
    
    
for(i=[0:10])
    translate([0,40+i*2,0])cube([0.5,2,cos(i*2)*10]);//cylinder(r=1,h=cos(i*2)*10);
    
for(i=[0:10])
    translate([0,60+i*2,0])cube([0.5,2,cos(i*2)*9]);//cylinder(r=1,h=cos(i*2)*10);
    
    
for(i=[0:10])
    translate([0,80+i*2,0])cube([0.5,20,cos(i*8)*9]);//cylinder(r=1,h=cos(i*9)*10);
}
cube([10,120,10]);
}
translate([0,0,3])rotate([90,0,0])cylinder(r=0.5,h=2);
}




translate([0,0,3])rotate([90,0,0])cylinder(r=tip,h=10);
}

translate([0.3,120,-20])rotate([90,0,0])cube([5,100,150]);
}
}


module spline(){
$fn = 20;

 //cube([15,15,1]);  
difference(){
union(){
 for ( i = [0:20] ) {
  
   #translate([((i/4)-2)*((i/4)-2)*((i/4)-2),i*5,0]) rotate([0,0,50]){minkowski() {cube([6,3,1]);cylinder(r=1,h=1);}}
	

}
}
 for ( i = [0:20] ) {
  
   #translate([((i/4)-2)*((i/4)-2)*((i/4)-2),i*5,0])translate([0,2,0]){ cylinder(r=3/2,h=2);}
}

}
}


module wingnodule(){

difference(){

translate([-10.7,-5.3,-1.5])cube([6,5,5]);
rotate([0,0,20]){wing();}

translate([-8,-2.6,-1.6]){cylinder(r=3/2,h=10,$fs=0.1);}
//translate([4/2,-2.5,4/2]){rotate([-90,0,0]){#cylinder(r=3/2,h=10,$fs=0.1);}}
}
}

module wing_bone(){
difference(){
union(){
hull(){
translate([0,0,0])sphere(3.5);
translate([100,0,0])sphere(3.5);
}
translate([-15,-3/2,-4]){#cube([15,3,8]);}
translate([99,8/2,0]){
rotate([90,0,0]){#cylinder(r=8/2,h=8,$fs=0.1);}

}
}
translate([91.4,-3.5/2,-4]){#cube([12,3.5,8]);}
translate([99,5,-0]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}
translate([-12,5,-0]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}

translate([-20,5,3]){rotate([90,0,0]){#cube([130,15,10]);}}
translate([-20,5,-18]){rotate([90,0,0]){#cube([150,15,10]);}}

}

}


module wing_bone_tworing(){
difference(){
union(){
translate([0,-2.6,-4/2])#cube([100,2.6,4]);
//translate([70,0,1])rotate([90,0,0])cube([10,10,2.6]); // middle hole box
translate([100,0,0])rotate([90,0,0])#cylinder(r=7,h=2.6,$fs=0.1);
//translate([95,0,-10/2])rotate([90,0,0])cube([10,10,2.6]); // middle hole bearing
translate([0,0,0])rotate([90,0,0])#cylinder(r=7,h=2.6,$fs=0.1);
//translate([-5,0,-10/2])rotate([90,0,0])cube([10,10,2.6]); // middle hole bearing
}

translate([0,1,0]){rotate([90,0,0]){cylinder(r=6.4/2,h=4,$fs=0.1);}}//edge bearing hole
translate([100,1,0]){rotate([90,0,0]){cylinder(r=6.4/2,h=4,$fs=0.1);}}//edge bearing hole
}
}

module wing_bone_threering(){
difference(){
union(){
translate([0,-2.6,-4/2])#cube([100,2.6,4]);
translate([75,0,6])rotate([90,0,0])cylinder(r=7,h=2.6,$fs=0.1); // middle hole bearing
//translate([70,0,1])rotate([90,0,0])cube([10,10,2.6]); // middle hole box
translate([100,0,0])rotate([90,0,0])#cylinder(r=7,h=2.6,$fs=0.1);
//translate([95,0,-10/2])rotate([90,0,0])cube([10,10,2.6]); // middle hole bearing
translate([0,0,0])rotate([90,0,0])#cylinder(r=7,h=2.6,$fs=0.1);
//translate([-5,0,-10/2])rotate([90,0,0])cube([10,10,2.6]); // middle hole bearing
}
translate([75,1,6]){rotate([90,0,0]){cylinder(r=6.4/2,h=4,$fs=0.1);}} // middle hole bearing
translate([0,1,0]){rotate([90,0,0]){cylinder(r=6.4/2,h=4,$fs=0.1);}}//edge bearing hole
translate([100,1,0]){rotate([90,0,0]){cylinder(r=6.4/2,h=4,$fs=0.1);}}//edge bearing hole
}
}

module wing_tip_bone(){
difference(){
union(){
hull(){
translate([-30,0,0])sphere(3.5);
translate([100,0,0])sphere(3.5);
}
translate([100,-10/2,-3.4]){cube([20,10,28]);}
translate([-40,-3/2,-4]){cube([20,3,8]);}

}
//translate([91.4,-3.5/2,-4]){#cube([12,3.5,8]);}
translate([116,7,-0]){rotate([90,0,0]){#cylinder(r=3.6/2,h=15,$fs=0.1);}}
translate([116,7,20]){rotate([90,0,0]){#cylinder(r=3.6/2,h=15,$fs=0.1);}}


translate([-40,5,3]){rotate([90,0,0]){#cube([150,25,20]);}}
translate([-40,5,-28]){rotate([90,0,0]){#cube([180,25,20]);}}

translate([95,-3/2,-5]){#cube([25,3,35]);}

translate([-20,5,-18]){rotate([90,0,0]){cube([150,15,10]);}}
translate([-35,5,-0]){rotate([90,0,0]){cylinder(r=3.6/2,h=10,$fs=0.1);}}

}

}

module wing_tip_bone_linkage(){
difference(){
hull(){
translate([0,0,0]){rotate([90,0,0]){#cylinder(r=5/2,h=3,$fs=0.1);}}
translate([20,0,20]){rotate([90,0,0]){#cylinder(r=5/2,h=3,$fs=0.1);}}
translate([0,0,20]){rotate([90,0,0]){#cylinder(r=5/2,h=3,$fs=0.1);}}
translate([20,0,0]){rotate([90,0,0]){#cylinder(r=5/2,h=3,$fs=0.1);}}
}
//translate([91.4,-3.5/2,-4]){#cube([12,3.5,8]);}
translate([0,1,0]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}
translate([0,1,20]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}
translate([20,1,20]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}
translate([20,1,0]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}

hull(){
translate([4,1,4]){rotate([90,0,0]){#cylinder(r=5/2,h=5,$fs=0.1);}}
translate([16,1,16]){rotate([90,0,0]){#cylinder(r=5/2,h=5,$fs=0.1);}}
translate([4,1,16]){rotate([90,0,0]){#cylinder(r=5/2,h=5,$fs=0.1);}}
translate([16,1,4]){rotate([90,0,0]){#cylinder(r=5/2,h=5,$fs=0.1);}}
}

}

}

module wing_tip_bone_linkage_hole(){

//translate([91.4,-3.5/2,-4]){#cube([12,3.5,8]);}
translate([0,1,0]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}
translate([0,1,20]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}
translate([20,1,20]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}
translate([20,1,0]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}





}



module wing_tip_bone_hole(){
difference(){
union(){
hull(){
translate([0,0,0])sphere(3.8);
translate([100,0,0])sphere(3.8);
}
translate([100,-3/2,-3.4]){cube([20,3,20]);}
translate([-15,-3/2,-4]){cube([15,3,8]);}
translate([99,8/2,0]){

//rotate([90,0,0]){#cylinder(r=8/2,h=8,$fs=0.1);}

}
}
//translate([91.4,-3.5/2,-4]){#cube([12,3.5,8]);}
translate([116,5,-0]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}
translate([116,5,12]){rotate([90,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}}


translate([-20,5,3.5]){rotate([90,0,0]){cube([130,15,10]);}}
translate([-20,5,-18.5]){rotate([90,0,0]){cube([150,15,10]);}}
translate([-12,5,-0]){rotate([90,0,0]){cylinder(r=3.6/2,h=10,$fs=0.1);}}

}

}





module variable_linkage(){

difference(){
hull(){
translate([0,0,0])cylinder(r=3.6/2,h=3,$fs=0.1);
translate([9,-10,0])cylinder(r=3.6/2,h=3,$fs=0.1);
translate([9,-10,0])cylinder(r=3.6/2,h=3,$fs=0.1);
translate([-35,2,0])cylinder(r=4,h=3,$fs=0.1);
}
//translate([-14,0,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}
//translate([-2,-7,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}

translate([-12,-1,2])rotate([90,0,68])wing_tip_bone_linkage_hole(3.5);

translate([-35,2,0]){#cylinder(r=3.6/2,h=10,$fs=0.1);}
translate([6.5,-4,0]){rotate([0,0,70])#cube([10,25,5]);}
translate([-30,-71,0]){#cylinder(r=70,h=10,$fs=0.1);}
}
}

module wingnodule2(){

difference(){

translate([-1.5,-8,1.2])cube([3,3,3.5]);
rotate([0,0,180])translate([0.5,10,0])#feather(1.4);
//translate([0.5,-5.5,0.5]){#cylinder(r=3/2,h=10,$fs=0.1);}

}
}

module featherline(){

difference(){
union(){

rotate([0,90,0])translate([9.0,4.5,10])rotate([70,0,0])wingnodule2();
rotate([0,90,0])translate([9,5.5,8.5])rotate([90,0,0])wingnodule2();

rotate([0,90,0])translate([11.5,4,11])rotate([51,0,0])wingnodule2();
rotate([0,90,0])translate([11.5,5,8.5])rotate([60,0,0])wingnodule2();
rotate([0,90,0])translate([11.5,6.5,8.5])rotate([80,0,0])wingnodule2();



rotate([0,90,0])for(i=[0:7]){
translate([9.0-sin(i)*5.5,4,i*3+10])rotate([40+(-i*5.8),0,0])wingnodule2();
//translate([3,0,i*3+2])rotate([18-(i),0,0])wingnodule2();
//translate([6,0,i*3+2])rotate([18-(i),0,0])wingnodule2();

}

minkowski(){
translate([1.2,-4.5,-7.5])cube([35,9,6]);

}
}
translate([0,0,-3])#wing_tip_bone_hole();
}
}


module featherline2(){

difference(){
translate([1.2,-4.5,-13])cube([35,9,12]);


rotate([0,90,0])translate([9.0,5,8.5])rotate([70,0,0])rotate([0,0,180])translate([0.5,10,0])feather(1.4);
rotate([0,90,0])translate([9,5.5,8.5])rotate([90,0,0])rotate([0,0,180])translate([0.5,10,0])feather(1.4);

rotate([0,90,0])translate([11.5,4,6])rotate([52.5,0,0])rotate([0,0,180])translate([0.5,10,0])#feather(1.4);
rotate([0,90,0])translate([11.5,5,6])rotate([60,0,0])rotate([0,0,180])translate([0.5,10,0])#feather(1.4);
rotate([0,90,0])translate([11.5,5.5,8.5])rotate([80,0,0])rotate([0,0,180])translate([0.5,10,0])#feather(1.4);

//rotate([0,90,0])for(i=[0:7]){
//translate([9.0-sin(i)*5.5,5,i*3+8])rotate([40+(-i*5.8),0,0])rotate([0,0,180])translate([0.5,10,0])feather(1.4);
//}

translate([0,0,-3])#wing_tip_bone_hole();
}
}

module triangle_test(){
difference(){
hull(){
translate([0,0,0]){#cylinder(r=8/2,h=2,$fs=0.1);}
translate([58,58,0]){#cylinder(r=8/2,h=2,$fs=0.1);}
translate([58,0,0]){#cylinder(r=8/2,h=2,$fs=0.1);}
}

translate([0,0,0]){#cylinder(r=3/2,h=5,$fs=0.1);}
translate([58,58,0]){#cylinder(r=3/2,h=5,$fs=0.1);}
translate([58,0,0]){#cylinder(r=3/2,h=5,$fs=0.1);}

translate([12,6,0])hull(){
translate([0,0,0]){#cylinder(r=8/2,h=2,$fs=0.1);}
translate([40,40,0]){#cylinder(r=8/2,h=2,$fs=0.1);}
translate([40,0,0]){#cylinder(r=8/2,h=2,$fs=0.1);}
}

}

}


module triangle(){
difference(){
union(){
hull(){
translate([0,0,0]){#cylinder(r=5,h=2,$fs=0.1);}
translate([50,20,0]){#cylinder(r=5,h=2,$fs=0.1);}
translate([-50,20,0]){#cylinder(r=5,h=2,$fs=0.1);}
}
translate([0,0,0]){#cylinder(r=5,h=17.8,$fs=0.1);}
translate([50,20,0]){#cylinder(r=5,h=8,$fs=0.1);}
translate([-50,20,0]){#cylinder(r=5,h=8,$fs=0.1);}
}
translate([0,0,0]){#cylinder(r=3.4/2,h=20,$fs=0.1);}
translate([50,20,0]){#cylinder(r=3.4/2,h=8,$fs=0.1);}
translate([-50,20,0]){#cylinder(r=3.4/2,h=8,$fs=0.1);}

hull(){
translate([0,10,0]){#cylinder(r=1,h=2,$fs=0.1);}
translate([40,25,0]){#cylinder(r=1,h=2,$fs=0.1);}
translate([-40,25,0]){#cylinder(r=1,h=2,$fs=0.1);}
}
}
}

module body_circle(){
difference(){
union(){
hull(){
cylinder(r=100/2,h=1,$fs=0.1);
translate([-50,20,0]){#cylinder(r=6,h=1,$fs=0.1);}
translate([50,20,0]){#cylinder(r=6,h=1,$fs=0.1);}
}
//supports
translate([-50,20,0]){#cylinder(r=5,h=12,$fs=0.1);}
translate([50,20,0]){#cylinder(r=5,h=12,$fs=0.1);}

//supports for nuts
translate([20,-15,0]){#cylinder(r=5,h=6,$fs=0.1);}
translate([-20,-15,0]){#cylinder(r=5,h=6,$fs=0.1);}

//central pie hole
translate([0,0,0]){#cylinder(r=8.4/2,h=5,$fs=0.1);}
}
//central pie hole
translate([0,0,0]){#cylinder(r=3.4/2,h=5,$fs=0.1);}
//central pie hole nut
translate([0,0,0]){#cylinder(r=6.2/2,h=2,$fs=0.1);}

//wing holes
translate([50,20,0]){#cylinder(r=3.4/2,h=12,$fs=0.1);}
translate([-50,20,0]){#cylinder(r=3.4/2,h=12,$fs=0.1);}

//nut holes
translate([50,20,0]){#cylinder(r=6.2/2,h=3,$fs=0.1);}
translate([-50,20,0]){#cylinder(r=6.2/2,h=3,$fs=0.1);}

//nut holes gears
translate([20,-15,0]){#cylinder(r=6.2/2,h=2,$fs=0.1);}
translate([-20,-15,0]){#cylinder(r=6.2/2,h=2,$fs=0.1);}

//wing holes end

translate([0,40,0]){#cylinder(r=3.4/2,h=5,$fs=0.1);}
translate([0,-30,0]){#cylinder(r=3.4/2,h=5,$fs=0.1);}

translate([0,-40,0]){#cylinder(r=3.4/2,h=5,$fs=0.1);}
translate([-40,-15,0]){#cylinder(r=3.4/2,h=5,$fs=0.1);}
translate([40,-15,0]){#cylinder(r=3.4/2,h=5,$fs=0.1);}

translate([-20,10,0]){#cylinder(r=10,h=5,$fs=0.1);}
translate([20,10,0]){#cylinder(r=10,h=5,$fs=0.1);}
translate([0,-15,0]){#cylinder(r=10,h=5,$fs=0.1);}

translate([20,-15,0]){#cylinder(r=4.4/2,h=10,$fs=0.1);}
translate([-20,-15,0]){#cylinder(r=4.4/2,h=10,$fs=0.1);}

translate([0,15,0]){#cylinder(r=8,h=5,$fs=0.1);}

translate([-12,25,0]){#cylinder(r=4,h=5,$fs=0.1);}
translate([12,25,0]){#cylinder(r=4,h=5,$fs=0.1);}
}



translate([-35,15,0])cube([4,4,2]);
translate([35,15,0])cube([4,4,2]);
}

module power_wheels(){
difference(){
union(){
translate([20,-15,0]){gear (circular_pitch=130,gear_thickness = 2,rim_thickness = 4,hub_thickness = 4,circles=6,number_of_teeth=55);}
//translate([-20,-15,0]){gear (circular_pitch=130,gear_thickness = 2,rim_thickness = 4,hub_thickness = 4,circles=6,number_of_teeth=55);}

translate([20,-3,0]){#cylinder(r=9/2,h=4,$fs=0.1);}
//translate([-20,-3,0]){#cylinder(r=6/2,h=4,$fs=0.1);}
}

translate([0,-30,0]){#cylinder(r=3.4/2,h=5,$fs=0.1);}
translate([20,-15,0]){#cylinder(r=6.2/2,h=5,$fs=0.1);}
translate([-20,-15,0]){#cylinder(r=4.4/2,h=5,$fs=0.1);}

translate([20,-3,0]){#cylinder(r=6.4/2,h=5,$fs=0.1);}
translate([-20,-3,0]){#cylinder(r=3.4/2,h=5,$fs=0.1);}

}


}
//MR63ZZ
//spline();
//wingnodule();
//wingnodule2();
//rotate([180,0,0])featherline();
//wing_bone();
//wing_tip_bone(3.5);
//rotate([90,0,0])wing_tip_bone_linkage(3.5);
rotate([90,0,0])wing_bone_tworing();
//variable_linkage();
//wing();
//feather();
//body_circle();
//triangle();
//rotate([90,0,0])wing_bone_threering();
//power_wheels();