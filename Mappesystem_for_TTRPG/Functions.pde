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

void clickboxCharact (int x, int y, int breadth, int tallness, int change) {
  if (mouseY >= y) {
    if (mouseX >= x) {
      if (mouseY <= y+tallness) {
        if (mouseX <= x+breadth) {
          temp3 = change;
        }
      }
    }
  }
}// Ripoff clickbox function

void drawAll() {
  for (int i = 0; i < yaydeath; i++) {
    fill(#FF0505);
    //ellipse(Chara[i].pos[0]-10+adjustX, Chara[i].pos[1]-10+adjustY, 20, 20);
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
