package dvx.lang.brainfuck;

import java.io.IOException;

public class Life {

	private byte [] [] [] land;
	private int cur;
	private int nex;
	private static final int WIDTH=80;
	private static final int HEIGHT=40;
	
	public Life() {
		land = new byte[2][WIDTH][HEIGHT];
		cur =0;
		nex = 1;
	}
	
	public void init() {
		for (int x=0; x < WIDTH; x++) {
			for (int y=0; y< HEIGHT; y++){
				land[1][x][y]=0;
				land[0][x][y]=(byte)(java.util.concurrent.ThreadLocalRandom.current().nextInt()%2);
			}
		}
	}
	
	private int getAlive(int cur, int x,int y) {
		int rx,ry, nblive;
		nblive = 0;
		for (int xx = x-1 ; xx <= x+1 ; xx++ ) {
			for (int yy = y-1 ; yy <= y+1 ; yy++) {
				if (!(xx == x && yy==y)) {
					rx = xx>=WIDTH?0:(xx<0?WIDTH-1:xx);
					ry = yy>=HEIGHT?0:(yy<0?HEIGHT-1:yy);
					nblive += land[cur][rx][ry];
				}
			}
		}
		return nblive;
	}
	
	public void next() {
		for (int x=0; x < WIDTH; x++) {
			for (int y=0; y< HEIGHT; y++){
				int nbLive;
				byte curAlive;
				nbLive = getAlive(cur,x,y);
				curAlive = land[cur][x][y];
				if (nbLive==3 ) land[nex][x][y]=1;
				else if (nbLive ==2) land[nex][x][y]= curAlive;
				else if (nbLive <2 || nbLive>3) land[nex][x][y]= 0;
			}
		}
		cur = cur==1?0:1;
		nex = nex==1?0:1;
	}
	
	public void display() {
		for (int y=0; y < HEIGHT; y++) {
			for (int x=0; x< WIDTH; x++){
				if (land[cur][x][y]==1)
					System.out.print("X");
				else
					System.out.print(".");
			}
			System.out.println("");
		}
	}
	
	public static void main(String[] args) throws IOException, InterruptedException {
		Life game = new Life();
		game.init();
		//int key;
		do {
			System.out.println("");
			game.display();
			Thread.sleep(100);
			//key = System.in.read();
			game.next();
		} while (true);
	}

}
