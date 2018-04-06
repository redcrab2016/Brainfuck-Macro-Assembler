package dvx.lang.brainfuck;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Util {
	private static int verbose_ = 0;
	private static final SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
	public static void setVerbose(int verb) {
		verbose_ = verb;
	}
	public static void verbose(String message) {
		if (verbose_ > 0) {
			Timestamp timestamp = new Timestamp(System.currentTimeMillis());
			System.err.println(sdf.format(timestamp) +" : " + message);
		}
	}
}
