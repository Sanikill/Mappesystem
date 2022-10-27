//INITIALIZE

String tool = "EMPTY";

void setup() {// SETUP
 size(1920,1080); 
}

void draw() {// LOOP
  fill(#FFFFFF);
  rect(0,0,10000,10000);
  
  fill(#000000);
  clickbox(10,10+60*0,50,50);// Do we want a symbol, or text, or anything for these?
  clickbox(10,10+60*1,50,50);
  clickbox(10,10+60*2,50,50);
  clickbox(10,10+60*3,50,50);
  clickbox(10,10+60*4,50,50);
  clickbox(10,10+60*5,50,50);
  clickbox(10,10+60*6,50,50);
  clickbox(10,10+60*7,50,50);
  clickbox(10,10+60*8,50,50);
  clickbox(10,10+60*9,50,50);
}
