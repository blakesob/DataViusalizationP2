class Genre {
  String name;
  int moodIn, genreID;
  Mood[] mMoods = new Mood[moodIn];

  Genre(String name, int moodIn, int genreID) {
    this.name = name;
    this.moodIn = moodIn;
    this.genreID = genreID;
  }

  public void defineMoods(float input, int genreID) {
    mMoods[moodIn] = new Mood(input, genreID);
  }

  public void drawGenre() {
    for (int l = 0; l < moodIn; l++) {
      noStroke();
      if (l == 0) {
        fill(0);
        rect(-5, 50, 10, mood[l]+2);
        mMoods[l].drawMood();
      } else {
        totalInput = 0;
        for (int k = 0; k < l; k++) {
          totalInput += mood[k] + 2;
        }
        fill(0);
        rect(-5, 50 + totalInput+2, 10, mood[l]);
      }
    }
  }
}