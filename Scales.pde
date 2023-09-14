void setup() {
  size(1200, 600);
}

void draw() {
  //boolean shift = true;
  //for (int y = 10; y<51; y+= 10){
    //for (int x = 10; x <51; x += 10){
      //if(shift == true){
        //pushMatrix();
        //translate(width*0.5, height*0.5);
        //rotate(frameCount / 50.0);
        //triangle(20,20,40,40,x,y);
        //popMatrix();}
      //else{
        //pushMatrix();
        //translate(width*0.5, height*0.5);
        //rotate(frameCount / 50.0);
        //triangle(20,20,40,40,x-10,y);
        //popMatrix();}
    //}
    //if (shift == true)
      //shift = false;
    //else
      //shift = true;
  //}
  //scale(10, 10);
  //for (int y = 150; y<601; y+= 300)
    //for (int x = 150; x <1200; x += 300)
    for (int y = 10; y<590; y+= 55)
      for (int x = 10; x <1190; x += 55)
        scale(x,y);
       
  int diameter = 0;
  float a = 155;
  float b = 200;
  noFill();
  while(diameter < 100){
  stroke(a,b,0);
  ellipse(600,300,diameter,diameter);
  diameter++;
  a-=155/100.0;
  b-=200/50.0;

  }  
 
}

//void scale(int x, int y){
void scale(int x, int y){
  fill(49,250,183);
 
  //for (int y = 10; y<51; y+= 10){
    //for (int x = 10; x <51; x += 10){
  pushMatrix();
  translate(width*0.5, height*0.5);
  rotate(frameCount / 50.0);
  //triangle(x+ 20,y+20,x+40,y+40,x,y);
  bezier(x+20,y+20,10,110,280,150,x+280,y+280);
  popMatrix();
    //}
 // }
}
