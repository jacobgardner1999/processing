float[][] field;
int rez = 10;
int cols;
int rows;

void setup() {
  size(500, 500);
  cols = width / rez;
  rows = height / rez;
  field = new float[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      field[i][j] = random(1);
      }
  }
}

void draw() {
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      stroke(field[i][j]*255);
      point(i*rez, j*rez);
      }
  }

}
