class Juego {
   //fuentes
  PFont [] fuente = new PFont [5];

  //imagenes fondo
  PImage [] base = new PImage[7]; 
  String estado;
  Consola consola;
  Juego() {
    consola= new Consola();
    estado = "inicio";
     for(int i=0 ; i<5 ; i++){
       fuente[i] = loadFont ("letra"+i+".vlw");
     }

    //fondos
     for(int f=0 ; f<7 ; f++){
       base[f] = loadImage ("fondo"+f+".jpg");
     }
  }

  void dibujar() {
    if ( estado.equals("inicio") ){
      fondos(0);
    consola.dibujar(0,height-height/3,0,0);
    
    }
  }
  void teclado() {
  if (keyCode == ENTER ){
  estado = ("inicio");
  }
   //evento F reparar portal
 if( key == 'f' && estado.equals("futuro") || key == 'F' && estado.equals("futuro") ){
    estado = "fix";
  }
  
 //evento S quedarte en el 2020
 if( key == 'S' && estado.equals("futuro") || key == 's' && estado.equals("futuro") ){
    estado = "stay";
  }

 //evento R correr
 if( key == 'R' && estado.equals("stay") || key == 'r' && estado.equals("stay") ){
    estado = "run";
 
 //evento T transbordador
 }else if( key == 'T' && estado.equals("stay") || key == 't' && estado.equals("stay") ){
    estado = "trans";
  }
 }
}
