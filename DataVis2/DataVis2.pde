int genreCount = 22;
int totalInput;
float totalInput2;
int genreOver = 0;
int preInput;
Mood[] mMoods = new Mood[3];
float[] mood = new float[3];
Genre[] mGenres = new Genre[genreCount];

int[][] input = new int[3][5];

Input[] mInput = new Input[6];
{

  mInput[0] = new Input("Rock", "Happy");
  mInput[1] = new Input("Rock", "Happy");
  mInput[2] = new Input("Reggae", "Neutral");
  mInput[3] = new Input("Rock", "Happy");
  mInput[4] = new Input("Pop", "Happy");
  mInput[5] = new Input("Rock", "Sad");
}

String[] gNames = new  String[22];
{
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
  gNames[21] = "Singer/Songwriter";
}



void setup() {
  fullScreen();
  background(255);

  for (int i = 0; i < input.length; i++) {
    for (int j = 0; j < input[i].length; j++) {
      input[i][j] = (int)random(2, 20);
      println("mood " +i+ " genre " + j + " = " + input[i][j] );
    }
  }
}

void draw() {


  translate(width/2, height/2);
  for (int i = 0; i < input.length; i++) {
    for (int j = 0; j < input[0].length; j++) {//for each genre

      rotate(2*PI/genreCount);

      for (int l = 0; l < mood.length; l++) {
        //vis code below this
        noStroke();
        if (l == 0) {
          fill();
          rect(-5, 50, 10, mood[l]+2);
        } else {
          totalInput = 0;

          for (int k = 0; k < l; k++) {
            totalInput += mood[k] + 2;
          }
          fill();
          rect(-5, 50 + totalInput+2, 10, mood[l]);
        }
      }
    }
  }