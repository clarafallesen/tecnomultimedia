// primer letra en mayus: String, PImage..
class Pacman {

  float x, y;
  float tam, vel;
  PImage pm;
  

  Pacman(float x_, int id ) {
    x= x_;
    y= random(height);
    vel = random(1,3);
    pm=loadImage("pacman-"+id%3+".png");
  }
  void dibujar(){
  image(pm,x,y, tam, tam);
  }
 
  void actualizar() {
    x = x + vel;
    if ( x > width + tam/2 ) {
      reciclar();
    }
  }
  void reciclar() {
    y = random( width );
    x = -50;
    tam = 50;
    vel = random( 1, 3 );
    
  }
}
