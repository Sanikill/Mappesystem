public class Door {
  private int Doorx;
  private int Doory;
  private boolean vertical;
  private boolean open = false;

  Door() {
    for (int i = 0; i < yayroom; i++) {
      if (abs(mouseX-house[i].Room1)<10) {
        if (house[i].Room2 < mouseY && mouseY < house[i].Room4) {
          this.Doorx = house[i].Room1;
          this.Doory = mouseY;
          this.vertical = true;
        }
        if (house[i].Room2 > mouseY && mouseY > house[i].Room4) {
          this.Doorx = house[i].Room1;
          this.Doory = mouseY;
          this.vertical = true;
        }
      }
      if (abs(mouseX-house[i].Room3)<10) {
        if (house[i].Room2 < mouseY && mouseY < house[i].Room4) {
          this.Doorx = house[i].Room3;
          this.Doory = mouseY;
          this.vertical = true;
        }
        if (house[i].Room2 > mouseY && mouseY > house[i].Room4) {
          this.Doorx = house[i].Room3;
          this.Doory = mouseY;
          this.vertical = true;
        }
      }
      if (abs(mouseY-house[i].Room2)<10) {
        if (house[i].Room1 < mouseX && mouseX < house[i].Room3) {
          this.Doorx = mouseX;
          this.Doory = house[i].Room2;
          this.vertical = false;
        }
        if (house[i].Room1 > mouseX && mouseX > house[i].Room3) {
          this.Doorx = mouseX;
          this.Doory = house[i].Room2;
          this.vertical = false;
        }
      }
      if (abs(mouseY-house[i].Room4)<10) {
        if (house[i].Room1 < mouseX && mouseX < house[i].Room3) {
          this.Doorx = mouseX;
          this.Doory = house[i].Room4;
          this.vertical = false;
        }
        if (house[i].Room1 > mouseX && mouseX > house[i].Room3) {
          this.Doorx = mouseX;
          this.Doory = house[i].Room4;
          this.vertical = false;
        }
      }
    }
  }
}
