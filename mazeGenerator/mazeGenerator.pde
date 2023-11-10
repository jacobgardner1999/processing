int cols, rows;
int w = 40;
Cell[][] cells;

void setup() {
  size(400, 400);
  cols = floor(width/w);
  rows = floor(height/w);
  cells = new Cell[cols][rows];
  for (int j = 0; j < rows; j++) {
    for (int i = 0; i < cols; i++) {
      Cell cell = new Cell(i, j);
      cells[i][j] = cell;
    }
  }
}

void draw() {
  background(51);
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      cells[i][j].show(w);
    }
  }
}
