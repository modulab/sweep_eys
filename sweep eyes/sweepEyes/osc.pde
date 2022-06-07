import oscP5.*;
import netP5.*;

OscP5 oscP5;


void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  print("### received an osc message.");
  theOscMessage.print();
  Object[] oscA = theOscMessage.arguments();
  String s = theOscMessage.typetag();
  if (s.length() == 4) {
    char a = s.charAt(1);
    followX = (width+(width - 2*theOscMessage.get(1).intValue()))%width;///print(i+" is " + theOscMessage.get(i).intValue()+", ");
    followY = 2*theOscMessage.get(2).intValue();
    scaleVal = theOscMessage.get(3).intValue();
    
  }
  for (int i =0; i<s.length (); i++) {
    char a = s.charAt(i);
    if (a == 'i') print(i+" is " + theOscMessage.get(i).intValue()+", ");
  }
}

