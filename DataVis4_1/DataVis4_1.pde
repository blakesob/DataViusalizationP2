float maxL = 0;
float minL = 0;
float setL = 200;

int[][] input = new int[3][20];


int tICount = 0;

String[] gNames = 
  {
  "Alternative", 
  "Blues", 
  "Classical", 
  "Comedy", 
  "Commercial ", 
  "Country", 
  "Dance", 
  "Electronic", 
  "Hip-Hop/Rap", 
  "Holiday", 
  "Indie Pop", 
  "Instrumental", 
  "Latin", 
  "Jazz", 
  "Opera", 
  "Pop", 
  "R&B/Soul", 
  "Reggae", 
  "Rock", 
  "Techno"
};
int myColor = 0x58F74D;
//int[] gColours = new int[21];
int[] gColours = {

  #58F74D, 
  #74FFE7, 
  #40008B, 
  #C6F024, 
  #FF05F7, 
  #81A1B4, 
  #597E57, 
  #317BD3, 
  #FF9F0D, 
  #7C03FF, 
  #54A6DB, 
  #FF5252, 
  #A192B4, 
  #3D9B89, 
  #D17C7C, 
  #FF6ABA, 
  #E7BBFA, 
  #FF0D76, 
  #60E51E, 
  #FCA34F
};

float[] totalInput = new float[input[0].length];
float[] totalInputS = new float[input[0].length];

void setup() {
  //fullScreen();
  size(540, 855);
  background(255);

  for (int i = 0; i < input.length; i++) {
    for (int j = 0; j < input[i].length; j++) {
      input[i][j] = (int)random(2, 100);
    }
  }
}


void draw() {
  background(255);


  //Moves everything to the middle

  translate(width/2, height/2-60);

  //Counting & calculating loops

  // set the calculater to start every 30 frames
  tICount = 1;
  if (tICount >= 0) {
    for (int j = 0; j < input[0].length; j++) {//for each genre
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
    }
  }
  //Sorts totalInputs 
  totalInputS = sort(totalInput);

  //Set maxL
  for (int j = 0; j < input[0].length; j++) {//for each genre
    if (totalInputS[input[0].length-1] == totalInput[j]) {
      maxL = totalInput[j];
    }
  }


  //Drawing and scaling loops
  //Makes the drawing stop when the calculator is running
  if (tICount > 0) {
    for (int j = 0; j < input[0].length; j++) {//for each genre
      //println(input[0].length);
      rotate(2*PI/input[0].length);
      for (int i = 0; i < input.length; i++) {// for each mood
        stroke(10, 10, 10, 100);
        strokeWeight(1);
        if (i == 0) {
          fill(255, 0, 0);
          rect(-5, 50, 10, ((input[i][j]/maxL)*setL)+2);
        } else {
          if (i == 1) {
            totalInput[j] = ((input[0][j]/maxL)*setL+2);
            fill(#FFF700);
            rect(-5, 50 + totalInput[j]+2, 10, ((input[i][j]/maxL)*setL)+2);
          } else if (i == 2) {
            totalInput[j] = ((input[0][j]/maxL)*setL) + ((input[1][j]/maxL)*setL)+6;
            fill(0, 255, 0);
            rect(-5, 50 + totalInput[j]+2, 10, ((input[i][j]/maxL)*setL));
          }
        }
      }
      //Draws the arc at the end of each genre "pillar"
      noFill();
      stroke(gColours[j]);



      strokeWeight(7);
      arc(0, 0, (50 + ((input[0][j]/maxL)*setL) + ((input[1][j]/maxL)*setL) + ((input[2][j]/maxL)*setL)+4 +2)*2+7, (50 + ((input[0][j]/maxL)*setL) + ((input[1][j]/maxL)*setL) + ((input[2][j]/maxL)*setL)+4 +2)*2+7, (radians(90)-PI/input[0].length)+radians(2.5), (radians(90)+PI/input[0].length)-radians(2.5));

      //text(gNames[j], 210, 210);


      //counts total length/totalInput
      totalInput[j] = input[0][j] + input[1][j] + input[2][j]+4;
    }
  }
  //Code for the Legend
  translate(-width/2+30, 300);
  //rotate(radians(45));
  int legCount = 0;
  int lineOffSet = 0;
  int squareOffSet = 125;
  int squareWH = 20;
  int lineStart = 30;
  int textAlign = 15;
  for (int i = 0; i < input[0].length; i++) {

    if (i < 4) {
      stroke(gColours[i]);
      noFill();
      rect(0+(legCount*squareOffSet), 0 + lineOffSet, squareWH, squareWH);
      fill(0);
      text(gNames[i], lineStart+(legCount*squareOffSet), textAlign + lineOffSet);
      legCount++;
      if (legCount == 4) {
        legCount = 0;
        lineOffSet += 30;
      }
    } else if (i > 3 && i < 8) {
      stroke(gColours[i]);
      noFill();
      rect(0+(legCount*squareOffSet), lineOffSet, squareWH, squareWH);
      fill(0);
      text(gNames[i], lineStart+(legCount*squareOffSet), textAlign+lineOffSet);
      legCount++;
      if (legCount == 4) {
        legCount = 0;
        lineOffSet += 30;
      }
    } else if (i > 7 && i < 12) {
      stroke(gColours[i]);
      noFill();
      rect(0+(legCount*squareOffSet), lineOffSet, squareWH, squareWH);
      fill(0);
      text(gNames[i], lineStart+(legCount*squareOffSet), textAlign+lineOffSet);
      legCount++;
      if (legCount == 4) {
        legCount = 0;
        lineOffSet += 30;
      }
    } else if (i > 11 && i < 16) {
      stroke(gColours[i]);
      noFill();
      rect(0+(legCount*squareOffSet), lineOffSet, squareWH, squareWH);
      fill(0);
      text(gNames[i], lineStart+(legCount*squareOffSet), textAlign+lineOffSet);
      legCount++;
      if (legCount == 4) {
        legCount = 0;
        lineOffSet += 30;
      }
    } else if (i > 15 && i < 20) {
      stroke(gColours[i]);
      noFill();
      rect(0+(legCount*squareOffSet), lineOffSet, squareWH, squareWH);
      fill(0);
      text(gNames[i], lineStart+(legCount*squareOffSet), textAlign+lineOffSet);
      legCount++;
      if (legCount == 4) {
        legCount = 0;
        lineOffSet += 30;
      }
    }
  }
}