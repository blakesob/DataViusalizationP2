int genreCount =22;
int totalInput;
float totalInput2;
int genreOver = 0;
int preInput;
Mood[] mMoods = new Mood[3];
float[] mood = new float[3];
Genre mGenre = new Genre("Rock", 3, 1);

void setup() {
  fullScreen();
  background(255);
  
  for (int i = 0; i < mood.length; i++) {
    mood[i] = 0;
  }
  
}

void draw() {
  mGenre.drawGenre();
}