//  Per cada un dels objectes donem uns valors diferents a la localització inicial, la velocitat i l'acceleració.
//  Es podrien donar valors aleatoris a la velocitat i a l'acceleració si volguessim fer diferents instàncies del mateix objecte
//  i que es comportessin tots d'una mateixa similar però a diferents velocitats.
class Obj_3 extends Mover {
  
  PImage img = loadImage("obj3.png");
  
  Obj_3() { 
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleracio = new PVector(-2,-2);
    velMax = 2;
  }
  
  public void update() {
    acceleracio = PVector.random2D();
    acceleracio.mult(noise(2));
    
    velocity.add(acceleracio);
    velocity.limit(velMax);
    location.add(velocity);
  }
  
  public void display() { 
    stroke(0); 
    fill(160,0,0); 
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
