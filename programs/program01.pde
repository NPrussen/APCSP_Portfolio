PImage img;            //Assigning images
PImage firefox;
PImage Chrome;
PImage CMD;
PImage Start;

Boolean desktop = true;            //Variables for showing/hiding windows
Boolean firewindow = false;
Boolean chrome = false;
Boolean cmd = false;
Boolean start = false;

void setup() {
 size(1280,720); //sets size of program
 frameRate(60); //framerate
 img = loadImage("desktop.png");          //Loading Image files
 firefox = loadImage("firefox.jpg");
 Chrome = loadImage("chrome.png");
 CMD = loadImage("cmd.PNG");
 Start = loadImage("start.PNG");
}

void draw() {
  if (desktop) {   //drawing main desktop
    image(img, 0, 0);
  }
  if (firewindow == true){ //checking boolean and showing if true
     image(firefox, 0, 0); 
  }
  if (chrome == true){    //checking boolean and showing if true
     image(Chrome, 0, 0); 
  }
  if (cmd == true) {    //checking boolean and showing if true
     image(CMD, 0, 0); 
  }
  if (start == true){    //checking boolean and showing if true
     image(Start, 0, 98);
  }
}

void mousePressed() { //checks if mouse clicked
  Start();
  Chrome();    //checks all variables to see if they return true
  Cmd();
  Fire();
}


void Fire() {
if(chrome == false && cmd == false && start == false){   //makes sure no other window is running
  if(firewindow == false){
    if(mouseX > 0 && mouseX < 65){
      if(mouseY > 208 && mouseY < 296){
        firewindow = true;
      }
    }
  }
  if(firewindow == false){
    if( mouseX > 107 && mouseX < 150){
       if(  mouseY > 681 && mouseY < 719){
         firewindow = true;
       }
    }
  }
  if(firewindow == true){
    if(mouseX > 1227 && mouseX < 1270){
      if(mouseY > 10 && mouseY <33){
        firewindow = false;
      }
    }
  }
}
}

void Chrome() {
if(firewindow == false && cmd == false){  //makes sure no other window is running
  if(chrome == false){
    if(mouseX > 0 && mouseX < 65){
      if(mouseY > 106 && mouseY <192){  //checks if chrome icon hit
        chrome = true;  //sets to true
      }
    }
  }
  if(chrome == true){
    if(mouseX > 1231 && mouseX < 1273){  //checks if close button hit
      if(mouseY > 1 && mouseY <14){
        chrome = false;  //sets to false
      }
    }
  }
}
}

void Cmd (){
if(chrome == false && firewindow == false && start == false){   //makes sure no other window is running
  if(cmd == false){
    if(mouseX > 161 && mouseX < 213){  //checks if cmd icon was hit
      if(mouseY > 683 && mouseY <718){
        cmd = true;  //sets to true
      }
    }
  }
  if(cmd == true){
    if(mouseX > 1247 && mouseX < 1276){  //checks if close window was hit
      if(mouseY > 0 && mouseY <15){
        cmd = false;  //sets to false
      }
    }
  }
}
}

void Start (){
  if(start == false){ //checks if false
    if(mouseX > 0 && mouseX <43 ){
      if(mouseY > 682 && mouseY <719){  //checks if start button hit
        start = true; //sets to true
      }
    }
  }
  if(start == true){  //checks if true
    if(mouseX > 0 && mouseX < 1280){  //checks if button clicks outside of window and closes
      if(mouseY > 0 && mouseY <98){
        start = false;  //sets to false
      }
    }
  }
  if(start == true){  //checks if true
    if(mouseX > 958 && mouseX < 1280){  //checks if button clicks outside of window and closes
      if(mouseY > 98 && mouseY <720){
        start = false;  //sets to false
      }
    }
  }
}
