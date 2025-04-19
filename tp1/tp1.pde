PImage mati;

void setup(){
size (800,400);

mati = loadImage("gata.png");

background(106);
}
void draw (){

  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);

  
  noStroke();
  
  //caja
  
  fill(220,150,20);
  triangle(400,400, 800,400, 800, 350);
  fill(160,120,15);
  triangle(140+400,390, 400+400,363, 400+400,300);
  
  //cortina
stroke(90);
strokeWeight(30);
line(120+400, 0, 112+400, 124);

stroke(50);
strokeWeight(10);
line(180+400,0, 213+400,303);
 strokeWeight(10);
line( 313+400,190,800, 249);
 
  noStroke();
  fill(120);
  triangle(645,338, 800, 279, 800, 306);
  triangle(761,313, 800, 305, 800, 335);
 
 stroke(90);
 strokeWeight(40);
 line(300+400,0, 308+400, 148);

 noStroke();
 fill(90);
 triangle(332+400,0, 800,150, 800, 0);
 fill(50);
 quad(282+400,0, 800,208, 800, 119, 382+400,0);
 
  stroke(110);
  strokeWeight(15);
  line(326+400,0, 800,204);
  
  stroke(50);
  strokeWeight(20);
  line(14+400,0, 400, 180);
  strokeWeight(50);
 line(586,326,498,326);
  noStroke();
  //patas traseras
  fill(200);
  quad(70+400,367, 105+400,372, 95+400,313, 479, 320);
  fill(230);
  quad(103+400,371, 150+400,372, 150+400,351, 103+400,345);
  
  fill(230);
  circle (141+400,352, 25);
  
  fill(200);
  circle(147+400,361,30);
 
 fill(230);
 circle(145+400,361,28);
  
   fill(200);
  circle(137+400,367,20);
  
   fill(230);
 circle(135+400,367,18);
 
 //pata delantera izq
 
  fill(230);
 quad(210+400,300, 223+400,347, 192+400,352, 176+400,295);
 circle(224+400,350, 35);
 
 fill(180);
 quad(208+400,282, 211+400,308, 180+400,307, 178+400, 288);
 
 

  //cuerpo
  
  fill(190);
  triangle(184+400,285+20, 226+400,269+19, 194+400,253+19);
  
 
     fill(230);
  circle(111+400,212, 200);
     fill(60);
   circle(142+400,149,70);

  
   fill(230);
  circle(202+400,210, 160);
  
  stroke(200);
  strokeWeight(5);
  fill(225);
  circle (58+400, 280, 165);
 
  
 noStroke();
 
  
  fill(225);
  circle(43+400,326,100);
 
  
  fill(200);
   circle(489, 302, 100);
  
  
  fill(210);
    circle(458,288,105);
  
  fill(230);
  circle(459, 235, 150);
  
  
  fill(200);
  circle(280+400,149,120);
  
  fill(230);
  circle(112+400,327,50);
  circle(488,277, 105);
  circle(458,288,95);
  circle(489, 302, 90);
  
  stroke(205);
  strokeWeight(3);
   line(534,246,500,220);
   
   noStroke();
   

  
  //pata delantera derecha
  
  stroke(190);
  strokeWeight(5);
  line(201+405,363,185+405,305);
  
  noStroke();
  fill(230);
  quad(137+400,305, 180+400,367, 201+400,363, 183+400,262);
  circle(197+400,362,35);
  
  //cabeza
fill(220);
circle(290+400, 149, 102);

fill(40);
circle(249+400, 117, 60);
circle(234+400,144, 50);
circle(306+400,111, 40);


fill(200);
circle(234+400,113,30);
quad(224+400,127, 222+400,82, 235+400,82, 248+400,113);
circle(227+400,79, 14);

fill(30,20,10);
circle(237+400,113,30);
quad(229+400,127, 225+400,82, 235+400,82, 248+400,113);
circle(229+400,81, 12);

fill(190);
triangle(328+400, 141, 359+400, 77, 302+400,97);

fill(40);
triangle(325+400, 141, 356+400, 77, 301+400,97);
triangle(233+400, 73, 260+400, 95, 249+400,134);

fill(220);
circle(269+400, 142, 27);
circle(311+400,143, 34);



//ojos:
fill(210,255,100);
circle(261+400, 154, 25);
circle(311+400, 155, 25);

fill(0);
circle(260+400,153,20);
circle(310+400, 154, 19);

strokeWeight(7);
noFill();
stroke(200);
circle(256+400, 166, 50);

stroke(220);
circle(320+400, 160, 40);
//ya

noStroke();
fill(200);
circle(282+400,200,35);

fill(230);
circle(272+400, 186, 40);
circle (304+400,186,40);

fill(60);
triangle(291+400, 202, 280+400, 189, 304+400, 189);

stroke(40);
strokeWeight(15);
line(631, 164, 643, 143);

//ehh el coso

noStroke();
fill(100);
triangle (610,375, 304+400,331, 245+400,335);


fill (0, 0, 0, 150);
quad(244+400,353, 248+400,339, 366+400, 321, 401+400,341);



strokeWeight(9);
stroke(40);
line(33+400, 400, 205+400,369);
line(205+400,369,245+400,339);
line(245+400,339, 360+400,316);
line(360+400,316, 800, 336);

strokeWeight(4);
stroke(110);
line(33+400, 400+7, 205+400,369+7);
line(205+400,369+7,245+400,339+7);
line(245+400,339+7, 360+400,316+7);
line(360+400,316+7, 800, 336+7);

  
  image (mati,0,0);


}
