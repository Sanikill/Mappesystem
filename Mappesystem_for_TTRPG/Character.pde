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

void drawCharacter(Character yay) {
      noStroke();
      fill(#FF0505);
      ellipse(yay.pos[0]-10+adjustX,yay.pos[1]-10+adjustY,20,20);
    }
