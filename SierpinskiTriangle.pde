boolean pressed = false;
public void setup(){
 size(800,800); 

}

public void draw(){
 background(0);
 sierpinski(12,800,800);
}

public void sierpinski(int x, int y, int len){
  if (len <= 20){
    triangle(x,y,x-len/2,y-len,x-len,y);
  }
  else{
    fill((float)(Math.random()*256),(float)(Math.random()*256),
    (float)(Math.random()*256));
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}

public void mousePressed(){
  if (pressed == false){
    noLoop();
    pressed = true;
  }
  else{
     loop();
     pressed = false;
  }
     
}
