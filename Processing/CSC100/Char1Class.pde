class Char1{
  float bullet_x=width*2;
  float bullet_y=height*2-200;
  float bullet_speed =10;
  float speed=15;
  float x_position, y_position;

  //constructor
  Char1(float xpos, float ypos){
    x_position = xpos*2-80;
    y_position = ypos+200;
  }
  
  void FChar1(){
    switch(life1){
      case 1:
        fill(255,0,0);
        text("♥ ",myChar1.x_position-35,myChar2.y_position+950);
        break;
     case 2:
       fill(#F9FA08);
       text("♥ ♥",myChar1.x_position-35,myChar2.y_position+950);
       break;
     case 3:
       fill(0,255,0);
       text("♥ ♥ ♥",myChar1.x_position-35,myChar2.y_position+950);
       break;
    }
    
    float adjustment =x_position-425;
    fill(#310101);
    ellipse(423+adjustment,444+y_position,164,48);
    //neck
    fill(#212121);
    quad(370+adjustment,290+y_position,480+adjustment,290+y_position,485+adjustment,300+y_position,365+adjustment,300+y_position);
    fill(#0F0F0F);
    quad(365+adjustment,300+y_position,340+adjustment,450+y_position,415+adjustment,420+y_position,415+adjustment,300+y_position);
    quad(485+adjustment,300+y_position,505+adjustment,450+y_position,435+adjustment,420+y_position,415+adjustment,300+y_position);
    noStroke();
    fill(#1F1E1E);
    quad(385+adjustment,270+y_position,465+adjustment,270+y_position,435+adjustment,420+y_position,415+adjustment,420+y_position);
    stroke(2);
    fill(#390202);
    ellipse(425+adjustment,270+y_position,80,30);
    //in
    noStroke();
    fill(#151414);
    triangle(400+adjustment,230+y_position,450+adjustment,230+y_position,425+adjustment,330+y_position);
    quad(415+adjustment,260+y_position,435+adjustment,260+y_position,435+adjustment,420+y_position,415+adjustment,420+y_position);

    beginShape();
    noStroke();
    fill(#5D6062);
    curveVertex(439+adjustment,188+y_position); 
    curveVertex(454+adjustment,210+y_position); 
    curveVertex(457+adjustment,247+y_position);
    curveVertex(425+adjustment,278+y_position);
    curveVertex(395+adjustment,245+y_position);
    curveVertex(399+adjustment,208+y_position);
    curveVertex(399+adjustment,208+y_position);
    curveVertex(408+adjustment,189+y_position);
    curveVertex(410+adjustment,187+y_position);
    curveVertex(410+adjustment,208+y_position);
    curveVertex(440+adjustment,208+y_position);
    curveVertex(440+adjustment,189+y_position);
    curveVertex(442+adjustment,187+y_position);
    curveVertex(439+adjustment,188+y_position);
    endShape(CLOSE);
    stroke(2.5);
    fill(144,238,250);
    arc(445+adjustment,253+y_position,20,20,radians(170),radians(300));
    arc(440+adjustment,245+y_position,20,20,radians(350),radians(360+120));
    arc(410+adjustment,253+y_position,20,20,radians(180+60),radians(360+10));
    arc(415+adjustment,245+y_position,20,20,radians(60),radians(190));  
    }
    
  void bullet(){
    fill(#1AE8ED);
    ellipse(bullet_x,bullet_y,50,50);
    }
  
  void Ctrl(){
    if (keys[A] == true) {
        x_position -= speed;
        if( x_position < 0){
          x_position=0; 
        }
    }
    if (keys[D] == true) {
        x_position += speed;
        if(x_position > width*2){
          x_position=width*2;  
        }
    }
    bullet_y-=bullet_speed;
    if (bullet_y <=0){
       bullet_y=height*2-200;
       bullet_x = x_position;      
       bullet_speed +=0.5;
    }
    if (dist(myChar2.x_pos,200,myChar1.bullet_x,myChar1.bullet_y) <= 120){
      winner="Player1";
      bullet_y=height*2-200;
      bullet_x = x_position;
      life2--;
      if(life2== 0){
        dead =true; 
        }
      }
    }
}