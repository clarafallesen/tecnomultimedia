
// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// Clara Fallesen *
// Escape por el edificio *

// PROPUESTA 
//En una opcion de escape de mi aventura grafica, mi personaje tiene que cruzar por
//una habitacion llena de cientificos que lo estan persiguiendo. Mi idea es convertir
//esa instancia en un minijuego estilo "Frog" en donde el personaje tiene que cruzar por
//pasillos y si se cruza con un cientifico antes de llegar a la puerta pierde. Para agregarle
// otra condicion de dificultas, el jugador debe tomar la llave que abre la puerta de la
//habitacion para poder abrirla y escapar


//declaro la clase juego
Juego juego;
PFont fuente1;
//SONIDO
import processing.sound.*;
SoundFile fondo, ganar, gameO, mov;

void setup() {
  size( 800, 600);
  imageMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER);
  fuente1= createFont("CHICKEN Pie.otf", 100);
  textFont(fuente1);
  //inicializo la clase juego
  juego = new Juego();
  fondo = new SoundFile(this, "suspense.wav");
  fondo.loop();
}

void draw() {
  background(255/2);
  puertas(height);
  puertas(0);
  
  //Metodos de la clase JUEGO
  juego.actualizar();
  juego.dibujar();
}

void keyPressed() {
  juego.teclas();
}
void mousePressed() {
  juego.mouse();
}
