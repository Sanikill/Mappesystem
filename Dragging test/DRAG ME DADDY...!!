//INITIALIZE

int xplus = 0;
int yplus = 0;

void setup() {// SETUP
  size(1920, 1080);
}

void draw() {// LOOP
  fill(#FFFFFF);
  rect(0,0,10000,10000);
  fill(#000000);
  rect(width/2-xplus, height/2-yplus, 100, 100);
  rect((width/2)-200-xplus, (height/2)-300-yplus, 100, 100);
}

void mouseClicked() {
  xplus = xplus + width/2-mouseX;
  yplus = yplus + height/2-mouseY;
}
