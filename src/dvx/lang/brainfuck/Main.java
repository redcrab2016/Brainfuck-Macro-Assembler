/**
 * 
 */
package dvx.lang.brainfuck;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import dvx.lang.brainfuck.assembler.Assembler;
import dvx.lang.brainfuck.runtime.Engine;
import dvx.lang.brainfuck.runtime.EngineStatus;

/**
 * @author ysm
 *
 */
public class Main {

	private static EngineStatus doRun(String fileName,
							  InputStream input,
							  OutputStream output,
							  boolean doDebug) throws IOException {
		ByteArrayOutputStream BFCodeOutput = new ByteArrayOutputStream();
		FileInputStream BFCodeInput = new FileInputStream(fileName);
		byte[] buffer = new byte[1024];
		int n = 0;
		while (-1 != (n = BFCodeInput.read(buffer))) {
			BFCodeOutput.write(buffer, 0, n);
		}
		BFCodeInput.close();
		Engine eng = new Engine(BFCodeOutput.toString(),input,output);
		eng.run();
		return eng.getStatus();
	}
	
	private static void usage() {
		System.err.println(
"Usage: java -jar bf.jar [OPTION]... FILE\n" + 
"Execute brainfuck FILE or compile and execute brainfuck assembler FILE.\n" +
"\n" +
"  -b, --build-folder=FOLDER      location where build files are generated\n" +
"                                   by default it use the folder that \n" +
"                                   contains FILE. \n" +
"  -c, --compile-only             compile FILE and don't execute it.\n" +
"  -d, --keep-debug-bf            do not delete debug generated bf file.\n" +
"                                   The file is generated at FOLDER designated\n" +
"                                   by option -b or by default to foder\n" +
"                                   that contain FILE\n" +
"  -D, --remove-debug-bf          (default) do not keep debug generated BF\n" +
"  -h, --help                     show this current help\n" +
"  -i, --inputbf=FILE             instead of STDIN, use FILE as input for\n" +
"                                   BF execution \n" +
"  -I, --include=FOLDER           Assembler include folder for 'include' directive.\n" +
"                                   by default use the folder containing FILE.\n" +
"  -k, --keep-build-file          Do not remove build files.\n" +
"                                   by default there are located in folder containing\n" +
"                                   FILE or under FOLDER specified by option -b\n" +
"  -K, --delete-build-file        (default) do not keep build files.\n" +
"  -o, --outputbf=FILE            instead of STDOUT, use FILE as output for\n" +
"                                   BF execution\n" +
"  -s, --bf-line-size=SIZE        generated BF file is limited by SIZE characters\n" +
"                                   for each line (default 80)\n" +
"  -z, --disable-optimize-compile do not optimize generated bf\n" +
"  -Z, --enable-optimize-compile  (default) optimzed generated bf result\n" +
""
				   );
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) throws FileNotFoundException {

		// declare with default assignment
		String mainFileName="UnknownFile";
		String rootFileName=null;
		String buildFolder=null;
		String include=null;
		boolean bfOptimized = true;
		boolean doCompile = false;
		int bfLineSize = 80;
		boolean bfRun = true;
		boolean delIntermediateFileWhenSuccess = true;
		boolean compileForProd = true;
		boolean bfRunDebug = false;
		boolean bUsage = false;
		InputStream bfinput = System.in;
		OutputStream bfoutput = System.out;
		
		// treat parameters
		List<String> _args = new ArrayList<String>();
		Pattern p = Pattern.compile("^(--[_A-Za-z\\-0-9]+)=(.+)$");
		Pattern p2 = Pattern.compile("^(-[_A-Za-z0-9]{2,})$");
		
		for (int idx=0; idx < args.length; idx++) {
			Matcher m = p.matcher(args[idx]);
			if (m.matches()) {
				_args.add(m.group(1));
				_args.add(m.group(2));
			} else {
				m = p2.matcher(args[idx]);
				if (m.matches()) {
					for (int idx2 = 1; idx2 < args[idx].length(); idx2++) {
						_args.add("-"+ args[idx].charAt(idx2));
					}
				} else {
					_args.add(args[idx]);
				}
			}
		}
		
		for (int idx=0; idx < _args.size(); idx++) {
			String arg = "";
			arg = _args.get(idx);
			String argVal;
			argVal = "";
			if (idx < _args.size()-1) {
				argVal = _args.get(idx+1);
			}
			switch (arg) {
				case "-h":
				case "--help":
					bUsage = true;
				break;
				case "-k":
				case "--keep-build-file":
					delIntermediateFileWhenSuccess = false;
					break;
				case "-K":
				case "--delete-build-file":
					delIntermediateFileWhenSuccess = true;
					break;
				case "-i":
				case "--inputbf":
					bfinput = new FileInputStream(argVal);
					idx++;
					break;
				case "-o":
				case "--outputbf":
					bfoutput = new FileOutputStream(argVal);
					idx++;
					break;
				case "-I":
				case "--include":
					include = argVal;
					idx++;
					break;
				case "-b":
				case "--build-folder":
					buildFolder = argVal;
					idx++;
					break;
				case "-c":
				case "--compile-only":
					bfRun = false;
					doCompile = true;
					break;
				case "-d":
				case "--keep-debug-bf":
					compileForProd = false;
					break;
				case "-D":
				case "--remove-debug-bf":
					compileForProd = true;
					break;
				case "-z":
				case "--disable-optimize-compile":
					bfOptimized = false;
					break;
				case "-Z":
				case "--enable-optimize-compile":
					bfOptimized = false;
					break;
				case "-s":
				case "--bf-line-size":
					bfLineSize = Integer.parseInt(argVal);
					idx++;
					break;
			}
		}
		
		if (bUsage || args.length == 0) {
			usage();
			return;
		}
		
		
		if (args.length != 0) {
			mainFileName = args[args.length-1]; // main file is always the last argument
			if (mainFileName.startsWith("--") ||
				mainFileName.startsWith("-")) {
				System.err.println("Unexpected main file name (starts with '-' or '--' :"+mainFileName );  
			}
		}

		File tstFile = null;

		if (buildFolder != null) {
			tstFile = new File(buildFolder);
			if (tstFile.exists()) {
				System.err.println("Directory not found:"+ buildFolder);
				return;
			}
			if (!tstFile.isDirectory()) {
				System.err.println("Must be a directory:"+ buildFolder);
				return;
			}
		}
		
		tstFile = new File(mainFileName);
		if (!tstFile.exists()) {
			System.err.println("File not found:"+mainFileName);
			return;
		}
		if (tstFile.isDirectory()) {
			System.err.println("Must be a file not a directory:"+mainFileName);
			return;
		}
		if (!tstFile.canRead()) {
			System.err.println("Can't read file:"+mainFileName);
			return;
		}
		
		
		if (mainFileName.matches("^.*\\.asm$")) {
			doCompile = true;
		}
		
		String bfDebug = mainFileName;
		String bfPure = mainFileName;
		String preComJS;
		String preCom;
		String status;
		
		
		if (doCompile) {
			if (buildFolder == null) {
				rootFileName = mainFileName.replaceFirst("^(.*)(\\.[^.]+)$", "$1");
			} else {
				rootFileName = buildFolder +
							   mainFileName.replaceFirst("^.*([^/]+)(\\.[^/.]*)?$", "$1");
			}
			preComJS = rootFileName +".js";
			preCom = rootFileName +".pc.asm";
			bfDebug = rootFileName +".deb.bf";
			bfPure = rootFileName +".bf";
			status = rootFileName +".msg";
			InputStream in;
			try {
				
				if (include == null) {
					include = tstFile.getParent(); // by default get directory of asm file
					if (include == null) {
						include = "./";
					}
				}
				if (include.charAt(include.length()-1) != '/') {
					include += "/";
				}
	
				in = new FileInputStream(tstFile);
				Assembler asm = new Assembler(in,include);
				
				
				PrintStream ps_preComJS = new PrintStream(preComJS);
				ps_preComJS.println(asm.getPreCompiledJS());
				ps_preComJS.flush();
				ps_preComJS.close();
				
				PrintStream ps_preCom = new PrintStream(preCom);
				ps_preCom.println(asm.getPreCompiled());
				ps_preCom.flush();
				ps_preCom.close();
				
				PrintStream ps_bfDebug = new PrintStream(bfDebug);
				asm.getBFCode(ps_bfDebug);
				ps_bfDebug.flush();
				ps_bfDebug.close();
				
				PrintStream ps_bfPure = new PrintStream(bfPure);
				ps_bfPure.println(asm.getBFOnly(bfOptimized,  bfLineSize));
				ps_bfPure.flush();
				ps_bfPure.close();
				
				PrintStream ps_status = new PrintStream(status);
				if (asm.hasError()) {
					List<String> el = asm.getErrorList();
					System.err.println("Compilation Error");
					ps_status.println("Compilation Error");
					for (String l:el) {
						ps_status.println(l);
						System.err.println(l);
					}
					ps_status.flush();
					ps_status.close();
				} else {
					System.err.println("Compilation Success");
					ps_status.println("Compilation Success");
					ps_status.flush();
					ps_status.close();
					File delFile;
					if (delIntermediateFileWhenSuccess) {
						delFile = new File(preComJS);
						delFile.delete();
						delFile = new File(preCom);
						delFile.delete();
						delFile = new File(status);
					}
					if (compileForProd && !bfRunDebug){
						delFile = new File(bfDebug);
						delFile.delete();
					}
	
				}
			} catch (Exception e1) {
				e1.printStackTrace(System.err);
				System.err.println("for main file name '" + mainFileName + "' an error occurs:" +e1.getMessage());
			}
		}
		// if run requested
		if (bfRun) {
			
			String BFfilename;
			if (bfRunDebug) {
				BFfilename = bfDebug;
			} else {
				BFfilename = bfPure;
			}
			EngineStatus engStatus;
			try {
				engStatus = doRun(BFfilename, bfinput, bfoutput, bfRunDebug);
				if (bfRunDebug) 
					System.err.println("BF runtime exit with status "+ engStatus);
			} catch (IOException e) {
				e.printStackTrace(System.err);
			}
		}
	}
}
