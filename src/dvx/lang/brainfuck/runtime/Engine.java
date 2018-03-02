/**
 * 
 */
package dvx.lang.brainfuck.runtime;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Deque;

/**
 * @author devauem
 *
 */



public class Engine {

	private static final int MEMORYSIZE=32000;
	private static final char BF_PLUS='+';
	private static final char BF_MINUS='-';
	private static final char BF_RIGHT='>';
	private static final char BF_LEFT='<';
	private static final char BF_OPENBRACKET='[';
	private static final char BF_CLOSEBRACKET=']';
	private static final char BF_INPUT=',';
	private static final char BF_OUTPUT='.';
	private String  code;
	private InputStream input;
	private OutputStream output;
	
	private byte[] data;
	private boolean pause=false;
	private int indexData;
	private int indexCode; // index of the next instruction to execute
	private Deque<Integer> callStack;
	
	private EngineStatus currentStatus;
	
	public Engine(String code, InputStream input, OutputStream output) {
		if (code==null) code="";
		this.code = code;
		if (input == null) input = new ByteArrayInputStream(new byte[0]);
		this.input = input;
		if (output == null) output= new ByteArrayOutputStream();
		this.output = output;
		
		data = new byte[MEMORYSIZE];
		indexData = 0;
		indexCode = 0;
		callStack = new ArrayDeque<Integer>();
		currentStatus = EngineStatus.READY;
	}
	
	public EngineStatus getStatus() {
		return currentStatus;
	}
	
	public byte[] getData() {
		return data;
	}
	
	public InputStream getInput() {
		return input;
	}
	
	public OutputStream getOutput() {
		return output;
	}
	
	public Engine setInput(InputStream input) {
		this.input = input;
		return this;
	}
	
	public Engine setOutput(OutputStream output) {
		this.output = output;
		return this;
	}
	
	public String getCode() {
		return code;
	}
	
	public int getIndexData() {
		return indexData;
	}
	
	public int getIndexCode() {
		return indexCode;
	}
	
	public Engine setIndexData(int indexData) {
		if (indexData <=0) {
			this.indexData = 0;
		} else if (indexData >= data.length) {
			this.indexData = data.length-1;
		} else {
			this.indexData= indexData;
		}
		return this;
	}
	
	public Engine setIndexCode(int indexCode) {
		this.indexCode = indexCode;
		if (indexCode >= code.length()) this.indexCode=code.length()-1;
		if (indexCode <= 0) this.indexCode = 0;
		return this;
	}
	
	public Engine pause() {
		pause = true;
		return this;
	}
	
	public Engine unpause() {
		pause = false;
		return this;
	}
	
	public boolean isPaused() {
		return pause;
	}
	
	
	public EngineStatus run() {
		pause = false;
		while (!pause && step() == EngineStatus.RUNNING);
		return currentStatus;
	}
	
	public EngineStatus step() {
		char instr=code.charAt(indexCode);
		if (	currentStatus!= EngineStatus.READY &&
				currentStatus!= EngineStatus.RUNNING)
			return currentStatus;
		switch (instr) {
			case BF_PLUS:
				data[indexData]++;
				indexCode++;
				break;
			case BF_MINUS:
				data[indexData]--;
				indexCode++;
				break;
			case BF_RIGHT:
				indexData++;
				if (indexData>= MEMORYSIZE) {
					indexData = MEMORYSIZE;
					currentStatus = EngineStatus.OVERFLOWMEMORY;
				} else {
					indexCode++;
				}
				break;
			case BF_LEFT:
				indexData--;
				if (indexData<0) {
					indexData=-1;
					currentStatus = EngineStatus.UNDERFLOWMEMORY;
				} else {
					indexCode++;
				}
				break;
			case BF_OPENBRACKET:
				if (data[indexData]!=0) { // goto next command (with jum stack)
					callStack.push(indexCode);
					indexCode++;
				} else { // jump to after matching ]
					int i;
					int bracket;
					bracket=0;
					boolean foundMatch=false;
					for (i=indexCode+1; i< code.length(); i++) {
						char instr2;
						instr2 =code.charAt(i);
						switch (instr2) {
							case BF_CLOSEBRACKET:
								if (bracket==0) {
									foundMatch=true;
								} else {
									bracket--;
								}
								break;
							case BF_OPENBRACKET:
								bracket++;
								break;
						}
						if (foundMatch) {
							indexCode=i+1;
							break;
						}
					}
					if (foundMatch) {
						if (indexCode>=code.length()) {
							currentStatus=EngineStatus.FINISHED;
						}
					} else {
						currentStatus=EngineStatus.NOMATCHINGCLOSINGBRACKET;
					}
				}
				break;
			case BF_CLOSEBRACKET:
					if (callStack.size()==0) {
						currentStatus=EngineStatus.UNEXPECTEDCLOSINGBRACKET;
					} else {
						int newIndexCode = callStack.pop();
						if (data[indexData]!=0) {
							indexCode = newIndexCode;
						} else {
							indexCode++;
						}
					}
				break;
			case BF_OUTPUT:
				try {
					output.write(data[indexData]);
			/*		if (data[indexData]>31) {
						System.out.print(
							"['" +
							(char)data[indexData] +
							"'" + data[indexData] +
							"]"
						);
					} else {
						System.out.print(
								"[" +
								data[indexData] +
								"]"
							);
					}
					*/
					indexCode++;
				} catch (IOException e) {
					currentStatus = EngineStatus.OUTPUTERROR;
				}
				break;
			case BF_INPUT:
				int aByte;
				try {
					aByte = input.read();
					if (aByte == -1) {
						currentStatus = EngineStatus.INPUTEND;
					} else {
						data[indexData]=(byte)aByte;
						indexCode++;
					}
				} catch (IOException e) {
					currentStatus = EngineStatus.INPUTERROR;
				}
				break;
			default:
				indexCode++;
				break;
		}
		if (currentStatus == EngineStatus.READY)
			currentStatus = EngineStatus.RUNNING;
		if (currentStatus == EngineStatus.RUNNING) {
			if (indexCode>=code.length()) {
				if (callStack.size() == 0)
					currentStatus=EngineStatus.FINISHED;
				else 
					currentStatus=EngineStatus.UNEXPECTEDENDOFCODE;
			}
		}
		return currentStatus;
	}
	
	public static void main(String[] args) {
		String helloWorld = 
			"+++++ +++++             initialize counter (cell #0) to 10 "	+
			"[                       use loop to set 70/100/30/10"			+ 
			"    > +++++ ++              add  7 to cell #1"					+ 
			"    > +++++ +++++           add 10 to cell #2"					+ 
			"    > +++                   add  3 to cell #3"					+ 
			"    > +                     add  1 to cell #4"					+ 
			"<<<< -                  decrement counter (cell #0)"			+ 
			"]"																+ 
			"> ++ .                  print 'H'"								+ 
			"> + .                   print 'e'"								+ 
			"+++++ ++ .              print 'l'"								+ 
			".                       print 'l'"								+ 
			"+++ .                   print 'o'"								+ 
			"> ++ .                  print ' '"								+ 
			"<< +++++ +++++ +++++ .  print 'W'"								+ 
			"> .                     print 'o'"								+ 
			"+++ .                   print 'r'"								+ 
			"----- - .               print 'l'"								+ 
			"----- --- .             print 'd'"								+ 
			"> + .                   print '!'"								+ 
			"> .                     print '\n'";
		Engine eng= new Engine(helloWorld,null,null);
		eng.run();
		ByteArrayOutputStream out = (ByteArrayOutputStream)eng.getOutput();
		System.out.println("status:"+eng.getStatus().toString());
		System.out.println("output:" + out.toString());
	}
}
