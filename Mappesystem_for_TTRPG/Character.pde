public class Charact {
  private int[] pos = new int[2];
  private String text;
  private int symbol;
  private int status;

  Charact(int posX, int posY, int type) {
    this.pos[0] = posX;
    this.pos[1] = posY;
    this.symbol = type;
  }
}
