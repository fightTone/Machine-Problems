Char1 myChar1;
Char2 myChar2;

int life1=3;
int life2=3;
PImage photo,photo0,photo1;
boolean start =true;
boolean dead =false;
String winner = "";
boolean[] keys = new boolean[4];
final int A = 0;
final int D = 1;
final int L = 2;
final int R = 3; 


void setup(){
  size(900,680);
  photo = loadImage("start.png");
  photo0 = loadImage("over.jpg");
  photo1 = loadImage("blood.jpg");
  myChar1 = new Char1(width, height); 
  myChar2 = new Char2(80, 80); 
  for (int i = 0; i< 4; i++) {
    keys[i] = false;
  }
}

void draw(){
  if (start){
    image(photo,  0, 0, width, height);
    fill(#B4DBF7);
    textSize(1);
    pushMatrix();
    translate(-width-655,-height-200);
    myChar1.FChar1();
    popMatrix();
    pushMatrix();
    translate(width/2+200,height/2-140);
    myChar2.FChar2();
    popMatrix();
    fill(#B4DBF7);
    textSize(100);
    text("BACK",width/2-140, 220);
    text("FIRE",width/2-110, 300);
    textSize(24);
    text("◄Player1 Controls► ",50,500);
    text("[A] [D] ",120,550);
    text("◄Player2 Controls► ",width-280,500);
    text("[←] [→] ",width-200,550);
    if (keyPressed && key == ENTER){
      start=false;
    }
  }
  else{
    background(#03365D);
    textSize(24);
    pushMatrix();
    scale(0.5);
    myChar1.FChar1();
    myChar2.FChar2();
    myChar1.Ctrl();
    myChar2.Ctrl();
    myChar1.bullet();
    myChar2.bullet();
    popMatrix();

    if (dead ==true){
      myChar1.x_position = width*2-80;
      myChar2.x_pos = 80;
      myChar1.bullet_y=height*2-200;
      myChar1.bullet_x = myChar1.x_position;
      myChar2.bullet_y = 200;
      myChar2.bullet_x = myChar2.x_pos;
      
      image(photo0,  0, 0, width, height);
    
      if (keyPressed && key == ENTER){ 
        dead =false;
        myChar1.bullet_speed=10;
        myChar2.bullet_speed=10;
        life1=3;
        life2=3;
      }
      if(life1 == 0 && life2 == 0){
        fill(#F579DE);
        text("DRAW",width/2-40, 120);
      }
      else if (life1 == 0){
        fill(255,0,0);
        text("Player2 WINS",width/2-70, 120);
      }
      else if(life2 == 0) {
        fill(#1AE8ED);
        text("Player1 WINS",width/2-70, 120);
      }
      text("Press Enter to START",width/2-110,500);
    } 
  } 
}

void keyPressed(){
    if(key== 'a'){
      keys[A] = true; 
    }
    else if(key== 'd'){      
      keys[D] = true;      
    }  
    else if (keyCode == LEFT) {
      keys[L] = true;
    } 
    else if (keyCode == RIGHT) {
      keys[R] = true;
    }
 }
 
void keyReleased() {
    if (key == 'a') {
      keys[A] = false;
    } 
    else if (key == 'd') {
      keys[D] = false;
    }
    else if (keyCode == LEFT) {
      keys[L] = false;
    } 
    else if (keyCode == RIGHT) {
      keys[R] = false;
    }
}

void dee(){
    ellipse(myChar1.x_position,height-200,150,150);
    ellipse(myChar2.x_pos,200,150,150);
}