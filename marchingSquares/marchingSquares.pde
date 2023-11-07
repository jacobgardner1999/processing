int[][] field;
int rez = 10;
int cols;
int rows;


void setup() {
  size(500, 500);
  background(150);
  cols = width / rez;
  rows = height / rez;
  field = new int[cols][rows];
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      field[i][j] = floor(random(2));
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

  for (int i = 0; i < cols - 1; i++) {
    for (int j = 0; j < rows - 1; j++) {
      float x = i * rez;
      float y = j * rez;
      PVector a = new PVector(x + rez * 0.5, y);
      PVector b = new PVector(x + rez, y + rez * 0.5);
      PVector c = new PVector(x + rez * 0.5, y + rez);
      PVector d = new PVector(x, y + rez * 0.5);
      int state = getState(field[i][j], field[i+1][j], field[i+1][j+1], field[i][j+1]);
      
      stroke(255);
      strokeWeight(0.5);
      switch (state) {
        case 1: 
        case 14:
          line(d, a);    
          break;
        case 2:
        case 13:
          line(a, b);
          break;
        case 3:
        case 12:
          line(d, b);
          break;
        case 4:
        case 11:
          line(c, b);
          break;
        case 5:
          line(d, a);
          line(c, b);
          break;
        case 6:
        case 9:
          line(a, c);
          break;
        case 7:
        case 8:
          line(d, c);
          break;
        case 10:
          line(d, a);
          line(c, b);
          break;
      }
    }
  }
}

void line(PVector v1, PVector v2) {
  line(v1.x, v1.y, v2.x, v2.y);
}

int getState(int a, int b, int c, int d) {
  return a + b*2 + c*4 + d*8; 
}

