void clickbox_display (int x, int y, int breadth, int tallness) {
  rectMode(CORNER);
  rect(x, y, breadth, tallness);
  rectMode(CORNERS);
}// Display the clickbox function

void clickbox (int x, int y, int breadth, int tallness, String change) {
  if (mouseY >= y) {
    if (mouseX >= x) {
      if (mouseY <= y+tallness) {
        if (mouseX <= x+breadth) {
          tool = change;
        }
      }
    }
  }
}// Clickbox function

void clickboxCharact (int x, int y, int breadth, int tallness, PImage change) {
  if (mouseY >= y) {
    if (mouseX >= x) {
      if (mouseY <= y+tallness) {
        if (mouseX <= x+breadth) {
          tempPic = change;
        }
      }
    }
  }
}// Ripoff clickbox function

void drawAll() {
  for (int i = 0; i < yaydeath; i++) {
    fill(#FF0505);
    image(Chara[i].symbol, Chara[i].posx+adjustX, Chara[i].posy+adjustY, 40, 40);
  }

  fill(#FFFFFF, 0);
  for (int i = 0; i < yayroom; i++) {
    rect(house[i].Room1+adjustX, house[i].Room2+adjustY, house[i].Room3+adjustX, house[i].Room4+adjustY);
  }

  fill(#FFA500, 125);
  noStroke();
  for (int i = 0; i < yayfire; i++) {
    ellipse(ildebrand[i].ildx+adjustX, ildebrand[i].ildy+adjustY, 75, 75);
  }
  stroke(#000000);
}
