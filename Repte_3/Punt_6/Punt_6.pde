import java.util.*;

//Mover mover[] = new Mover[60];
Obj_1 obj1;
Obj_2 obj2;
Obj_3 obj3;
Obj_4 obj4;
Obj_5 obj5;
Obj_6 obj6;
Mover kf = new Mover();

Vector<Object> contenidor = new Vector<Object>(); 
Iterator it = contenidor.iterator();

void setup() {

  size (1280,720);
  
  obj1 = new Obj_1();
  obj2 = new Obj_2();
  obj3 = new Obj_3();
  obj4 = new Obj_4();
  obj5 = new Obj_5();
  obj6 = new Obj_6();
  
  contenidor.add(obj1);
  contenidor.add(obj2);
  contenidor.add(obj3);
  contenidor.add(obj4);
  contenidor.add(obj5);
  contenidor.add(obj6);
  contenidor.add(kf);
}

void draw() {
  background(0);
  
  for (int i = 0; i<contenidor.size(); i++) {
    Object a = contenidor.get(i);
    
    if (a instanceof Obj_1) {
      Obj_1 b = (Obj_1) a;
      b.update();
      b.display();
      b.checkEdges();
    }
    
    else if (a instanceof Obj_2) {
      Obj_2 b2 = (Obj_2) a;
      b2.update();
      b2.display();
      b2.checkEdges(); 
    }
    
    else if (a instanceof Obj_3) {
      Obj_3 b2 = (Obj_3) a;
      b2.update();
      b2.display();
      b2.checkEdges(); 
    }
    
    else if (a instanceof Obj_4) {
      Obj_4 b2 = (Obj_4) a;
      b2.update();
      b2.display();
      b2.checkEdges(); 
    }
    
    else if (a instanceof Obj_5) {
      Obj_5 b2 = (Obj_5) a;
      b2.update();
      b2.display();
      b2.checkEdges(); 
    }
    
    else if (a instanceof Obj_6) {
      Obj_6 b2 = (Obj_6) a;
      b2.update();
      b2.display();
      b2.checkEdges(); 
    }
    else {
      Mover b2 = (Mover) a;
      b2.update();
      b2.display();
      b2.checkEdges(); 
    }
  }
      
}
