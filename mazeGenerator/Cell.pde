class Cell {

    private int i;
    private int j;

    Cell(int i, int j) {
        this.i = i;
        this.j = j;
    }

    public int getI() {
        return this.i;
    }

    public int getJ() {
        return this.j;
    }

    public void show(int w) {
        int x = this.i * w;
        int y = this.j * w;
        stroke(255);
        noFill();
        rect(x, y, w, w);
    }
}
