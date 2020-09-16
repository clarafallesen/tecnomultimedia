void botones(String text, int x, int y, int h, int w) {
  pushStyle();
  fill(colores[4]);
  rect(x, y, h, w);
  fill(0);
  textFont(fuente1);
  textSize(14);
  text(text, x, y);
  popStyle();
}
void finales(PImage finales, String estado) {
  if (estado1.equals(estado)) {
    image(finales, width/2-50, height/2+15, width*1.5, height*1.18);
  }
  if (estado1.equals(estado)&&mouseX>750-75/2&&mouseX<750+75/2&&mouseY>580-25/2&&mouseY<580+25/2) {
    botones("AVANZAR", 750, 580, 80, 30);
  } else if (estado1.equals(estado) ) {
    botones("AVANZAR", 750, 580, 80-5, 30-5);
  }
}

void estrellas(PImage imagen) {
  pushStyle();
  background(colores[0]);
  textSize(18);
  fill(colores[4]);
  text("preciona espacio para ir a los creditos", width/2, 570);
  posicion=posicion+2;
  image(imagen, 400, 650-velocidad%850, 300, 300);
  velocidad = velocidad +3;
  popStyle();
}

void clicks(String nom1, int x1, int x2, int y1, int y2, String nom2) { //---------> para cambiar estados con mouse pressed
  if (estado1.equals(nom1) && mouseX>x1 && mouseX< x2 && mouseY>y1 && mouseY<y2) {
    estado1= nom2;
  }
}
