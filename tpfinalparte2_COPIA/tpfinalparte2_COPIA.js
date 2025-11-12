let sistema;
var sprites= [];
var imgPiedra;
var imgMagia;
var fondo;

function preload () {
  fondo = loadImage ("./data/fondo.jpg");
  sprites = [loadImage("./data/sprite1.png"), loadImage("./data/sprite2.png")];
  imgPiedra = loadImage ("./data/piedra.png");
  imgMagia= loadImage ("./data/magia.png");
}

function setup() {
  createCanvas (640, 480);

  sistema = new Sistema();
}


function draw() {
  background(30);
  sistema.jugar();
}

function keyPressed() {
  sistema.jugarMover();
}
