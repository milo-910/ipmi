class Sistema {
  constructor() {
    this.instrucciones = 1;
    this.juego = new Juego();
    this.ganar= 3;
    this.perder = 4;
    this.creditos = 5;
  }

  jugar() {
    this.juego.dibujar();
    this.juego.actualizar();
  }

  jugarMover() {
    this.juego.teclaPresionada(keyCode);
  }
}
