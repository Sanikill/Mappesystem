void clickbox_display (int x, int y, int breadth, int tallness, float change) {
  if (mouseY >= y) {
    if (mouseX >= x) {
      if (mouseY <= y+tallness) {
        if (mouseX <= x+breadth) {
          display = change;
        }
      }
    }
  }
}// Clickbox function
