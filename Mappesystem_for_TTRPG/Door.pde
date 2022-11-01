public class Door {
  private int Doorx;
  private int Doory;
  private boolean open = false;

  Door() {
    this.Doorx = mouseX-adjustX;
    this.Doory = mouseY-adjustY;
  }
}
