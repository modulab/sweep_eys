import gab.opencv.*;
import processing.video.*;
import java.awt.*;

import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

Capture video;
OpenCV opencv;

void setup() {
  size(640, 360);
  
  oscP5 = new OscP5(this,3333);
  myRemoteLocation = new NetAddress("127.0.0.1",3334);
  
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}

void draw() {
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
 /// println(faces.length);
  
  if(faces.length >0){
    
    OscMessage myMessage = new OscMessage("/ ");
    myMessage.add(faces.length);
    for(int i = 0; i<faces.length; i++){
    myMessage.add(int(map((faces[i].x+faces[i].x +faces[i].width)/2, 0, width, 0, 1280)));
   /// myMessage.add(" ");
    myMessage.add(int(map((faces[i].y+faces[i].y +faces[i].height)/2, 0, height, 0, 720)));
  ///  myMessage.add(" ");
    myMessage.add( faces[i].width);
   //// myMessage.add(" ");
    }
   /// println(myMessage);
    oscP5.send(myMessage, myRemoteLocation); 
  }
  
  for (int i = 0; i < faces.length; i++) {
   /// println(faces[i].x + "," + faces[i].y);
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    ellipse(faces[i].width, faces[i].height, 4, 4);
    ellipse((faces[i].x+faces[i].x +faces[i].width)/2, (faces[i].y+faces[i].y +faces[i].height)/2, 4, 4);
   
  }
  
}

void captureEvent(Capture c) {
  c.read();
}

void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  theOscMessage.print();
}
