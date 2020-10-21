void puertas(float y) {
  pushStyle(); 
  fill(100);
  rect(width/2, y, 200, 35); 
  popStyle();
}
void botones(float y, float tam, String text) {
  pushStyle();
  fill(255);
  rect(width/2, y, tam+tam/2, tam);
  fill(0);
  text(text, width/2, y);
  popStyle();
}
void finales(String contenido) {
  pushStyle();
  background(#0F4C81);
  fill(255);
  textSize(18);
  text(contenido, width/2, height/2-100);
  botones(height/2, 80, " Volver\n a empezar");
  popStyle();
}
//void mouse() {
//   if (estado.equals("perdiste") && mouseX>width/2-120 && mouseX<width/2+120 && mouseY>height/2-80 && mouseY>height/2+80 ||
//     estado.equals("ganaste")&& mouseX>width/2-120 && mouseX<width/2+120 && mouseY>height/2-80 && mouseY>height/2+80 ) {//(width/2,height/2, 80)
//     juego.cambiarEstado("jugar");
//     }
//}
