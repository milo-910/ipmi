class Personaje {
  constructor(x, carrilInicial, carriles, magias, piedras) {
    this.posX= x;
    this.carriles = carriles;
    this.carrilActual = carrilInicial;
    this.posY = this.carriles[this.carrilActual];
    this.magias = magias;
    this.piedras = piedras;
    this.profundidad = 95;
  }

  dibujar () {
    let s = int (millis ()/1000);
    imageMode(CENTER);
    if (s%2===0) {
      image(sprites[0], this.posX, this.posY);
    } else {
      image(sprites[1], this.posX, this.posY)
    }
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

  colisionar () {
    for (let i = 0; i<this.magias.length; i++) {
      let m = this.magias[i];
      if (this.carrilActual === m.carrilActual ) {
        if (  this.posX < m.posX + this.profundidad && this.posX + this.profundidad > m.posX) {
          console.log("💥 COLISIÓN con magia en carril " + this.carrilActual + "!");
        }
      }
    }

    for (let i = 0; i<this.piedras.length; i++) {
      let p = this.piedras[i];
      if (this.carrilActual === p.carrilActual ) {
        if (  this.posX < p.posX + this.profundidad && this.posX + this.profundidad > p.posX) {
          console.log("💥 COLISIÓN con piedra en carril " + this.carrilActual + "!");
        }
      }
    }
  }
}
