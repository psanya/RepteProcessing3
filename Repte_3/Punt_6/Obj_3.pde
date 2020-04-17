//  Per cada un dels objectes donem uns valors diferents a la localització inicial, la velocitat i l'acceleració.
//  Es podrien donar valors aleatoris a la velocitat i a l'acceleració si volguessim fer diferents instàncies del mateix objecte
//  i que es comportessin tots d'una mateixa similar però a diferents velocitats.
class Obj_3 extends Mover {
  
  PImage img = loadImage("obj3.png");
  
  Obj_3() { 
    location = new PVector(50,50);
    velocity = new PVector(0,0);
    acceleracio = new PVector(5,5);
    velMax = 5;
  }
  
  public void update() {

    if (location.x <= width/2 && location.y <= height-175) {
      acceleracio.div(-2);
    
      velocity.add(acceleracio);
      velocity.limit(velMax);
      location.sub(velocity);
    }
    
    else {
      acceleracio.sub(random(0,-2), random(0,-2));
      velocity.sub(acceleracio);
      velocity.limit(velMax);
      location.sub(velocity);
    }
    
  }
  
  public void display() { 
    //stroke(0); 
    //fill(160,0,0); 
    image (img, location.x, location.y); 
  }

  public void setVelMax(float spd) {
    this.velMax = spd;
  }
  
  public void checkEdges() { 
    if (location.x > width) { 
      location.x = 0; 
    }
    else if (location.x < 0) { 
      location.x = width; 
    } 
    if (location.y > height) { 
      location.y = 0; 
    } 
    else if (location.y < 0) { 
      location.y = height; 
    }
  }
  
}
