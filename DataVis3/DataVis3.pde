float maxL = 0;
float setL = 200;

int[][] input = new int[3][10];
float a = 0;
float b = 0;
boolean genreDrawn = false;
int tICount = 0;

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

float[] totalInput = new float[input[0].length];
float[] totalInputS = new float[input[0].length];

void setup() {
  fullScreen();
  background(255);

  for (int i = 0; i < input.length; i++) {
    for (int j = 0; j < input[i].length; j++) {
      input[i][j] = (int)random(2, 100);
    }
  }
}


void draw() {






  translate(width/2, height/2);

  rect(0, 0, setL, 20);
  totalInputS = sort(totalInput);

  for (int j = 0; j < input[0].length; j++) {//for each genre
    if (totalInputS[9] == totalInput[j] && tICount > 0) {
      //println(totalInputS);
      //println(j + " is the largest value " + totalInput[j]);
      maxL = totalInput[j];

      rotate(2*PI/input[0].length);
      for (int i = 0; i < input.length; i++) {// for each mood
        noStroke();
        if (i == 0) {
          fill(255, 0, 0);
          rect(-5, 50, 10, ((input[i][j]+2)/maxL)*setL);

          println(((input[0][0]+2)/maxL)*setL);
        } else {

          if (i == 1) {
            totalInput[j] = input[0][j] +2;
            fill(0, 0, 255);
            rect(-5, 50 + totalInput[j]+2, 10, ((input[i][j])/maxL)*setL);
          } else if (i == 2) {
            totalInput[j] = input[0][j] + input[1][j]+4;
            fill(0, 255, 0);
            rect(-5, 50 + totalInput[j]+2, 10, ((input[i][j])/maxL)*setL);

            noFill();
          }
        }
      }

      stroke(255, 0, 0);
      strokeWeight(5);
      arc(0, 0, (50 + totalInput[j]+2)*2+5, (50 + totalInput[j]+2)*2+5, (radians(90)-PI/input[0].length)+radians(2.5), (radians(90)+PI/input[0].length)-radians(2.5));

      tICount++;
    } else {



      for (int i = 0; i < input.length; i++) {// for each mood
        if (i == 0) {
        } else {
          if (i == 1) {
            totalInput[j] = input[0][j] +2;
          } else if (i == 2) {
            totalInput[j] = input[0][j] + input[1][j]+4;
          }

          //counts total length/totalInput
          totalInput[j] = input[0][j] + input[1][j] + input[2][j]+4;
        }
      }
      tICount++;
    }
  }
}