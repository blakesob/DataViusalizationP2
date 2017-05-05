float maxL = 0;
float minL = 0;
float setL = 200;

int[][] input = new int[3][21];
float a = 0;
float b = 0;
boolean genreDrawn = false;
int tICount = 0;
int calCount = 0;
String[] gNames = new  String[21];
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
  gNames[11] = "Indie Pop";
  gNames[12] = "Instrumental";
  gNames[13] = "Latin";
  gNames[14] = "Jazz";
  gNames[15] = "Opera";
  gNames[16] = "Pop";
  gNames[17] = "R&B/Soul";
  gNames[18] = "Reggae";
  gNames[19] = "Rock";
  gNames[20] = "Singer/Songwriter";
}

color[] gColours = new  color[21];{

  gColours[0] = #58F74D;
  gColours[1] = #74FFE7;
  gColours[2] = #40008B;
  
  gColours[3] = #C6F024;
  gColours[4] = #FF05F7;
  gColours[5] = #81A1B4;
  
  gColours[6] = #597E57;
  gColours[7] = #317BD3;
  gColours[8] = #FF9F0D;
  
  gColours[9] = #7C03FF;
  gColours[10] = #54A6DB;
  gColours[11] = #FF5252;
  gColours[12] = #A192B4;
  gColours[13] = #3D9B89;
  gColours[14] = #D17C7C;
  gColours[15] = #FF6ABA;
  gColours[16] = #E7BBFA;
  gColours[17] = #FF0D76;
  gColours[18] = #60E51E;
  gColours[19] = #FCA34F;
  gColours[20] = #B72121;
  
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
  background(255);
  
  
  //Moves everything to the middle
  translate(width/2, height/2);
    
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
        stroke(10,10,10, 100);
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
      
      text(gNames[j], 210, 210);
      
      
      //counts total length/totalInput
      totalInput[j] = input[0][j] + input[1][j] + input[2][j]+4;
    }
  }
}