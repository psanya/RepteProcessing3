class Obj_4 extends Mover {
  
  PImage img = loadImage("obj4.png");
  
  Obj_4() { 
    location = new PVector(0,height-150);
    velocity = new PVector(0,0);
    acceleracio = new PVector(1.5,1.5);
    velMax = 4;
  }
  
  public void update() {

    acceleracio.div(-2);
    
    velocity.add(acceleracio);
    velocity.limit(velMax);
    location.sub(velocity);
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
