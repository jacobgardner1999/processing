int r = 10;

void setup() {
  size(500, 500);
  int cols = width / r;
  int rows = height / r;
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      Point point = new Point(i * r + 5, j * r + 5); 
      }
  }
}

void draw() {

}
