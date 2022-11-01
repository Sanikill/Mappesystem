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
PImage goodMage;
PImage goodRogue;
PImage goodKnight;
PImage goodPala;
PImage NPC;

void setup() {// SETUP
  size(1920, 1080);
  rectMode(CORNERS);

  badG = loadImage("PNG prog/Bad grunt.png");
  badB = loadImage("PNG prog/BIG boss.png");
  goodMage = loadImage("PNG prog/hero mage.png");
  goodRogue = loadImage("PNG prog/hero rouge.png");
  goodKnight = loadImage("PNG prog/hero knight.png");
  goodPala = loadImage("PNG prog/Hero paladin.png");
  NPC = loadImage("PNG prog/NPC.png");
}

void draw() {// LOOP
  fill(#FFFFFF);
  rect(0, 0, 10000, 10000);

  if (chooseCharactSymbol) {
    image(badG, 10, 10+60*0, 50, 50);
    image(badB, 10, 10+60*1, 50, 50);
    image(goodMage, 10, 10+60*2, 50, 50);
    image(goodRogue, 10, 10+60*3, 50, 50);
    image(goodKnight, 10, 10+60*4, 50, 50);
    image(goodPala, 10, 10+60*5, 50, 50);
    image(NPC, 10, 10+60*6, 50, 50);
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
    clickbox_display(10, 10+60*0, 50, 50, "DRAG");
    clickbox_display(10, 10+60*1, 50, 50, "CHARACTER");
    //clickbox_display(10, 10+60*2, 50, 50, "EDIT");
    clickbox_display(10, 10+60*2, 50, 50, "MOVE");
    //clickbox_display(10, 10+60*4, 50, 50, "INTERACT");
    clickbox_display(10, 10+60*3, 50, 50, "ROOM");
    clickbox_display(10, 10+60*4, 50, 50, "DOOR");
    //clickbox_display(10, 10+60*7, 50, 50, "WINDOW");
    clickbox_display(10, 10+60*5, 50, 50, "FIRE");
    clickbox_display(10, 10+60*6, 50, 50, "DELETE");
  }
}
