package dvx.lang.brainfuck.runtime;

public enum EngineStatus {
	READY, // default status and no step occured yet
	RUNNING,
	FINISHED,
	INPUTEND,
	UNEXPECTEDENDOFCODE, // when code is finished and there is one or more expected ']'
	UNEXPECTEDCLOSINGBRACKET, // when code meet a ] with no matching [
	NOMATCHINGCLOSINGBRACKET,
	OUTPUTERROR,
	INPUTERROR,
	UNDERFLOWMEMORY, // when gone to much on left in the memory
	OVERFLOWMEMORY // when fone to much on right in the memory
}