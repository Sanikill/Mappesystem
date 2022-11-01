public class Charact {
  private int posx;
  private int posy;
  private String text;
  private PImage symbol;
  private int status;

  Charact(int posX, int posY, PImage type) {
    this.posx = posX - adjustX;
    this.posy = posY - adjustY;
    this.symbol = type;
  }
}
