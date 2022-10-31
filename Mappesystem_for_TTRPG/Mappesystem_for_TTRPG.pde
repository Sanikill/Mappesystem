//INITIALIZE

String tool = "EMPTY";
int adjustX = 0;
int adjustY = 0;
int temp1 = 0;
int temp2 = 0;
int temp3 = 0;
boolean chooseCharactSymbol = false;

void setup() {// SETUP
  size(1920, 1080);
  rectMode(CORNERS);
}

void draw() {// LOOP
  fill(#FFFFFF);
  rect(0, 0, 10000, 10000);

  if (chooseCharactSymbol) {
    fill(#FF0000);
    clickbox_display(10, 10+60*0, 50, 50);// Do we want a symbol, or text, or anything for these?
    clickbox_display(10, 10+60*1, 50, 50);
    //clickbox_display(10, 10+60*2, 50, 50);
    clickbox_display(10, 10+60*2, 50, 50);
    //clickbox_display(10, 10+60*4, 50, 50);
    clickbox_display(10, 10+60*3, 50, 50);
    clickbox_display(10, 10+60*4, 50, 50);
    //clickbox_display(10, 10+60*7, 50, 50);
    clickbox_display(10, 10+60*5, 50, 50);
    clickbox_display(10, 10+60*6, 50, 50);
  } else {



    fill(#000000);
    clickbox_display(10, 10+60*0, 50, 50);// Do we want a symbol, or text, or anything for these?
    clickbox_display(10, 10+60*1, 50, 50);
    //clickbox_display(10, 10+60*2, 50, 50);
    clickbox_display(10, 10+60*2, 50, 50);
    //clickbox_display(10, 10+60*4, 50, 50);
    clickbox_display(10, 10+60*3, 50, 50);
    clickbox_display(10, 10+60*4, 50, 50);
    //clickbox_display(10, 10+60*7, 50, 50);
    clickbox_display(10, 10+60*5, 50, 50);
    clickbox_display(10, 10+60*6, 50, 50);
    
    drawAll();
    
    
    if (tool == "DRAG") {
      line(width/2, height/2, mouseX, mouseY);
    }
  }
}
