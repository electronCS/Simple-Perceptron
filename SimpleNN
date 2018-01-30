float f(float x)
{

   return m * x + b; 
}
class point
{
  float x;
  float y;
  float bias = 1;
  int label;
  
  point(float x_, float y_)
  {
     x = x_;
     y = y_;
  }
  point()
  {
     x = random(-1, 1);
     y = random(-1, 1);
     if (y>f(x))
       label = 1;
     else
       label = -1;
  }
  float pixelX()
  {
    return map(x, -1, 1, 0, width);
  }
  float pixelY()
  {
    return map(y, -1, 1, height, 0);
  }
  void show()
  {
      stroke(0);
      if (label == 1)
        fill(50);
      else
        fill(255);
      ellipse(pixelX(), pixelY(), 16, 16);
  }
  
}
