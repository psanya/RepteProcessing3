Mover mover[] = new Mover[60];


void setup() {

  size (1280,720);
  
  for (int i = 0; i < mover.length; i++) {
    mover[i] = new Mover();
  }
  
}


void draw() {
  background(255);
 
  for (int i = 0; i < mover.length; i++) {
    mover[i].update();
    mover[i].checkEdges();
    mover[i].display();
  }
}
