class Button {
  color c;
  String label; // button label
  float x;      // top left corner x position
  float y;      // top left corner y position
  float w;      // width of button
  float h;      // height of button
  //  on_button = new Button(color(40, 155, 150), "St. 0", 330, 550, 50, 50);  

Button(color tempC, String labelB, float xpos, float ypos, float widthB, float heightB) {
    c = tempC;
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  void rysuj() {
    f = createFont("Georgia",20,true);
    textFont(f);
    fill(c);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(label, x + (w / 70), y + (h / 100));
     
  }
  
  boolean MouseIsOver() {
    if (mouseX > (x- 25)&& mouseX < ((x-25)+ h) && mouseY > (y- 25 )&& mouseY < ((y-25) + w)) {
      return true;
    }
    return false;
  }
}
