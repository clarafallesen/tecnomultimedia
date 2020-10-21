class Llave {
  float x, y;
  float tam;
  PImage llaveF;
  String con;

  Llave () {
    x=random(0, width);
    y= random(0, height);
    tam= 20;  
    llaveF=loadImage("imagen4.png");
    con="no";
  }
  void dibujar(boolean tengo) {
    if (tengo && con.equals("no")) {
      image(llaveF, x, y, tam, tam+10);
    } else {
      tengo=false;
      con="si";
    }
    if (con.equals("si")) {
      pushStyle();
      textSize(10);
      text("Ya tenes la llave", 50, 80);
      popStyle();
      image(llaveF, 50, 50, tam, tam+10);
    }
  }
}
