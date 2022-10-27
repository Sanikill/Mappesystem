void clickbox (int x, int y, int breadth, int tallness, float change) {
  rect(x,y,breadth,tallness);
}// Display the clickbox function

void clickbox (int x, int y, int breadth, int tallness, float change) {
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
