class Point {
  int value;
  int x;
  int y;

  Point(int x, int y) {
    this.value = floor(random(0, 2));
    this.x = x;
    this.y = y;

    stroke(100);
    fill(this.value * 255);
    ellipse(this.x, this.y, 4, 4);
  }
}
