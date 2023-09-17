void setup() {
  background(0);
  size(1200, 800);
}

void draw() {
  background(0);

  int numRows = 8;
  int numCols = 8;
  int octagonSize = 100;
  int innerOctagonSize = 90;
  int spacingX = 90; 
  int spacingY = 90; 

  
  for (int i = 0; i < numRows; i++) {
    for (int j = 0; j < numCols; j++) {
      float x = j * (octagonSize + spacingX); 
      float y = i * (octagonSize + spacingY); 
      noStroke();
      //white part
      fill(255,255,255);
      scales(x, y, octagonSize); 
      //red part
      fill(255,0,0);
      scales(x, y, innerOctagonSize);
      //text
      fill(255,255,255);
      float textX = x + innerOctagonSize / 2;
      float textY = y + innerOctagonSize / 2;
      textSize(74); // Adjust text size as needed
      text("STOP", textX - 130, textY-20);
    }
  }
}

void scales(float x, float y, float s) {
  float angleOff = PI / 8.0;
  beginShape();
  for (int i = 0; i < 8; i++) {
    float angle = angleOff + TWO_PI / 8 * i;
    float xOffset = cos(angle) * s;
    float yOffset = sin(angle) * s;
    vertex(x + xOffset, y + yOffset);
  }
  endShape(CLOSE);
}
