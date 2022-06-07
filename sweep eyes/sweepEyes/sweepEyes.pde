PShape[] leftStates, rightStates;
PShape[] loadedStates;
PShape currShape, nextShape;
int cnt=0;
PVector currV, nextV;
PShape currChildLeft, currChildRight;
PShape nextChildLeft, nextChildRight;
float span = 30, spanIncrem = 0.03, eyeBridge = 170;
int c=0;
int followX, followY, scaleVal;

void setup() {
  size(1280, 720, P2D);
  oscP5 = new OscP5(this,3334);
  
  
  leftStates = new PShape[6];
  rightStates = new PShape[6];
  loadedStates = new PShape[5];
  loadedStates[0] = loadShape("neutral1.svg");
  loadedStates[1] = loadShape("sad1.svg");
  loadedStates[2] = loadShape("angry1.svg");
  loadedStates[3] = loadShape("right1.svg");
  loadedStates[4] = loadShape("blink1.svg");
createStates();
createCurr();
/*PShape s;
for(int i = 0; i<5; i++){
  currChildLeft = loadedStates[i].getChild(0);
  currChildRight = loadedStates[i].getChild(1);
 s = createShape();
 s.beginShape(); 

 for(int j = 0; j < currChildLeft.getVertexCount(); j++) {
  currV = currChildLeft.getVertex(j);
  s.vertex(currV.x, currV.y);
 }
 s.endShape(CLOSE); 
 leftStates[i] = s;
 
 s = createShape();
 s.beginShape(); 

 for(int j = 0; j < currChildRight.getVertexCount(); j++) {
  currV = currChildRight.getVertex(j);
  s.curveVertex(currV.x, currV.y);
 }
 s.endShape(CLOSE); 
 rightStates[i] = s;
 
}
*/
//println("so far so good " + currChildLeft.getVertexCount());

nextChildLeft = leftStates[0];
nextChildRight = rightStates[0];

}

void draw() {
  noStroke();
  fill(0, 60);
  rect(0,0,width, height);
  
 for (int i = 0; i < currChildLeft.getVertexCount(); i++) {
    currV = currChildLeft.getVertex(i);
    nextV = nextChildLeft.getVertex(i);
    currV.lerp( nextV, (float(c)%span)*(spanIncrem)); 
    currChildLeft.setVertex(i, currV.get());
    ///if(i==0) println(currV);
  }
  for (int i = 0; i < currChildRight.getVertexCount(); i++) {
    currV = currChildRight.getVertex(i);
    nextV = nextChildRight.getVertex(i);
    currV.lerp( nextV, (float(c)%span)*(spanIncrem)); 
    currChildRight.setVertex(i, currV.get());
    ///if(i==0) println(currV);
  }
///println(float(frameCount%100)*0.01);
pushMatrix();
if(followX <=width/2){
currChildLeft.resetMatrix();
currChildLeft.scale(map(followX, 0, width/2, 1.5, 1));
///eyeBridge = map(followX, 0, width/2, 100, 200);
}else{
 //// currChildLeft.resetMatrix();
 /// currChildLeft.scale(map(mouseX,  width/2, width-1, 1, 0.999));
  currChildRight.resetMatrix();
  currChildRight.scale(map(followX,  width/2, width-1, 1, 1.5));
 //eyeBridge = map(followX,   width/2, width-1, 200, 100);
}
  shape(currChildLeft, min(width-1, max(0, followX-eyeBridge)), followY );
  shape(currChildRight, min(width-1, max(0, followX+eyeBridge)), followY );
  
  popMatrix();
//  shape(nextChildLeft,  width/2-170, height/4 -50);
 /// shape(nextChildRight, width/2+170, height/4 -50);
  
c++;
 if(c%span==0){ 
   println("boveibvoiewboi "+(float(c-1)%span)*(spanIncrem));
   cnt= (int(random(leftStates.length)));
   span = int(random(10,61));
   spanIncrem = 1/span;
   println(span +"   and "+ spanIncrem);
   nextChildLeft = leftStates[cnt]; 
   nextChildRight = rightStates[cnt]; 
   c=0;
}
}


