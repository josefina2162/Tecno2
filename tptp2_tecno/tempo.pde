class Tiempo {

  int tiempo = 300;
  int posX, posY;
 // int vidas;

  Tiempo(int p_posX, int p_posY) {
    posX = p_posX; 
    posY = p_posY;
  }
  void dibujar() {
    PImage nube = loadImage ("nube.png"); 
    image (nube, -80, -50, 300, 150);
    image (nube, -30, -30, 300, 150);
    fill(0,0,0,0); 
    noStroke(); 
    rect(140, 10, 105, 40);
    fill(0);
    textSize(15);
    text ("Tiempo:"+ tiempo, posX, 50);
    tiempo -=1;

    if (tiempo <= 1) {
      background(255); 
      fill(0);
      textSize(50);
      text ("¡Perdiste!", posX+100, posY+100); 
      textSize(30);
      text("No has conseguido derrotar\na los muñecos a tiempo", 200, 250);
    }
  }
}
