/**

  Classe Mover que s'encarrega del moviment dels objectes mitjançant uns vectors de posició, velocitat, acceleració i direcció.

*/
class Mover {
  PVector location;
  PVector velocity;
  PVector acceleracio;
  PVector dir;
  float velMax;
  
  Mover() { 
    location = new PVector(width/2,height/2);
    velocity = new PVector(random(-2,2),random(-2,2)); 
    dir = new PVector();
    this.velMax = 3.5;
  }
  
  void update() { 
    PVector mouse = new PVector(mouseX,mouseY);
    dir = dir.sub(mouse,location);

    dir.normalize();

    dir.mult(0.5);

    acceleracio = dir;
    velocity.add(acceleracio);
    velocity.limit(velMax);
    location.add(velocity);
  } 
   
  void display() { 
    stroke(0); 
    fill(175); 
    ellipse(location.x, location.y,16,16); 
  } 
  
  public void setVelMax(float spd) {
    this.velMax = spd;
  }
  
  void checkEdges() { 
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
