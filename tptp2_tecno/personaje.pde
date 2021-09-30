class Personaje {


  
PImage pistola; 
float x, y; 

float largo = 80; 
float ancho = 40; 
float anguloVel = 5; 
float diamBala = 20; 
float velocidad = 2000; 

float angulo;




Personaje(  float x_, float y_) {

  x = x_;
  y = y_; 

 
  
  pistola = loadImage ("pistola.png");
 
 

}

void dibujar () {


ArrayList<TuioObject> tuioObjectList = tuioClient.getTuioObjectList();

 for (int i=0; i<tuioObjectList.size (); i++) {
  TuioObject patronAux=tuioObjectList.get(i);
  int ID=patronAux.getSymbolID ();
  if (ID == 0) {
  
fill(0);
pushMatrix (); 
translate ( x, y); 
rotate (patronAux.getAngle()); 
image (pistola, -ancho/2, -ancho/2, largo, ancho); 
popMatrix (); 

  }
}
}


void teclasr () {

  if (keyPressed ) {
  if (keyCode == RIGHT  ) {
    
    angulo += radians (anguloVel); 
    
  }else if (keyCode == LEFT ) {
    
  }angulo -= radians (anguloVel); 
  
  }
}

void disparar (FWorld mundo ) {

ArrayList<TuioObject> tuioObjectList = tuioClient.getTuioObjectList();

 for (int i=0; i<tuioObjectList.size (); i++) {
  TuioObject patronAux=tuioObjectList.get(i);
  int ID=patronAux.getSymbolID ();
  if (ID == 1) {
  
PImage imagenBola = loadImage ("bola.png"); 
FCircle bola = new FCircle (imagenBola.width); 
bola.setPosition ( x, y ); 
bola.attachImage (imagenBola); 
//bola.setFill ( 255); 
bola.setName ("bola"); 

float vx = velocidad * cos ( patronAux.getAngle() ); 
float vy = velocidad *sin (  patronAux.getAngle()  ); 

bola.setVelocity (vx , vy ); 
mundo.add ( bola ); 

  }
}
  



}



void borrarBalas () {

ArrayList <FBody> cuerpos = mundo.getBodies (); 

for (FBody este: cuerpos ) {
   String nombre = este.getName(); {
     if (nombre != null ) {
       if (nombre.equals ("bola" )) {
         if ( este.getY()> height + 100 ) {
           mundo.remove ( este ); 
         }
       }
     }
   }
}
}


}
