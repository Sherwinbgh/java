int countp1;
int countp2;

int P1Y = 150;
int P2Y = 150;
int P1X = 0;
int P2X = 780;
int paddelW = 20;
int paddelH = 75;
int balX= 400;
int balY= 190;
int balW = 20;
int balH = 20;
int dirX = -1;
int dirY = -1;
int speed = 3;

void setup(){
  size(800,400);
  countp1 = 0;
  countp2 = 0;
  frameRate(60);
  
}

void draw(){
  background(0);
  fill(255);
  stroke(255);
  line(410,0,410,400);
  textSize(50);
  text(countp1,350,40,35);
  text(countp2,450,40,35);
  rect(P1X,P1Y,paddelW,paddelH);
  rect(P2X,P2Y,paddelW,paddelH);
  fill(255,0,0);
  rect(balX,balY,balW,balH);
  
  
  balX += dirX * speed;
  balY += dirY * speed;
  //-----------\/
  if( balX <= 0 || balX >= width){
   dirX *= -1;
  println("you lose");
  }
  //-------------^
if( balY <= 0 || balY >= height){
   dirY *= -1;
}
if(( balX <= P1X + paddelW && balX >= P1X)&& (balY <= P1Y + paddelH && balY >= P1Y)){
  println("Raak P1");
  dirX *= -1;
}
if(( balX+balW <= P2X + paddelW && balX+balW >= P2X)&& (balY <= P2Y + paddelH && balY >= P2Y)){
  println("Raak P2");
  dirX *= -1;
}
//--------------------\/
if( balX >= width){
    balX= width/2;
    speed *= -1;
    countp1 ++;
  }
if( balX <= 0){
    balX= width/2;
    speed *= -1;
    countp2 ++;
  }
//---------------------
}

void keyPressed(){
  
  if(keyCode == 87 && P1Y > 0){
    P1Y -= 15;
  }
  if(keyCode == 83 && P1Y < 320){
    P1Y += 15;
  }
  if(keyCode == 38 && P2Y > 0){
    P2Y -= 15;
  }
  if(keyCode == 40 && P2Y < 320){
    P2Y += 15;
  }
}
