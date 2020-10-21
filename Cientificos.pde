class Cientifico {
  float x, y;
  float tam;
  float  vel ;
  PImage cien;


  Cientifico(float y_, int id) {
    x = random( -30, width );
    y= y_;
    tam=90;
    cien=loadImage("cientifico-1-0"+id%4+".png");
    if (id/2==0) {
      vel= random(1, 5);
    } else if (id/2!=0) {
      vel= random(3, 8);
    }
  }

  // -----------------------------------------------------
  // METODOS > funciones

  void actualizar() {
    x = x + vel;

    if ( x > width + tam/2 ) {
      reciclar();
    }
  }

  void dibujar() {
    image( cien, x, y, tam, tam);
  }

  void reciclar() {
    x = random( -40, 0 );
    y = random(100, 400);  
    vel = random( 1, 8 );
  }
}
