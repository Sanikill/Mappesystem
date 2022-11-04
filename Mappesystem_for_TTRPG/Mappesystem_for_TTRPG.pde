//INITIALIZE

String tool = "EMPTY";
int adjustX = 0;
int adjustY = 0;
int temp1 = 0;
int temp2 = 0;
int temp3 = 0;
PImage tempPic;
boolean chooseCharactSymbol = false;
PImage badG;
PImage badB;
PImage Maria;
PImage Justin;
PImage Gerhardt;
PImage Ragnar;
PImage Sara;
PImage NPC;

void setup() {// SETUP
  size(1920, 1080);
  rectMode(CORNERS);

  badG = loadImage("PNG prog/Bad grunt.png");
  badB = loadImage("PNG prog/BIG boss.png");
  Maria = loadImage("HERO/Maria.png");
  Justin = loadImage("HERO/Justin.png");
  Gerhardt = loadImage("HERO/Gerhardt.png");
  Ragnar = loadImage("HERO/Ragnar.png");
  Sara = loadImage("HERO/Sara.png");
  NPC = loadImage("PNG prog/NPC.png");
}

void draw() {// LOOP
  fill(#FFFFFF);
  rect(0, 0, 10000, 10000);

  if (chooseCharactSymbol) {
    image(badG, 10, 10+60*0, 50, 50);
    image(badB, 10, 10+60*1, 50, 50);
    image(Maria, 10, 10+60*2, 50, 50);
    image(Justin, 10, 10+60*3, 50, 50);
    image(Gerhardt, 10, 10+60*4, 50, 50);
    image(Ragnar, 10, 10+60*5, 50, 50);
    image(Sara, 10, 10+60*6, 50, 50);
    image(NPC, 10, 10+60*7, 50, 50);
  } else {

    drawAll();


    if (tool == "DRAG") {
      line(width/2, height/2, mouseX, mouseY);
    }
    if (charge > 0) {
      fill(#000000, 10);
      rect(0, 0, 10000, 10000);
      Chara[charge].posx = mouseX-adjustX;
      Chara[charge].posy = mouseY-adjustY;
      fill(#FF0505);
      ellipse(Chara[charge].posx+adjustX, Chara[charge].posy+adjustY, 20, 20);
    }

    fill(#FFFFFF);
    stroke(#000000);
    rect(0, -1, 70, 10000);
    rect(-1, -1, 70, 10000);
    noStroke();



    fill(#000000);
    clickbox_display(10, 10+60*0, 50, 50);
    clickbox_display(10, 10+60*1, 50, 50);
    //clickbox_display(10, 10+60*2, 50, 50);
    clickbox_display(10, 10+60*2, 50, 50);
    //clickbox_display(10, 10+60*4, 50, 50);
    clickbox_display(10, 10+60*3, 50, 50);
    clickbox_display(10, 10+60*4, 50, 50);
    //clickbox_display(10, 10+60*7, 50, 50);
    clickbox_display(10, 10+60*5, 50, 50);
    clickbox_display(10, 10+60*6, 50, 50);

    fill(#FFA500);
    textSize(15);
    text("Camera", 15, 40+60*0); 
    text("Create", 15, 40+60*1); 
    text("Move", 17.50, 40+60*2); 
    text("Room", 17.50, 40+60*3); 
    text("Door", 20, 40+60*4); 
    text("Fire", 15, 40+60*5); 
    text("Del", 15, 40+60*6);
  }
}
