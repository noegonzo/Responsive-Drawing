//Seasons//
int i = 0;
float j = 1.0;

float max_distance;

void setup() {
  size (1080, 720);
  noStroke();
  max_distance = dist(-50, -50, width, height);
}

void draw() { 
  background(0);
  i = i + 1;
  j = j + 5.0;
  if (mousePressed) {
    stroke(random(255), random(255), random(255), 100);
  } else {
    stroke(20);
  }
  for (int a = 100; a <=width; a +=40) {
    for (int b = 100; b <=height; b +=40) {
      float size = dist(mouseX, mouseY, a, b);
     size = size/max_distance * 300;
      ellipse(i, j, size, size);
      if (i > width) {
        i = 10;
      }
      if (j > width) {
        j = 5;
      }
 
    }
  }
}

 
  