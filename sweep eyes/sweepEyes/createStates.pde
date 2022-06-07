color col = color(0, 0, 255);

void createStates() {
  PShape s;
  
  /////////////////////////////////neutral
  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -70);
  s.bezierVertex(-100, -100, -100, -100, -70, -100);
  s.vertex(70, -100);
  s.bezierVertex(100, -100, 100, -100, 100, -70);
  s.vertex(100, 70);
  s.bezierVertex(100, 100, 100, 100, 70, 100);
  s.vertex(-70, 100);
  s.bezierVertex(-100, 100, -100, 100, -100, 70);
  s.endShape(CLOSE); 
  leftStates[0] = s;

  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -70);
  s.bezierVertex(-100, -100, -100, -100, -70, -100);
  s.vertex(70, -100);
  s.bezierVertex(100, -100, 100, -100, 100, -70);
  s.vertex(100, 70);
  s.bezierVertex(100, 100, 100, 100, 70, 100);
  s.vertex(-70, 100);
  s.bezierVertex(-100, 100, -100, 100, -100, 70);
  s.endShape(CLOSE); 
  rightStates[0] = s;

  ///////////////////////////////angry
  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -70);
  s.bezierVertex(-100, -100, -100, -100, -70, -95);
  s.vertex(70, -65);
  s.bezierVertex(100, -60, 100, -60, 100, -35);
  s.vertex(100, 70);
  s.bezierVertex(100, 100, 100, 100, 70, 100);
  s.vertex(-70, 100);
  s.bezierVertex(-100, 100, -100, 100, -100, 70);
  s.endShape(CLOSE); 
  leftStates[1] = s;

  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -35);
  s.bezierVertex(-100, -60, -100, -60, -70, -65);
  s.vertex(70, -95);
  s.bezierVertex(100, -100, 100, -100, 100, -70);
  s.vertex(100, 70);
  s.bezierVertex(100, 100, 100, 100, 70, 100);
  s.vertex(-70, 100);
  s.bezierVertex(-100, 100, -100, 100, -100, 70);
  s.endShape(CLOSE); 
  rightStates[1] = s;
  
  ///////////////////////////bl9ink
  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -5);
  s.bezierVertex(-100, -15, -100, -15, -70, -15);
  s.vertex(70, -15);
  s.bezierVertex(100, -15, 100, -15, 100, -5);
  s.vertex(100, 5);
  s.bezierVertex(100, 15, 100, 15, 70, 15);
  s.vertex(-70, 15);
  s.bezierVertex(-100, 15, -100, 15, -100, 5);
  s.endShape(CLOSE); 
  leftStates[2] = s;
  
  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -5);
  s.bezierVertex(-100, -15, -100, -15, -70, -15);
  s.vertex(70, -15);
  s.bezierVertex(100, -15, 100, -15, 100, -5);
  s.vertex(100, 5);
  s.bezierVertex(100, 15, 100, 15, 70, 15);
  s.vertex(-70, 15);
  s.bezierVertex(-100, 15, -100, 15, -100, 5);
  s.endShape(CLOSE); 
  rightStates[2] = s;
  
  //////////////////////////sad
  
    s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -35);
  s.bezierVertex(-100, -60, -100, -60, -70, -65);
  s.vertex(70, -95);
  s.bezierVertex(100, -100, 100, -100, 100, -70);
  s.vertex(100, 70);
  s.bezierVertex(100, 100, 100, 100, 70, 100);
  s.vertex(-70, 100);
  s.bezierVertex(-100, 100, -100, 100, -100, 70);
  s.endShape(CLOSE); 
  leftStates[3] = s;
  
  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -70);
  s.bezierVertex(-100, -100, -100, -100, -70, -95);
  s.vertex(70, -65);
  s.bezierVertex(100, -60, 100, -60, 100, -35);
  s.vertex(100, 70);
  s.bezierVertex(100, 100, 100, 100, 70, 100);
  s.vertex(-70, 100);
  s.bezierVertex(-100, 100, -100, 100, -100, 70);
  s.endShape(CLOSE); 
  rightStates[3] = s;
  
  ////////////////////// right
  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-80, -90);
  s.bezierVertex(-80, -120, -80, -120, -50, -120);
  s.vertex(50, -120);
  s.bezierVertex(80, -120, 80, -120, 80, -90);
  s.vertex(80, 90);
  s.bezierVertex(80, 120, 80, 120, 50, 120);
  s.vertex(-50, 120);
  s.bezierVertex(-80, 120, -80, 120, -80, 90);
  s.endShape(CLOSE); 
  leftStates[4] = s;

  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -70);
  s.bezierVertex(-100, -100, -100, -100, -70, -100);
  s.vertex(70, -100);
  s.bezierVertex(100, -100, 100, -100, 100, -70);
  s.vertex(100, 70);
  s.bezierVertex(100, 100, 100, 100, 70, 100);
  s.vertex(-70, 100);
  s.bezierVertex(-100, 100, -100, 100, -100, 70);
  s.endShape(CLOSE); 
  rightStates[4] = s;
  
  
  
   ///////////////////////////bl9ink 2
  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -5);
  s.bezierVertex(-100, -15, -100, -15, -70, -15);
  s.vertex(70, -15);
  s.bezierVertex(100, -15, 100, -15, 100, -5);
  s.vertex(100, 5);
  s.bezierVertex(100, 15, 100, 15, 70, 15);
  s.vertex(-70, 15);
  s.bezierVertex(-100, 15, -100, 15, -100, 5);
  s.endShape(CLOSE); 
  leftStates[5] = s;
  
  s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(-100, -5);
  s.bezierVertex(-100, -15, -100, -15, -70, -15);
  s.vertex(70, -15);
  s.bezierVertex(100, -15, 100, -15, 100, -5);
  s.vertex(100, 5);
  s.bezierVertex(100, 15, 100, 15, 70, 15);
  s.vertex(-70, 15);
  s.bezierVertex(-100, 15, -100, 15, -100, 5);
  s.endShape(CLOSE); 
  rightStates[5] = s;
  
}











void createCurr(){
PShape s;
s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(0, 0);
  s.bezierVertex(0, 0, 0, 0, 0, 0);
  s.vertex(0, 0);
  s.bezierVertex(0, 0, 0, 0, 0, 0);
  s.vertex(0, 0);
  s.bezierVertex(0, 0, 0, 0, 0, 0);
  s.vertex(0, 0);
  s.bezierVertex(0, 0, 0, 0, 0, 0);
  s.endShape(CLOSE); 
  currChildLeft = s;
  
s = createShape();
  s.beginShape(); 
  s.noStroke();
  s.fill(col);
  s.vertex(0, 0);
  s.bezierVertex(0, 0, 0, 0, 0, 0);
  s.vertex(0, 0);
  s.bezierVertex(0, 0, 0, 0, 0, 0);
  s.vertex(0, 0);
  s.bezierVertex(0, 0, 0, 0, 0, 0);
  s.vertex(0, 0);
  s.bezierVertex(0, 0, 0, 0, 0, 0);
  s.endShape(CLOSE); 
  currChildRight = s;
  
  
}

