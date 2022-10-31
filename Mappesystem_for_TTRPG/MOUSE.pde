int punkt1 = 0;
int punkt2 = 0;
int punkt3 = 0;
int punkt4 = 0;
void mouseReleased() {
  if (chooseCharacterSymbol) {
    //BUTTONNNNSSSS
    clickboxCharacter(10, 10+60*0, 50, 50, 1);
    clickboxCharacter(10, 10+60*1, 50, 50, 2);
    clickboxCharacter(10, 10+60*2, 50, 50, 3);
    clickboxCharacter(10, 10+60*3, 50, 50, 4);
    clickboxCharacter(10, 10+60*4, 50, 50, 5);
    clickboxCharacter(10, 10+60*5, 50, 50, 6);
    clickboxCharacter(10, 10+60*6, 50, 50, 7);
    clickboxCharacter(10, 10+60*7, 50, 50, 8);
    clickboxCharacter(10, 10+60*8, 50, 50, 9);
    clickboxCharacter(10, 10+60*9, 50, 50, 10);
    Chara[plsnosteal] = new Character(temp1,temp2,temp3);
    plsnosteal++;
    temp1 = 0;
    temp2 = 0;
    temp3 = 0;
    chooseCharacterSymbol = false;
  } else if (mouseX < 70) {
    clickbox(10, 10+60*0, 50, 50, "DRAG");
    clickbox(10, 10+60*1, 50, 50, "CHARACTER");
    clickbox(10, 10+60*2, 50, 50, "EDIT");
    clickbox(10, 10+60*3, 50, 50, "MOVE");
    clickbox(10, 10+60*4, 50, 50, "INTERACT");
    clickbox(10, 10+60*5, 50, 50, "ROOM");
    clickbox(10, 10+60*6, 50, 50, "DOOR");
    clickbox(10, 10+60*7, 50, 50, "WINDOW");
    clickbox(10, 10+60*8, 50, 50, "FIRE");
    clickbox(10, 10+60*9, 50, 50, "DELETE");
  } else {
   if (tool == "DRAG") {
     adjustX = adjustX - mouseX + width/2;
     adjustY = adjustY - mouseY + height/2;
   } 
   if (tool == "CHARACTER") {
     temp1 = mouseX;
     temp2 = mouseY;
     chooseCharacterSymbol = true;
   } /*
   if (tool == "EDIT") {
     
   }
   if (tool == "MOVE") {
     
   }
   if (tool == "INTERACT") {
     
   }
   if (tool == "ROOM") {
      if (punkt1 > 0) {
    punkt3 = mouseX;
  }
  if (punkt2 > 0) {
    punkt4 = mouseY;

    rect(punkt1, punkt2, punkt3, punkt4);
  
  }
  punkt1 = mouseX;
  punkt2 = mouseY;
  
  if (punkt4 > 0) {

    punkt1 = 0;
    punkt2 = 0;
    punkt3 = 0;
    punkt4 = 0;
  }
   }
   if (tool == "DOOR") {
     
   }
   if (tool == "WINDOW") {
     
   }
   if (tool == "FIRE") {
     
   }
   if (tool == "DELETE") {
     
   }*/
   }
   println(tool);
   println(adjustX);
   println(adjustY);
}
