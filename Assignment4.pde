void setup(){
size(500,500);
}
void draw(){
float x=0;
float y=50;
float z=50;
beginShape();
  fill(0, 0, 255);
  noStroke();
  vertex(0, 250);
  vertex(500, 250);
  vertex(500, 500);
  vertex(0, 500);
  endShape(CLOSE);

if(keyPressed==false){
String s = "Jaws Theme";
fill(50);
text(s, 350, 100, 400, 150);  // Text wraps within text box
}
 

if (mousePressed==true){
  exit();
}
float d=2;
while (d<width){
  d=d+50;
   fill(0, 0, 255);
 triangle(x,250,y,200,z,250);
 if(y>500){x=0;y=50;z=50;}
 else
 {
x=x+50;
y=y+50;
z=z+50;
 }
 }
 if(keyPressed==true){
  //shark
  fill(90,90,90);
 triangle(100,250,300,50,400,250);
  fill(255,0,0);
 triangle(150,230,300,100,350,220);
fill(0);
 ellipse(205,170,5,5);
 ellipse (340,170,5,5);
}
 println(keyPressed);
}
