void puertas(float y) {
  pushStyle(); 
  fill(100);
  rect(width/2, y, 200, 35); 
  popStyle();
}
void botones(float x, float y, float tam, String text) {
  if (mouseX>x-(tam+tam/2) && mouseX< x+(tam+tam/2) && mouseY>y-tam/2 && mouseY< y +tam/2) {
    pushStyle();
    fill(255);
    rect(x, y, tam+tam/2+10, tam+10);
    fill(0);
    text(text, x, y);
    popStyle();
  } else {
    pushStyle();
    fill(255);
    rect(x, y, tam+tam/2, tam);
    fill(0);
    text(text, x, y);
    popStyle();
  }
}
void finales(String contenido) {
  pushStyle();
  background(#0F4C81);
  fill(255);
  textSize(18);
  text(contenido, width/2, height/2-100);
  botones(width/2, height/2, 80, " Volver\n a empezar");
  popStyle();
}
void menu(PImage img, PImage img1, PImage img2) {
  pushStyle();
  background(#0F4C81);
  fill(#046C3E);
  rect(width/2, height -height/4, width, height/2);
  popStyle();

  image(img, width/2+200, height/3+10, width, height+height/2 );
  image(img1, width/2-200, height -height/4+50, 200, 200 );

  pushStyle();
  fill(255);
  textSize(18);
  textAlign(LEFT);
  text("Para escapar del area 51 \n tengo que cruzar este edificio \n sin ser capturado por los\n cientificos. \n No olvide buscar la llave \n que abre la puerta", 
    width/2-345, height -height/2-200);
  image(img2, width/2-200, height -height/3-150, 300, 350 );
  fill(0);
  popStyle();
  textSize(18);
  botones(width/2-200, height -height/3-100, 75, "Empecemos");
}
