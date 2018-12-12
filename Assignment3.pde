
void setup() {
  frameRate(3);
size(1000, 1000);

}
void draw(){
float x,y;
println(frameCount);

  y=mouseY;
   x=mouseX;
   if(y>100) 
   {y=100+(y/10)-15;};
 
   if(x>100)
 {x=100+(x/10)-15;};
  fill(255,255,150);
     ellipse(mouseX,mouseY,x,y);
   println(x);
   println(y);
float d = dist(mouseX,mouseY,pmouseX,pmouseY);
println (d);
}
