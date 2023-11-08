float[][] field;
int rez = 25;
int cols, rows;
int pointRez = 10;
int lineRez = 2;

OpenSimplexNoise noise;

void setup() {
  size(500, 500);
  noise = new OpenSimplexNoise();
  cols = width / rez;
  rows = height / rez;
  field = new float[cols][rows];
}

void draw() {
  background(150);
  float xOff = 0;
  for (int i = 0; i < cols; i++) {
    float yOff = 0;
    xOff += 1;
    for (int j = 0; j < rows; j++) {
      field[i][j] = noise(xOff, yOff);
      yOff += 1;
    }
  }
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      stroke(field[i][j]*255);
      strokeWeight(pointRez);
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
      int state = getState(round(field[i][j]), 
          round(field[i+1][j]), 
          round(field[i+1][j+1]), 
          round(field[i][j+1])
          );
      
      stroke(255);
      strokeWeight(lineRez);
      switch (state) {
        case 1: 
        case 14:
          strokeWeight(lineRez / 2);
          line(d, a);    
          break;
        case 2:
        case 13:
          strokeWeight(lineRez / 2);
          line(a, b);
          break;
        case 3:
        case 12:
          line(d, b);
          break;
        case 4:
        case 11:
          strokeWeight(lineRez / 2);
          line(c, b);
          break;
        case 5:
          strokeWeight(lineRez / 2);
          line(d, a);
          line(c, b);
          break;
        case 6:
        case 9:
          line(a, c);
          break;
        case 7:
        case 8:
          strokeWeight(lineRez / 2);
          line(d, c);
          break;
        case 10:
          strokeWeight(lineRez / 2);
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

