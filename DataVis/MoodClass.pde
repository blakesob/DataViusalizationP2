class Mood {
  float w, h, x, y;
  int id, genreId;
  String name;

  Mood(float x, float y, float w, float h, int genreId) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.genreId = genreId;
  }

  public void drawMood() {
    rect(x, y, w, h);
  }
}