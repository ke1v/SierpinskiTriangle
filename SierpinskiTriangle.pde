public void setup()
{
  size(800, 800);
  background(0);
  noStroke();
}
public void draw()
{
  sierpinski(0, 75, 800);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 8) {
    triangle(x, y, x+len, y, x+len/2, y+len*sqrt(3)/2);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, (int) (y+len*sqrt(3)/4), len/2);
  }
}
