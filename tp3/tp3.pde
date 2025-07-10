https://www.youtube.com/watch?v=EOWX4_WBQ6o

PImage imagen1;
float grosor = 1; //es el grosor del circulo q va aumentando cada q se aprieta una tecla
color tono = 255;
// son los colores q van cambiando cada q se aprieta una tecla

void setup () {
  size (800, 400);

  imagen1 = loadImage ("fondo.jpg");
}

void draw() {
  background (255);
  strokeWeight(grosor);
  fill(tono);

  for (int y = 0-50; y < 500; y += 85) {
    for (int x = 350; x < 900; x += 85) {
      dibujarCirculos(x, y);
        //estos son los circulos del fondo
      
    }
  }
  for (int y = 0; y < 500; y += 85) {
    for (int x = 400; x < 900; x += 85) {
      dibujarCirculos(x, y);
        //estos son los del frente, los cuales cambie de posicion ligeramente
      
    }
  }

  image (imagen1, 0-200, 0, 620, 400);
}

void keyPressed () {
  if (key == ' ') {
    actualizarGrosor();
    tono = colorAleatorio(70);
  }
    if (key == 'r') {
      reiniciar();
    }
    if (key == 'R') {
      reiniciar();
    }
  }
