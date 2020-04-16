//  Creem un array d'objectes de tipus Mover per guardar-los tots.
Mover mover[] = new Mover[60];

//  Recorrem tot l'array i inicialitzem cada un dels objectes.
void setup() {

  size (1280,720);
  
  for (int i = 0; i < mover.length; i++) {
    mover[i] = new Mover();
  }
  
}

//  Recorrem l'array amb els objectes inicialitzats i cridem els mètodes corresponents a cada un d'ells.
void draw() {
  background(255);
 
  for (int i = 0; i < mover.length; i++) {
    mover[i].update();
    mover[i].checkEdges();
    mover[i].display();
  }
}
