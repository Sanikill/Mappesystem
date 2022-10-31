public class Character {
  private int[] pos;
  private String text;
  private int symbol;
  private int status;

  Character(int posX, int posY, int type) {
    this.pos[0] = posX;
    this.pos[1] = posY;
    this.symbol = type;
  }
}
