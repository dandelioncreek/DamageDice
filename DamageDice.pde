void setup()
{
  size(450, 600);
  noLoop();
}
int counter;
void draw()
{
  counter = 0;
  background(191, 220, 255);
  for (int x = 75; x < 525; x+=150) {
    for (int y = 75; y < 525; y+=150) {
      Die dice = new Die(x, y);//your code here
      dice.roll();
      dice.show();
      counter += dice.num;
    }
  }
  textSize(20);
  textAlign(CENTER, CENTER);
  text("Sum = " + counter, 0, 450, width, 50);
  
  if (counter <= 15){
    textSize(10);
    textAlign(CENTER, CENTER);
    text("Your arrows graze the skin of your enemies, but they only flinch and brush them off with ease. Some stagger slightly, but soon they start advancing once more with vicious snarls. Your cry of triumph dies on your lips; it is their move, and you can only brace for the next assualt because there is nothing left to say.", 10, 500, width-20, 70);
  }
  if (counter > 15 && counter <= 21){
    textSize(10);
    textAlign(CENTER, CENTER);
    text("Your sword slashes through your enemies' arms, leaving a deep gash. Their grip on their weapons loosen, but they give it little notice. Your attack has drawn their ire; they continue to lumber toward you with a murderous glower, with the blood you drew running down their arms.", 10, 500, width-20, 70);
  }
  if (counter > 21 && counter <= 26){
    textSize(10);
    textAlign(CENTER, CENTER);
    text("Your daggers fly through the air and each find their mark deep within an enemy's body, as you see them convulse and grunt with pain. Your enemies are wounded, but you grit your teeth and grip your weapon with a renewed fervor because you know this is still an uphill battle to be won.", 10, 500, width-20, 70);
  }
  if (counter > 26 && counter <= 31){
    textSize(10);
    textAlign(CENTER, CENTER);
    text("Your spell shatters through the momentary calm and strikes every enemy within sight - you see a blinding light and hear the fracture of skulls. They howl in pain and crumple to their knees. You smile with increasing confidence as you focus on the divine power coursing through your veins, tearing their minds apart.", 10, 500, width-20, 70);
  }
  if (counter > 31){
    textSize(10);
    textAlign(CENTER, CENTER);
    text("Your cannonball blasts through your enemies' ranks, blowing them up to smithereens. Here and there scattered on the battlefield is a still-trembling hand, but that doesn't matter - the city is saved and the cheers erupting from the crowd drown out your elated scream of victory.", 10, 500, width-20, 70);
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int size, xpos, ypos, num;//member variable declarations here

  Die(int x, int y) //constructor
  {
    size = 150;
    xpos = x;
    ypos = y;
    //variable initializations here
  }
  void roll()
  {
    num = (int)(Math.random()*4+1);
  }
  void show()
  {
    fill((int)(Math.random()*128)+128, (int)(Math.random()*128)+128, (int)(Math.random()*128)+128);//your code here
    triangle(xpos, ypos-size/2, xpos - size/2, ypos+size/2, xpos + size/2, ypos+size/2);
    //rect(xpos - size/2, ypos - size/2, size, size);
    textSize(30);
    textAlign(CENTER, CENTER);
    fill (0,0,0);
    text("" + num, xpos - size/2, ypos - size/2, size, size);
  }
}
