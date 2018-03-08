/***
 *      ____            _        __            _    
 *     | __ ) _ __ __ _(_)_ __  / _|_   _  ___| | __
 *     |  _ \| '__/ _` | | '_ \| |_| | | |/ __| |/ /
 *     | |_) | | | (_| | | | | |  _| |_| | (__|   < 
 *     |____/|_|  \__,_|_|_| |_|_|  \__,_|\___|_|\_\
 *     |  _ \ _   _ _ __ | |_(_)_ __ ___   ___      
 *     | |_) | | | | '_ \| __| | '_ ` _ \ / _ \     
 *     |  _ <| |_| | | | | |_| | | | | | |  __/     
 *     |_| \_\\__,_|_| |_|\__|_|_| |_| |_|\___|     
 *                                                  
 */
package dvx.lang.brainfuck.runtime;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.List;

/**
 * @author ysm
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
	private boolean optimized;
	private byte[] data;
	private boolean pause=false;
	private int indexData;
	private int indexCode; // index of the next instruction to execute
	private Deque<Integer> callStack;
	private EngineStatus currentStatus;
	private List<CodeInstr> lcode;
	
	class CodeInstr {
		private int codeIndex;
		private char code;
		private int	 n; // repetition or idx in List for '[' and ']'
		public CodeInstr(int codeindex, char code, int n) {
			this.codeIndex = codeindex;
			this.code = code;
			this.n = n;
		}
		
		CodeInstr setN(int n) {
			this.n = n;
			return this;
		}
		
		public int getN() {
			return n;
		}
		
		public char getCode() {
			return code;
		}
		
		public int getCodeIndex() {
			return codeIndex;
		}
		
	}
	
	public Engine(String code, InputStream input, OutputStream output) {
		init(code, input, output, true);
	}

	public Engine(String code, InputStream input, OutputStream output, boolean optimized) {
		init(code, input, output, optimized);
	}
	
	private void init(String code, InputStream input, OutputStream output, boolean optimized) {
		if (code==null) code="";
		this.code = code;
		if (input == null) input = new ByteArrayInputStream(new byte[0]);
		this.input = input;
		if (output == null) output= new ByteArrayOutputStream();
		this.output = output;
		this.optimized = optimized;
		data = new byte[MEMORYSIZE];
		indexData = 0;
		indexCode = 0;
		callStack = new ArrayDeque<Integer>();
		currentStatus = EngineStatus.READY;
		lcode = buildCodeList(code);
	}
	
	private List<CodeInstr> buildCodeList(String code) {
		List<CodeInstr> codeList = new ArrayList<CodeInstr>();
		// first step construct codelist from code string
		String validCode = "" + BF_PLUS +
							BF_MINUS +
							BF_RIGHT +
							BF_LEFT +
							BF_OPENBRACKET +
							BF_CLOSEBRACKET +
							BF_INPUT + 
							BF_OUTPUT ;
		char prevCode = 0;
		int count = 0;
		int idx = 0;
		
		for (int i = 0 ; i< code.length() ; i++) {
			char aCode = code.charAt(i);
			if (i == 0) {
				prevCode = aCode;
				idx = 0;
				count++;
			} else 	if (prevCode != aCode ||
					    prevCode == BF_OPENBRACKET ||
					    prevCode == BF_CLOSEBRACKET) {
				codeList.add(new CodeInstr(idx,prevCode,count));
				count = 1;
				prevCode = aCode;
				idx = i;
			} else if (prevCode == aCode) {
				count ++;
			}
		}
		if (prevCode != 0)
			codeList.add(new CodeInstr(idx,prevCode,count));
		
		// last step : set the idx of "[" "]" 
		for (int i = 0 ; i < codeList.size() ; i++) {
			CodeInstr codeinstr = codeList.get(i);
			if (codeinstr.getCode() == BF_OPENBRACKET) {
				count = 0;
				for (int j = i+1 ; j < codeList.size(); j++) {
					CodeInstr codeinstr2 = codeList.get(j);
					if (codeinstr2.getCode() == BF_OPENBRACKET) {
						count++;
					} else if (codeinstr2.getCode() == BF_CLOSEBRACKET) {
						if (count == 0) {
							codeinstr.setN(j+1);
							codeinstr2.setN(i+1);
							break;
						} else {
							count--;
						}
					}
				}
			} 
		}
		System.err.println(code.length() + " characters code into " + codeList.size() + " instructions");
		return codeList;
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
	
	private char getCode(int idx) {
		return lcode.get(idx).getCode();
	}

	private int getN(int idx) {
		return lcode.get(idx).getN();
	}
	
	
	public EngineStatus step() {
		char instr=getCode(indexCode);
		int n = getN(indexCode);
		char instr2 = 0;
		int n2 = 0;
		char instr3 = 0;
		int n3 = 0;
		char instr4 = 0;
		int n4 = 0;
		char instr5 = 0;
		int n5 = 0;
		char instr6 = 0;
		int n6 = 0;
		char instr7 = 0;
		int n7 = 0;
		char instr8 = 0;
		int n8 = 0;
		try {
			if (optimized) {
				instr2 = getCode(indexCode+1);
				n2 = getN(indexCode+1);
				instr3 = getCode(indexCode+2);
				n3 = getN(indexCode+2);
				instr4 = getCode(indexCode+3);
				n4 = getN(indexCode+3);
				instr5 = getCode(indexCode+4);
				n5 = getN(indexCode+4);
				instr6 = getCode(indexCode+5);
				n6 = getN(indexCode+5);
				instr7 = getCode(indexCode+6);
				n7 = getN(indexCode+6);
				instr8 = getCode(indexCode+7);
				n8 = getN(indexCode+7);
			}
		} catch (IndexOutOfBoundsException e) {
			// do nothing
		}
		
		if (	currentStatus!= EngineStatus.READY &&
				currentStatus!= EngineStatus.RUNNING)
			return currentStatus;
		switch (instr) {
			case BF_PLUS:
				data[indexData]+=n;
				indexCode++;
				if (instr2 == BF_PLUS) {
					data[indexData]+=n2;
					indexCode++;
					if (instr3 == BF_PLUS) {
						data[indexData]+=n3;
						indexCode++;
						if (instr4 == BF_PLUS) {
							data[indexData]+=n4;
							indexCode++;
							if (instr5 == BF_PLUS) {
								data[indexData]+=n5;
								indexCode++;
								if (instr6 == BF_PLUS) {
									data[indexData]+=n6;
									indexCode++;
								}
							}
						}
					}
				}
				break;
			case BF_MINUS:
				data[indexData]-=n;
				indexCode++;
				if (instr2 == BF_MINUS) {
					data[indexData]-=n2;
					indexCode++;
					if (instr3 == BF_MINUS) {
						data[indexData]-=n3;
						indexCode++;
						if (instr4 == BF_MINUS) {
							data[indexData]-=n4;
							indexCode++;
							if (instr5 == BF_MINUS) {
								data[indexData]-=n5;
								indexCode++;
								if (instr6 == BF_MINUS) {
									data[indexData]-=n6;
									indexCode++;
								}
							}
						}
					}
				}
				break;
			case BF_RIGHT:
				indexData+=n;
				if (indexData>= MEMORYSIZE) {
					indexData = MEMORYSIZE;
					currentStatus = EngineStatus.OVERFLOWMEMORY;
				} else {
					indexCode++;
					if (instr2 == BF_RIGHT) {
						indexData+=n2;
						if (indexData>= MEMORYSIZE) {
							indexData = MEMORYSIZE;
							currentStatus = EngineStatus.OVERFLOWMEMORY;
						} else {
							indexCode++;
							if (instr3 == BF_RIGHT) {
								indexData+=n3;
								if (indexData>= MEMORYSIZE) {
									indexData = MEMORYSIZE;
									currentStatus = EngineStatus.OVERFLOWMEMORY;
								} else {
									indexCode++;
									if (instr4 == BF_RIGHT) {
										indexData+=n4;
										if (indexData>= MEMORYSIZE) {
											indexData = MEMORYSIZE;
											currentStatus = EngineStatus.OVERFLOWMEMORY;
										} else {
											indexCode++;
											if (instr5 == BF_RIGHT) {
												indexData+=n5;
												if (indexData>= MEMORYSIZE) {
													indexData = MEMORYSIZE;
													currentStatus = EngineStatus.OVERFLOWMEMORY;
												} else {
													indexCode++;
													if (instr6 == BF_RIGHT) {
														indexData+=n6;
														if (indexData>= MEMORYSIZE) {
															indexData = MEMORYSIZE;
															currentStatus = EngineStatus.OVERFLOWMEMORY;
														} else {
															indexCode++;
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				break;
			case BF_LEFT:
				indexData-=n;
				if (indexData<0) {
					indexData=-1;
					currentStatus = EngineStatus.UNDERFLOWMEMORY;
				} else {
					indexCode++;
					if (instr2 == BF_LEFT) {
						indexData-=n2;
						if (indexData>= MEMORYSIZE) {
							indexData = MEMORYSIZE;
							currentStatus = EngineStatus.UNDERFLOWMEMORY;
						} else {
							indexCode++;
							if (instr3 == BF_LEFT) {
								indexData-=n3;
								if (indexData>= MEMORYSIZE) {
									indexData = MEMORYSIZE;
									currentStatus = EngineStatus.UNDERFLOWMEMORY;
								} else {
									indexCode++;
									if (instr4 == BF_LEFT) {
										indexData-=n4;
										if (indexData>= MEMORYSIZE) {
											indexData = MEMORYSIZE;
											currentStatus = EngineStatus.UNDERFLOWMEMORY;
										} else {
											indexCode++;
											if (instr5 == BF_LEFT) {
												indexData-=n5;
												if (indexData>= MEMORYSIZE) {
													indexData = MEMORYSIZE;
													currentStatus = EngineStatus.UNDERFLOWMEMORY;
												} else {
													indexCode++;
													if (instr6 == BF_LEFT) {
														indexData-=n6;
														if (indexData>= MEMORYSIZE) {
															indexData = MEMORYSIZE;
															currentStatus = EngineStatus.UNDERFLOWMEMORY;
														} else {
															indexCode++;
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				break;
			case BF_OPENBRACKET:
				if (instr2 == BF_MINUS && n2 ==1 &&
					instr3 == BF_CLOSEBRACKET) { // [-]
					data[indexData] = 0;
					indexCode += 3;
				} else if ((instr2 == BF_MINUS && n2 == 1 &&
						    instr3 == BF_RIGHT &&
						    instr4 == BF_PLUS && n4 == 1 &&
						    instr5 == BF_LEFT &&
						    instr6 == BF_CLOSEBRACKET &&
						    n3 == n5) || // [->+<]
						(instr2 == BF_RIGHT &&
						 instr3 == BF_PLUS && n3 == 1 &&
						 instr4 == BF_LEFT &&
						 instr5 == BF_MINUS && n5 == 1 &&
						 instr6 == BF_CLOSEBRACKET &&
						 n2 == n4)) { // [>+<-]
					if (instr2 == BF_RIGHT) 
						data[indexData+n2] += data[indexData];
					else
						data[indexData+n3] += data[indexData];
					data[indexData] = 0;
					indexCode +=6;
				} else if ((instr2 == BF_MINUS && n2 == 1 &&
						    instr3 == BF_LEFT &&
						    instr4 == BF_PLUS && n4 == 1 &&
						    instr5 == BF_RIGHT &&
						    instr6 == BF_CLOSEBRACKET &&
						    n3 == n5) || // [-<+>]
						(instr2 == BF_LEFT &&
						 instr3 == BF_PLUS && n3 == 1 &&
						 instr4 == BF_RIGHT &&
						 instr5 == BF_MINUS && n5 == 1 &&
						 instr6 == BF_CLOSEBRACKET &&
						 n2 == n4)) { // [<+>-]
					if (instr2 == BF_LEFT)
						data[indexData-n2] += data[indexData];
					else
						data[indexData-n3] += data[indexData];
							
					data[indexData] = 0;
					indexCode+=6;
				} else if ((instr2 == BF_MINUS && n2 == 1 &&
						    instr3 == BF_RIGHT && n3 == 1 &&
						    instr4 == BF_PLUS && n4 == 1 &&
						    instr5 == BF_RIGHT && n5 == 1 &&
						    instr6 == BF_PLUS && n6 == 1 &&
						    instr7 == BF_LEFT && n7 == 2 &&
						    instr8 == BF_CLOSEBRACKET 
						    ) || // [->+>+<<]
						(instr2 == BF_RIGHT && n2 == 1 &&
						 instr3 == BF_PLUS && n3 == 1 &&
						 instr4 == BF_RIGHT && n4 == 1 &&
						 instr5 == BF_PLUS && n5 == 1 &&
						 instr6 == BF_LEFT && n6 == 2 &&
						 instr7 == BF_MINUS && n7 == 1 &&
						 instr8 == BF_CLOSEBRACKET 
						 )) { // [>+>+<<-]
					data[indexData+1] += data[indexData];
					data[indexData+2] += data[indexData];
					data[indexData] = 0;
					indexCode+=8;
				} else {
					if (data[indexData]!=0) { // goto next command (with jum stack)
						callStack.push(indexCode);
						indexCode++;
					} else { // jump to after matching ]
						indexCode = n;
					}
				}
				break;
			case BF_CLOSEBRACKET:
					if (callStack.size()==0) {
						currentStatus=EngineStatus.UNEXPECTEDCLOSINGBRACKET;
					} else {
						
						int newIndexCode = callStack.pop();
						if (data[indexData]!=0) {
							indexCode = n; // newIndexCode;
							callStack.push(n-1);
						} else {
							indexCode++;
						}
						
					}
				break;
			case BF_OUTPUT:
				try {
					for (int i = 0 ; i < n ; i++)
						output.write(data[indexData]);
					output.flush();
					indexCode++;
				} catch (IOException e) {
					currentStatus = EngineStatus.OUTPUTERROR;
				}
				break;
			case BF_INPUT:
				int aByte;
				try {
					for (int i = 0 ; i < n ; i++) {
						aByte = input.read();
						if (aByte == -1) {
							currentStatus = EngineStatus.INPUTEND;
							break;
						} else {
							data[indexData]=(byte)aByte;
							//indexCode++;
						}
					}
					if (currentStatus != EngineStatus.INPUTEND) 
						indexCode++;
				} catch (IOException e) {
					currentStatus = EngineStatus.INPUTERROR;
				}
				break;
			default:
				indexCode++; // unknown instruction code , then go to next code
				break;
		}
		if (currentStatus == EngineStatus.READY)
			currentStatus = EngineStatus.RUNNING;
		if (currentStatus == EngineStatus.RUNNING) {
			if (indexCode>=lcode.size()) {
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
			"> .                     print '\\n'";
		Engine eng= new Engine(helloWorld,null,null);
		eng.run();
		ByteArrayOutputStream out = (ByteArrayOutputStream)eng.getOutput();
		System.out.println("status:"+eng.getStatus().toString());
		System.out.println("output:" + out.toString());
	}
}
