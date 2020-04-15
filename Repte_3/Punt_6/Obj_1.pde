class Obj_1 extends Mover {
  
  PImage img = loadImage("obj1.png");
  
  Obj_1() { 
    location = new PVector(width/2,height/2);
    velocity = new PVector(0,0);
    acceleracio = new PVector(0,0);
    velMax = 4;
  }
  
  public void update() { 
       
    acceleracio.add(2,0);
    
    velocity.add(acceleracio);
    velocity.limit(velMax);
    location.add(velocity);
  }
  
  public void display() { 
    stroke(0); 
    fill(175); 
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
