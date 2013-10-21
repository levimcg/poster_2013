// http://www.levimcg.com/drawing-and-code/

import processing.pdf.*;

// This sets variables for the aspect ratio of the poster.
// You can scale the PDF to whatever size you want.
// I did 24"x36"
float ab_width = 20;
float ab_height = 30;

// From Rune Madsen's Print with Code course. 
float bigger = 20;

void setup (){
  
  size(round(ab_width * bigger), round(ab_height * bigger));
  
  beginRecord(PDF, "poster_2013.pdf");
  background(#222222);
  smooth();
  noStroke();
  
  translate(0, height * .33); //contrains circles to lower two-thirds of the composition
  
  //iterates through three circles
  for (int i = 0; i < 3; i++) {
    
    fill(#eb6a75, random(240)); //circles are not completely opaque
    ellipse(width * .17, random(300), 120, 120);
    
    fill(#6aebeb, random(240));
    ellipse(width * .5, random(300), 120, 120);
    
    fill(#f1f1f1, random(240));
    ellipse(width * .829, random(300), 120, 120);
  }
  
  // translate the start point back to 0, 0
  translate(0, -height*.33);
 
  // draw the ruler and current year 
  stroke(255);
  strokeWeight(5);
  strokeCap(SQUARE);
  line(20, 20, 50, 20);
  fill(255);
  
  //replace "AkkuratPro-Bold.otf" with a font from your system I used "Akkurat Bold",
  //but Helvetica would work nicely also. Just find the font on your system and copy it into the "data" folder.
  PFont font;
  font = createFont("AkkuratPro-Bold.otf", 36);
  textFont(font);
  text(year(), 20, 60);
  
  endRecord();
} 
