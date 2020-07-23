float r1 = 100;
float r2 = 100;
float m1 = 16;
float m2 = 16;
float a1 = PI/4;
float a2 = PI/8;

float px2 = -1;
float py2 = -1;

PGraphics canvas;

void setup()
{
  size(600, 600); 
  canvas = createGraphics(600, 600);
  canvas.beginDraw();
  canvas.background(255);
  canvas.endDraw();
}

void draw()
{
  //background(255);
  image(canvas, 0, 0);
  stroke(0);
  strokeWeight(2);
  
  translate(300, 250);
  
  float x1 = r1 * sin(a1);
  float y1 = r1 * cos(a1);
  
  float x2 = x1 + r2 * sin(a2);
  float y2 = y1 + r2 * cos(a2);
  
  line(0, 0, x1, y1);
  fill(0);
  ellipse(x1, y1, m1, m1);
  
  line(x1, y1, x2, y2);
  fill(0);
  ellipse(x2, y2, m2, m2);
  
  a1 += 0.1;
  a2 -= 0.07;
   
  canvas.beginDraw();
  canvas.translate(300, 250);
  canvas.strokeWeight(1);
  canvas.stroke(0);
  //canvas.point(x2, y2);
  //canvas.line(x2, y2, 0, 0);
  if(frameCount > 1)
  {
    canvas.line(px2, py2, x2, y2);
    //canvas.point(x2, y2);
  }
  canvas.endDraw();
  
  px2 = x2;
  py2 = y2;
  
  text("Powered by Tsuy", 180, 330);
}
