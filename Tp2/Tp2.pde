

PFont papyrus;

String estado;
int e;
PImage imagen1;
PImage corazones;
float titileo = random (50,250);
int primermovimiento = 1000 ;


PImage imagen2;
PImage frisk;
PImage determinacion;
int segundomovimiento = 1000 ;

PImage imagen3;
int tercermovimiento = 1000;
PImage papyrus1;
PImage sans;
PImage toriel;
PImage alphys;
PImage undyne;

PImage imagen4;
int cuartomovimiento=1000;
PImage botones;



String texto1 = "Undertale es un videojuego de rol en 2D de 2015 \n creado por el desarrollador independiente estadounidense \n Toby Fox.";
String texto2= "El jugador controla a un niño que ha caído al subsuelo: \n una gran región aislada bajo la superficie de la Tierra,\n separada por una barrera mágica.";
String texto3= "El jugador se encuentra con varios monstruos \n durante su viaje de regreso a la superficie";
String texto4= "Se puede optar por pacificar y salvar a los monstruos \n o someterlos para matarlos. Estas elecciones \n afectan el juego, el diálogo, los personajes \n y la historia cambiando según las elecciones \n tomadas previamente.";


void setup () {
  size (640, 480);
  
    estado = "pantalla-1";
  e = 1;
  
  imagen1= loadImage ("Imag 1.jpg");
  
  
  
  corazones= loadImage ("corazones.png");
  
  imagen2= loadImage ("Imag 2.jpg");
  frisk= loadImage ("frisk.png");
  determinacion= loadImage ("determinacion.png");
  
  imagen3= loadImage ("Imag 3.jpg");
  sans = loadImage ("sans.png");
  papyrus1 = loadImage ("papyrus1.png");
 toriel = loadImage ("toriel.png");
 alphys = loadImage ("alphys.png");
 undyne = loadImage ("undyne.png");
 
 
  imagen4= loadImage ("Imag 4.jpg");
  botones = loadImage ("botones.png");
  
  
}

void draw (){
  
    if ( e == 1 ) {

  tint(250);
image (imagen1, -100,0);

fill (0,0,0,180);
quad (0,180, 640,180, 640,280, 0,280);

noStroke();
fill(200,200,200,255);
alpha(225);


primermovimiento = frameCount  ;


papyrus = loadFont ("papyrus.vlw");
textFont(papyrus);
textSize (20);
text (texto1,680-primermovimiento, 210);



titileo = random (50,250);
tint (titileo);
image (corazones, 250,280, width-500, height-300);

tint(225);

   if( frameCount == (60*15) ){
      e = 2; 
     }
    }  else if ( e == 2 ) {
  //pantalla 2 codigo
  
  image (imagen2, 0, 0);
  
if ( e == 2) {
  

  segundomovimiento = frameCount/2-500 ;
 
   image (frisk, 0, 200);
   
  image (determinacion, 200,250);
  text ("el niño", 50, 470);
  
fill (0);
  text ("su alma", 220, 370);



fill (0,0,0,180);
quad (segundomovimiento,segundomovimiento+80, segundomovimiento,segundomovimiento-30, segundomovimiento+480,segundomovimiento-30, segundomovimiento+480,segundomovimiento+80);
 
    textSize(20.5);
  fill (0);
  text (texto2,segundomovimiento-2,segundomovimiento);
    textSize(20.2);
  fill (250);
  text (texto2,segundomovimiento,segundomovimiento);
  

   } if( frameCount == (60*30) ){
      e = 3;
      
         }
         
           } else if ( e == 3 ) {
             //pantalla 3 codigo
             image (imagen3, 0, 0);
             
             tercermovimiento = frameCount/2-900;
             
             fill (250,250,250,180);
             quad (120,tercermovimiento+40, 120,tercermovimiento-30,520,tercermovimiento-30, 520,tercermovimiento+40);
             
             fill(0);
             text (texto3, 120,tercermovimiento);
             
             
             fill (0, 0, 0, 180);
             quad(30,110, 70,110, 70,100, 30,100);
             quad (10,270, 83,270, 83,250, 10,250);
             quad(20,462, 65,462, 65,440, 20,440);
             
             quad (550,145, 620,145, 620,120, 550,120);
             quad (560,275, 620,275, 620,250, 560, 250);
             
             fill (250);
             image(sans, 0,0, 100, 100);
             text ("sans",30, 110);
             
             
             image (papyrus1,0, 130, 100, 120);
             text ("papyrus",10, 260);
             
             image (toriel, 0, 320, 90,120);
             text ("toriel",20, 460);
             
             image(undyne,530,0, 100, 120);
             text ("undyne",550, 135);
             
             image (alphys,530,150, 100,100);
             text("alphys",560,265);
             
           }
           

if( frameCount == (60*45) ){
      e = 4; 
   }
  else if ( e == 4 ) {
  //pantalla 4 codigo
  
  image (imagen4,0,0);
  
  
 cuartomovimiento = frameCount/2-1200;
 
 
   fill(200, 0, 0);
  circle (600,440,60);
  fill(0);
  textSize(15);
  text ("Reiniciar.", 570,445);
  
  
  image (botones, 400,200, 200, 100);
  
 textSize(20);
 fill(250,250,250,180);
 quad(0,450-cuartomovimiento, 470,450-cuartomovimiento, 470,640-cuartomovimiento, 0,640-cuartomovimiento);
 
 fill(0);
  text (texto4, 0, 480-cuartomovimiento);
  

}

}

void mousePressed(){
  //programar boton de reiniciar
  float d1 = dist(mouseX, mouseY, 600,440);
  int r1=60/2;
  if (d1 < r1 ){
  e = 1;
  frameCount = 0;
  
  }
}


void keyPressed(){
   if ( keyCode == LEFT ) {
       e--;
  }
    if ( keyCode == RIGHT ) {
        e++;
  }
  println( e );
}
      
      //profe yo me pongo un DIEZ
