# Common macros
# scope variables
js var __scope; var __idx;
js __scope=[0]; __idx = 0;


# macro scope_begin : start a new scope for local variable (usage of macro lvar)
macro scope_begin()
    js __scope.push(0);
endmacro

# macro scope_end : end a scope , then drop scoped local variables (drop) (usage of lvar)
macro scope_end()
    js if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
    js } 
    js if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
endmacro

# macro lvar(vname,value) : declare  in scope, a local variable named vname with an assigned value (stored in stack)
macro lvar(vname,value)
    push    {value}
    sbm     {vname}
    js __scope[__scope.length-1]++; 
endmacro

# macro if_diff(a,b) : if (a != b) {
macro if_diff(a,b)
    push    {a}
    push    {b}
    diff
    if
endmacro

# macro if_equal(a,b) : if (a == b) {
macro if_equal(a,b)
    push    {a}
    push    {b}
    equal
    if
endmacro

# macro if_sup(a,b) : if (a > b) {
macro if_sup(a,b)
    push    {a}
    push    {b}
    sup
    if
endmacro

# macro if_inf(a,b) : if (a < b) {
macro if_inf(a,b)
    push    {a}
    push    {b}
    inf
    if
endmacro

# macro if_supequal(a,b) : if (a >= b) {
macro if_supequal(a,b)
    push    {a}
    push    {b}
    inf
    not
    if
endmacro

# macro if_infequal(a,b) : if (a <= b) {
macro if_infequal(a,b)
    push    {a}
    push    {b}
    sup
    not
    if
endmacro

# macro at_2
macro at_2(ope, a,b)
    at      {a}
    {ope}   {b}
    ta
endmacro

# macro at_1
macro at_1(ope, a)
    at_2(ope,a,"")
endmacro

# macro at_reset(a) : a=0
macro at_reset(a)
    at_1("reset",a)
endmacro

# macro at_inc(a) : a++
macro at_inc(a)
    at_1("inc",a)
endmacro

# macro at_dec(a) : a--
macro at_dec(a)
    at_1("dec",a)
endmacro

# macro at_in(a)  : a= readchar()
macro at_in(a)
    at_1("in",a)
endmacro

# macro at_out(a) : write(a)
macro at_out(a)
    at_1("out",a)
endmacro

# macro at_add(a,b) : a += b (immediate)
macro at_add(a,b)
    at_2("add",a,b)
endmacro

# macro at_sub(a,b) : a -= b (immediate)
macro at_sub(a,b)
    at_2("sub",a,b)
endmacro

# macro at_set(a,b) : a = b (immediate)
macro at_set(a,b)
    at_2("set",a,b)
endmacro

macro write(a)
    push    {a}
    pop     out
endmacro

macro divide(a,b,d,r)
    push    {a}
    push    {b}
    div
    pop     {d}
    pop     {r}
endmacro

#macro addof() : push A, push B , replaced by Carry, A+B
macro addof()
    sbm _addofb{_addof}
    sbm _addofa{_addof} - 1
    scope_begin()
        lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao{_addof}
        while
            push _addofa{_addof}
            if
                at _addofa{_addof}
                    dec
                ta 
                at _addofb{_addof}
                    inc
                ta
                push _addofb{_addof}
                not
                if 
                    at _addofc{_addof}
                        set 1
                    ta
                fi
            else 
                at _loopao{_addof}
                    reset
                ta
            fi
        wend
        push _addofc{_addof}
        if
            at _addofa{_addof}
                set 1
            ta
        fi
    scope_end()
endmacro

# macro subof() : push A, push B , replaced by Carry, A-B
macro subof()
    sbm _subofb{_subof}
    sbm _subofa{_subof} - 1
    scope_begin()
        lvar("_subofc"+_subof ,0)
        push 1
        sbm _loopso{_subof}
        while
            push _subofb{_subof}
            if  
                at _subofb{_subof}
                    dec
                ta
                at _subofa{_subof}
                    dec
                ta
                push _subofa{_subof}
                inc
                not
                if
                    at _subofc{_subof}
                        set 1
                    ta
                fi 
            else
                at _loopso{_subof}
                    reset
                ta
            fi
        wend
        push _subofc{_subof}
        if
            at _subofb{_subof}
                set 1
            ta
        fi
    scope_end()
    swap
endmacro

# macro mulof() : A = stack-1, B= stack : stack-1 = A*B div 256, stack = A*B mod 256
macro mulof()
    sbm     _mulofA{_mulof} - 1
    sbm     _mulofB{_mulof}
    scope_begin
        lvar    _mulofABdiv256{_mulof},    0
        lvar    _mulofABmod256{_mulof},    0
        push    _mulofB{_mulof}
        loop
            push    _mulofABmod256{_mulof}
            push    _mulofA{_mulof}
            addof
            pop     _mulofABmod256{_mulof}
            push    _mulofABdiv256{_mulof}
            add
            pop     _mulofABdiv256{_mulof}
        endloop
        push    _mulofABmod256{_mulof}
        pop     _mulofB{_mulof}
        push    _mulofABdiv256{_mulof}
        pop     _mulofA{_mulof}    
    scope_end
endmacro


macro left_rewind(array)
    push    1
    sbm     __looprewind{_left_rewind}
    while
        if_diff {array}.pos,    0
            arotl {array}
        else
            at_reset    __looprewind{_left_rewind}
        fi
    wend
endmacro

macro right_rewind(array)
    push {array}.pos
    loop
        arotr {array}
    endloop
endmacro

# macro popouthexa() : from head of stack value (from 0 to 15) write out hexa (from 0 to 9 and A to F)
macro popouthexa()
    sbm     _input{_popouthexa}
    if_sup  _input{_popouthexa},    9
        at_add("_input" + _popouthexa, "'7'")
    else
        at_add("_input" + _popouthexa, "'0'")
    fi
    pop out
endmacro

# macro popout8hexa() : from head of stack the 8 bit value is write out in hexa
macro popout8hexa()
    push    16
    div
    popouthexa # output most significant hexa character from head of stack value, then drop
    popouthexa # output less significant hexa character from head of stack value, then drop
endmacro

macro writeDigit(a)
    push    {a}
    add     '0'
    pop     out 
endmacro


define DECIMALSIZE  3
var __wbdoutput*{DECIMALSIZE}

# a Byte in stack : output its decimal value
macro   writeByteDecimal()
    sbm _wbdinput{_writeByteDecimal}
    push {DECIMALSIZE}
    loop
        # output = input mod 10 ; input = input div 10
        divide  _wbdinput{_writeByteDecimal},  10, _wbdinput{_writeByteDecimal},  __wbdoutput
        arotl __wbdoutput
    endloop
    scope_begin
        lvar    prefixzero{_writeByteDecimal}, 1
        push    {DECIMALSIZE}
        sbm     __wbdcnt{_writeByteDecimal}
        loop
            arotr   __wbdoutput
            if_sup   __wbdcnt{_writeByteDecimal},    1   # cnt == 3 or cnt == 2
                if_diff __wbdoutput, 0
                    writeDigit  __wbdoutput
                    at_set  prefixzero{_writeByteDecimal}, 0
                else    
                    if_equal    prefixzero{_writeByteDecimal}, 0
                        writeDigit  __wbdoutput
                    fi
                fi
            else
                writeDigit  __wbdoutput
            fi
        endloop
    scope_end
    drop    # remove push
endmacro



# macro print(aString) : print out a string
macro print(aString)
    push    0
    js var __prev; __prev = 0;
    js for (var istr=0; istr < aString.length ; istr++) {
    js var __ascii; __ascii = aString[istr].charCodeAt(0);
    js var __move; __move = __ascii - __prev;
    js var __dist ; __dist = (__move > 0)?__move:-__move;
    js if (__dist < __ascii) { // shorter to move
    js      if (__move > 0 ) {
    add     {__dist}   
    js      } else {
    js         if (__dist != 0) {
    sub     {__dist}   
    js          }
    js      }
    js } else {
    set     {__ascii}    
    js}
    out             # {(aString[istr].charCodeAt(0)>31?("'"+aString[istr]+"'"):"")}
    js __prev  = __ascii;
    js }
    drop
endmacro
