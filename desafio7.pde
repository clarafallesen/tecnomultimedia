
int c = 3;

//declaro un objeto de la clase Copo Y CREAR EL ARREGLO
Pacman[] p = new Pacman[c];

void setup(){
  size( 800, 600 );
  
  //creo CADA objeto: llamo al constructor!
  for( int i = 0 ; i < p.length ; i++ ){
    p[i] = new Pacman(random(-50,-20),  i );
  }
}

void draw(){
  background( 0 );
  
  for( int i = 0 ; i < p.length ; i++ ){
    p[i].actualizar();
    p[i].dibujar();
  }
}
