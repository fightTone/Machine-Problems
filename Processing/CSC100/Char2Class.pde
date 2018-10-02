class Char2{
  float bullet_x=0;
  float bullet_y=200;
  float bullet_speed = 10;
  float speed=15;
  float x_pos, y_position;

  //constructor
  Char2(float xpo, float ypo){
    x_pos = xpo;
    y_position = ypo;
  }
  
  void FChar2(){
    switch(life2){
      case 1:
        fill(255,0,0);
        text("♥ ",x_pos-35,y_position+220);
        break;
     case 2:
       fill(#F9FA08);
       text("♥ ♥",x_pos-35,y_position+220);
       break;
     case 3:
       fill(0,255,0);
       text("♥ ♥ ♥",x_pos-35,y_position+220);
       break;
      }
    float center_y = y_position;
    beginShape();
    fill(144,37,37);
    vertex(x_pos-30,center_y+70);
    vertex(x_pos-50,center_y+160);
    vertex(x_pos+50,center_y+160);
    vertex(x_pos+30,center_y+70);
    endShape();
    
    //Middle
    //HEAD
    fill(222,199,157);
    arc(x_pos,center_y,80,80,0,TWO_PI);
    fill(0,0,0);
    rect(x_pos-5,center_y-50,10,10);
    fill(255,0,0);
    rect(x_pos-5,center_y-60,10,10);
    fill(0,0,0);
    quad(x_pos+10,center_y-70,x_pos-10,center_y-70,x_pos-5,center_y-60,x_pos+5,center_y-60);
    beginShape();
    fill(255,0,0);
    strokeWeight(2);
    vertex(x_pos-40,center_y-20);
    vertex(x_pos+40,center_y-20);
    vertex(x_pos+40,center_y+10);
    vertex(x_pos-40,center_y+10);
    vertex(x_pos-40,center_y-20);
    endShape();
    line(x_pos-10,center_y+30,x_pos+10,center_y+30);
    
    //Middle
    //Upper body
    beginShape();
    fill(0,0,0);
    vertex(x_pos+20,center_y+45);
    vertex(x_pos+10,center_y+40);
    vertex(x_pos-10,center_y+40);
    vertex(x_pos-20,center_y+45);
    vertex(x_pos-20,center_y+70);
    vertex(x_pos-30,center_y+75);
    vertex(x_pos-30,center_y+120);
    vertex(x_pos+30,center_y+120);
    vertex(x_pos+30,center_y+75);
    vertex(x_pos+20,center_y+70);
    vertex(x_pos+20,center_y+45);
    endShape();
    fill(222,199,157);
    arc(x_pos,center_y+40,20,20,0,PI);
    
    //Middle
    //Right hand
    beginShape();
    fill(222,199,157);
    vertex(x_pos-20,center_y+45);
    vertex(x_pos-30,center_y+50);
    vertex(x_pos-40,center_y+60);
    vertex(x_pos-60,center_y+100);
    vertex(x_pos-65,center_y+100);
    vertex(x_pos-65,center_y+110);
    vertex(x_pos-50,center_y+110);
    vertex(x_pos-50,center_y+100);
    vertex(x_pos-30,center_y+70);
    vertex(x_pos-30,center_y+75);
    vertex(x_pos-20,center_y+70);
    vertex(x_pos-20,center_y+45);
    endShape();
    line(x_pos-60,center_y+100,x_pos-50,center_y+100);
    line(x_pos-55,center_y+100,x_pos-55,center_y+105);
    line(x_pos-60,center_y+100,x_pos-60,center_y+105);
    
    //Middle
    //Left hand
    fill(250,250,250);
    rect(x_pos+45,center_y+100,25,10);
    beginShape();
    fill(137,137,137);
    vertex(x_pos+70,center_y+100);
    vertex(x_pos+120,center_y+100);
    vertex(x_pos+110,center_y+110);
    vertex(x_pos+70,center_y+110);
    vertex(x_pos+70,center_y+100);
    endShape();
    beginShape();
    fill(222,199,157);
    vertex(x_pos+20,center_y+45);
    vertex(x_pos+30,center_y+50);
    vertex(x_pos+40,center_y+60);
    vertex(x_pos+60,center_y+100);
    vertex(x_pos+65,center_y+100);
    vertex(x_pos+65,center_y+110);
    vertex(x_pos+50,center_y+110);
    vertex(x_pos+50,center_y+100);
    vertex(x_pos+30,center_y+70);
    vertex(x_pos+30,center_y+75);
    vertex(x_pos+20,center_y+70);
    vertex(x_pos+20,center_y+45);
    endShape();
    line(x_pos+70,center_y+105,x_pos+110,center_y+105);
    line(x_pos+50,center_y+100,x_pos+50,center_y+110);
    line(x_pos+65,center_y+100,x_pos+65,center_y+110);
    line(x_pos+50,center_y+100,x_pos+60,center_y+100);
    line(x_pos+60,center_y+100,x_pos+60,center_y+105);
    line(x_pos+55,center_y+100,x_pos+55,center_y+105);
    fill(250,250,250);
    rect(x_pos+70,center_y+95,5,20);
    
    //Middle
    //Lower body
    fill(255,0,0);
    rect(x_pos-30,center_y+120,30,30);
    rect(x_pos,center_y+120,30,30);
    fill(222,199,157);
    rect(x_pos-20,center_y+150,10,20);
    rect(x_pos+10,center_y+150,10,20);
    fill(0,0,0);
    rect(x_pos-30,center_y+170,20,10);
    rect(x_pos+10,center_y+170,20,10);
    }
    
  void bullet(){
    fill(255,0,0);
    ellipse(bullet_x,bullet_y,50,50);
    }
  void Ctrl(){
    if (keys[L] == true) {
      x_pos -= speed;
      if( x_pos < 0){
        x_pos=0; 
        }
      }
    if (keys[R] == true) {
      x_pos += speed;
      if(x_pos > width*2){
        x_pos=width*2;  
        }
      }
    bullet_y += bullet_speed;
    if (bullet_y >= height*2){
      bullet_y = 200;
      bullet_x = x_pos;
      bullet_speed +=0.5; 
      }
    if (dist(myChar1.x_position,height*2-200,myChar2.bullet_x,myChar2.bullet_y) <= 120){
      winner = "Player2";
      bullet_y = 200;
      bullet_x = x_pos;   
      life1--;;                
      if(life1 == 0){
        dead =true;
        }
      }
    }
  }
  
  