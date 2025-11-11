let juego;
var fondo;

function preload (){
fondo = loadImage ("./data/fondo.jpg");
}

function setup() {
  createCanvas (640, 480);

  juego = new Juego();
}


function draw() {
  background(30);
  image (fondo,0,0);
  juego.dibujar();
  juego.actualizar();
}

function keyPressed() {
  juego.teclaPresionada(keyCode);
}
