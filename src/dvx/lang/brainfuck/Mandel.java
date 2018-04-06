/**
 * 
 */
package dvx.lang.brainfuck;





/** from https://stackoverflow.com/questions/16124127/improvement-to-my-mandelbrot-set-code
 
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>

void color(int red, int green, int blue)
{
    fputc((char)red, stdout);
    fputc((char)green, stdout);
    fputc((char)blue, stdout);
}

int main(int argc, char *argv[])
{
    int w = 600, h = 400, x, y; 
    //each iteration, it calculates: newz = oldz*oldz + p, where p is the current pixel, and oldz stars at the origin
    double pr, pi;                   //real and imaginary part of the pixel p
    double newRe, newIm, oldRe, oldIm;   //real and imaginary parts of new and old z
    double zoom = 1, moveX = -0.5, moveY = 0; //you can change these to zoom and change position
    int maxIterations = 1000;//after how much iterations the function should stop

    clock_t begin, end;
    double time_spent;

    printf("P6\n# CREATOR: E.T / mandel program\n");
    printf("%d %d\n255\n",w,h);

    begin = clock();

    //loop through every pixel
    for(y = 0; y < h; y++)
    for(x = 0; x < w; x++) 
    {
        //calculate the initial real and imaginary part of z, based on the pixel location and zoom and position values
    pr = 1.5 * (x - w / 2) / (0.5 * zoom * w) + moveX;
        pi = (y - h / 2) / (0.5 * zoom * h) + moveY;
        newRe = newIm = oldRe = oldIm = 0; //these should start at 0,0
        //"i" will represent the number of iterations
        int i;
        //start the iteration process
        for(i = 0; i < maxIterations; i++)
        {
            //remember value of previous iteration
            oldRe = newRe;
            oldIm = newIm;
            //the actual iteration, the real and imaginary part are calculated
            newRe = oldRe * oldRe - oldIm * oldIm + pr;
            newIm = 2 * oldRe * oldIm + pi;
            //if the point is outside the circle with radius 2: stop
            if((newRe * newRe + newIm * newIm) > 4) break;
        }

		if(i == maxIterations)
        	color(0, 0, 0); // black
    	else
    	{
        	double z = sqrt(newRe * newRe + newIm * newIm);
        	int brightness = 256. * log2(1.75 + i - log2(log2(z))) / log2(double(maxIterations));
        	color(brightness, brightness, 255);
    	}
    }

    end = clock();

    time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
    printf("Elapsed time: %.2lf seconds.\n", time_spent);

    return 0;
}
 */


/**
 * @author ysm
 *
 */
public class Mandel {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		double W            =80;
		double H            =40;
		double zoom         =0.8;
		double moveX        =-0.5;
		double moveY        =0 ;
		double oneOnHalfZoomW    =1.2/(0.5*zoom*W);
		double oneOnHalfZoomH    =1/(0.5*zoom*H);
		double halfW        =(0.5*W);
		double halfH        =(0.5*H);
		double oldRe,newRe, oldIm,newIm,pr,pi;
		int i,x,y;
		int maxIterations=26;
		for (y=0; y< H; y++) {
			for (x=0; x <W; x++) {
//			    pr = 1.5 * (x - W / 2) / (0.5 * zoom * W) + moveX;
//		        pi = (y - H / 2) / (0.5 * zoom * H) + moveY;
			    pr = (x - halfW) * oneOnHalfZoomW + moveX;
		        pi = (y - halfH) * oneOnHalfZoomH + moveY;
		        newRe = newIm = oldRe = oldIm = 0; //these should start at 0,0
		    
		        //start the iteration process
		        for(i = 0; i < maxIterations; i++)
		        {
		            //remember value of previous iteration
		            oldRe = newRe;
		            oldIm = newIm;
		            //the actual iteration, the real and imaginary part are calculated
		            newRe = oldRe * oldRe - oldIm * oldIm + pr;
		            newIm = 2 * oldRe * oldIm + pi;
		            //if the point is outside the circle with radius 2: stop
		            if((newRe * newRe + newIm * newIm) > 4) break;
		        }
		        if (i == maxIterations) {
		        	System.out.print(" ");
		        } else {
		        	System.out.print((char)(i+65));
		        }
			}
			System.out.println("");
		}
		
	}

}
