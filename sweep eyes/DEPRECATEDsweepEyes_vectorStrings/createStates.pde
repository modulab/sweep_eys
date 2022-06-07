void createStates() {
  int len = 5, verLen; 
  PShape[] loadedStates;
  PShape sLeft, sRight;
  PVector vec;
  loadedStates = new PShape[len];
  loadedStates[0] = loadShape("neutral2.svg");
  loadedStates[1] = loadShape("sad2.svg");
  loadedStates[2] = loadShape("angry2.svg");
  loadedStates[3] = loadShape("right2.svg");
  loadedStates[4] = loadShape("blink2.svg");

 leftStates = new PVector[5][];
  rightStates = new PVector[5][];
  for (int i = 0; i< len; i++) {
    sLeft = loadedStates[i].getChild(0);
    verLen = sLeft.getVertexCount();
    leftStates[i] = new PVector[verLen];
    for (int j = 0; j < verLen; j++) {
      vec = sLeft.getVertex(j);
      leftStates[i][j] = new PVector(vec.x, vec.y);
    }
    sRight = loadedStates[i].getChild(1);
    verLen = sRight.getVertexCount();
    rightStates[i] = new PVector[verLen];
 ///   println(verLen);
    for (int j = 0; j < verLen; j++) {
      vec = sRight.getVertex(j);
      rightStates[i][j] = new PVector(vec.x, vec.y);
    }
    
  }
  for (int i = 0; i< len; i++) {
    println(i+"   ");
  println(leftStates[i].length);
  }
  println("so far so good");
}




void lerping(){
  
  for(int i = 0; i< currLeft.length; i++){
    currLeft[i].lerp(nextLeft[i], (float(frameCount%100))*0.01); 
   
  }
  for(int i = 0; i< currRight.length; i++){
    currRight[i].lerp(nextRight[i], (float(frameCount%100))*0.01);
    
  }
  
  
}



void drawShape(PVector[] vecs){
  PShape s;
  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  for(int i=0; i< vecs.length; i++){
  s.vertex(vecs[i].x, vecs[i].y);
  }
  s.endShape(CLOSE);
  shape(s, 0, 0);
}
