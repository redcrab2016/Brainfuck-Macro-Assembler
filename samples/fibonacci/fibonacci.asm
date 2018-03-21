# Fibonacci in Brainfuck

# C sample used to generate this program
#int Fibonacci(int n) { 
#if(n <= 0) return 0;
#if(n > 0 && n < 3) return 1;
#
#int result = 0;
#int preOldResult = 1;
#int oldResult = 1;
#
#for (int i=2;i<n;i++) { 
#    result = preOldResult + oldResult;
#    preOldResult = oldResult;
#    oldResult = result;
#}
#
#return result;}

include ../include/macro.inc
include ../include/signedX32.inc

print("Brainfuck Fibonacci with 32bits signed integer\n")
print("Slowness is due to the memory to decimal display routine\n")
print("Show Fibonacci numbers from 0 to 39\n\n")

var32("fiboN")
setv32("fiboN",0)
push    1
sbm looper
while
    pushv32("fiboN")
    push32(40)   # from 0 to 39
    diff32()
    if
        scope_begin()
            lvar32("N")
            lvar32("cnt")
            lvar32("result")
            lvar32("oldResult")
            lvar32("preOldResult")
            
            pushv32("fiboN")
            popv32("N")
            
            pushv32("N")
            push32(0)
            infequal32()
            if
                print("f[")
                write32("N")
                print("]=0\n")
            else
                pushv32("N")
                push32(3)
                inf32()
                if
                    print("f[")
                    write32("N")
                    print("]=1\n")
                else
                    setv32("result",0)
                    setv32("oldResult",1)
                    setv32("preOldResult",1)
                    
                    pushv32("N")
                    push32(2)
                    sub32()
                    popv32("cnt")
                    push 1
                    sbm looper2
                    while
                        pushv32("cnt")
                        push32(0)
                        equal32()
                        if
                            at_reset("looper2")
                        else
                            addvvv32("result","preOldResult","oldResult")
                            pushv32("oldResult")
                            popv32("preOldResult")
                            pushv32("result")
                            popv32("oldResult")
                            decv32("cnt")
                        fi
                    wend
                    print("f[")
                    write32("N")
                    print("]=")
                    write32("result")
                    print("\n")
                fi
            fi
        scope_end()
        incv32("fiboN")
    else
        at_reset("looper") # break main loop
    fi
wend