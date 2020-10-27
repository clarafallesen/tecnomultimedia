class Consola {
  String [] consola = new String[13]; 
  String [] indicador = new String[8]; 
  String [] dialogo = new String[2];
  PFont consolaF;
  float x, y;
  Consola() {

    consolaF = loadFont ("letra1.vlw");
    //consola
    //pasado
    consola[0] = "Hola viajero, listo para un aventura en el tiempo, deberas elegir a donde deseas ir , PASADO o FUTURO";
    consola[1] = "Haz llegado a 1880 y solo dos lugares tienen la tecnología necesaria para abrir el portal de vuelta, la casa de THOMAS EDISSON y el laboratorio de NIKOLA TESLA.";
    consola[2] = "Bienvenido al laboratorio de NIKOLA TESLA, el inventor de la AC, prueba usar su energía estable para reactivar el portal";
    consola[3] = "Ahora estás en la casa de THOMAS EDISSON, él es conocido por no tener un muy buen humor, intenta agradarle o no molestarlo demasiado.";
    consola[4] = "NIKOLA TESLA quiere demostrarte toda la potencia de la energia alterna, pruebala y podras regresar.";
    consola[5] = "\n\n---------------------Viaje en el Tiempo 2000---------";
    consola[6] = "THOMAS EDISSON es conocido por inventar la bombilla, mira que inovación tiene para mostrarte en su invento.";
    //futuro                      
    consola[7] = "Por falta de energia has caido en el 2020, un extraño virus tiene a toda la población en casa, corres peligro de entontrarte con tu YO del futuro y el portal solo puede realizar un viaje.";
    consola[8] = "El portal está reparado, pero solo resitirá el viaje de regreso, debes volver y alertar a todos sobre este virus, BUENA SUERTE VIAJERO.";
    consola[9] = "La POLICIA te ha detenido por no llevar barbijo, el virus podría estar en cualquer parte, debes elegir entre CORRER o DEJAR QUE TE DETENGAN";
    consola[10] = "El portal ahora tiene carga para un viaje de regreso, no dejes que la policia te atrape, BUENA SUERTE VIAJERO.";
    consola[11] = "La POLICIA quiere enviarte de vuelta a casa o llevarte a prisión y un portal aparece sorpesivamente en la calle entra lo antes posible.";
    consola[12] = "";
    //indicador
    //cliiquea sobre tu opcion 
    indicador[0] = "Cliquea sobre tu opción";
    indicador[2] = "Mueve el CURSOR fuera de la BOBINA";
    indicador[3] = "Cliquea sobre la BOMBILLA";
    indicador[4] = "Mueve el CURSOR fuera de la BOBINA";
    indicador[5] = "Pulsa ENTER para volver al inicio";
    //futuro
    indicador[6] = "Pulsa (F) reparar el portal o (S) quedarte en el 2020";
    indicador[7] = "Pulsa (R) correr o (T) cooperar con la policía";
    //dialogos 
    dialogo[1] = "Un viajero del tiempo, eso es imposible, y de ser verdad, estarías poniendo en riesgo a todo el universo, menos mal que yo tengo la energía necesaria para reactivar tu portal.\n\nPero ya que estás aquí, que te parece probar mi bombilla, puedes elegir entre probarla o volver a casa ahora mismo.";
    dialogo[0] = "Hola viajero del tiempo, tu presencia aquí pone en riesgo al universo, te ayudaré a volver a casa, podriamos probar con mi modelo de electricidad sin cables.\n\nYa que estás aquí, que te parece probar mi bobina y alimentar tu portal, puedes elegir entre probarla o una activacion con cableado de AC.";
  }
  void dibujar(float x, float y, int text, int text_) {//,int text, int text1
    pushStyle();
    rectMode(CORNER);
    noStroke();
    fill(0, 200);
    rect(x + (width * 0.025), y, width - (width * 0.05), height /100 * 23, 10);
   //textos
    textAlign(LEFT, TOP);
    textFont(consolaF, 23);
    fill(#0CF037);
    text(consola[text], x + (width / 100 * 3.125), y + 5, width-50, height-25);
    textAlign(RIGHT, BOTTOM);
    text(indicador[text_], x + width - (width /100 * 3.8), y + (height /100 * 23) -5 );

    popStyle();
  }
}
