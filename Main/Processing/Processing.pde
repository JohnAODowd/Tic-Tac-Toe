import processing.serial.*;
Serial myPort;
String val;
final static int BAUD = 57600;
final static int COM_PORT = 0;
final static int LED_SIZE = 30;
final static int LED_OFFSET = 15;
final static int LED_START = 55;
final static int COLUMN_2 = (LED_START + LED_SIZE + LED_OFFSET);
final static int COLUMN_3 = (LED_START + (LED_SIZE * 2) + (LED_OFFSET * 2));
final static int INCOMING_DATA_SIZE = 3; 
final static int BLCK_COL[] = {0,0,0};
final static int RED_COL[] = {227,0,116}; // color for red
final static int YLW_COL[] = {238,186,48}; // color for yellow
final static int YLW_LD = 1;
final static int RED_LD = -1;
final static int EMPTY = 0;
int[][][] COORDS = {{{LED_START,LED_START,EMPTY},
                     {LED_START,COLUMN_2,EMPTY},
                     {LED_START,COLUMN_3,EMPTY}},
                    {{COLUMN_2,LED_START,EMPTY},
                     {COLUMN_2,COLUMN_2,EMPTY},
                     {COLUMN_2,COLUMN_3,EMPTY}},
                    {{COLUMN_3,LED_START,EMPTY},
                     {COLUMN_3,COLUMN_2,EMPTY},
                     {COLUMN_3,COLUMN_3,EMPTY}
                    }};

void setup(){
  size(200,200);
  drawLEDS();
  String portName = Serial.list()[COM_PORT];
  myPort = new Serial(this,portName,BAUD);
}

void draw(){
  while(myPort.available() > 0){
    try{
      val = myPort.readStringUntil('\n').trim();
      String[] display_values = val.split(",");
      int[] incoming_data = new int[(display_values.length)];
      for(int i = 0;i<display_values.length;i++){
        incoming_data[i] = Integer.parseInt(display_values[i]);
      }
      COORDS[incoming_data[0]][incoming_data[1]][2] = incoming_data[2];
      drawLEDS();   
    } catch(Exception e){
    }
  }
}
void drawLEDS(){
  background(255);
  for(int[][] row: COORDS){
    for(int[] led : row){
      switch(led[2]){
       case RED_LD: 
            stroke(RED_COL[0],RED_COL[1],RED_COL[2]);
            fill(RED_COL[0],RED_COL[1],RED_COL[2]);
            break;
       case YLW_LD:
            stroke(YLW_COL[0],YLW_COL[1],YLW_COL[2]);
            fill(YLW_COL[0],YLW_COL[1],YLW_COL[2]);
            break;
       case EMPTY:
            stroke(BLCK_COL[0],BLCK_COL[1],BLCK_COL[2]);
            fill(BLCK_COL[0],BLCK_COL[1],BLCK_COL[2]);
            break;
      }
      ellipse(led[0],led[1],LED_SIZE,LED_SIZE);
    }
  }
}