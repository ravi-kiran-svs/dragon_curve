int n=20,t=0,i;
int[] x,y;

void setup()
{
  size(800,600);
  frameRate(1);
  stroke(255);
  x= new int[int(pow(2,n+1))+1];
  y= new int[int(pow(2,n+1))+1];
  x[0]=200;  y[0]=200;
  x[1]=600;  y[1]=200;
}

void draw()
{
  background(0);
  
  for(i=0;i<pow(2,t);i++)
  {
    line(x[i],y[i],x[i+1],y[i+1]);
  }
   //<>//
  noLoop();
  t++;
  
  for(i=int(pow(2,t));i!=0;i-=2)
  {
    x[i]=x[i/2];
    y[i]=y[i/2];
    
    x[i-1]=  (x[i/2]+x[i/2-1])/2  -int(pow(-1,i/2-1))  *(y[i/2]-y[i/2-1])/2;
    y[i-1]=  (y[i/2]+y[i/2-1])/2  +int(pow(-1,i/2-1))  *(x[i]-x[i/2-1])/2;
  }
}

void mousePressed()
{
  if(t!=n)  loop();
}