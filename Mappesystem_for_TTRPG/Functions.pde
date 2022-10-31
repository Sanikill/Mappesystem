void clickbox_display (int x, int y, int breadth, int tallness) {
  rectMode(CORNER);
  rect(x,y,breadth,tallness);
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

void clickboxCharacter (int x, int y, int breadth, int tallness, int change) {
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
  for (int i = 0; i < plsnosteal; i++) {
    drawCharacter(Chara[i]);
  }
}
