class Funciones {

  
//FUNCIONES PARA MUNECO
void agregarMuneco () {

PImage imagenMuneco = loadImage ("muñeco.png"); 
FBox muneco = new FBox(imagenMuneco.width*0.2, imagenMuneco.height );


muneco.setPosition (60 , 450); 
muneco.attachImage (imagenMuneco ); 
muneco.setName( "muneco"); 
muneco.setStatic (true); 
mundo.add (muneco); 

}

void agregarcuaM() {
  

noStroke();
fill(0);
FBox altura = new FBox (100, 100);
altura.setPosition (70, 580); 
altura.setFill (255); 
altura.setStroke(0,0,0,0);
altura.setStatic (true); 
mundo.add (altura); 


}


//FUNCIONES PARA ENEMIGO 

void agregarEnemigo () {

PImage imagenEnemigo = loadImage ("enemigo1.png"); 
FBox enemigo = new FBox(imagenEnemigo.width*0.2, imagenEnemigo.height );


enemigo.setPosition ( 1130, 400); 
enemigo.attachImage (imagenEnemigo ); 
enemigo.setName( "enemigo1"); 

enemigo.setVelocity (0, 150); 
mundo.add (enemigo); 

}

void agregarEnemigo1 () {


PImage imagenEnemigo = loadImage ("enemigo1.png"); 
FBox enemigo = new FBox(imagenEnemigo.width*0.2, imagenEnemigo.height );

enemigo.setPosition ( 930, 153); 
enemigo.attachImage (imagenEnemigo ); 
enemigo.setName( "enemigo1"); 
enemigo.setVelocity (0, 150); 
mundo.add (enemigo); 


}

void agregarEnemigo2 () {


PImage imagenEnemigo = loadImage ("enemigo1.png"); 
FBox enemigo = new FBox(imagenEnemigo.width*0.2, imagenEnemigo.height );


enemigo.setPosition ( 850, 230); 
enemigo.attachImage (imagenEnemigo ); 
enemigo.setName( "enemigo1"); 
enemigo.setVelocity (0, 150); 
mundo.add (enemigo); 


}

void agregarEnemigo3 () {


PImage imagenEnemigo = loadImage ("enemigo1.png"); 
FBox enemigo = new FBox(imagenEnemigo.width*0.2, imagenEnemigo.height );


enemigo.setPosition ( 760, 280); 
enemigo.attachImage (imagenEnemigo ); 
enemigo.setName( "enemigo1"); 
enemigo.setVelocity (0, 150); 
mundo.add (enemigo); 

}

void agregarEnemigo4 () {


PImage imagenEnemigo = loadImage ("enemigo1.png"); 
FBox enemigo = new FBox(imagenEnemigo.width*0.2, imagenEnemigo.height );


enemigo.setPosition ( 650, 400); 
enemigo.attachImage (imagenEnemigo ); 
enemigo.setName( "enemigo1"); 
enemigo.setVelocity (0, 150); 
mundo.add (enemigo); 

}


void agregarcua() {
  

noStroke();
noFill();
FBox altura = new FBox (200, 500);
altura.setPosition (1100, 750); 
altura.setFill ( 0, 0, 0,0); 
altura.setStroke(0,0,0,0);
altura.setStatic (true); 
mundo.add (altura); 


}

void agregarcua1() {
  


FBox altura1 = new FBox (100, 265);
altura1.setPosition (950, 400 ); 
altura1.setStatic (true); 
altura1.setFill ( 0, 0, 0, 0); 
altura1.setStroke(0,0,0,0);
mundo.add (altura1); 


}

void agregarcua2() {
  
 

FBox altura2 = new FBox (100, 150);
altura2.setFill ( 0, 0, 0, 0); 
altura2.setStroke(0,0,0,0);
altura2.setPosition (850, 400); 
altura2.setStatic (true); 
mundo.add (altura2); 


}


void agregarcua3() {
  
 

FBox altura3 = new FBox (50, 280);
altura3.setFill (0, 0, 0,0); 
altura3.setStroke(0,0,0,0);
altura3.setPosition (770, 500); 
altura3.setStatic (true); 
mundo.add (altura3); 


}

void agregarcua4() {
  
 
noStroke();
FBox altura4 = new FBox (50, 150);
altura4.setStroke(0,0,0,0);
altura4.setFill (0, 0, 0,0); 
altura4.setPosition (650, 600); 
altura4.setStatic (true); 
mundo.add (altura4); 


}

void trampa () {

FBox trampa = new FBox ( 200, 50); 

trampa.setFill (0); 
//trampa.setPosition ( 



}

void contactStarted (FContact colision ) {

if (hayColisionEntre (colision,  "bola", "enemigo1" ) ) {

  FBody uno = colision.getBody1();
  FBody dos = colision.getBody2();
  mundo.remove (uno); 
  mundo.remove (dos); 

}


}

boolean hayColisionEntre( FContact contact, String nombreUno, String nombreDos ) {
 //el choque no se da en primer lugar 
  boolean resultado = false;

 //le pido al contacto que me devuelva dos cuerpos que participaron del contacto 
//primer y segundo cuerpo 
  FBody uno = contact.getBody1();
  FBody dos = contact.getBody2();

 //averiguo el nombre de los cuerpos 
  String etiquetaUno = uno.getName();
  String etiquetaDos = dos.getName();

  //verifico que ambos cuerpos tengan nombres
  if ( etiquetaUno != null && etiquetaDos != null ) {

     //pregunto las dos condiciones que me interesan 
 //si coinciden los nombres de los cuerpos con las etiquetas buscadas 
    if ( 
      ( nombreUno.equals( etiquetaUno ) && nombreDos.equals( etiquetaDos ) ) ||
      ( nombreDos.equals( etiquetaUno ) && nombreUno.equals( etiquetaDos ) )
      ) {
       //si se dan las coincidencias entonces se dio el contacto 
      resultado = true;
    }
  }
  return resultado;
}


//SEGUNDA COLISION!!!!!!!!!!!!!!!!!!!!!!!


boolean hayColision2Entre( FContact contact2, String nombreUno, String nombreDos ) {
 //el choque no se da en primer lugar 
  boolean resultado = false;

 //le pido al contacto que me devuelva dos cuerpos que participaron del contacto 
//primer y segundo cuerpo 
  FBody uno = contact2.getBody1();
  FBody dos = contact2.getBody2();

 //averiguo el nombre de los cuerpos 
  String etiquetaUno = uno.getName();
  String etiquetaDos = dos.getName();

  //verifico que ambos cuerpos tengan nombres
  if ( etiquetaUno != null && etiquetaDos != null ) {

     //pregunto las dos condiciones que me interesan 
 //si coinciden los nombres de los cuerpos con las etiquetas buscadas 
    if ( 
      ( nombreUno.equals( etiquetaUno ) && nombreDos.equals( etiquetaDos ) ) ||
      ( nombreDos.equals( etiquetaUno ) && nombreUno.equals( etiquetaDos ) )
      ) {
        
       //si se dan las coincidencias entonces se dio el contacto 
      resultado = true;
    }
  }
  return resultado;
}

void contactStarted2 (FContact colision2 ) {

if (hayColisionEntre (colision2,  "bala", "muneco" ) ) {

  FBody uno = colision2.getBody1();
  FBody dos = colision2.getBody2();
  mundo.remove (uno); 
  mundo.remove (dos); 
  

}


}

void nube () {
  
  
PImage imagenNube = loadImage ("nube.png"); 
FBox nube = new FBox(imagenNube.width, imagenNube.height);


nube.setPosition (1030, 190); 
nube.attachImage (imagenNube); 
nube.setName( "nube"); 
nube.setStatic (true); 
mundo.add (nube); 

 
}

void bolaM () {
  
PImage bolaI = loadImage ("bola.png"); 
FCircle bola = new FCircle (bolaI.width); 


bola.setPosition (1050, 60); 
bola.attachImage (bolaI); 
bola.setName( "bola"); 
bola.setVelocity (0, 150); 
mundo.add (bola); 



}

void nube1 () {
  
  
PImage imagenNube = loadImage ("nube.png"); 
FBox nube = new FBox(imagenNube.width, imagenNube.height);


nube.setPosition (970, 40); 
nube.attachImage (imagenNube); 
nube.setName( "nube"); 
nube.setStatic (true); 
mundo.add (nube); 

 
}


}
