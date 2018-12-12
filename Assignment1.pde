void setup(){
size(400,400);
background(210);
//sidewalk
 fill(0);
 rect(0, 0, 400, 250);
 //buildings
fill(84);
rect(280, 20, 100, 230);
rect(40, 20, 100, 230);
stroke(5);
line(330,0,330,250);
rect(280, 20, 100, 20);
rect(40, 20, 100, 20);
stroke(5);
line(90,0,90,250);

//terribly made moon
fill(255);
ellipse(210, 90, 70, 70);
fill(200);
ellipse(210, 70, 20, 20);
fill(175);
ellipse(200, 110, 15, 15);
fill(150);
ellipse(225, 100, 15, 15);
fill(140);
ellipse(200, 90, 15, 15);
//road
rectMode(CORNERS);
fill(0);
rect(0,300,400,375);


//stars in the california sky

strokeWeight(10);
fill(255);
point(180, 60);
point(250, 20);
point(270, 40);
point(330, 30);


}

void Draw(){


}
