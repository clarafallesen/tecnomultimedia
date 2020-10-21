class Juego {
  // PROPIEDADES (variables)
  String estado;
  Blop jugador;
  int c = 4;
  Cientifico[] cientifico= new Cientifico [c];
  Llave llave;
  PImage [] img= new PImage[6];




  // -----------------------------------------------------
  // CONSTRUCTOR (setup del objeto)
  Juego() {
    estado = "menu";
    jugador= new Blop(width/2, height-40 );
    llave= new Llave();
    //decoraciones
    for (int i =0; i<img.length; i++) {
    img[i]=loadImage("imagen"+i+".png");
  }
    for ( int i = 0; i < c; i++ ) {
      cientifico[i]=new Cientifico(random(100, 300), i);
    }
  }

  // METODOS (funciones) 
  void actualizar() {
    for ( int i = 0; i < c; i++ ) {
      cientifico[i].actualizar();
    
    }
    jugador.llave(llave);

    //pantallas de volver a empezar
    jugador.perder(cientifico, "perdiste");
  }
  void mouse() {
    if (estado.equals("perdiste") && mouseX>width/2-60 && mouseX<width/2+60 && mouseY>height/2-40 && mouseY<height/2+40 || 
      estado.equals("ganaste") && mouseX>width/2-60 && mouseX<width/2+60 && mouseY>height/2-40 && mouseY<height/2+40   ) {

      juego.cambiarEstado("menu");
      jugador= new Blop(width/2, height-40 );
      llave= new Llave();
    }
    if (estado.equals("menu")&& mouseX>(width/2-200)-37 && mouseX<(width/2-200)+37 && 
    mouseY>( height -height/3-100)-37 && mouseY<( height -height/3-100)+37){//width/2-200, height -height/3-100, 75
      juego.cambiarEstado("jugar");
    }
  }


  void dibujar() {
    //estado del juego
    if ( estado.equals( "menu" ) ) {
    menu(img[2],img[0], img[5]);
    }
    if ( estado.equals( "jugar" ) ) {
      jugador.dibujar();
      for ( int i = 0; i < c; i++ ) {
        cientifico[i].dibujar();
      }
    }
    if (estado.equals("perdiste")) {
      finales("PERDISTE \n Los cientifico te atraparon");
      image(img[3], width/2, height- height/4, 300, 200);
      image(img[0], width/2+70, height-height/4, 250, 200);
    }
    jugador.ganar("ganaste");
    if (estado.equals("ganaste")) {
      finales("LOGRASTE ESCAPAR \n Los cientifico no pudieron alcanzarte");
      image(img[1], width/2, height-height/4, 250, 200);
      image(img[4], width/2+70, height- height/4, 50, 70);
    }
  }
  void cambiarEstado(String e) {// pasar a la pestaña funciones----------------------------!!!!!!!!!!!!!!!
    estado =e;
  }

  void resetear() {
    for ( int i = 0; i < c; i++ ) {
      cientifico[i].reciclar();
    }
  }

  void teclas() {
    jugador.moverDer();
    jugador.moverIzq();
    jugador.moverArr();
    jugador.moverAba();
  }
}
