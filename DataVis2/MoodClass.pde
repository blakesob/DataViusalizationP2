class Mood{
  float w, h, x, y;
  int id, genreID;
  String name;
  int[][] moodColours = new int[3][3];
  
 /* moodColours[0][0] = 71;
  moodColours[0][1] = 81;
  moodColours[0][2] = 250;

  moodColours[1][0] = 240;
  moodColours[1][1] = 109;
  moodColours[1][2] = 225;

  moodColours[2][0] = 242;
  moodColours[2][1] = 56;
  moodColours[2][2] = 62;*/
  
  Mood(float h, int genreID) {
    this.h = h;
    this.genreID = genreID;
  }

  public void drawMood(){
  rect(x, y, w, h);
  }
}