Charact[] Chara = new Charact[100];
Room[] house = new Room[100];
ild[] ildebrand = new ild[100];
int yaydeath = 0;
int yayroom = 0;
int yayfire = 0;
int charge = 0;
int punkt1 = 0;
int punkt2 = 0;
int punkt3 = 0;
int punkt4 = 0;

void mouseReleased() {
  if (chooseCharactSymbol) {
    clickboxCharact(10, 10+60*0, 50, 50, 1);
    clickboxCharact(10, 10+60*1, 50, 50, 2);
    clickboxCharact(10, 10+60*2, 50, 50, 3);
    clickboxCharact(10, 10+60*3, 50, 50, 4);
    clickboxCharact(10, 10+60*4, 50, 50, 5);
    clickboxCharact(10, 10+60*5, 50, 50, 6);
    clickboxCharact(10, 10+60*6, 50, 50, 7);
    clickboxCharact(10, 10+60*7, 50, 50, 8);
    clickboxCharact(10, 10+60*8, 50, 50, 9);
    clickboxCharact(10, 10+60*9, 50, 50, 10);
    Chara[yaydeath] = new Charact(temp1, temp2, temp3);
    yaydeath++;
    temp1 = 0;
    temp2 = 0;
    temp3 = 0;
    chooseCharactSymbol = false;
  } else if (mouseX < 70) {
    clickbox(10, 10+60*0, 50, 50, "DRAG");
    clickbox(10, 10+60*1, 50, 50, "CHARACTER");
    //clickbox(10, 10+60*2, 50, 50, "EDIT");
    clickbox(10, 10+60*2, 50, 50, "MOVE");
    //clickbox(10, 10+60*4, 50, 50, "INTERACT");
    clickbox(10, 10+60*3, 50, 50, "ROOM");
    clickbox(10, 10+60*4, 50, 50, "DOOR");
    //clickbox(10, 10+60*7, 50, 50, "WINDOW");
    clickbox(10, 10+60*5, 50, 50, "FIRE");
    clickbox(10, 10+60*6, 50, 50, "DELETE");
  } else {
    if (tool == "DRAG") {
      adjustX = adjustX - mouseX + width/2;
      adjustY = adjustY - mouseY + height/2;
    }
    if (tool == "CHARACTER") {
      temp1 = mouseX;
      temp2 = mouseY;
      //chooseCharactSymbol = true;
      Chara[yaydeath] = new Charact(temp1, temp2, 0);
      yaydeath++;
      temp1 = 0;
      temp2 = 0;
    }
    if (tool == "MOVE") { //Sebastian
      for (int i = 0; i < yaydeath; i++) {
        if (abs(Chara[i].posx+adjustX-mouseX) < 10) {
          if (abs(Chara[i].posy+adjustY-mouseY) < 10) {
            charge = i;
            i = i +100;
          }
        }
      }
    }

    if (tool == "ROOM") {
      if (punkt1 > 0) {
        punkt3 = mouseX;
      }
      if (punkt2 > 0) {
        punkt4 = mouseY;

        house[yayroom] = new Room ();
        yayroom++;
      }
      punkt1 = mouseX;
      punkt2 = mouseY;

      if (punkt4 > 0) {

        punkt1 = 0;
        punkt2 = 0;
        punkt3 = 0;
        punkt4 = 0;
      }
    }/*
   if (tool == "DOOR") { Anton
     
     }*/

    if (tool == "FIRE") {

      ildebrand[yayfire] = new ild();
      yayfire++;
    }
    /*
   if (tool == "DELETE") { Gustav
     
     }*/
  }
  println(tool);
  println(adjustX);
  println(adjustY);
}
