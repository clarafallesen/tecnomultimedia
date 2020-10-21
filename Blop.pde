import processing.sound.*;
class Blop {
  //String estado= "jugar";
  // -----------------------------------------------------
  // CAMPOS (variables) #propiedes
  // Posición, tamaño e imagen
  float x, y;
  int tam;
  PImage blop;
  boolean tengoLlav;
  //Llave llav;


  // -----------------------------------------------------
  // CONSTRUCTOR > metodo/funcion inicial (el "setup" del objeto)
  // inicializar posicion
  Blop(float x_, float y_) {
    x=x_;
    y=y_;
    tam= 100;
    tengoLlav=true;
    blop= loadImage("imagen0.png");
    //llav= new Llave(random(0,width), random(0,height));
  }


  // -----------------------------------------------------
  // METODOS (funciones) #acciones
  // dibujar()
  // --mostrar los sprites de mi personaje (todavia no se si voy a usar sprites)
  void dibujar() {
    image(blop, x, y, tam, tam);
  }

  // METODOS para KeyPressed()
  void moverIzq() {
    if (keyCode == LEFT && x<=0) {
      //x -= t;
      x =width;
    } 
    if ( keyCode == LEFT) {
      x-= tam;
    }
  }


  void moverDer() {
    if ( keyCode == RIGHT &&x>=width ) {
      //x += t;
      x =0;
    } 
    if ( keyCode == RIGHT) {
      x += tam;
    }
  }

  void moverArr() {
    if ( keyCode == UP ) {
      //x -= t;
      y -= tam-15;
    }
  }

  void moverAba() {
    if ( keyCode == DOWN ) {
      //x += t;
      y += tam-15;
    }
  }
  void llave(Llave llav) {
    llav.dibujar(true);
    float d = dist( x, y, llav.x, llav.y );
    if (d<tam/1.5) {
      llav.dibujar(false);
      tengoLlav=false;
    }
  }

  void ganar(String estado_) {
    if (y<=0 && x>width/2-100 && x<width/2+100 && tengoLlav==false) {//(width/2, y,200, 35
      juego.cambiarEstado(estado_);


      //estado=estado_;
    }
  }

  void perder(Cientifico[] cien, String estado_) {
    for (int i=0; i<cien.length; i++) {
      float d = dist( x, y, cien[i].x, cien[i].y );
      //DEBUG ????----------------------------------!!!!!!!!!!!!!!!!1111!!!!!!!!!!!!
      //  pushStyle();
      // noFill();
      // stroke( 255, 0, 0 );
      // strokeWeight( 5 );
      // circle( x, y, tam/1.5  );
      // circle( cien[i].x, cien[i].y, cien[i].tam );     
      // strokeWeight( 2 );
      // line( x, y-tam/4, cien[i].x, cien[i].y );
      //println( "x: " + x + " | y " + y); 
      // println( "cien[i].x: " + cien[i].x + " | cien[i].y: " + cien[i].y ); 
      // popStyle();
      if (d<tam/1.5) {
        juego.cambiarEstado(estado_);

        //println(estadoJuego);
      }
    }
  }
}
