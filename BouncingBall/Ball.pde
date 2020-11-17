class Ball {
  
  int x = 200;
  int y = 200;
  int xSpeed = 4;
  int ySpeed = -2;
  int w = 25;
  
  void update() {
    this.x = this.x + this.xSpeed;
    this.y = this.y + this.ySpeed;
    
    if (this.x > 400 - this.w/2) {
      this.goLeft();
    }
    if (this.x < 0 + this.w/2) {
      this.goRight();
    }
    if (this.y > 400 - this.w/2) {
      this.goUp();
    }
    if (this.y < 0 + this.w/2) {
      this.goDown();
    }
  }
  
  void goRight(){
    this.xSpeed = 4;
  }
  void goLeft(){
    this.xSpeed = -4;
  }
  void goDown(){
    this.ySpeed = 4;
  }
  void goUp(){
    this.ySpeed = -4;
  }
  
  void show() {
    circle(this.x,this.y,this.w);
  }
}
