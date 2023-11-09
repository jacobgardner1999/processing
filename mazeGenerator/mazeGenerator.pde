int cols, rows;
int w = 40;;

void setup() {
  size(400, 400);
  cols = floor(width/w);
  rows = floor(height/w);
  
  for (int j = 0; j < rows; j++) {
    for (int i = 0; i < cols; i++) {
      Cell cell = new Cell(i, j);
    }
  }
}

void draw() {
  background(51);
}
