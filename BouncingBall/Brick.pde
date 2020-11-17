/*
BRICK OBJECT
The brick is just a simple rectangle, but it is designed to disappear when hit.
*/
class Brick {
  int x;
  int y;
  int h = 20;
  int w = 40;
  boolean showUp = true;
  
  // Only thing that needs to change is the x and y value
  
  Brick(int x, int y) {
    this.x = x;
    this.y = y;
  }
  /*
  Sets a boolean value that dictates whether the brick was hit or not.
  If hit, the brick is filled with nothing so it doesn't show up. 
  We can't really easily delete the object as it isn't in an ArrayList,
  and it would just overall be much more complicated to delete it. So,
  We simply make it disappear and use a boolean value to tell our main 
  program that it is "deleted".
  */ 
  
  void hit() {
    showUp = false;
    strokeWeight(0);
    fill(0);
    rect(x,y,w,h);
  }
  void show() {
    if(showUp){
      rectMode(CENTER);
      strokeWeight(1);
      fill(0);
      rect(x,y,w,h);
    }
  }
}
