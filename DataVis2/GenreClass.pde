class Genre {
  String name;
  int moodIn, genreID;
  Mood[] mMoods = new Mood[moodIn];
  String[] gNames = new  String[22];{
  gNames[0] = "Alternative";
  gNames[1] = "Blues";
  gNames[2] = "Children’s Music";
  gNames[3] = "Classical";
  gNames[4] = "Comedy";
  gNames[5] = "Commercial ";
  gNames[6] = "Country";
  gNames[7] = "Dance";
  gNames[8] = "Electronic";
  gNames[9] = "Hip-Hop/Rap";
  gNames[10] = "Holiday";
  gNames[12] = "Indie Pop";
  gNames[13] = "Instrumental";
  gNames[14] = "Latin";
  gNames[15] = "Jazz";
  gNames[16] = "Opera";
  gNames[17] = "Pop";
  gNames[18] = "R&B/Soul";
  gNames[19] = "Reggae";
  gNames[20] = "Rock";
  gNames[21] = "Singer/Songwriter";}
 


  Genre(int moodIn, int genreID) {
    //this.name = name;
    this.moodIn = moodIn;
    this.genreID = genreID;
  }

  public void defineMoods(float input, int index, int genreID) {
    mMoods[index] = new Mood(input, genreID);
  }

  public void drawGenre() {
  }
}