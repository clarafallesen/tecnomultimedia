
int c = 3;
int tam;
int cant=10;
//declaro un objeto de la clase Copo Y CREAR EL ARREGLO
Pacman[] p = new Pacman[c];

void setup(){
  size( 600, 600 );
  tam = width / cant;
  
  //creo CADA objeto: llamo al constructor!
  for( int i = 0 ; i < p.length ; i++ ){
    p[i] = new Pacman(0,  i );//random(-50,-20)
  }
}

void draw(){
  background( #030C5A );
 
  
  for( int i = 0 ; i < p.length ; i++ ){
    p[i].actualizar();
    p[i].dibujar();
  }
}
