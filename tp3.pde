//
//todo lo que se pueda poner en el setup hace que se gaste menos
//espacio en el ram
int tamanio, estado, inicio, tiempo;
float posx, posy;
boolean sentido;  //true or false
color colorBoton;
float distancia, posicion, velocidad, estado2;
String estado1;
PImage alien1, alien2, alien3, nubeDeTexto, nubeDeTexto1, cartel, ruta, rutaRecta, edificio, colina, auto1, auto2, 
  caidaColina1, caidaColina2, cientifico, celda, arboles, estrellas, 
  nave1, nave2, finalColina, final2;
color noche, pasto, pastoOscuro, cartelC;
PFont fuente1, fuente2;


void setup() {
  size (800, 600);
  noche=color(#0F4C81);
  pasto=color(#046C3E);
  pastoOscuro=color(#035531);
  cartelC=color(#AA2F1B);
  estado1="introduccion"; 
  estado2=0;
  tamanio = 150;
  posx = width/2;
  posy = 500;
  posicion= 2;
  velocidad =0.5;
  fuente2=loadFont("SourceSansPro-Regular-48.vlw");
  fuente1= createFont("CHICKEN Pie.otf", 100);
  //nubes de texto
  nubeDeTexto1=loadImage("nube de texto.png"); 
  nubeDeTexto=loadImage("nube de texto2.png"); 
  caidaColina1=loadImage("caida colina1.png");
  caidaColina2=loadImage("caida colina2-01.png");
  finalColina=loadImage("final colina.png");
  final2=loadImage("final2.png");
  //diferentes Blops
  alien1=loadImage ("prueba-01.png");//PNG
  alien2=loadImage ("prueba-02.png");
  alien3=loadImage ("prueba-03.png");
  //rutas de escape
  colina=loadImage ("opciones-03.png");
  ruta=loadImage ("opciones-02.png");
  rutaRecta=loadImage ("ruta.png");
  edificio=loadImage ("opciones-01.png");
  //+elementos
  auto1=loadImage ("auto frente.png");
  auto2=loadImage ("auto costado.png");
  cartel=loadImage("cartel.png");
  cientifico=loadImage("cientifico.png");
  celda=loadImage("celda.png");
  arboles=loadImage("arboles.png");
  nave1=loadImage("nave2-01.png");
  nave2=loadImage("nave2-02.png");
  estrellas=loadImage("estrellas.png");
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  noStroke();
}
void draw() {
//pantalla introduccion
  if (estado1.equals ("introduccion")) {
    background(noche);
    fill(255);
    textFont(fuente1);
    textSize(36);
    text("  ¿QUERES AYUDARME A ESCAPAR?", width/2, 150);
    textSize(11);
    text("  Haz click en cualquier lado", width/2, 100);
    image(alien1, posx, posy, tamanio*2, tamanio*2 );

    if (mousePressed && estado1.equals ("introduccion")) {
      image(nubeDeTexto, width/2, 300, 550, 130);
      fill(255);
      textSize(30);
      textAlign(CENTER);
      text("HOLA!", width/2, 290);
      textSize(22);
      textAlign(CENTER);
      text ("preciona ESPACIO para comenzar esta aventura", width/2, 320);
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
    background(noche);
    image(estrellas, width/2, height/2, width, height);
    fill(#B2FFEC);
    rect(width/2, 250, 600, 170);
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
    image(celda, 89+100, 465, 400, 270);
    image(alien2, 95+70, 470, tamanio*1.2, tamanio*1.2 );
    fill(#7AF29D);
    rect(width/2, 360, 120, 40);
    textSize(17);
    fill(255);
    text("EMPECEMOS", width/2, 360);
  }

  if (estado1.equals ("opciones")) {
    background(noche);

    fill(pasto);
    rect(width/2, 400, width, 420);
  } 
  if ( estado1.equals("opciones") && mouseX>0 && mouseX< 330 && mouseY>325 && mouseY<400 ) {
    image(colina, 160, 400, 360, 360);
  } else if ( estado1.equals("opciones")) {
    image(colina, 160, 400, 350, 350);//colina
  } 
  if ( estado1.equals("opciones") && mouseX>405 && mouseX< 600 && mouseY>188 && mouseY<433 ) {
    image(ruta, 500, 270, 360, 510);
  } else if ( estado1.equals("opciones")) {
    image(ruta, 500, 270, 350, 500);//ruta
  } 
  if (estado1.equals("opciones") && mouseX>50 && mouseX< 270 && mouseY>55 && mouseY<260 ) {
    image(edificio, 180, 150, 410, 410);
  } else if ( estado1.equals("opciones")) {
    image(edificio, 180, 150, 400, 400);//edificio
  }
  if ( estado1.equals("opciones")) {
    fill(pastoOscuro);
    ellipse(700, 600, 900, 400);
    ellipse(250, 650, width/2, 300);
    image(nubeDeTexto1, 200+300, 470, 330, 70);
    textSize(16);
    fill(255);
    text("¿Por donde deberíamos escapar?", 170+300, 470);
    image(alien3, 420+300, 510, tamanio*2, tamanio*2 );
    image(arboles, 420+300, 200, 100, 100);
    //++arboles

    //ESCAPE POR LAS COLINAS (pantalla A)
  }
  if (estado1.equals("colina") && mouseX>180 && mouseX<285 && mouseY>450 && mouseY< 570) {
    image(colina, width/3, 300, 720, 720);
    image(nubeDeTexto, 250, 410, 410, 70);
    image(alien3, 240, posy, tamanio*1.3, tamanio*1.3 );
    textFont(fuente2);
    textSize(16);
    fill(255);

    text("¿Estas seguro de que quieres ir por ahi?", 250, 390);
    text("Parece que el suelo quedó resvaloso por la lluvia", 250, 415);   
    fill(cartelC);
    text("preciona ENTER", 500, 475);
    text("para huir por ", 500, 490);
    text("la colina", 500, 505);
  } else if (estado1.equals("colina")) {
    background(noche);

    fill(pastoOscuro);
    rect(width/2, 600, width, height);
    image(colina, width/3, 300, 700, 700);
    image(cartel, 500, 515, 170, 120);
    image(alien3, 240, posy, tamanio*1.2, tamanio*1.2 );
    fill(255);
    rect(70, 50, 80, 30);
    fill(0);
    textFont(fuente1);
    textSize(14);
    text("VOLVER", 70, 50);
  } 
  //ESCAPE POR LAS COLINAS PANTALLA B
  if (estado1.equals("colina2") &&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    fill(255);
    rect(750, 580, 80, 30);
    fill(0);
    text("AVANZAR", 750, 580);
  } else if (estado1.equals("colina2")) {
    image(caidaColina1, width/2, height/2, width, height);
    fill(255);
    rect(750, 580, 75, 25);
    fill(0);
    text("AVANZAR", 750, 580);
  }
  if (estado1.equals("colina3") &&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    fill(255);
    rect(750, 580, 80, 30);
    fill(0);
    text("AVANZAR", 750, 580);
  } else if (estado1.equals("colina3")) {
    image(caidaColina2, width/2, height/2, width, height);
    fill(255);
    rect(750, 580, 75, 25);
    fill(0);
    text("AVANZAR", 750, 580);
    //FINAL 1 (OPCION COLINA)--------------------------------------------------
  } 
  if (estado1.equals("final1")) {
    image(finalColina, width/2-50, 330, width*1.3, height*1.18);
  }
  if (estado1.equals("final1")&&mouseX>750-75/2&&mouseX<750+75/2&&mouseY>580-25/2&&mouseY<580+25/2) {
    fill(255);
    rect(750, 580, 80, 30);
    fill(0);
    text("AVANZAR", 750, 580);
  } else if (estado1.equals("final1") ) {
    fill(255);
    rect(750, 580, 75, 25);
    fill(0);
    text("AVANZAR", 750, 580);
  } else if (estado1.equals("nave1")) { //1alien
    background(noche);
    textSize(18);
    text("preciona espacio para ir a los creditos", width/2, 570);
    image(estrellas, width/2, -300+posicion%1200, width, height);
    image(estrellas, width/2, -900+posicion%1200, width, height);
    image(estrellas, width/2, 300+posicion%1200, width, height);
    posicion=posicion+2;
    image(nave2, 400, 650-velocidad%850, 300, 300);
    velocidad = velocidad +3;
  }
  //ESCAPE POR LA RUTA PANTALLA A
  if (estado1.equals ("ruta") && mouseX>128 && mouseX<243 
    &&mouseY>410 && mouseY<575 ) {      
    textFont(fuente2);
    textSize(16);
    fill(255);
    image(nubeDeTexto, 180, 380, 330, 70);
    text("¿Estas seguro de que querés ir por ahi?", 180, 360);
    text("Parece que hay mucho tránsito", 180, 380);
    image(alien3, 200, posy, tamanio*1.30, tamanio*1.30 );        
    fill(cartelC);
    text("preciona ENTER", 150, 175);
    text("para huir por ", 150, 190);
    text("la ruta", 150, 205);
  } else if (estado1.equals ("ruta")) {
    background (noche);
    fill(pastoOscuro);
    rect(width/2, 550, width, height);
    image(rutaRecta, 415, 430, 200, 360);//ruta   
    image(auto1, 415, 200+posicion%500, 70, 70);
    textSize(16);
    fill(255);
    rect(70, 50, 80, 30);
    fill(0);
    textFont(fuente1);
    textSize(14);
    text("VOLVER", 70, 50);
    image(alien3, 200, posy, tamanio*1.2, tamanio*1.2 );
    image(cartel, 150, 215, 170, 120);
    image(arboles, 680, 450, 150, 150); 
    posicion=posicion+2;

    //ESCAPE POR LA RUTA PANTALLA B
  }  
  if (estado1.equals("ruta2")) {
    background(noche);
    fill(pastoOscuro);
    rect(width/2, 550, width, height);
    fill (150);
    rect(width/2, 330, width, 120);
    image(arboles, 750-velocidad%1000, 142, 230, 250);
    image(arboles, 550-velocidad%1000, 142, 230, 250);
    tint(255);
    image(auto2, posicion%1000, 290, 150, 100);
    posicion = posicion + 2.5;
    tint(10, 255, 10);
    image(auto2, -100+ posicion%1000, 310, 150, 100);
    tint(255);
    image(alien2, -70+velocidad%1000, 470, tamanio*1.5, tamanio*1.5 );
    image(nubeDeTexto1, -230+velocidad%1000, 470, 210, 70);
    textFont(fuente2);
    textSize(16);
    fill(255);
    text("Ya puedo ver mi nave", -250+velocidad%1000, 455);
    text("¡no nos falta mucho!", -250+velocidad%1000, 470);
    velocidad = velocidad +1.5;
    
  } 
  textFont(fuente1);
  textSize(14);
  if (estado1.equals("ruta2") &&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    fill(255);
    rect(750, 580, 80, 30);
    fill(0);
    text("AVANZAR", 750, 580);
  } else if (estado1.equals("ruta2")) { 
    rect(750, 580, 75, 25);
    fill(0);
    text("AVANZAR", 750, 580);

    //ESCAPE POR EL EDIFICIO PANTALLA A
  }  
  if (estado1.equals ("edificio") &&  mouseX>128 && mouseX<243 &&mouseY>410 && mouseY<575 ) {
    textFont(fuente2);
    textSize(16);
    fill(70);
    rect(width/2, 338, 95, 75);
    image(nubeDeTexto, 180, 390, 330, 90);
    fill(255);
    text("¿Estas seguro de que querés ir por ahi?", 180, 360);
    text("los cientificos podrían ", 180, 380);
    text("descubrirnos", 180, 400);
    image(alien3, 200, posy, tamanio*1.30, tamanio*1.30 );        
    fill(cartelC);
    text("preciona ENTER", 480, 460);
    text("para atravezar ", 480, 475);
    text("el edificio", 480, 490);
  } else if (estado1.equals("edificio")) {
    background (noche);
    fill(pasto);
    rect(width/2, 600, width, height);
    fill(pastoOscuro);
    rect( width/2, 338, width, 75);
    image(edificio, width/2, 150, 650, 800);
    fill(50);
    stroke(0);
    rect(width/2, 338, 90, 70);
    image(alien3, 200, posy, tamanio*1.2, tamanio*1.2 );
    image(cartel, 480, 500, 148, 120);
    fill(255);
    rect(70, 50, 80, 30);
    fill(0);
    textFont(fuente1);
    textSize(14);
    text("VOLVER", 70, 50);
    
  }   //ESCAPE POR EL EDIFICIO PANTALLA B
  if (estado1.equals("edificio2")) {

    background(255/2);
    fill(#8FD9FC, 80);
    image(cientifico, -10+ posicion %1000, 220, 100, 200);
    image(cientifico, -200+ posicion %1000, 220, 100, 200);
    posicion = posicion + 2;
    rect(width/2, 100, width, 350);
    fill(210);
    rect(width/2, 350, width, 150);
    rect(50, 130, 100, 300);
    rect(550, 130, 100, 300);
    fill(180);
    rect(width/2, 300+150-2, width, 150);
    strokeWeight(3);
    stroke(5);
    line(300, 0, 300, 100);
    noStroke();
    fill(#FFF948);
    ellipse(300, 100, 30, 30);
    fill(#FFF948, 80);
    ellipse(300, 100, 50, 50);
    image(alien3, -250+velocidad%1000, 480, tamanio*2, tamanio*1.5 );
    image(nubeDeTexto, -250+velocidad%1000, 375, 270, 80);
    textFont(fuente2);
    textSize(16);
    fill(255);
    text("¡La puerta está abierta!", -250+velocidad%1000, 355);
    text("Si avanzamos en silencio", -250+velocidad%1000, 370);
    text("Saldremos sin ser descubiertos", -250+velocidad%1000, 385);
    velocidad = velocidad +1;
  } 
  textFont(fuente1);
  textSize(14);
  if (estado1.equals("edificio2") &&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    fill(255);
    rect(750, 580, 80, 30);
    fill(0);
    text("AVANZAR", 750, 580);
  } else if (estado1.equals("edificio2")) { 
    rect(750, 580, 75, 25);
    fill(0);
    text("AVANZAR", 750, 580);


    //FINAL2 (opciones RUTA Y EDIFICIO)-----------------------------------------------------
  } 
  if (estado1.equals("final2")&&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10) {
    fill(255);
    rect(750, 580, 80, 30);
    fill(0);
    text("AVANZAR", 750, 580);
  } else if (estado1.equals("final2") ) {
    image(final2, width/2-50, height/2, width*1.4, height*1.18);
    fill(255);
    rect(750, 580, 75, 25);
    fill(0);
    text("AVANZAR", 750, 580);
  } else if (estado1.equals("nave2")) {
    background(noche);
    textSize(18);
    text("preciona espacio para ir a los creditos", width/2, 570);
    image(estrellas, width/2, -300+posicion%1200, width, height);
    image(estrellas, width/2, -900+posicion%1200, width, height);
    image(estrellas, width/2, 300+posicion%1200, width, height);
    posicion=posicion+2;
    image(nave1, 400, 650-velocidad%850, 300, 300);
    velocidad = velocidad +3;
  }
  textFont(fuente1);
  textSize(14);
  //CREDITOS Y BOTON DE RESTART------------------------------------------------------

  if (estado1.equals("creditos")  &&mouseX>300-50&&mouseX<300+50 &&mouseY>500-35 &&mouseY<500+35) {
    fill(pastoOscuro);
    rect(300, 500, 110, 80);
    fill(255);

    text("Elegir otro\n camino", 300, 500);
  } else if (estado1.equals("creditos") &&mouseX>500-50&&mouseX<500+50 &&mouseY>500-35 &&mouseY<500+35) {
    fill(pastoOscuro);
    rect(500, 500, 110, 80);
    fill(255);

    text("Volver a\n inicio", 500, 500);
  } else if (estado1.equals("creditos")) {
    background(noche);
    textSize(24);
    fill(#B2FFEC);
    text("Desarrollado por Clara Fallesen", width/2, -200+ posicion%700);
    text("comision 2", width/2, -150+posicion%700);
    text("Tecno Multimedial", width/2, -100+posicion%700);
    image(alien1, width/2, -250+posicion%700, 100, 100);
    image(cientifico, width/2, -20+posicion%700, 70, 70);
    posicion = posicion + 1.5;
    fill(pasto);
    rect(width/2, 550, width, 300);
    fill(pastoOscuro);
    rect(300, 500, 100, 70);
    rect(500, 500, 100, 70);
    fill(255);
    textSize(16);
    text("Elegir otro\n camino", 300, 500);
    text("Volver a\n inicio", 500, 500);
    image(arboles, 80, 350, 230, 250);
    image(nave1, 700, 350, 300, 300);
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
  if (estado1.equals("anuncio") && mouseX>400-60 && mouseX< 400+60 && mouseY >360-20&& mouseY<360+20) {
    estado1= "opciones";
  }
  //botones para elegir las opciones de escape
  else if (estado1.equals("opciones") && mouseX>0 && mouseX< 330 && mouseY>325 && mouseY<400) {
    estado1= "colina";
  } else if (estado1.equals("opciones") && mouseX>405 && mouseX< 600 && mouseY>188 && mouseY<433) {
    estado1= "ruta";
  } else if (estado1.equals("opciones") && mouseX>50 && mouseX< 270 && mouseY>55 && mouseY<260) {
    estado1= "edificio";
  }
  //BOTON VOLVER
  if (estado1.equals("colina") && mouseX>70-40 && mouseX<70+40 &&mouseY>50-15 &&mouseY<50+15 || 
    estado1.equals("ruta") && mouseX>70-40 && mouseX<70+40 &&mouseY>50-15 &&mouseY<50+15 ||
    estado1.equals("edificio") && mouseX>70-40 && mouseX<70+40 &&mouseY>50-15 &&mouseY<50+15) {
    estado1= "opciones";

    //BOTON AVANZAR por colina !!!!!!!CORREGIDO
  } else if (estado1.equals("colina2")&&mouseX>750-35&&mouseX<750+35&&mouseY>580-10&&mouseY<580+10 ) {
    estado1= "colina3";
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
