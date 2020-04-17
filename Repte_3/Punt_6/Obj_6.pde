//  Per cada un dels objectes donem uns valors diferents a la localització inicial, la velocitat i l'acceleració.
//  Es podrien donar valors aleatoris a la velocitat i a l'acceleració si volguessim fer diferents instàncies del mateix objecte
//  i que es comportessin tots d'una mateixa similar però a diferents velocitats.
class Obj_6 extends Mover {
  
  PImage img = loadImage("snowflake.png");
  
  Obj_6() { 
    location = new PVector(random(0, width-50),random(0, 150));
    velocity = new PVector(0,0);
    acceleracio = new PVector(0,0);
    velMax = 2;
  }
  
  public void update() {
    
    acceleracio.x = random(-3, 3);
    acceleracio.y = random(0, 2);
    velocity.y = random(0,3);
    velocity.add(acceleracio);
    velocity.limit(velMax);
    location.add(velocity);
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
