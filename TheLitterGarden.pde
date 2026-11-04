
void setup() {
  size(800, 600);

  // recorded data from first week of walks

  String[] days = {
    "Monday", "Tuesday", "Wednesday",
    "Thursday", "Friday", "Saturday", "Sunday"
  };

  int[] plastic = {5, 7, 4, 8, 6, 10, 7};
  int[] paper = {3, 4, 2, 5, 3, 6, 4};
  int[] cans = {2, 2, 1, 3, 4, 5, 3};
  int[] other = {1, 2, 1, 2, 1, 3, 2};

  for (int i = 0; i < 7; i++) {
    int total = calculateTotal(
      plastic[i], paper[i], cans[i], other[i]
    );

    println(days[i] + ": " + total + " items");
  }
}



void draw() {
  // Sky
  background(225, 225, 245);

  // Grass
  noStroke();
  fill(185, 215, 175);
  rect(0, 420, 800, 180);

  // Sun
  fill(255, 225, 150);
  ellipse(680, 100, 90, 90);

  // Flowers
  drawFlower(150, 380);
  drawFlower(300, 400);
  drawFlower(500, 370);
  drawFlower(680, 410);
}

// Draws one flower
void drawFlower(float x, float y) {

  // Stem
  stroke(75, 125, 80);
  strokeWeight(5);
  line(x, y, x, y + 100);

  // Petals
  noStroke();
  fill(245, 170, 195);

  ellipse(x, y - 25, 30, 30);
  ellipse(x - 25, y, 30, 30);
  ellipse(x + 25, y, 30, 30);
  ellipse(x, y + 20, 30, 30);

  // Centre
  fill(255, 220, 120);
  ellipse(x, y, 22, 22);
}

int calculateTotal(int plastic, int paper, int cans, int other) {
  return plastic + paper + cans + other;
}
