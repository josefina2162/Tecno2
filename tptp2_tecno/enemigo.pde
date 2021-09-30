
class Enemigo {

float x, y; 
float angulo; 
float largo = 80; 
float ancho = 40;  
float diamBala = 20; 
float velocidad = 2000; 
 
Enemigo( float x_, float y_) {

  x = x_;
  y = y_; 
  angulo = radians (140); 
 
 

}

void dibujar () {

fill(0);
rect (-ancho/2, -ancho/2, largo, ancho); 


    
    }





void disparare (FWorld mundo ) {
  
  
PImage imagenBola = loadImage ("bola.png"); 
FCircle bala = new FCircle (imagenBola.width); 
bala.setPosition ( x, y ); 
bala.attachImage (imagenBola); 
//bola.setFill ( 255); 
bala.setName ("bala"); 

float vx = velocidad * cos (angulo ); 
float vy = velocidad *sin ( angulo ); 

bala.setVelocity (vx , vy ); 

mundo.add ( bala ); 


}



void borrarBalas () {

ArrayList <FBody> cuerpos = mundo.getBodies (); 

for (FBody este: cuerpos ) {
   String nombre = este.getName(); {
     if (nombre != null ) {
       if (nombre.equals ("bala" )) {
         if ( este.getY()> height + 100 ) {
           mundo.remove ( este ); 
         }
       }
     }
   }
}
}

void Vidasmenos(int posicion) {
    y = posicion;
  }

}
