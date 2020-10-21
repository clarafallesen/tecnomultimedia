class Juego {
  // PROPIEDADES (variables)
  // EstadoGeneralDelJuego = menu, empezar, ganar, perder, intentar de nuevo
  // Blop jugador;
  // Arreglo de obstaculos (cientificos izq o der);
  String estado;
  Blop jugador;
  int c = 4;
  Cientifico[] cientifico= new Cientifico [c];
  Llave llave;
  PImage [] img= new PImage[5];
  // hacer arreglos de blop-------------------------------------------------------



  // -----------------------------------------------------
  // CONSTRUCTOR (setup del objeto)
  // EstadoGeneralDelJuego = "menu";
  // inicializar los objetos: Blop, cientificos;
  Juego() {
    estado = "jugar";
    jugador= new Blop(width/2, height-40 );
    llave= new Llave();
    for (int i =0; i<5; i++) {
      img[i]=loadImage("imagen"+i+".png");
    }
    for ( int i = 0; i < c; i++ ) {
      cientifico[i]=new Cientifico(random(100, 300), i);
    }
  }
  // -----------------------------------------------------
  // METODOS (funciones) 
  void actualizar() {
    for ( int i = 0; i < c; i++ ) {
      cientifico[i].actualizar();
      //estado del juego
      println(estado);
    }
    jugador.llave(llave);
    //GANAR Y PERDER --------------------------------- CORREGIR
    jugador.perder(cientifico, "perdiste");

    //pantalla de volver a empezar
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


  void dibujar() {
    //estado del juego
    if ( estado.equals( "jugar" ) ) {
      //llave.dibujar();
      jugador.dibujar();

      for ( int i = 0; i < c; i++ ) {
        cientifico[i].dibujar();
      }
    }
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
  void cambiarEstado(String e) {
    estado =e;
  }

  void mouse() {
    if (estado.equals("perdiste") && mouseX>width/2-120 && mouseX<width/2+120 && mouseY>height/2-80 && mouseY>height/2+80 ||
      estado.equals("ganaste")&& mouseX>width/2-120 && mouseX<width/2+120 && mouseY>height/2-80 && mouseY>height/2+80 ) {//(width/2,height/2, 80)
      juego.cambiarEstado("jugar");
      //circle(mouseX,mouseX,100);
    }
  }
}
