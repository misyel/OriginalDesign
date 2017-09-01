int i = 220; 
int x = 0;
int k = 130;
int p = 320;
int value = 0;
 void setup() {
     size(500, 500); 
     smooth();
     strokeWeight(15);
     frameRate(10);
 } 
 void draw() {
   changeStroke();
   changeDesign();
   update();
 }

void bear(){
   ellipse(i, 250, random(0,300), 200);
   ellipse(i, 250, random (0,300), 200);
   ellipse(k,170,random(0,100),120);
   ellipse(p,170,random(0,100),120);
}
 
void changeStroke(){
  if (mousePressed == true){
      stroke(random(50), random(255), random(255), 100);}
    else  {
      stroke(random(250), random(105), random(255), 100);
  
}
}

void changeDesign(){
  if (mousePressed == true){
      ellipse(random(500), random(500), 20, 20);
      bear();
  }
  else{
    bear();
    line(x, 0, random(0, width), height);
  }
  background(255);
}
   
void update(){
  
   if (i == 50 ) {
        i++;
    } 
    else {
        i = 220; 
    }
    if (x < height ) {
        x = x + 50;
    } 
    else {
        x = 0; 
    }
 }