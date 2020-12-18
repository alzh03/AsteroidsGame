Spaceship apollo = new Spaceship();
Star[] cluster = new Star[100];
public void setup(){
  size(600, 600);
  for (int i = 0; i < cluster.length; i++){
    cluster[i] = new Star();
  }
}
public void draw(){
  background(0);
  apollo.show();
  apollo.move();
  for(int i = 0; i < cluster.length; i++){
    cluster[i].show();
  }
}
public void keyPressed(){
  if(key == 'w'){
    apollo.accelerate(0.2);
  } else if (key == 'a'){
    apollo.turn(-6);
  } else if (key == 'd'){
    apollo.turn(6);
  } else if (key == ' '){
    apollo.hyperspace();
  }
}
