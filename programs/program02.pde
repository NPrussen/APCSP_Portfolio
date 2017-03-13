color lineC = lineColor(); //color of stars

int i = 0; //variables 
int v = 0; //used for changing positon of SN
int n = 0; //used for changing positon of SN
void setup() {
 size(500,1000);
 background(#1F1E86);
 strokeWeight(4);
 lineColor(); //defines star colors
 starMultiple(); //defines stars
}

void draw() {
  needle();
  fill(0);
  if(mousePressed){ //checks if mouse pressed
    background(#1F1E86);
    n+=10; //adds onto variable
    starMultiple(); //calls stars
    needle(); //draws space needle
  }
}

void needle() { //builds space needle
  noStroke();
  fill(255);
  triangle(130,1000-n,250,550-n,370,1000-n); 
  rect(215,550-n,70,200);
  stroke(0);
  triangle(240,120-n,250,20-n,260,120-n);
  ellipse(250,200-n,150,200);
  ellipse(250,250-n,550,150);
  ellipse(250,275-n,500,100);
  ellipse(250,300-n,400,100);
  noStroke();
  triangle(170,300-n,250,750-n,330,300-n);
  stroke(0);
  ellipse(250,680-n,70,7);
  noStroke();
  rect(215,660-n,70,20);
  stroke(0);
  ellipse(250,560-n,70,7);
  noStroke();
  rect(215,540-n,70,20);
  fill(#1F1E86);
  triangle(170,1000-n,240,700-n,230,1000-n);
  triangle(330,1000-n,265,700-n,270,1000-n);
}

void starLine(int x1, int y1, int x2, int y2) { //draws the stars when called
  
  stroke(lineC);
  line(x1,y1,x2,y2);
}

color lineColor () { //sets random star color
  return color(201,random(255),67);
}

void star (int i, int v) { //sets stars with random positions
  starLine(20+i,20+v,40+i,40+v);
  starLine(40+i,20+v,20+i,40+v);
  starLine(30+i,15+v,30+i,45+v);
  starLine(15+i,30+v,45+i,30+v); 
}

void starMultiple () { //for loop to pick random position of stars
 for (i = 0; i < 20; i++) {
  star((int)random(500),(int)random(200)); 
 }
}
