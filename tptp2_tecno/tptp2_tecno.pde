import ddf.minim.*;

import fisica.*; 
import TUIO.*; 

TuioProcessing tuioClient;

Minim soundengine;
AudioSample disparo; 
AudioSample musica; 


FWorld mundo; 
Personaje p; 
Funciones f; 
Tiempo t;
Ganar g;


PImage montana, montana1; 
PImage fondo; 
String estado; 
String nombreArchivo; 

void setup () {

size (1200, 600);

Fisica.init(this); 
tuioClient  = new TuioProcessing(this);
  soundengine = new Minim (this);
  disparo =soundengine.loadSample ("sonido.mp3");
musica = soundengine.loadSample("fondoaudio.mp3");
 musica.trigger();

mundo = new FWorld(); 
mundo.setEdges(255);


//CLASES
p = new Personaje ( 120, 450); 
f = new Funciones (); 
t = new Tiempo(150, 27);
g = new Ganar(12, 27);



//IMAGENES
montana = loadImage ("montana.png"); 
montana1 = loadImage ("montana1.png"); 
fondo = loadImage ("fondo.png"); 


estado = "inicia"; 



f.agregarcua();
f.agregarcua1();
f.agregarcua2 ();
f.agregarcua3 ();
f.agregarcua4 ();
f.agregarcuaM ();


f.agregarEnemigo ();
f.agregarEnemigo1();
f.agregarEnemigo2();
f.agregarEnemigo3();
f.agregarEnemigo4(); 
f.agregarMuneco ();
f.nube();
f.nube1();
f.bolaM ();
}

void draw () {


image (fondo, 0 ,0, 1200, 800); 
p.teclasr(); 
mundo.step(); 
p.dibujar(); 
p.borrarBalas(); 
t.dibujar();
g.dibujar();
p.disparar(mundo);
 
ArrayList <FBody> cuerpos = mundo.getBodies (); 

ArrayList<TuioObject> tuioObjectList = tuioClient.getTuioObjectList();
 for (int i=0; i<tuioObjectList.size (); i++) {
  TuioObject patronAux=tuioObjectList.get(i);
  int ID=patronAux.getSymbolID ();
  if (ID == 1) {
  

disparo.trigger();

  }
}

mundo.draw(); 
 

image (montana, 550, 450, 500, 400); 
image (montana, 700, 310, 250, 300); 
image (montana, 740, 300, 300, 300); 
image (montana1, 900, 450, 300, 200); 
image (montana1, 0, 500, 150, 100); 
image (montana1, 870, 250, 200, 100); 

 
}

void keyPressed () {
  


}

void contactStarted (FContact colision ) {

if (hayColisionEntre (colision,  "bola", "enemigo1" ) ) {

  FBody uno = colision.getBody1();
  FBody dos = colision.getBody2();
  mundo.remove (uno); 
  mundo.remove (dos); 
  g.pierdeCantidad();
  

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
