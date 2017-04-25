int genreCount = 3;

int genreOver = 0;

void setup(){
  fullScreen();
  background(255);
    
  
}

void draw(){
  
  
  translate(width/2, height/2);
    
    if(genreOver == 0){
      
    for(int i = 0; i<genreCount; i++){
      int totalInput = 200;
      int[] mood = new int[(int)random(1, 6)];
      
      for (int j = 0; j < mood.length; j++){

        if (j > mood.length-1) {
          for(int l = 0; l < j; l++){
            println(totalInput);
            totalInput -= mood[l];
          }
          mood[j] = (int)random(0, (200-totalInput));
        }else if (j == mood.length-1){
          
            mood[j] = (int)random(0, 200);
          } 
          
        else if (j == mood.length-mood.length){mood[j] = (int)random(0, 200);
      } 
      }  
    
      
      noStroke();
      fill(#FF0000);
      rotate(2*PI/genreCount);
      rect(-5, 50, 10, 20);
      
   
           
      }
      genreOver = 1;
    }
      
      
}
   
    
  