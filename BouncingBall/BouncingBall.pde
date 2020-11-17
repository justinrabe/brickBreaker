/*
Complete brickBreaker game for Ethan

This game is well commented to allow substitute senseis to build this game and help Ethan.
In Processing, the main functions in the sketch(or the main file in the program) are 
setup() and update(). These function like "Initialize When Scene Starts" and "Update Every Frame"
in the Code Ninjas Platform.

This game is brick breaker. A ball goes in a direction and bounces off walls. It is able to bounce
off our paddle, which moves by simply following the mouse pointer. Ethan did his paddle a little differently,
he made his paddle move based on the left and right arrow. When the balls hit a brick, the brick disappears
and the ball bounces off the brick. 

*/

/*Object Declarations*/
Brick bricks [];
Ball ball;
Paddle paddle;

int rows = 6;
int columns = 6;
int size = rows * columns;

/*Setup is like "Initialize When Scene Starts" in the CN platform*/

void setup() {
  background(100); // Sets background color, 
  size(400, 400);  //Sets Canvas size
  
  /* Initialize objects */
  ball = new Ball();       
  paddle = new Paddle(mouseX); // Initialized so that the paddle starts where the mouse's X position is
  
  /* For Loop to initialize brick objects*/
  for (int i = 0; i < rows; i ++) {
    for (int j = 0; j < columns; j ++) {
      bricks[i * rows + j] = new Brick((i+1) *width/(rows + 1), (j+1) * 30);
    }
  }
}
void draw() {
  background(220);
  /* Collision code for the brick hitting the ball */
  for (int i = 0; i < size; i ++) {
    bricks[i].show();
    if (ball.y - ball.w/2 < bricks[i].y + bricks[i].h/2 && (ball.x >= bricks[i].x - bricks[i].w/2 && ball.x <= bricks[i].x + bricks[i].w/2) && (bricks[i].showUp)){
      bricks[i].hit();
      ball.goDown();
    }
  }

  paddle.update(mouseX);
  paddle.show();
  ball.show();
  ball.update();
  
  /* 
  Collision code for ball hitting the paddle.
  
  This might be a little different. In this code, if the ball hits the paddle on the left side, it goes left.
  On the right side, it goes right. Ethan doesn't have goRight(), goLeft(), or goUp() functions. He simply has 
  changeXDirection() and changeYDirection(), which is overall a better solution.
  
  */
  
  if (ball.y + ball.w/2 >= paddle.y - paddle.h/2  && (ball.x >= paddle.x - paddle.w/2  && ball.x <= paddle.x)) {
    ball.goUp();
    ball.goLeft();
  }
  if (ball.y  + ball.w/2 >= paddle.y - paddle.h/2 && (ball.x >= paddle.x && ball.x <= paddle.x + paddle.w/2)) {
    ball.goUp();
    ball.goRight();
  }
  /*
  Here, we need to code in the ball bouncing off the bricks
  */
}   
