#    ____        _         ____    ____  _        _             
#   | __ ) _   _| |_ ___  |___ \  / ___|| |_ _ __(_)_ __   __ _ 
#   |  _ \| | | | __/ _ \   __) | \___ \| __| '__| | '_ \ / _` |
#   | |_) | |_| | ||  __/  / __/   ___) | |_| |  | | | | | (_| |
#   |____/ \__, |\__\___| |_____| |____/ \__|_|  |_|_| |_|\__, |
#          |___/                                          |___/ 
# Read input byte and output it as decimal number string separated by comma
# this sample do use macro
# this version does not keep '0' prefix

#(begin include)../include/macro.inc
# Common macros
# scope variables
#(js) var __scope; var __idx;
#(js) __scope=[0]; __idx = 0;


# macro scope_begin : start a new scope for local variable (usage of macro lvar)

# macro scope_end : end a scope , then drop scoped local variables (drop) (usage of lvar)

# macro lvar(vname,value) : declare  in scope, a local variable named vname with an assigned value (stored in stack)

# macro if_diff(a,b) : if (a != b) {

# macro if_equal(a,b) : if (a == b) {

# macro if_sup(a,b) : if (a > b) {

# macro if_inf(a,b) : if (a < b) {

# macro if_supequal(a,b) : if (a >= b) {

# macro if_infequal(a,b) : if (a <= b) {

# macro at_2

# macro at_1

# macro at_reset(a) : a=0

# macro at_inc(a) : a++

# macro at_dec(a) : a--

# macro at_in(a)  : a= readchar()

# macro at_out(a) : write(a)

# macro at_add(a,b) : a += b (immediate)

# macro at_sub(a,b) : a -= b (immediate)

# macro at_set(a,b) : a = b (immediate)





# macro popouthexa() : from head of stack value (from 0 to 15) write out hexa (from 0 to 9 and A to F)

# macro popout8hexa() : from head of stack the 8 bit value is write out in hexa

# macro print(aString) : print out a string
#(end include)../include/macro.inc



var input
var output*3

push    1
sbm count
while
#(begin macro)    at_in("input")
#(begin macro)    at_1("in",a)
#(begin macro)    at_2(ope,a,"")
    at input
    in 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("in",a)
#(end macro)    at_in("input")
#(begin macro)    if_equal("count",1)
    push count
    push 1
    equal
    if
#(end macro)    if_equal("count",1)
#(begin macro)        at_set("count",2)
#(begin macro)    at_2("set",a,b)
    at count
    set 2
    ta
#(end macro)    at_2("set",a,b)
#(end macro)        at_set("count",2)
    else
#(begin macro)        write("','")
    push    ','
    pop     out
#(end macro)        write("','")
    fi
    push 3
    loop
        # output = input mod 10 ; input = input div 10
#(begin macro)        divide("input",10,"input","output")
    push input
    push 10
    div
    pop input
    pop output
#(end macro)        divide("input",10,"input","output")
        arotl output
    endloop
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar("prefixzero",1)
    push 1
    sbm prefixzero
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("prefixzero",1)
        push 3
        sbm cnt
        loop
            arotr output
#(begin macro)            if_sup("cnt",1)   # cnt == 3 or cnt == 2
    push cnt
    push 1
    sup
    if
#(end macro)            if_sup("cnt",1)   # cnt == 3 or cnt == 2
#(begin macro)                if_diff("output",0)
    push output
    push 0
    diff
    if
#(end macro)                if_diff("output",0)
#(begin macro)                    writeDigit("output")
    push    output
    add     '0'
    pop     out 
#(end macro)                    writeDigit("output")
#(begin macro)                    at_set("prefixzero",0)
#(begin macro)    at_2("set",a,b)
    at prefixzero
    set 0
    ta
#(end macro)    at_2("set",a,b)
#(end macro)                    at_set("prefixzero",0)
                else    
#(begin macro)                    if_equal("prefixzero",0)
    push prefixzero
    push 0
    equal
    if
#(end macro)                    if_equal("prefixzero",0)
#(begin macro)                        writeDigit("output")
    push    output
    add     '0'
    pop     out 
#(end macro)                        writeDigit("output")
                    fi
                fi
            else
#(begin macro)                writeDigit("output")
    push    output
    add     '0'
    pop     out 
#(end macro)                writeDigit("output")
            fi
        endloop
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
wend

