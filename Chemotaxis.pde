 Food[] dude;
 Bacteria[] bob;
  void setup(){     
   size(500,500);
   background(255);   
   dude = new Food[1000];
   for (int j=0; j<dude.length; j++){
     dude[j] = new Food();
   }
    bob = new Bacteria[100];
   for (int i=0; i<bob.length; i++){
     bob[i] = new Bacteria();
   }
 }   
 void draw(){ 
   for (int j=0; j<dude.length; j++){   
     dude[j].move();
     dude[j].show();
   }
   
   for (int i=0; i<bob.length; i++){  

     bob[i].move();
     bob[i].show();
   }

 } 
 class Food{
  int foodX;
  int foodY;

  Food(){
    foodX = foodY = 250;
    //foodX = (int)(Math.random()*width);
    //foodY = (int)(Math.random()*height);
  }

  void move(){
    foodX += (int)(Math.random()*7)-3;
    foodY += (int)(Math.random()*7)-3;
  }

  void show(){
    fill(0);
    //noStroke();
    stroke(0);
    ellipse(foodX,foodY,1,1);
  }
}

class Bacteria{     
   int myX, myY;
   

   Bacteria(){
     myX = 250;
     myY = 250;
   
   }

   void move(){

    
     if (mouseX>myX){
       myX = myX + (int)(Math.random()*20);
     }else{
       myX = myX - (int)(Math.random()*20); 
     }
     if (mouseY>myY){
       myY = myY + (int)(Math.random()*20);
     }else{
       myY = myY - (int)(Math.random()*20); 
     }
    
      
      
   }

   void show(){
     noStroke();
     fill(186, 29, 29);
     ellipse(myX,myY,3,3);
   }
 }    