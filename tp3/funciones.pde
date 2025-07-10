color colorAleatorio(float transparencia) {                      
  return color(random(255), random(255), random(255), transparencia);
}

void actualizarGrosor() {                     
  grosor++;
  if (grosor > 7) grosor = 1;
}

void reiniciar() {                            
  grosor = 1;
  tono   = color(255);
}



void dibujarCirculos(float x, float y) {
  for (int i = 6; i > 0; i--) {
    float diametro = i * (1000 / 70.0);
    float peso = grosor * (i / 6.0);  // Mayor en el exterior (i grande), menor en el centro (i pequeño)
    strokeWeight(peso);
    stroke(0);
    circle(x, y, diametro);
  }
}
