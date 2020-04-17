import java.util.*;

//Declaració de les variables necesàries, importem de la classe java.util per fer servir el contenidor Vector i l'Iterator per guardar la nostra col·lecció d'objectes i poder-los recòrrer.
Obj_1 obj1;
Obj_2 obj2;
Obj_3 obj3;
Obj_4 obj4;
Obj_6 obj6[] = new Obj_6[60];
Vector<Object> contenidor = new Vector<Object>(); 
Iterator it = contenidor.iterator();

long start;
long elapsedTime;

//  Inicialitzem els nostres objectes i els afegim al Vector.
void setup() {

  size (1280,720);
  
  obj1 = new Obj_1();
  obj2 = new Obj_2();
  obj3 = new Obj_3();
  obj4 = new Obj_4();
  
  for (int i = 0; i < obj6.length; i++) {
    obj6[i] = new Obj_6();
  }
  
  
  contenidor.add(obj1);
  contenidor.add(obj2);
  contenidor.add(obj3);
  contenidor.add(obj4);
}

//  Recorrem l'iterador i per cada objecte que trobem, comprovem de quin tipus és i li executem l'update, dispay i el control dels laterals.
void draw() {
  background(255);

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
    
    else {
      Obj_4 b2 = (Obj_4) a;
      b2.update();
      b2.display();
      b2.checkEdges(); 
    }  
    
  }
  
  for (int i = 0; i < obj6.length; i++) {      
      obj6[i].update();
      obj6[i].display();
      obj6[i].checkEdges();     
    }
      
}
