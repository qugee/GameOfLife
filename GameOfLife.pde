import de.bezier.guido.*;
public final static int NUM_ROWS = 20;
public final static int NUM_COLS = 20; //Declare and initialize constants NUM_ROWS and NUM_COLS = 20
private Life[][] buttons; //2d array of Life buttons each representing one cell
private boolean[][] buffer; //2d array of booleans to store state of buttons array
private boolean running = true; //used to start and stop program

public void setup () {
  size(400, 400);
  frameRate(6);
  // make the manager
  Interactive.make( this );

  buttons = new Life[NUM_ROWS][NUM_COLS]; //your code to initialize buttons goes here
  
  for(int i = 0;i<NUM_ROWS;i++){   //your code to initialize buffer goes here
  for(int j = 0;j<NUM_COLS;j++){
     buttons[i][j] = new Life(i,j);
  }
  }
  buffer = new boolean[NUM_ROWS][NUM_COLS];
}

public void draw () {
  background( 0 );
  if (running == false) //pause the program
    return;
  copyFromButtonsToBuffer();

  for(int i = 0;i<NUM_ROWS;i++){
  for(int j = 0;j<NUM_COLS;j++){   //use nested loops to draw the buttons here
      buttons[i][j] = new Life(i,j);
      }
      }
  copyFromBufferToButtons();
}

public void keyPressed() {
  //your code here
}

public void copyFromBufferToButtons() {
  //your code here
}

public void copyFromButtonsToBuffer() {
  //your code here
}

public boolean isValid(int r, int c) {
  //your code here
  return false;
}

public int countNeighbors(int row, int col) {
  int neighbors = 0;
  //your code here
  return neighbors;
}

public class Life {
  private int myRow, myCol;
  private float x, y, width, height;
  private boolean alive;

  public Life (int row, int col) {
    width = 400/NUM_COLS;
    height = 400/NUM_ROWS;
    myRow = row;
    myCol = col; 
    x = myCol*width;
    y = myRow*height;
    alive = Math.random() < .5; // 50/50 chance cell will be alive
    Interactive.add( this ); // register it with the manager
  }

  // called by manager
  public void mousePressed () {
    alive = !alive; //turn cell on and off with mouse press
  }
  public void draw () {    
    if (alive != true)
      fill(0);
    else 
      fill( 150 );
    rect(x, y, width, height);
  }
  public boolean getLife() {
    //replace the code one line below with your code
    return false;
  }
  public void setLife(boolean living) {
    //your code here
  }
}
