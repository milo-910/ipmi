class Personaje {
  constructor(x, carrilInicial, carriles) {
    this.posX= x;
    this.carriles = carriles;
    this.carrilActual = carrilInicial;
    this.posY = this.carriles[this.carrilActual];
    this.size = 40;
  }

  dibujar () {
    noStroke();
    fill(255, 200, 0);
    ellipse (this.posX, this.posY, this.size);
  }

  mover() {
    this.posY = this.carriles[this.carrilActual];
  }

  teclaPresionada(keyCode) {
    if (keyCode === UP_ARROW && this.carrilActual > 0) {
      this.moverArriba();
    } else if (keyCode === DOWN_ARROW && this.carrilActual < this.carriles.length - 1) {
      this.moverAbajo();
    }
  }


  moverArriba() {
    this.carrilActual --;
  }

  moverAbajo() {
    this.carrilActual ++;
  }
}
