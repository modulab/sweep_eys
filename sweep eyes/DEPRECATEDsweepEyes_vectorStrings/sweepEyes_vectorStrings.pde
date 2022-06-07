
PVector[][] leftStates, rightStates;
PVector[] currLeft, currRight;
PVector[] nextLeft, nextRight;
PVector currV, nextV;
int cnt;
color col = color(0, 0, 255);



void setup() {
  size(1280, 720, P2D);
  createStates();
  currLeft = new PVector[leftStates[0].length];
  arrayCopy( leftStates[0], currLeft);
  currRight = new PVector[rightStates[0].length];
  arrayCopy(rightStates[0], currRight);
  ///println(currRight);
  nextLeft = new PVector[leftStates[1].length];

  arrayCopy( leftStates[1], nextLeft);
  nextRight = new PVector[rightStates[1].length];
  arrayCopy( rightStates[1], nextRight);
}


void draw() {
  background(255);
  lerping();
  pushMatrix();
  translate(width/2 - 170, height/2);
  drawShape(currLeft);
  popMatrix();


  pushMatrix();
  translate(width/2 + 170, height/2);
  drawShape(currRight);
  popMatrix();

  if (frameCount%100 ==0) {
    
    arrayCopy(leftStates[cnt], nextLeft);
    arrayCopy(rightStates[cnt], nextRight);
    cnt++;
    cnt = cnt%5;
    print(cnt+"   ");
  }
}

