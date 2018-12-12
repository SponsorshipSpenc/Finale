float x = 100;
float y = 100;
float w = 150;
float h = 150;
float a = 350;
float b = 0;
float c = 100;
float d = 150;
float p=650;
float o=650;
float k=50;
float e=60;
void setup()
{
size(700,700);
}

void draw()
{
  fill(255);
ellipse(x, y, w, h);
String s = "Pink box";
fill(50);
text(s, 170, 170, 100, 25); 
 if(mousePressed){
  if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
   fill(#ff69b4); 
   rect(0,250,50,50);
  }
 }
rect(0,350,250,250);
fill(255);
rect(a,b,c,d);

 if(mousePressed){
  if(mouseX>a && mouseX <a+c && mouseY>b && mouseY <b+d){
      String g= "CARL, That kills people";
      fill(255);
      rect(345,350,90,55);
      fill(50);
      text(g,  350,360, 70, 80);
  }
 }
  String g= "Reference button";
fill(50);
text(g,  360,70, 70, 80); 
fill(255,0,0);
ellipse(p,o,k,e);
if(mousePressed){
  if(mouseX>p && mouseX <p+k && mouseY>o && mouseY <o+e){
 exit();
  }
 }
 String u = "exit";
fill(50);
text(u, 630, 600, 250, 50); 
}
