class Magias {
  constructor(x, carrilActual, carriles) {
    this.posX = x;
    this.carriles = carriles;
    this.carrilActual = carrilActual;
    this.posY = this.carriles[this.carrilActual];
    this.size = 40;
    this.velocidad = 5;
  }

  dibujar() {
    noStroke();
    fill(250);
    rectMode(CENTER);
    rect(this.posX, this.posY, this.size, this.size);
  }

  mover() {
    this.posX -= this.velocidad;
  }
}
