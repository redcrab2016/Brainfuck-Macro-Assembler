package dvx.lang.brainfuck.assembler;

public enum AsmOpeType {
//	UNKNOWN,
	NONE,
	IMMEDIATE, // for set/add/sub/push
	VARNAME, // for var/push/pop/atvar/arotl/arotf
	BMNAME, // bookmark name
	IN,  // for push 
	OUT, // for pop
	FROMSTACK,   // for push/pop/atvar
	FROMSTACKBM, // for push/pop/atvar
	LOOP,  // for endscopee of loop
	IF,     // for endscope of if
	AT, // for endscope of at
	WHILE, // for endscope of while
//	ELSE,
	BF	// for bf
}
