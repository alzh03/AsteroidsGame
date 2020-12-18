Spaceship apollo = new Spaceship();
Star[] cluster = new Star[100];
ArrayList <Asteroid> belt = new ArrayList <Asteroid>();
public void setup(){
  size(600, 600);
  for (int i = 0; i < cluster.length; i++){
    cluster[i] = new Star();
  }
  for (int i = 0; i < 20; i++){
    belt.add(new Asteroid());
  }
}
public void draw(){
  background(0);
  apollo.show();
  apollo.move();
  for(int i = 0; i < cluster.length; i++){
    cluster[i].show();
  }
  for (int i = 0; i < belt.size(); i++){
    belt.get(i).show();
    belt.get(i).move();
    float movement = dist((float)apollo.getX(), (float)apollo.getY(), (float)belt.get(i).getX(), (float)belt.get(i).getY());
    if (movement < 20){
      belt.remove(i);
    }
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
