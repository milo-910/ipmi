class Juego {
  constructor() {
    this.carriles = [150, 300, 450];
    this.personaje = new Personaje(100, 1, this.carriles);
    let carrilAleatorio = floor(random(0, 3));
    this.piedra = new Piedra(width, carrilAleatorio, this.carriles);
  }

  teclaPresionada(keyCode) {
    this.personaje.teclaPresionada(keyCode)
  }

  dibujar() {
    stroke(80);
    strokeWeight(4);
    for (let y of this.carriles) {
      line(0, y, width, y);
    }

    this.personaje.dibujar();
    this.piedra.dibujar();
  }

  actualizar() {
    this.personaje.mover();
    this.piedra.mover();
  }
}
