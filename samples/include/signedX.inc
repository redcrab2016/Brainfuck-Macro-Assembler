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

# macro fixsX(X) : be sure to have sign to zero if X*8 bits head of stack value is zero
macro fixsX(X)
    sbmX(X,"_fixsX"+_fixsX,0)
    fixsvX(X,"_fixsX"+_fixsX)
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
        push -{(X+2-1)}
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
    sbm _absXSign{_absX} - {X}
    at_reset("_absXSign{_absX}")
endmacro

# macro negX(X) : X*8 bits head of stack = - (X*8 bits head of stack)    
macro negX(X)
    sbmX(X, "_negXName"+ _negX,0)
    negvX(X,"_negXName"+ _negX)
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

# macro boolX(X) : same as 'bool' but with a X*8 bits value on stack
macro boolX(X)
    sbmX(X,"_boolX"+_boolX,0)
    boolvX(X,"_boolX"+_boolX)
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
    sbmX(X,"_incX" + _incX,0)
    incvX(X,"_incX" + _incX)
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
    sbmX(X,"_decX"+_decX,0)
    decvX(X,"_decX"+_decX)
endmacro

# macro addviX(X,name, immValue) : name += immediate value
macro addviX(X,name,immValue)
scope_begin()
    lvarX(X,"_addviXNameA" + _addviX)
    lvarX(X,"_addviXNameB" + _addviX)
    pushvX(X, name)
    popvX(X, "_addviXNameA" + _addviX)
    pushX(X, immValue)
    popvX(X, "_addviXNameB" + _addviX)
    addvvvX(X,name, "_addviXNameA" + _addviX, "_addviXNameB" + _addviX)
scope_end()
endmacro

# macro addiX(X,immValue) : X*8 bits head of stack value += immediate value
macro addiX(X,immValue)
    sbmX(X,"_addiXName" + _addiX,0)
scope_begin()
    lvarX(X,"_addiXNameA" + _addiX)
    lvarX(X,"_addiXNameB" + _addiX)
    pushvX(X,"_addiXName" + _addiX)
    popvX(X,"_addiXNameA" + _addiX)
    pushX(X,immValue)
    popvX(X,"_addiXNameB" + _addiX)
    addvvvX(X,"_addiXName" + _addiX, "_addiXNameA" + _addiX, "_addiXNameB" + _addiX)
scope_end()
endmacro

# macro subviX(X,name, immValue) : name -= immediate value
macro subviX(X,name,immValue)
    scope_begin()
        lvarX(X,"_subviXNameA" + _subviX)
        lvarX(X,"_subviXNameB" + _subviX)
        pushvX(X,name)
        popvX(X,"_subviXNameA" +_subviX)
        pushX(X, immValue)
        popvX(X, "_subviXNameB" + _subviX)
        subvvvX(X, name, "_subviXNameA"+ _subviX, "_subviXNameB"+ _subviX)       
    scope_end()
endmacro

# macro subiX(X,immValue) : X*8 bits head of stack value -= immediate value
macro subiX(X,immValue)
    sbmX(X, "_subiXName" + _subiX,0)
    scope_begin()
        lvarX(X, "_subixNameA" + _subiX)
        lvarX(X, "_subixNameB" + _subiX)
        pushvX(X, "_subiXName" + _subiX)
        popvX(X, "_subixNameA" + _subiX)
        pushX(X, immValue)
        popvX(X,"_subixNameB" + _subiX)
        subvvvX(X, "_subiXName" + _subiX, "_subiXNameA" + _subiX, "_subiXNameB" + _subiX)
    scope_end()
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

# macro addvvvX(X,name, nameA, nameB) : name = nameA + nameB
macro addvvvX(X,name, nameA, nameB)
    push    {nameA}_s
    push    {nameB}_s
    or
    not
    push    {nameA}_s
    push    {nameB}_s
    and
    or
    if      # nameA and nameB are both positive or negative
        push    {nameA}_s
        pop     {name}_s    # name has same sign of nameA and nameB
        push    0
        js for (var xx = 0 ; xx < X; xx++) {
        push    {nameA}_{xx}
        addof()
        pop     {name}_{xx}
        push    {nameB}_{xx}
        addof()
        push    {name}_{xx}
        addof()
        pop     {name}_{xx}
        add    
        js }
        pop     {name}_c
    else  # nameA has a different sign of nameB
        scope_begin()
            lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
            lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB 
            js for (var xx = X-1 ; xx >=0; xx--) {
            push    {nameA}_{xx}
            push    {nameB}_{xx}
            sup
            if  
               at _asupb{_addvvvX}
                set 1
               ta
            else 
                push    {nameA}_{xx}
                push    {nameB}_{xx}
                diff
                if
                at _asupb{_addvvvX}
                    reset
                ta
                else           
            js }
            at _aequb{_addvvvX}
                set 1
            ta
            js for (var xx = 0 ; xx < X ; xx++) {
            fi
            fi
            js }
            push _asupb{_addvvvX}
            if  # absA > absB : do  absA-absB with sign of A
                # print("absA > absB\n")
                push    {nameA}_s
                pop     {name}_s    # name has same sign of nameA 

                push    0
                sbm     _addvvvXCarry{_addvvvX}
                js for (var xx = 0 ; xx < X; xx++) {
                    push    {nameA}_{xx}
                    push    {nameB}_{xx}
                    subof()
                    push    _addvvvXCarry{_addvvvX}
                    subof()
                    pop     {name}_{xx}
                    add
                    pop     _addvvvXCarry{_addvvvX}
                js }
                pop     {name}_c
            else # absB >= absA : 
                push    _aequb{_addvvvX}
                if # absA == absB , then name =0 (opposite sign then sum is zero)
                    #print("absA == absB\n")
                    setvX(X,name,0) 
                else # absA < absB : do   absB-absA with sign of B
                    #print("absA < absB\n")
                    push    {nameB}_s
                    pop     {name}_s    # name has same sign of nameB

                    push    0
                    sbm     _addvvvXCarry{_addvvvX}
                    js for (var xx = 0 ; xx < X; xx++) {
                        push    {nameB}_{xx}
                        push    {nameA}_{xx}
                        subof()
                        push    _addvvvXCarry{_addvvvX}
                        subof()
                        pop     {name}_{xx}
                        add
                        pop     _addvvvXCarry{_addvvvX}
                    js }
                    pop     {name}_c
                fi 
            fi            
        scope_end()
    fi    
endmacro


# macro addvvX(X,name, nameA) : name += nameA
macro addvvX(X,name, nameA)
    scope_begin()
        lvarX(X,"_addvvXnameB"+_addvvX)
    pushvX(X,name)
    popvX(X,"_addvvXnameB"+_addvvX)
    addvvvX(X,name, "_addvvXnameB"+_addvvX, nameA)
    scope_end()
endmacro

# macro addvX(X,nameA) : head stack += nameA
macro addvX(nameA)
    sbmX(X, "_addvXName"+ _addvX, 0)
    addvvX(X, "_addvXName"+ _addvX, nameA)
endmacro  

# macro addX(X) : stack-1 = stack-1 + stack ; stack--
macro addX(X)
    sbmX(X, "_addXName"+ _addX, 1)
    sbmX(X, "_addXNameB"+ _addX, 0)
    scope_begin()
        lvarX(X,"_addXNameA"+_addX)
        pushvX(X,"_addXName"+_addX)
        popvX(X,"_addXNameA"+_addX)
        addvvvX(X, "_addXName" + _addX, "_addXNameA" + _addX, "_addXNameB" + _addX)
    scope_end()
    dropX(X)
endmacro

# macro subvvvX(X,name, nameA, nameB) : name = nameA - nameB
macro subvvvX(X, name, nameA, nameB)
    scope_begin()
        lvarX(X,"_negNameB" + _subvvvX)
        pushvX(X,nameB)
        popvX(X,"_negNameB" + _subvvvX)
        negvX(X,"_negNameB" + _subvvvX)
        addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
    scope_end()
endmacro

# macro subvvX(X,name, nameA) : name -= nameA 
macro subvvX(X,name, nameA)
    scope_begin()
     lvarX(X, "_subvvXNameB" + _subvvX)
     pushvX(X, name)
     popvX(X, "_subvvXNameB" + _subvvX)
     subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)
    scope_end()
endmacro

# macro subvX(X,nameB) : head stack -= nameB
macro subvX(X,nameB)
    sbmX(X, "_subvXName" + _subX, 0)
    scope_begin()
        lvarX(X,"_subvXNameA" + _subX)
        pushvX(X, "_subvXName" + _subX)
        popvX(X,"_subvXNameA" + _subX)
        subvvvX(X, "_subvXName" + _subX, "_subvXNameA" + _subX, nameB)
    scope_end()
endmacro  

# macro subX(X) : stack-1 = stack-1 - stack ; stack--
macro subX(X)
    sbmX(X, "_subXName" + _subX, 1)
    sbmX(X,"_subXNameB" + _subX, 0)
    scope_begin()
        lvarX(X,"_subXNameA" + _subX)
        pushvX(X,"_subXName" + _subX)
        popvX(X,"_subXNameA" + _subX)
        subvvvX(X,"_subXName" + _subX, "_subXNameA" + _subX, "_subXNameB" + _subX)
    scope_end()
    dropX(X)
endmacro

# macro mulvvvX(X,name, nameA, nameB) : name = nameA * nameB 
macro mulvvvX(X,name, nameA, nameB)
    scope_begin()
        lvarX(X,"_mulvvvXabsNameA" + _mulvvvX)
        pushvX(X,nameA)
        popvX(X,"_mulvvvXabsNameA" + _mulvvvX)
        lvar("_mulvvvXsA" + _mulvvvX, 0)
        pushsvX(X,"_mulvvvXabsNameA" + _mulvvvX)
        pop _mulvvvXsA{_mulvvvX}
        absvX(X,"_mulvvvXabsNameA" + _mulvvvX)   # absNameA = abs(nameA)
        
        lvarX(X,"_mulvvvXabsNameB" + _mulvvvX)
        pushvX(X,nameB)
        popvX(X,"_mulvvvXabsNameB" + _mulvvvX)
        lvar("_mulvvvXsB" + _mulvvvX, 0)
        pushsvX(X,"_mulvvvXabsNameB" + _mulvvvX)
        pop _mulvvvXsB{_mulvvvX}
        absvX(X,"_mulvvvXabsNameB" + _mulvvvX)   # absNameB = abs(nameB)
        
        resetvX(X,name)

        push    1
        sbm _mulvvvX_loop{_mulvvvX}
        while
            boolvX(X,"_mulvvvXabsNameB" + _mulvvvX)
            if  # absNameB is not zero
                addvvX(X,name,"_mulvvvXabsNameA" + _mulvvvX)
                decvX(X,"_mulvvvXabsNameB" + _mulvvvX)
            else 
                at_reset("_mulvvvX_loop"+_mulvvvX)
            fi
        wend        
        # resolve sign
        push _mulvvvXsA{_mulvvvX}
        push _mulvvvXsB{_mulvvvX}
        diff    # if sign(nameA) <> sign(nameB) then name is negative
        if
            at_set(name +"_s",1)
        fi        
    scope_end()
endmacro

# macro mulvvX(X,name, nameB) : name *= nameB
macro mulvvX(X,name, nameB)
    scope_begin()
    lvarX(X, "_milvvXNameA" + _mulvvX)
    pushvX(X,name)
    popvX(X,"_milvvXNameA" + _mulvvX)
    mulvvvX(X,name,"_milvvXNameA" + _mulvvX,nameB)
    scope_end()
endmacro

# macro mulvX(X,name) : head of stack *= name
macro mulvX(X,name)
    sbmX(X, "_mulvXName"+ _mulvX, 0)
    mulvvX(X, "_mulvXName"+ _mulvX, name)
endmacro

# macro mulX(X) : stack-1 = stack-1 * stack : stack--
macro mulX(X)
    sbmX(X, "_mulXName" + _mulX, 1)
    sbmX(X, "_mulXNameB" + _mulX, 0)
    scope_begin()
        lvarX(X, "_mulXNameA" + _mulX)
        pushvX(X, "_mulXName" + _mulX)
        popvX(X, "_mulXNameA" + _mulX)
        mulvvvX(X, "_mulXName" + _mulX, "_mulXNameA" + _mulX, "_mulXNameB" + _mulX)
    scope_end()
    dropX(X)
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
macro equalX(X)
    sbmX(X,"_equalXA" + _equalX, 1)
    sbmX(X,"_equalXB" + _equalX, 0)
    sbm _equalX{_equalX} - {((X+2)*2-1)}
    equalvvX(X,"_equalXA" + _equalX, "_equalXB" + _equalX)
    pop _equalX{_equalX}
    js for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
    drop
    js }
endmacro

# macro diffvvX(X,nameA, nameB) : push 1 if Name != NameB , push 0 otherwise
macro diffvvX(X,nameA, nameB)
    equalvvX(X,nameA, nameB)
    not
endmacro

# macro diffX(X) : same as "diff" but with X*8 bits value in stack
macro diffX(X)
    sbmX(X,"_diffXA" + _diffX, 1)
    sbmX(X,"_diffXB" + _diffX, 0)
    sbm _diffX{_diffX} - {((X+2)*2-1)}
    diffvvX(X,"_diffXA" + _diffX, "_diffXB" + _diffX)
    pop _diffX{_diffX}
    js for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
    drop
    js }
endmacro

# macro supequalvvX(X,nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise
macro supequalvvX(X,nameA, nameB)
    push 0
    sbm _supequalvvX{_supequalvvX}
    scope_begin()
        lvarX(X, "_supequalvvXName" + _supequalvvX)
        subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
        push _supequalvvXName{_supequalvvX}_s
        not
        pop _supequalvvX{_supequalvvX}
    scope_end()
endmacro

# macro supequalX(X) : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 X*8 bits value from stack
macro supequalX(X)
    sbmX(X, "_supequalXA" + _supequalX, 1)
    sbmX(X, "_supequalXB" + _supequalX, 0)
    sbm _supequalX{_supequalX} - {((X+2)*2-1)}
    supequalvvX(X, "_supequalXA" + _supequalX, "_supequalXB" + _supequalX)
    pop _supequalX{_supequalX}
    js for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
    drop
    js }
endmacro

# macro infvvX(X,nameA, nameB) : push 1 if nameA < nameB push 0 otherwise
macro infvvX(X,nameA, nameB)
    push 0
    sbm _infvvX{_infvvX}
    scope_begin()
        lvarX(X, "_infvvXName" + _infvvX)
        subvvvX(X,  "_infvvXName" + _infvvX, nameA, nameB)
        push _infvvXName{_infvvX}_s
        pop _infvvX{_infvvX}
    scope_end()
endmacro

# macro infX(X) : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 X*8 bits value from stack
macro infX(X)
    sbmX(X, "_infXA" + _infX, 1)
    sbmX(X, "_infXB" + _infX, 0)
    sbm _infX{_infX} - {((X+2)*2-1)}
    infvvX(X, "_infXA" + _infX, "_infXB" + _infX)
    pop _infX{_infX}
    js for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
    drop
    js }
endmacro

# macro infequalvvX(X,nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise
macro infequalvvX(X,nameA, nameB)
    supequalvvX(X,nameB, nameA)
endmacro

# macro infequalX(X) : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 X*8 bits value from stack 
macro infequalX(X)
    sbmX(X, "_infequalXA" + _infequalX, 1)
    sbmX(X, "_infequalXB" + _infequalX, 0)
    sbm _infequalX{_infequalX} - {((X+2)*2-1)}
    infequalvvX(X, "_infequalXA" + _infequalX, "_infequalXB" + _infequalX)
    pop _infequalX{_infequalX}
    js for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
    drop
    js }
endmacro

# macro supvvX(X,nameA , nameB) : push 1 if nameA > nameB push 0 otherwise
macro supvvX(X,nameA, nameB)
    infvvX(X,nameB, nameA)
endmacro 

# macro supX(X) : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 X*8 bits value from stack
macro supX(X)
    sbmX(X, "_supXA" + _supX, 1)
    sbmX(X, "_supXB" + _supX, 0)
    sbm _supX{_supX} - {((X+2)*2-1)}
    supvvX(X, "_supXA" + _supX, "_supXB" + _supX)
    pop _supX{_supX}
    js for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
    drop
    js }
endmacro

# macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB
macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)
    scope_begin()
        lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)
        pushvX(X,nameA)
        popvX(X,"_divvvvvXabsNameA" + _divvvvvX)
        lvar("_divvvvvXsA" + _divvvvvX, 0)
        push {nameA}_s
        pop _divvvvvXsA{_divvvvvX}
        absvX(X,"_divvvvvXabsNameA" + _divvvvvX)
        
        lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)
        pushvX(X,nameB)
        popvX(X,"_divvvvvXabsNameB" + _divvvvvX)
        lvar("_divvvvvXsB" + _divvvvvX, 0)
        push {nameB}_s
        pop _divvvvvXsB{_divvvvvX}
        absvX(X,"_divvvvvXabsNameB" + _divvvvvX)
        
        pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)
        popvX(X,nameAmodB)
        
        resetvX(X,nameAdivB)
       
        boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)
        if
            push    1
            sbm     _divvvvvX_g{_divvvvvX}
            while
                supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
                if
                    incvX(X,nameAdivB)
                    subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
                else
                    at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend
                fi
            wend
            # treat sign of nameAmodB and nameAdivB
            push    _divvvvvXsA{_divvvvvX}
            pop     {nameAmodB}_s   # sign of nameAmodB is sign of nameA
            push    _divvvvvXsA{_divvvvvX}
            push    _divvvvvXsB{_divvvvvX}
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
    pushX(X, 0)
    sbmX(X, "_divvvXB" + _divvvX, 0) # nameA mod nameB
    pushX(X, 0)
    sbmX(X, "_divvvXA" + _divvvX, 0) # nameA div nameB
    divvvvvX(X, "_divvvXA" + _divvvX, "_divvvXB" + _divvvX, nameA, nameB)
endmacro

# macro divX(X) : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B
macro divX(X)
    sbmX(X, "_divXA" + _divX, 1) # A before div, A mod B after
    sbmX(X, "_divXB" + _divX, 0) # B before div, A div B after
    scope_begin()
        lvarX(X, "_divXC"+ _divX)
        lvarX(X, "_divXD"+ _divX)
        divvvvvX(X, "_divXC"+ _divX, "_divXD"+ _divX, "_divXA"+ _divX, "_divXB"+ _divX)
        pushvX(X, "_divXC"+ _divX)
        popvX(X, "_divXB" + _divX)  # B = C = A div B
        pushvX(X, "_divXD"+ _divX)
        popvX(X, "_divXA" + _divX)  # A = D = A mod B
    scope_end()
endmacro


# macro castX(X1,X2) : transform stack X1*8 bits value to X2*8 bits value
macro castX(X1,X2)
    js if (X1 != X2 && X1 > 0 && X2 > 0) {
    sbmX(X1,"_castXInput" + _castX, 0)
    varX(X2,"_castXoutput" + _castX)
    scope_begin()
        lvarX(X1,"_castXori" + _castX)
        lvarX(X2,"_castXdest" + _castX)

        pushvX(X1,"_castXInput"+_castX)       
        popvX(X1,"_castXori" + _castX)
        push    _castXori{_castX}_s   
        pop     _castXdest{_castX}_s  # keep sign
        js if (X1 < X2) {
            js for (var xx = 0 ; xx < X1; xx++) {
                push    _castXori{_castX}_{xx}
                pop     _castXdest{_castX}_{xx}
            js }
            js for (var xx = X1; xx < X2 ; xx++ ) {
                push    0
                pop     _castXdest{_castX}_{xx}
            js } 
        js } else { // if X1 > X2
            js for (var xx = 0 ; xx < X2; xx++) {
                push    _castXori{_castX}_{xx}
                pop     _castXdest{_castX}_{xx}
            js }
            
        js }
        pushvX(X2,"_castXdest" + _castX)
        popvX(X2,"_castXoutput" + _castX)
    scope_end()
    dropX(X1)
    pushvX(X2,"_castXoutput" + _castX) 
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
js var _xbits; _xbits = X * 8;
    scope_begin()
        lvar("writeXprefixzero" + _writeX, 1)
        lvarX(X,"writeX_A"+_writeX)
        lvarX(X,"writeX_B"+_writeX)
        lvarX(X,"writeX_AmodB"+_writeX)
        lvarX(X,"writeX_AdivB"+_writeX)

        pushvX(X,name)
        popvX(X,"writeX_A"+_writeX)
        
        #pushX(X,10)
        #popvX(X,"writeX_B"+_writeX)
        setvX(X,"writeX_B"+_writeX, 10)
        
        push writeX_A{_writeX}_s
        if
            push    '-'
            pop     out   # write '-' if name < 0
        fi
        
        push _stringDecimal{_xbits}_.size
        loop
            # output = input mod 10 ; input = input div 10
            divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)
            push    writeX_AmodB{_writeX}_0
            pop  _stringDecimal{_xbits}_
            pushvX(X,"writeX_AdivB" + _writeX)
            popvX(X,"writeX_A" + _writeX)
            arotl _stringDecimal{_xbits}_
        endloop
        
        push _stringDecimal{_xbits}_.size
        sbm writeXcnt{_writeX}
        loop
            arotr _stringDecimal{_xbits}_
            if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)
                if_diff("_stringDecimal" + _xbits +"_", 0)
                    push _stringDecimal{_xbits}_
                    popouthexa()
                    at_set("writeXprefixzero"+_writeX, 0)
                else    
                    if_equal("writeXprefixzero"+_writeX, 0)
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


# declare temporary X*8 bits value used for signedX.inc macros
macro declareTmpX(X)
    js var _xbits; _xbits = X * 8;
    js var _nDecimal ; _nDecimal = ("" + (Math.pow(2,8*X)-1)).length;
    var  _stringDecimal{_xbits}_*{_nDecimal}

endmacro