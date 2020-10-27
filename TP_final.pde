Juego juego;

void setup(){
  size( 1024,768 );//(800,600);//
 juego = new Juego();
}

void draw(){
  juego.dibujar();
}
void keyPressed(){
  juego.teclado();
  
}
