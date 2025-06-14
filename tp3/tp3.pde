// https://www.youtube.com/watch?v=H0-wm0JgnX0

PImage imagen1;
float grosor = 1; //es el grosor del circulo q va aumentando cada q se aprieta una tecla
float r = 255;
float g = 0;
float b = 0;
// son los colores q van cambiando cada q se aprieta una tecla

void setup () {
  size (800, 400);

  imagen1 = loadImage ("fondo.jpg");
}

void draw() {
  background (255);
  strokeWeight(grosor);
  fill(r, g, b);

  for (int y = 0-50; y < 500; y += 85) {
    for (int x = 350; x < 900; x += 85) {
      for (int i=6; i>0; i--) {
        circle (x, y, i*(1000/70));
        //estos son los circulos del fondo
      }
    }
  }
    for (int y = 0; y < 500; y += 85) {
    for (int x = 400; x < 900; x += 85) {
      for (int i=6; i>0; i--) {
        circle (x, y, i*(1000/70));
        //estos son los del frente, los cuales cambie de posicion ligeramente
      }
    }
  }
  
  image (imagen1, 0-200, 0, 620, 400);
}

void keyPressed() {
  grosor += 1;
  if (grosor > 7) {
    grosor = 1;
  }
  r = random(255);
  g = random(255);
  b = random(255);
}
