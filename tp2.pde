
String suma,titulo, titulo1, titulo2, titulo3;
int posImagenes;
float tamPlaneta;
PImage ojo, reloj, planeta, portal, galaxia ;
PFont fuente1,fuenteSuma; 

void setup(){
size(500,500);
colorMode(HSB,12,10,10);
posImagenes= 2;
tamPlaneta =0.5;
//fuentes
fuenteSuma= loadFont("BerlinSansFBDemi-Bold-48.vlw");
fuente1= createFont("misfit.TTF",100);
//textos
suma= "3+3=6";
titulo="Rick and Morty";
titulo1= "Created by";
titulo2="Justin Roiland and Dan Harmon";
titulo3="and Clara Fallesen";
//imagenes
ojo=loadImage("ojo.png");
reloj=loadImage("reloj de arena.png");
planeta=loadImage("planeta.png");
portal =loadImage("portal.png");
galaxia=loadImage("galaxia.png");

}

void draw(){
  background(#020127);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(35);
    fill(12);
    textFont(fuenteSuma);
//elementos
image(galaxia,100,100,150,150);
image(galaxia,400,150,200,200);
image(galaxia,250,300,200,300);
image(galaxia,90,410,300,200);
image(galaxia,400,400,300,300);
text(suma,posImagenes%600,250);
image(ojo, (-50+posImagenes%600),430,100,100);  
image(reloj, (540-posImagenes%600),330, 100,100);  
image(planeta, 250, 100,300+tamPlaneta%100,300+tamPlaneta%75);  


//titulos1
textFont(fuente1);
textSize(25);
text(titulo1, 250,0+(frameCount/0.5) %510);
text(titulo2, 250,20+(frameCount/0.5) %510);
fill((frameCount/12)%12,100,100);
textSize(20);
text(titulo3, 250,40+(frameCount/0.5) %510);

//titulos2
fill(12);
image(portal,mouseX,mouseY,200,150);
textSize(40);
text(titulo,mouseX,mouseY);

//actualizacion
posImagenes = posImagenes + 2;
tamPlaneta = tamPlaneta +0.5;

}
