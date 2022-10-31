void clickbox_display (int x, int y, int breadth, int tallness) {
  rect(x,y,breadth,tallness);
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
