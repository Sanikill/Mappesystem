public class Character {
    private int[] position;
    private String text;
    private int symbol;
    private int status;

    Character(int posX, int posY, int type) {
        this.position[0] = posX;
        this.position[1] = posY;
        this.symbol = type;
    }
}
