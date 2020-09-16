
int tamanio;
float posx, posy;
boolean sentido;  //true or false
float posicion, velocidad;
String estado1;
PFont fuente1, fuente2;
int[] colores=new int [5];
PImage[] img= new PImage[21];

void setup() {
  size (800, 600);
  //arreglos colores
  colores[0]=#0F4C81;
  colores[1]=#046C3E;
  colores[2]=#035531;
  colores[3]=#AA2F1B;
  colores[4]=255;
  //arreglo imagenes
  for (int i =0; i<21; i++) {
    img[i]=loadImage("imagen"+i+".png");
  }

  estado1="introduccion"; 
  tamanio = 150;
  posx = width/2;
  posy = 500;
  posicion= 2;
  velocidad =0.5;
  fuente2=loadFont("SourceSansPro-Regular-48.vlw");
  fuente1= createFont("CHICKEN Pie.otf", 100);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  noStroke();
}
void draw() {
  //pantalla introduccion
  println(estado1);
  if (estado1.equals ("introduccion")) {
    background(colores[0]);
    fill(colores[4]);
    textFont(fuente1);
    textSize(36);
    text("  ¿QUERES AYUDARME A ESCAPAR?", width/2, height/4);
    textSize(11);
    text("  Haz click en cualquier lado", width/2, height/4-50);
    image(img[0], posx, posy, tamanio*2, tamanio*2 );

    if (mousePressed && estado1.equals ("introduccion")) {
      image(img[3], width/2, height/2, 550, height/4-30);
      fill(colores[4]);
      textSize(30);
      textAlign(CENTER);
      text("HOLA!", width/2, height/3);
      textSize(22);
      textAlign(CENTER);
      text ("preciona ESPACIO para comenzar esta aventura", width/2, height/2);
      //Movimiento de Plop
    } 
    if ( posx+tamanio == width ) { 
      sentido = false;
    }
    if ( posx-tamanio == 0 ) { 
      sentido = true;
    }

    if ( sentido ) {
      posx++;  // derecha
    } else {
      posx--;  //izquierda
    }
  }
  //pantalla ANUNCIO
  else if (estado1.equals ("anuncio")) {
    background(colores[0]);
    fill(#B2FFEC);
    rect(width/2, 250, 600, height/4+20);
    textSize(36); 
    text("  ESCAPE DEL AREA 51", width/2, 150);
    fill(#0B2E74);
    textSize(13);  
    //agregar celda abierta--------------------------------------------------------
    text("Yo soy BLOP, y aterricé en este planeta con mi nave espacial.", width/2, 190);
    text("Unos cientificos me capturaron y me metieron en esta celda.", width/2, 210);
    text("Al parecer estamos en el area 51, y mi nave esta en algun lugar estacionada.", width/2, 230);
    text("Por suerte logre escapar de la celda ¡Y me topé con vos! .", width/2, 250);
    text("¡Que suerte que hayas estado acampando con tu familia cerca de acá!", width/2, 270);
    text("Necesito volver a mi planeta con mi familia y necesito tu ayuda para escapar.", width/2, 290);
    image(img[11], 89+100, 465, width/2, 270);
    image(img[1], 95+70, 470, tamanio*1.2, tamanio*1.2 );
    fill(#7AF29D);
    rect(width/2, 360, 120, 40);
    textSize(17);
    fill(colores[4]);
    text("EMPECEMOS", width/2, 360);
  }

  if (estado1.equals ("opciones")) {
    background(colores[0]);
    fill(colores[1]);
    rect(width/2, 400, width, 420);
  } 
  if ( estado1.equals("opciones") && mouseX>0 && mouseX< 330 && mouseY>325 && mouseY<400 ) {
    image(img[5], 160, 400, 360, 360);
  } else if ( estado1.equals("opciones")) {
    image(img[5], 160, 400, 350, 350);//colina
  } 
  if ( estado1.equals("opciones") && mouseX>580 && mouseX< 710 && mouseY>188 && mouseY<433 ) {//580, 710, 188, 433
    image(img[6], 640, 270, 360, 510);
  } else if ( estado1.equals("opciones")) {
    image(img[6], 640, 270, 350, 500);//ruta
  } 
  if (estado1.equals("opciones") && mouseX>50 && mouseX< 270 && mouseY>55 && mouseY<260 ) {
    image(img[4], 180, 150, 410, 410);
  } else if ( estado1.equals("opciones")) {
    image(img[4], 180, 150, 400, 400);//edificio
  }
  if ( estado1.equals("opciones")) {
    fill(colores[2]);
    ellipse(700, height, 900, 400);
    ellipse(250, 650, width/2, height/2);
    image(img[7], 200+height/2, 470, 330, 70);
    textSize(16);
    fill(colores[4]);
    text("¿Por donde deberíamos escapar?", 170+height/2, 470);
    image(img[2], 420+height/2, 510, tamanio*2, tamanio*2 );
    image(img[10], 120+height/2, 200, 100, 100);
    //++arboles

    //ESCAPE POR LAS COLINAS (pantalla A)
  }
  if (estado1.equals("colina") && mouseX>180 && mouseX<285 && mouseY>450 && mouseY< 570) {
    image(img[5], width/3, height/2, 720, 720);
    image(img[3], 250, 410, 410, 70);
    image(img[2], 240, posy, tamanio*1.3, tamanio*1.3 );
    textFont(fuente2);
    textSize(16);
    fill(colores[4]);

    text("¿Estas seguro de que quieres ir por ahi?", 250, 390);
    text("Parece que el suelo quedó resvaloso por la lluvia", 250, 415);   
    fill(colores[3]);
    text("preciona ENTER", 500, 475);
    text("para huir por ", 500, 490);
    text("la colina", 500, 505);
  } else if (estado1.equals("colina")) {
    background(colores[0]);
    fill(colores[2]);
    rect(width/2, height, width, height);
    image(img[5], width/3, height/2, 700, 700);
    image(img[8], 500, 515, 170, 120);
    image(img[2], 240, posy, tamanio*1.2, tamanio*1.2 );
    botones("VOLVER", 70, 50, 80, 30);
  } 
  //ESCAPE POR LAS COLINAS PANTALLA B
  if (estado1.equals("colina2") &&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    botones("AVANZAR", 750, 580, 80, 30);
  } else if (estado1.equals("colina2")) {
    image(img[15], width/2, height/2, width, height);
    botones("AVANZAR", 750, 580, 80-5, 30-5);
  }
  if (estado1.equals("colina3") &&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    botones("AVANZAR", 750, 580, 80, 30);
  } else if (estado1.equals("colina3")) {
    image(img[16], width/2, height/2, width, height);
    botones("AVANZAR", 750, 580, 80-5, 30-5);
    //FINAL 1 (OPCION COLINA)--------------------------------------------------
  } 
  finales(img[17], "final1");
  if (estado1.equals("nave1")) {
    estrellas(img[20]);
  }
  //ESCAPE POR LA RUTA PANTALLA A
  if (estado1.equals ("ruta") && mouseX>128 && mouseX<243 
    &&mouseY>410 && mouseY<575 ) {      
    textFont(fuente2);
    textSize(16);
    fill(colores[4]);
    image(img[3], 180, 380, 330, 70);
    text("¿Estas seguro de que querés ir por ahi?", 180, 360);
    text("Parece que hay mucho tránsito", 180, 380);
    image(img[2], 200, posy, tamanio*1.30, tamanio*1.30 );        
    fill(colores[3]);
    text("preciona ENTER", 150, 175);
    text("para huir por ", 150, 190);
    text("la ruta", 150, 205);
  } else if (estado1.equals ("ruta")) {
    background(colores[0]);
    fill(colores[2]);
    rect(width/2, 550, width, height);
    image(img[14], 415, 430, width/4, 360);//ruta   
    image(img[13], 415, height/3+posicion%500, 70, 70);
    botones("VOLVER", 70, 50, 80, 30);
    image(img[2], height/3, posy, tamanio*1.2, tamanio*1.2 );
    image(img[8], 150, 215, 170, 120);
    image(img[10], 680, 450, 150, 150); 
    posicion=posicion+2;

    //ESCAPE POR LA RUTA PANTALLA B
  }  
  if (estado1.equals("ruta2")) {
    background(colores[0]);
    fill(colores[2]);
    rect(width/2, 550, width, height);
    fill (150);
    rect(width/2, 330, width, 120);
    image(img[10], 750-velocidad%1000, 142, 230, 250);
    image(img[10], 550-velocidad%1000, 142, 230, 250);
    tint(colores[4]);
    image(img[12], posicion%1000, 290, 150, height/6);
    posicion = posicion + 2.5;
    tint(10, colores[4], 10);
    image(img[12], -100+ posicion%1000, 310, 150, height/6);
    tint(colores[4]);
    image(img[1], -70+velocidad%1000, 470, tamanio*1.5, tamanio*1.5 );
    image(img[7], -230+velocidad%1000, 470, 210, 70);
    textFont(fuente2);
    textSize(16);
    fill(colores[4]);
    text("Ya puedo ver mi nave", -250+velocidad%1000, 455);
    text("¡no nos falta mucho!", -250+velocidad%1000, 470);
    velocidad = velocidad +1.5;
  } 

  if (estado1.equals("ruta2") &&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    botones("AVANZAR", 750, 580, 80, 30);
  } else if (estado1.equals("ruta2")) { 
    botones("AVANZAR", 750, 580, 80-5, 30-5);

    //ESCAPE POR EL EDIFICIO PANTALLA A
  }  
  if (estado1.equals ("edificio") &&  mouseX>128 && mouseX<243 &&mouseY>410 && mouseY<575 ) {
    textFont(fuente2);
    textSize(16);
    fill(70);
    rect(width/2, 338, 95, 75);
    image(img[3], 180, 390, 330, 90);
    fill(colores[4]);
    text("¿Estas seguro de que querés ir por ahi?", 180, 360);
    text("los cientificos podrían ", 180, 380);
    text("descubrirnos", 180, 400);
    image(img[2], 200, posy, tamanio*1.30, tamanio*1.30 );        
    fill(colores[3]);
    text("preciona ENTER", 480, 460);
    text("para atravezar ", 480, 475);
    text("el edificio", 480, 490);
  } else if (estado1.equals("edificio")) {
    background (colores[0]);
    fill(colores[1]);
    rect(width/2, 600, width, height);
    fill(colores[2]);
    rect( width/2, 338, width, 75);
    image(img[4], width/2, 150, 650, 800);
    fill(50);
    stroke(0);
    rect(width/2, 338, 90, 70);
    image(img[2], 200, posy, tamanio*1.2, tamanio*1.2 );
    image(img[8], 480, 500, 148, 120);
    botones("VOLVER", 70, 50, 80, 30);
  }   //ESCAPE POR EL EDIFICIO PANTALLA B
  if (estado1.equals("edificio2")) {

    background(255/2);
    fill(#8FD9FC, 80);
    image(img[9], -10+ posicion %1000, 220, width/8, height/3);
    image(img[9], -200+ posicion %1000, 220, width/8, height/3);
    posicion = posicion + 2;
    rect(width/2, 100, width, 350);
    fill(210);
    rect(width/2, 350, width, height/4);
    rect(50, 130, 100, height/2);
    rect(550, 130, 100, height/2);
    fill(180);
    rect(width/2, 300+150-2, width, height/4);
    strokeWeight(3);
    stroke(5);
    line(300, 0, 300, 100);
    noStroke();
    fill(#FFF948);
    ellipse(300, 100, 30, 30);
    fill(#FFF948, 80);
    ellipse(300, 100, 50, 50);
    image(img[2], -250+velocidad%1000, 480, tamanio*2, tamanio*1.5 );
    image(img[3], -250+velocidad%1000, 375, 270, 80);
    textFont(fuente2);
    textSize(16);
    fill(colores[4]);
    text("¡La puerta está abierta!", -250+velocidad%1000, 355);
    text("Si avanzamos en silencio", -250+velocidad%1000, 370);
    text("Saldremos sin ser descubiertos", -250+velocidad%1000, 385);
    velocidad = velocidad +1;
  } 
  textFont(fuente1);
  textSize(14);
  if (estado1.equals("edificio2") &&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    botones("AVANZAR", 750, 580, 80, 30);
  } else if (estado1.equals("edificio2")) { 
    botones("AVANZAR", 750, 580, 80-5, 30-5);


    //FINAL2 (opciones RUTA Y EDIFICIO)-----------------------------------------------------
  } 
  finales(img[18], "final2");
  if (estado1.equals("nave2")) {
    estrellas(img[19]);
  }

  //CREDITOS Y BOTON DE RESTART------------------------------------------------------

  if (estado1.equals("creditos")  &&mouseX>300-50&&mouseX<300+50 &&mouseY>500-35 &&mouseY<500+35) {
    fill(colores[2]);
    rect(300, 500, 110, 80);
    fill(colores[4]);

    text("Elegir otro\n camino", 300, 500);
  } else if (estado1.equals("creditos") &&mouseX>500-50&&mouseX<500+50 &&mouseY>500-35 &&mouseY<500+35) {
    fill(colores[2]);
    rect(500, 500, 110, 80);
    fill(colores[4]);

    text("Volver a\n inicio", 500, 500);
  } else if (estado1.equals("creditos")) {
    background(colores[0]);
    textSize(24);
    fill(#B2FFEC);
    text("Desarrollado por Clara Fallesen", width/2, -200+ posicion%700);
    text("comision 2", width/2, -150+posicion%700);
    text("Tecno Multimedial", width/2, -100+posicion%700);
    image(img[0], width/2, -250+posicion%700, 100, 100);
    image(img[9], width/2, -20+posicion%700, 70, 70);
    posicion = posicion + 1.5;
    fill(colores[1]);
    rect(width/2, 550, width, height/2);
    fill(colores[2]);
    rect(300, 500, 100, 70);
    rect(500, 500, 100, 70);
    fill(colores[4]);
    textSize(16);
    text("Elegir otro\n camino", 300, 500);
    text("Volver a\n inicio", 500, 500);
    image(img[10], 80, 350, 230, 250);
    image(img[19], 700, 350, 300, 300);
  }


  println();
}

void keyPressed() { // CAMBIO DE ESTADO "introduccion"-->"anuncio"
  if ( key ==' ' && estado1.equals("introduccion")) {
    estado1= "anuncio";
  }
  if (key==ENTER && estado1.equals("ruta")) {
    estado1= ("ruta2");
  }
  if (key==ENTER && estado1.equals("colina")) {
    estado1= "colina2";
  }
  if (key==ENTER && estado1.equals("edificio")) {
    estado1= "edificio2";
  } 
  if ( key ==' ' && estado1.equals("nave2")||key ==' ' &&  estado1.equals("nave1")) {
    estado1="creditos";
  }
}
void mousePressed() {
  //botones EMPECEMOS
  clicks("anuncio", 400-60, 400+55, 360-20, 360+20, "opciones");
  //botones para elegir las opciones de escape
  clicks("opciones", 0, 330, 325, 400, "colina");
  clicks("opciones", 580, 710, 188, 433, "ruta");//640, 270, 350, 500
  clicks("opciones", 50, 270, 55, 260, "edificio");

  //BOTON VOLVER
  if (estado1.equals("colina") && mouseX>70-40 && mouseX<70+40 &&mouseY>50-15 &&mouseY<50+15 || 
    estado1.equals("ruta") && mouseX>70-40 && mouseX<70+40 &&mouseY>50-15 &&mouseY<50+15 ||
    estado1.equals("edificio") && mouseX>70-40 && mouseX<70+40 &&mouseY>50-15 &&mouseY<50+15) {
    estado1= "opciones";

    //BOTON AVANZAR por colina !!!!!!!CORREGIDO
  } else if (estado1.equals("colina2")&&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10 ) {
    estado1= "colina3";
    clicks("colina2", 750-35, 750+35, 580-10, 580+10, "colina3");
  } else if (estado1.equals("colina3") &&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    estado1="final1"; //final1
  } else if (estado1.equals("final1")&&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    estado1="nave1";



    //BOTON AVANZAR por ruta o edificio !!!!!!CORREGIDO
  } else if (estado1.equals("edificio2") &&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10 
    || estado1.equals("ruta2")&&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    estado1="final2";
  } else if (estado1.equals("final2") && mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    estado1="nave2";
  }
  //BOTONES DE VOLVER A EMPEZAR O ELEGIR OTRO CAMINO
  else if (estado1.equals("creditos") &&mouseX>500-50&&mouseX<500+50 &&mouseY>500-35 &&mouseY<500+35) {
    estado1="introduccion";
  } else if (estado1.equals("creditos") &&mouseX>300-50&&mouseX<300+50 &&mouseY>500-35 &&mouseY<500+35) {
    estado1="opciones";
  }
}
