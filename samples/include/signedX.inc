# X bytes : X*8 bits signed integer : 

# macro varX(name) :declare global X * 8 bits
macro varX(X,name)
    js for (var xx=0 ; xx < X ; xx++) {
    var {name}_{xx}    # {xx} byte of {name}
    js }
    var {name}_s    # Sign of {name}
    var {name}_c    # carry of {name} 
endmacro

# macro lvarX(X,name) : declare local X * 8 bits
macro lvarX(X,name)
    lvar(name + "_c",0)
    lvar(name + "_s",0)
    js for (var xx =0 ; xx < X ; xx++) {
    js var xx1; xx1 = X-xx-1; // X-1 to 0
    lvar(name + "_"+ xx1,0)
    js }
endmacro

# macro fixsvX(X,name) : be sure that name is positive if equal to zero
macro fixsvX(X,name)
    push    {name}_s
    if    # if name is negative
        js for (var xx = 0; xx < X ; xx++) {
        if_equal(name +"_" + xx, 0)
        js }
                at_reset(name + "_s")   # set sign to positive
        js for ( var xx = 0 ; xx < X ; xx++) {
            fi
        js }
    fi
endmacro

# macro pushvX(X,name) : push X*8 bits name on stack
macro pushvX(X,name)
    push    {name}_c
    push    {name}_s
    js for (var xx =0 ; xx < X ; xx++) {
    js var xx1; xx1 = X-xx-1; // X-1 to 0
    push    {name}_{xx1}
    js }
endmacro

# macro pushX(X,immValue) : push immediate X*8 bits value on the stack
macro pushX(X,immValue) 
    push    0
    push    {(immValue>=0?0:1)}
    js var absImmValue; absImmValue = immValue>=0?immValue:-immValue;
    js for (var xx = 0 ; xx < X ; xx++) {
    js var xx1; xx1 = X-xx-1; // X-1 to 0
    js  absImmValue = absImmValue % Math.pow(256,xx1+1);
    push    {((absImmValue/Math.pow(256,xx1)) | 0)}
    js }
endmacro

# macro dupX(X) : duplicate X * 8 bits value on stack
macro dupX(X)
    js for (var xx = 0 ; xx < X+2 ; xx++) { // 0 to X+2-1
        push -{X+2-1}
    js  }
endmacro

# macro pushsvX(X,name) : push the sign of the X*8 bits variable 'name'
macro pushsvX(X,name)
    push    {name}_s
endmacro

# macro pushcvX(X,name) : push the carry of the X*8 bits variable 'name'
macro pushcvX(X,name)
    push    {name}_c
endmacro

# macro popvX(X,name) : pop the stack to the X*8 bits variable 'name'
macro popvX(X,name)
    js for (var xx=0; xx < X; xx++) {
    pop     {name}_{xx}
    js }
    pop     {name}_s
    pop     {name}_c
endmacro

# macro popsvX(X,name) : pop the sign(8 bits 0/1) to the X*8 bits variable 'name'
macro popsvX(X,name)
    POP    {name}_s
endmacro

# macro popcvX(X,name) : pop the carry(8 bit 0/1) to the X*8 bits variable 'name'
macro popcvX(X,name)
    POP    {name}_c
endmacro

# macro negvX(X,name) : name = -name
macro negvX(X,name)
    push    {name}_s
    dec
    bool
    dup
    if    # if name is now negative
        js for (var xx = 0; xx < X ; xx++) {
        if_equal(name +"_"+xx, 0)
        js }
                at_reset(name + "_s")   # set sign to positive if name==0
        js for (var xx = 0 ; xx < X ; xx++) {
        fi
        js }
    fi
    pop     {name}_s
endmacro

# macro absvX(X,name) : name = abs(name)
macro absvX(X,name)
    push    0
    pop     {name}_s
endmacro

# macro absX(X) : X*8 bits head of stack = abs(X*8 bits head of stack)
macro absX(X)
    js for (var xx=0 ; xx < X ; xx++) {
    bf <
    js }
    reset
    js for (var xx=0 ; xx < X ; xx++) {
    bf >
    js }
endmacro

# macro negX(X) : X*8 bits head of stack = - (X*8 bits head of stack)    
macro negX(X)
    js var _xbits; _xbits = X *8;
    popvX(X,"__tmp" + _xbits + "__")
    negvX(X,"__tmp" + xbits + "__")
    pushvX(X,"__tmp" + xbits + "__")
endmacro

# macro setcX(X) : set 1 to X*8 bits head of stack carry
macro setcX(X)
    js for (var xx=0 ; xx < X+1 ; xx++) {
    bf <
    js }
    set     1
    js for (var xx=0 ; xx < X+1 ; xx++) {
    bf >
    js }
endmacro

# macro setcvX(X,name) : set 1 to X*8 bits variable 'name' carry
macro setcvX(X,name)
    at_set(name+"_c",1)
endmacro

# macro clearcX(X) : set 0 to 8*X bits head of stack carry
macro clearcX(X)
    js for (var xx=0 ; xx < X+1 ; xx++) {
    bf <
    js }
    reset
    js for (var xx=0 ; xx < X+1 ; xx++) {
    bf >
    js }
endmacro

# macro clearcvX(X,name) : set 0 to X*8 bits variable 'name' carry
macro clearcvX(X,name)
    at_reset(name+"_c")
endmacro

# macro dropX(X) : drop 8*X bits value from stack
macro dropX(X)
    js for (var xx = 0; xx < X+2 ; xx++) {
    drop
    js }
endmacro

# macro resetX(X) : reset X*8 bits value of the head of stack
macro resetX(X)
    js for (var xx= 0; xx < X+1 ; xx++) {
    bf <
    js }
    bf [-]
    js for (var xx= 0; xx < X+1 ; xx++) {
    bf >[-]
    js }
endmacro

# macro resetvX(X,name) : reset X*8 bits variable 'name'
macro resetvX(X,name)
    at {name}_0
        resetX(X)
    ta
endmacro

# macro setX(X,immValue) : set X*8 bits value on the head of stack
macro setX(X,immValue)
    js for (var xx=0; xx < X+1; xx++) {
    bf <
    js }
    reset
    bf  >
    set {(immValue>=0?0:1)}
    js var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
    js for (var xx = 0 ; xx < X ; xx++) {
    js var xx1; xx1 = X-xx-1; // X-1 to 0
    js  absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    {((absImmValue/Math.pow(256,xx1)) | 0)}
    js }
endmacro

# macro setvX(X,name, immValue) : set X*8 bits immediate value to a X*8 bits variable 'name' 
macro setvX(X,name,immValue)
    at {name}_0
        setX(X,immValue)
    ta
endmacro

# macro fixsvX(X,name) : be sure to have sign to zero if X*8bits variable 'name' is zero
macro fixsvX(X,name)
    push    {name}_s
    if    # if name is negative
        js for (var xx = 0 ; xx < X ; xx++) {
        if_equal(name +"_" + xx, 0)
        js }
            at_reset(name + "_s")   # set sign to positive
        js for (var xx = 0 ; xx < X ; xx++) {
        fi
        js }
    fi
endmacro

# macro fixsX(X) : be sure to have sign to zero if X*8 bits head of stack value is zero
macro fixsX(X)
    js var _xbits; _xbits = X *8;
    popvX(X,"__tmp" + _xbits + "__")
    fixsvX(X,"__tmp" + _xbits + "__")
    pushvX(X,"__tmp" + _xbits + "__")
endmacro

# macro boolX(X) : same as 'bool' but with a X*8 bits value on stack
macro boolX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "__")
    js for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp{_xbits}___{xx}
    bool
    js }
    js for (var xx = 0 ; xx < X-1 ; xx++) {
    or
    js }
endmacro

# macro boolvX(X,name) : push on stack the bool(name) X*8 bits 
macro boolvX(X,name)
    js for (var xx = 0 ; xx < X; xx++) {
    push {name}_{xx}
    bool
    js }
    js for (var xx = 0 ; xx < X-1; xx++) {
    or
    js }
endmacro

# macro incvX(X,name) : name = name +1 (X*8 bits)
macro incvX(X,name)
    if_equal(name +"_s",0)  # positive number
        js for (var xx=0; xx < X; xx++) {
            at_inc(name + "_" + xx)
            if_equal( name + "_" + xx,0) # reach zero (roll over)
        js }
           setcvX(X, name) ## set carry (overflow)
        js for (var xx=0; xx < X; xx++) {
            fi
        js }        
    else    # negative number
        js for (var xx=0; xx < X; xx++) {
        at_dec(name + "_" + xx)
        if_equal(name +"_" + xx,255) # reduced
        js }
        setvX(X,name,1)
        js for (var xx=0; xx < X; xx++) {
        fi
        js }
        fixsvX(X,name)    
    fi
endmacro

# macro incX(X) : X*8 bits head of stack value incremented
macro incX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "__")
    incvX(X,"__tmp" + _xbits + "__")
    pushvX(X,"__tmp" + _xbits + "__")
endmacro

# macro decvX(X,name) : name-- (X*8 bits)
macro decvX(X,name)
    if_equal(name +"_s",1)  # negative number
        js for (var xx=0; xx < X; xx++) {
            at_inc(name + "_" + xx)
            if_equal( name + "_" + xx,0) # reach zero (roll over)
        js }
           setcvX(X, name) ## set carry (overflow)
        js for (var xx=0; xx < X; xx++) {
            fi
        js }        
    else    # positive number
        js for (var xx=0; xx < X; xx++) {
        at_dec(name + "_" + xx)
        if_equal(name +"_" + xx,255) # reduced
        js }
        setvX(X,name,-1)
        js for (var xx=0; xx < X; xx++) {
        fi
        js }
    fi
endmacro

# macro decX(X) : X*8 bits head of stack value decrement
macro decX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "__")
    decX(X,"__tmp" + _xbits + "__")
    pushvX(X,"__tmp" + _xbits + "__")
endmacro

# macro addviX(X,name, immValue) : name += immediate value
macro addviX(X,name,immValue)
js  _sv1++;
    scope_begin()
        lvarX(X,"addviXgX_"+_sv1)
        setX(X,immValue>0?immValue:-immValue)
        push    1
        sbm addviX_loop{_sv1}

        while
            boolvX(X,"addviXgX_"+ _sv1)
            if
                decvX(X,"addviXgX_"+_sv1)
                js if (immValue>0) {
                    incvX(X,name)
                js } else {
                    decvX(X,name)
                js }
            else
                at_reset("addviX_loop"+_sv1)
            fi
        wend
    scope_end()
endmacro

# macro addi16(immValue) : 16 bits head of stack value += immediate value
macro addi16(immValue)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "__")
    addviX(X,"__tmp" + _xbits + "__",immValue)
    pushvX(X,"__tmp" + _xbits + "__")
endmacro

# macro subviX(X,name, immValue) : name -= immediate value
macro subviX(X,name,immValue)
js  _sv2++;
    scope_begin()
        lvarX(X,"subviXgX_"+_sv2)
        setX(X,immValue>0?immValue:-immValue)
        push    1
        sbm subviX_loop{_sv2}
        while
            pushvX(X,"subviXgX_"+ _sv2)
            boolX(X)
            if
                decvX(X,"subviXgX_"+_sv2)
                js if (immValue>0) {
                    decvX(X,name)
                js } else {
                    incvX(X,name)
                js }
            else
                at_reset("subviX_loop"+_sv2)
            fi
        wend
    scope_end()
endmacro

# macro subiX(X,immValue) : X*8 bits head of stack value -= immediate value
macro subiX(X,immValue)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "__")
    subviX(X,"__tmp" + _xbits + "__",immValue)
    pushvX(X,"__tmp" + _xbits + "__")
endmacro

# macro addvvvX(X,name, nameA, nameB) : name = nameA + nameB
macro addvvvX(X,name, nameA, nameB)
js  _sv3++;
    pushvX(X,nameA)
    popvX(X,name)    # name = nameA
    scope_begin()
        lvarX(X,"addvvvXgX_" + _sv3)
        pushvX(X,nameB)
        popvX(X,"addvvvXgX_" + _sv3)
        push 0
        popsvX(X,"addvvvXgX_" + _sv3) # absolute number (always positive)
        
        push    {nameB}_s
        if    # nameB is negative 
            push    1
            sbm addvvvX_loop{_sv3}
            while
                pushvX(X,"addvvvXgX_"+ _sv3)
                boolX(X)
                if
                    decvX(X,"addvvvXgX_"+_sv3)
                    decvX(X,name)
                else
                    at_reset("addvvvX_loop"+_sv3)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm addvvvX_loop{_sv3}
            while
                pushvX(X,"addvvvXgX_"+ _sv3)
                boolX(X)
                if
                    decvX(X,"addvvvXgX_"+_sv3)
                    incvX(X,name)
                else
                    at_reset("addvvvX_loop"+_sv3)
                fi
            wend
        fi
    scope_end()
endmacro

# macro addvvX(X,name, nameA) : name += nameA
macro addvvX(X,name, nameA)
    addvvvX(X,name, name, nameA)
endmacro

# macro addvX(X,nameA) : head stack += nameA
macro addv16(nameA)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "__")
    addvvX(X,"__tmp" + _xbits + "__",nameA)
    pushvX(X,"__tmp" + _xbits + "__")
endmacro  

# macro addX(X) : stack-1 = stack-1 + stack ; stack--
macro addX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "b__")
    popvX(X,"__tmp" + _xbits + "a__")
    addvvvX(X,"__tmp" + _xbits + "c__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")
    pushvX(X,"__tmp" + _xbits + "c__")
endmacro



# macro subvvvX(X,name, nameA, nameB) : name = nameA - nameB
macro subvvvX(X,name, nameA, nameB)
js  _sv4++;
    pushvX(X,nameA)
    popvX(X,name)    # name = nameA
    scope_begin()
        lvarX(X,"subvvvXgX_" + _sv4)
        pushvX(X,nameB)
        popvX(X,"subvvvXgX_" + _sv4)
        push 0
        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
        
        push    {nameB}_s
        if    # nameB is negative 
            push    1
            sbm subvvvX_loop{_sv4}
            while
                pushvX(X,"subvvvXgX_"+ _sv4)
                boolX(X)
                if
                    decvX(X,"subvvvXgX_"+_sv4)
                    incvX(X,name)
                else
                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvvX_loop{_sv4}
            while
                pushvX(X,"subvvvXgX_"+ _sv4)
                boolX(X)
                if
                    decvX(X,"subvvvXgX_"+_sv4)
                    decvX(X, name)
                else
                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        fi
    scope_end()
endmacro

# macro subvvX(X,name, nameA) : name -= nameA 
macro subvvX(X,name, nameA)
    subvvvX(X,name, name, nameA)
endmacro

# macro subvX(X,nameA) : head stack -= nameA
macro subvX(X,nameA)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits +"__")
    subvvX(X,"__tmp" + _xbits +"__",nameA)
    pushvX(X,"__tmp" + _xbits +"__")
endmacro  

# macro subX(X) : stack-1 = stack-1 - stack ; stack--
macro subX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "b__")
    popvX(X,"__tmp" + _xbits + "a__")
    subvvvX(X,"__tmp" + _xbits + "c__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")
    pushvX(X,"__tmp" + _xbits + "c__")
endmacro

# macro mulvvvX(X,name, nameA, nameB) : name = nameA * nameB 
macro mulvvvX(X,name, nameA, nameB)
js _sv5++;
    scope_begin()
        lvarX(X,"mulvvvXabsNameA" + _sv5)
        pushvX(X,nameA)
        popvX(X,"mulvvvXabsNameA" + _sv5)
        lvar("mulvvvXsA" + _sv5, 0)
        pushsvX(X,"mulvvvXabsNameA" + _sv5)
        pop mulvvvXsA{_sv5}
        absvX(X,"mulvvvXabsNameA" + _sv5)   # absNameA = abs(nameA)
        
        lvarX(X,"mulvvvXabsNameB" + _sv5)
        pushvX(X,nameB)
        popvX(X,"mulvvvXabsNameB" + _sv5)
        lvar("mulvvvXsB" + _sv5, 0)
        pushsvX(X,"mulvvvXabsNameB" + _sv5)
        pop mulvvvXsB{_sv5}
        absvX(X,"mulvvvXabsNameB" + _sv5)   # absNameB = abs(nameB)
        
        resetvX(X,name)

        push    1
        sbm mulvvvX_loop{_sv5}
        while
            boolvX(X,"mulvvvXabsNameB" + _sv5)
            if  # absNameB is not zero
                addvvX(X,name,"mulvvvXabsNameA" + _sv5)
                decvX(X,"mulvvvXabsNameB" + _sv5)
            else 
                at_reset("mulvvvX_loop"+_sv5)
            fi
        wend        
        # resolve sign
        push mulvvvXsA{_sv5}
        push mulvvvXsB{_sv5}
        diff    # if sign(nameA) <> sign(nameB) then name is negative
        if
            at_set(name +"_s",1)
        fi        
    scope_end()
endmacro

# macro mulvvX(X,name, nameA) : name *= nameA
macro mulvvX(X,name, nameA)
    mulvvvX(X,name,name,nameA)
endmacro

# macro mulvX(X,name) : head of stack *= name
macro mulvX(X,name)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "__")
    mulvvX(X,"__tmp" + _xbits + "__",name)
    pushvX(X,"__tmp" + _xbits + "__")
endmacro

# macro mulX(X) : stack-1 = stack-1 * stack : stack--
macro mulX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "a__")
    popvX(X,"__tmp" + _xbits + "b__")
    mulvvvX(X,"__tmp" + _xbits + "c__","__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")
    pushvX(X,"__tmp" + _xbits + "c__")
endmacro

# macro equalvvX(X,nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise
macro equalvvX(X,nameA, nameB)
    push {nameA}_s
    push {nameB}_s
    equal
    js for (var xx = 0 ; xx< X ; xx++) {
    push {nameA}_{xx}
    push {nameB}_{xx}
    equal
    js }
    js for (var xx = 0 ; xx < X-1 ; xx++) {
    and
    js }
    and
endmacro

# macro equalX(X) : same as "equal" but with X*8 bits value in stack
macro equal(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "b__")
    popvX(X,"__tmp" + _xbits + "a__")
    equalvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")
endmacro

# macro diffvvX(X,nameA, nameB) : push 1 if Name != NameB , push 0 otherwise
macro diffvvX(X,nameA, nameB)
    equalvvX(X,nameA, nameB)
    not
endmacro

# macro diffX(X) : same as "diff" but with X*8 bits value in stack
macro diffX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "b__")
    popvX(X,"__tmp" + _xbits + "a__")
    diffvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")
endmacro

# macro supequalvvX(X,nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise
macro supequalvvX(X,nameA, nameB)
    js var _xbits; _xbits = X * 8;
    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)
    push __tmp{_xbits}c___s
    not
endmacro

# macro supequalX(X) : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 X*8 bits value from stack
macro supequalX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "b__")
    popvX(X,"__tmp" + _xbits + "a__")
    supequalvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")
endmacro

# macro infvvX(X,nameA, nameB) : push 1 if nameA < nameB push 0 otherwise
macro infvvX(X,nameA, nameB)
    js var _xbits; _xbits = X * 8;
    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)
    push __tmp{_xbits}c___s
endmacro

# macro infX(X) : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 X*8 bits value from stack
macro infX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "b__")
    popvX(X,"__tmp" + _xbits + "a__")
    infvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")
endmacro

# macro infequalvvX(X,nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise
macro infequalvvX(X,nameA, nameB)
    supequalvvX(X,nameB, nameA)
endmacro

# macro infequalX(X) : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 X*8 bits value from stack 
macro infequalX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "b__")
    popvX(X,"__tmp" + _xbits + "a__")
    infequalvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")
endmacro

# macro supvvX(X,nameA , nameB) : push 1 if nameA > nameB push 0 otherwise
macro supvvX(X,nameA, nameB)
    infvvX(X,nameB, nameA)
endmacro 

# macro supX(X) : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 X*8 bits value from stack
macro supX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "b__")
    popvX(X,"__tmp" + _xbits + "a__")
    supvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")
endmacro

# macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB
macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)
js _sv6++;
    scope_begin()
        lvarX(X,"divvvvvXabsNameA" + _sv6)
        pushvX(X,nameA)
        popvX(X,"divvvvvXabsNameA" + _sv6)
        lvar("divvvvvXsA" + _sv6,0)
        push {nameA}_s
        pop divvvvvXsA{_sv6}
        absvX(X,"divvvvvXabsNameA" + _sv6)
        
        lvarX(X,"divvvvvXabsNameB" + _sv6)
        pushvX(X,nameB)
        popvX(X,"divvvvvXabsNameB" + _sv6)
        lvar("divvvvvXsB" + _sv6,0)
        push {nameB}_s
        pop divvvvvXsB{_sv6}
        absvX(X,"divvvvvXabsNameB" + _sv6)
        
        pushvX(X,"divvvvvXabsNameA" + _sv6)
        popvX(X,nameAmodB)
        
        resetvX(X,nameAdivB)
        
        boolvX(X,"divvvvvXabsNameB" + _sv6)
        if
            push    1
            sbm     divvvvvX_g{_sv6}
            while
                supequalvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
                if
                    incvX(X,nameAdivB)
                    subvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
                else
                    at_reset("divvvvvX_g" + _sv6) # break while/wend
                fi
            wend
            
            # treat sign of nameAmodB and nameAdivB
            push    divvvvvXsA{_sv6}
            pop     {nameAmodB}_s   # sign of nameAmodB is sign of nameA
            push    divvvvvXsA{_sv6}
            push    divvvvvXsB{_sv6}
            diff
            if
                push    1
                pop     {nameAdivB}_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
        else
            setcvX(X,nameAdivB)
            setcvX(X,nameAmodB)            
        fi
    scope_end()
endmacro

# macro divvvX(X,nameA, nameB) : Push 2 X*8 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB 
macro divvvX(X,nameA, nameB)
    js var _xbits; _xbits = X * 8;
    divvvvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__", nameA, nameB)
    pushvX(X,"__tmp" + _xbits + "b__")   # nameA mod nameB
    pushvX(X,"__tmp" + _xbits + "a__")   # nameA div nameB
endmacro

# macro divX(X) : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B
macro divX(X)
    js var _xbits; _xbits = X * 8;
    popvX(X,"__tmp" + _xbits + "b__")
    popvX(X,"__tmp" + _xbits + "a__")
    divvvvvX(X,"__tmp" + _xbits + "c__","__tmp" + _xbits + "d__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")
    pushvX(X,"__tmp" + _xbits + "d__") # __tmpXa__ mod __tpmXb__
    pushvX(X,"__tmp" + _xbits + "c__") # __tmpXa__ div __tmpXb__
endmacro


# macro castX(X1,X2) : transform stack X1*8 bits value to X2*8 bits value
macro castX(X1,X2)
    js if (X1 != X2 && X1 > 0 && X2 > 0) {
    js _sv9++;
    sbmX(X1,"_castXInput"+_sv9,0)
    varX(X2,"_castXoutput"+_sv9)
    scope_begin()
        lvarX(X1,"ori" + _sv9)
        lvarX(X2,"dest" + _sv9)

        pushvX(X1,"_castXInput"+_sv9)       
        popvX(X1,"ori" + _sv9)
        push    ori{_sv9}_s   
        pop     dest{_sv9}_s  # keep sign
        js if (X1 < X2) {
            js for (var xx = 0 ; xx < X1; xx++) {
                push    ori{_sv9}_{xx}
                pop     dest{_sv9}_{xx}
            js }
            js for (var xx = X1; xx < X2 ; xx++ ) {
                push    0
                pop     dest{_sv9}_{xx}
            js } 
        js } else { // if X1 > X2
            js for (var xx = 0 ; xx < X2; xx++) {
                push    ori{_sv9}_{xx}
                pop     dest{_sv9}_{xx}
            js }
            
        js }
        pushvX(X2,"dest"+_sv9)
        popvX(X2,"_castXoutput"+_sv9)
    scope_end()
    dropX(X1)
    pushvX(X2,"_castXoutput"+_sv9) 
    js }
endmacro

# macro sbmX2(X,name,backward,offset) : sbm a X*8 bit head of stack - (backward X*8 bits value+ offset)
macro sbmX2(X,name,backward,offset)
    js for (var xx=0; xx <X ; xx++) {
    sbm {name}_{xx} - {(backward*(X+2)+xx+offset)}
    js }
    sbm {name}_s - {(backward*(X+2)+X+offset)}
    sbm {name}_c - {(backward*(X+2)+X+1+offset)}
endmacro

# macro sbmX(X,name,backward) : sbm a X*8 bit head of stack - (backward X*8 bits value)
macro sbmX(X,name,backward)
    sbmX2(X,name,backward,0)
endmacro


# upcast macro
macro  cast8to16()
    castX(1,2)
endmacro

macro  cast8to24()
    castX(1,3)
endmacro

macro  cast8to32()
    castX(1,4)
endmacro

macro  cast16to24()
    castX(2,3)
endmacro

macro  cast16to32()
    castX(2,4)
endmacro

macro  cast24to32()
    castX(3,4)
endmacro

# downcast macro
macro  cast16to8()
    castX(2,1)
endmacro

macro  cast24to8()
    castX(3,1)
endmacro

macro  cast32to8()
    castX(4,1)
endmacro

macro  cast24to16()
    castX(3,2)
endmacro

macro  cast32to16()
    castX(3,2)
endmacro

macro  cast32to24()
    castX(4,3)
endmacro



# macro writeX(X,name) : print out the decimal value (signed)
macro writeX(X,name)
js _sv7++;
js var _xbits; _xbits = X * 8;
    scope_begin()
        lvar("writeXprefixzero"+_sv7,1)
        lvarX(X,"writeX_A"+_sv7)
        lvarX(X,"writeX_B"+_sv7)
        lvarX(X,"writeX_AmodB"+_sv7)
        lvarX(X,"writeX_AdivB"+_sv7)

        pushvX(X,name)
        popvX(X,"writeX_A"+_sv7)
        
        pushX(X,10)
        popvX(X,"writeX_B"+_sv7)
        
        push writeX_A{_sv7}_s
        if
            push    '-'
            pop     out   # write '-' if name < 0
        fi
        
        push _stringDecimal{_xbits}_.size
        loop
            # output = input mod 10 ; input = input div 10
            divvvvvX(X,"writeX_AdivB" + _sv7, "writeX_AmodB" + _sv7, "writeX_A" + _sv7, "writeX_B" + _sv7)
            push    writeX_AmodB{_sv7}_0
            pop  _stringDecimal{_xbits}_
            pushvX(X,"writeX_AdivB" + _sv7)
            popvX(X,"writeX_A" + _sv7)
            arotl _stringDecimal{_xbits}_
        endloop
        
        push _stringDecimal{_xbits}_.size
        sbm writeXcnt{_sv7}
        loop
            arotr _stringDecimal{_xbits}_
            if_sup("writeXcnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
                if_diff("_stringDecimal" + _xbits +"_",0)
                    push _stringDecimal{_xbits}_
                    popouthexa()
                    at_set("writeXprefixzero"+_sv7,0)
                else    
                    if_equal("writeXprefixzero"+_sv7,0)
                        push _stringDecimal{_xbits}_
                        popouthexa()
                    fi
                fi
            else
                push _stringDecimal{_xbits}_
                popouthexa()
            fi
        endloop
        
        
    scope_end()
endmacro

# macro printhexaX(X,name) : print the X*8 bit variable in hexadecimal
macro printhexaX(X,name)
    push    {name}_c
    popout8hexa()
    push    {name}_s
    popout8hexa()
    js for (var xx = 0 ; xx < X ; xx++) {
    js var xx1; xx1= X-xx-1
    push    {name}_{xx1}
    popout8hexa()
    js }
endmacro


js var _sv1; var _sv2; var _sv3; var _sv4; var _sv5; var _sv6; var _sv7; var _sv8; var _sv9;
js  _sv1 = 0; _sv2=0; _sv3 = 0; _sv4 = 0; _sv5 = 0; _sv6 = 0; _sv7 = 0; _sv8 = 0; _sv9 = 0;

# declare temporary 16 bits value used for signed16.inc macros
macro declareTmpX(X)
    js var _xbits; _xbits = X * 8;
    js var _nDecimal ; _nDecimal = ("" + (Math.pow(2,8*X)-1)).length;
    varX(X, "__tmp" + _xbits + "__" )
    varX(X, "__tmp" + _xbits + "a__" )
    varX(X, "__tmp" + _xbits + "b__" )
    varX(X, "__tmp" + _xbits + "c__" )
    varX(X, "__tmp" + _xbits + "d__" )
    var  _stringDecimal{_xbits}_*{_nDecimal}
endmacro