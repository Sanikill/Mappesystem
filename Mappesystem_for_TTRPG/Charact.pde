public class Charact {
  private int posx;
  private int posy;
  private String text;
  private int symbol;
  private int status;

  Charact(int posX, int posY, int type) {
    this.posx = posX - adjustX;
    this.posy = posY - adjustY;
    this.symbol = type;
  }
}
