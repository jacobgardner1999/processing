class Star {
    float x;
    float y;
    float z;

    float pz;

    Star() {
        x = random(-width/2, width/2);
        y = random(-height/2, height/2);
        z = random(width);
    }

    void update() {
      z = z - speed;
      if (z < 1) {
        z = width;
        x = random(-width/2, width/2);
        y = random(-height/2, height/2);
      }

      pz = z + 10 * speed;
    }

    void show() {
      fill(255);
      noStroke();

      float sx = map(x / z, 0, 1, 0, width);
      float sy = map(y / z, 0, 1, 0, height);

      float r = map(z, 0, width, 2, 0);
      ellipse(sx, sy, r, r);
      colorMode(HSB, 255, 255, 255);
      float sat = map(z, 0, width, 255, 0);
      stroke(130, 100, sat);
      float px = map(x / pz, 0, 1, 0, width);
      float py = map(y / pz, 0, 1, 0, height);
      line(px, py, sx, sy);
    }
}
