class Ganar {
  int cantidad;
  int posX, posY;
 // int  tiempo; 

  Ganar(int X, int Y) {
    cantidad = 5;
    posX = X;
    posY = Y;
  }



  void dibujar() {
    fill(0,0,0,0); 
    noStroke();
    rect(10, 10, 105, 40);
    fill(0);
    textSize(15);
    text(" Enemigos: " + cantidad, posX, 50);


    if (cantidad == 0) {
      background(255);
      textSize(50);
      fill(0);
      text("¡Ganaste!", 250, 250);
      textSize (25);
      text ("Lograste derrotar a todos los enemigos", 250, 300);
    }
  }
  void pierdeCantidad() {
    cantidad--;
  }
}
