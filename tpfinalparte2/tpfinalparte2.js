let juego;


function setup() {
  createCanvas (640, 480);
  juego = new Juego();
}


function draw() {
  background(30);
  juego.dibujar();
  juego.actualizar();
}

function keyPressed() {
  juego.teclaPresionada(keyCode);
}
