class Juego {
  constructor() {
    this.carriles = [100, 250, 380];
    this.piedras=[];
    this.magias=[];
    this.personaje = new Personaje(20, 1, this.carriles, this.magias, this.piedras);
  }

  teclaPresionada(keyCode) {
    this.personaje.teclaPresionada(keyCode)
  }

  crearPiedras() {
    let s = int (millis ()/1000);
    if (s%1 === 0  && this.piedras.length < 1) {
      let carrilAleatorio = floor(random(0, 3));
      let nuevaPiedra = new Piedras(width, carrilAleatorio, this.carriles);
      this.piedras.push(nuevaPiedra);
    }

    if (this.piedras.length > 0 && this.piedras[0].posX < -1) {
      this.piedras.pop();
    }
  }

  crearMagias() {
    let s = int (millis ()/1000);
    if (s%2 === 0  && this.magias.length < 1) {
      let carrilAleatorio = floor(random(0, 3));
      let nuevaMagia = new Magias(width, carrilAleatorio, this.carriles);
      this.magias.push(nuevaMagia);
    }

    if (this.magias.length > 0 && this.magias[0].posX < -1) {
      this.magias.pop();
    }
  }


  dibujar() {
    image (fondo, 320, 240);

    this.personaje.dibujar();

    for (let i = 0; i < this.piedras.length; i++) {
      this.piedras[i].dibujar();
    }
    for (let i = 0; i < this.magias.length; i++) {
      this.magias[i].dibujar();
    }
  }

  actualizar() {
    this.personaje.mover();

    this.crearPiedras();
    for (let i = 0; i < this.piedras.length; i++) {
      this.piedras[i].mover();
    }

    this.crearMagias();
    for (let i = 0; i < this.magias.length; i++) {
      this.magias[i].mover();
    }

    this.personaje.colisionar();
  }
}
