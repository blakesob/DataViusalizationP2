int genreCount =22;
int totalInput;
float totalInput2;
int genreOver = 0;
int preInput;
Mood[] mMoods = new Mood[3];
float[] mood = new float[3];
int[][] moodColours = new int[3][3];
void setup() {
  fullScreen();
  background(255);
  for (int i = 0; i < mood.length; i++) {
    mood[i] = 0;
  }

  moodColours[0][0] = 71;
  moodColours[0][1] = 81;
  moodColours[0][2] = 250;

  moodColours[1][0] = 240;
  moodColours[1][1] = 109;
  moodColours[1][2] = 225;

  moodColours[2][0] = 242;
  moodColours[2][1] = 56;
  moodColours[2][2] = 62;
}

void draw() {


  translate(width/2, height/2);

  if (genreOver == 0) {

    for (int i = 0; i<genreCount; i++) {


      totalInput2 = random(100, 600);



      for (int j = 0; j < mood.length; j++) {
        if (j == 0) {
          preInput = 0;
          mood[j] = random(0, totalInput2-(0.5 * totalInput2));
          println("i " + i + " j " + j);
          println("mood["+j+"]" + "  " + mood[j]);
        } else if (j > 0 && j < (mood.length-1)) {
          preInput = 0;
          for (int l = 0; l < mood.length-1; l++) {
            preInput += mood[l];
          }

          mood[j] = random(0, (totalInput-preInput));
          float tWmPI = totalInput2-preInput;
          println("i " + i + " j " + j);
          println(totalInput2 +" - "+ preInput + " = " + tWmPI + " mood["+j+"]" + "  " + mood[j]);
        } else if (j == mood.length - 1) {
          preInput = 0;
          for (int l = 0; l < mood.length-1; l++) {
            preInput += mood[l];
          }
          mood[j] = totalInput2 - preInput;
          float tWmPI = totalInput2-preInput;
          println("i " + i + " j " + j);
          println(totalInput2 +" - "+ preInput + " = " + tWmPI + " mood["+j+"]" + "  " + mood[j]);
        }
      }
      rotate(2*PI/genreCount);

      for (int l = 0; l < mood.length; l++) {
        //vis code below this
        noStroke();




        if (l == 0) {
          fill(moodColours[l][l], moodColours[l][1], moodColours[l][2]);
          rect(-5, 50, 10, mood[l]+2);
        } else {
          totalInput = 0;

          for (int k = 0; k < l; k++) {
            totalInput += mood[k] + 2;
          }
          fill(moodColours[l][0], moodColours[l][1], moodColours[l][2]);
          rect(-5, 50 + totalInput+2, 10, mood[l]);
        }
      }  


      //vis code above this
      for (int l = 0; l < mood.length-1; l++) {
        mood[l] = 0;
      }
    }
    genreOver = 1;
  }
}