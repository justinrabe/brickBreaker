/* 
PADDLE OBJECT 

The Paddle Object is a simple paddle that follows the mouse pointer's X position.
The constructor only needs the x value as that is the only thing that needs to change.

update() changes the X value based on mouseX, and is called every frame in the sketch's
draw() function.

show() makes our Paddle appear.

I use update() and show() for almost every object in Processing to simplify things: 
Any time a variable needs to change, you change it in update(). Show only handles 
making our object show up.

*/

class Paddle {
  int x;
  int y = 350;
  int w = 100;
  int h = 10;
  
  /*
  Only thing that needs to change is the x value. y, width, and height do not need to change.
  
  "this" keyword means the Paddle's x value. the "int x" passed into the object (and update())
  are considered local variables to the function. You need to use the "this" keyword to specify that
  we are changing the Paddle's x value.
  
  */
  Paddle(int x) {
    this.x = x;
  }
  void update(int x) {
    this.x = x;
  }
  void show() {
    rectMode(CENTER);
    rect(x, y, w, h);
  }
}
