# 16 bits signed integer

# macro var16(name) :declare global 16 bits
macro var16(name)
    var {name}_0    # LSB of {name}
    var {name}_1    # MSB of {name}
    var {name}_s    # Sign of {name}
    var {name}_c    # carry of {name} 
endmacro

# macro lvar16(name) : declare local 16 bits
macro lvar16(name)
    lvar(name + "_c",0)
    lvar(name + "_s",0)
    lvar(name + "_1",0)
    lvar(name + "_0",0)
endmacro

# macro fixsv16(name) : be sure that name is positive if equal to zero
macro fixsv16(name)
    push    {name}_s
    IF    # if name is negative
        if_equal(name +"_0", 0)
            if_equal(name +"_1", 0)
                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
endmacro

# macro pushv16(name) : push 16 bits name on stack
macro pushv16(name)
    push    {name}_c
    push    {name}_s
    push    {name}_1
    push    {name}_0
endmacro

# macro push16(immValue) : push immediate16 bits value on the stack
macro push16(immValue) 
    push    0
    push    {(immValue>=0?0:1)}
    push    {(immValue>=0?((immValue/256) | 0):((-immValue/256) | 0))}
    push    {(immValue>=0?(immValue%256):((-immValue)%256))}
endmacro

# macro dup16() : duplicate 16bits value on stack
macro dup16()
    push    -3
    push    -3
    push    -3
    push    -3
endmacro

# macro pushsv16(name) : push the sign of the 16 bits variable 'name'
macro pushsv16(name)
    push    {name}_s
endmacro

# macro pushcv16(name) : push the carry of the 16 bits variable 'name'
macro pushcv16(name)
    PUSH    {name}_c
endmacro

# macro popv16(name) : pop the stack to the 16 bits variable 'name'
macro popv16(name)
    pop     {name}_0
    pop     {name}_1
    pop     {name}_s
    pop     {name}_c
endmacro

# macro popsv16(name) : pop the sign(8 bits 0/1) to the 16 bits variable 'name'
macro popsv16(name)
    POP    {name}_s
endmacro

# macro popcv16(name) : pop the carry(8 bit 0/1) to the 16 bits variable 'name'
macro popcv16(name)
    POP    {name}_c
endmacro

# macro negv16(name) : name = -name
macro negv16(name)
    push    {name}_s
    dec
    bool
    dup
    if    # if name is now negative
        if_equal(name +"_0", 0)
            if_equal(name +"_1", 0)
                at_reset(name + "_s")   # set sign to positive if name==0
            fi
        fi
    fi
    pop     {name}_s
endmacro

# macro absv16(name) : name = abs(name)
macro absv16(name)
    push    0
    pop     {name}_s
endmacro

# macro abs16() : 16 bits head of stack = abs(16 bits head of stack)
macro abs16()
    bf <<
    reset
    bf >>
endmacro

# macro neg16() : 16 bits head of stack = - (16 bits head of stack)    
macro neg16()
    popv16("__tmp16__")
    negv16("__tmp16__")
    pushv16("__tmp16__")
endmacro

# macro setc16() : set 1 to 16 bits head of stack carry
macro setc16()
    bf <<<
    set     1
    bf >>>
endmacro

# macro setcv16(name) : set 1 to 16 bits variable 'name' carry
macro setcv16(name)
    at_set(name+"_c",1)
endmacro

# macro clearc16() : set 0 to 16 bits head of stack carry
macro clearc16()
    bf <<<
    reset
    bf >>>
endmacro

# macro clearcv16(name) : set 0 to 16 bits variable 'name' carry
macro clearcv16(name)
    at_reset(name+"_c")
endmacro

# macro drop16() : drop 16 bits value from stack
macro drop16()
    drop
    drop
    drop
    drop
endmacro

# macro reset16() : reset 16 bits value of the head of stack
macro reset16()
    bf  <<<[-]>[-]>[-]>[-]
endmacro

# macro resetv16(name) : reset 16 bits variable 'name'
macro resetv16(name)
    at {name}_0
        reset16()
    ta
endmacro

# macro set16(immValue) : set 16 bits value on the head of stack
macro set16(immValue)
    bf  <<<
    reset
    bf  >
    set {(immValue>=0?0:1)}
    bf  >
    set {(immValue>=0?((immValue/256) | 0):((-immValue/256) | 0))}
    bf  >
    set {(immValue>=0?(immValue%256):((-immValue)%256))}
endmacro

# macro setv16(name, immValue) : set 16 bits immediate value to a 16 bits variable 'name' 
macro setv16(name,immValue)
    at {name}_0
        set16(immValue)
    ta
endmacro

# macro fixsv16(name) : be sure to have sign to zero if 16 bits variable 'name' is zero
macro fixsv16(name)
    push    {name}_s
    IF    # if name is negative
        if_equal(name +"_0", 0)
            if_equal(name +"_1", 0)
                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
endmacro

# macro fixs16() : be sure to have sign to zero if 16 bits head of stack value is zero
macro fixs16()
    popv16("__tmp16__")
    fixsv16("__tmp16__")
    pushv16("__tmp16__")
endmacro

# macro bool16() : same as 'bool' but with a 16 bits value on stack
macro bool16()
    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
endmacro

# macro boolv16(name) : push on stack the bool(name) 16 bits 
macro boolv16(name)
    push {name}_0
    bool
    push {name}_1
    bool
    or
endmacro

# macro incv16(name) : name = name +1 (16 bits)
macro incv16(name)
    if_equal(name +"_s",0)  # positive number
        at_inc(name + "_0")
        if_equal(name + "_0",0) # reach zero (roll over)
            at_inc(name + "_1")
            if_equal( name + "_1", 0 ) @ reach zero 'roll over
                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
        at_dec(name + "_0")
        if_equal(name +"_0",255) # reduced
            at_dec(name +"_1")
            if_equal(name + "_1",255)
                setv16(name, 1)
            fi
        fi
        fixsv16(name)
    fi
endmacro

# macro inc16() : 16 bits head of stack value incremented
macro inc16()
    popv16("__tmp16__")
    incv16("__tmp16__")
    pushv16("__tmp16__")
endmacro

# macro decv16(name) : name-- (16 bits)
macro decv16(name)
    if_equal(name +"_s",1)  # negative number
        at_inc(name + "_0")
        if_equal(name + "_0",0) # reach zero (roll over)
            at_inc(name + "_1")
            if_equal( name + "_1", 0 ) @ reach zero 'roll over
                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
        at_dec(name + "_0")
        if_equal(name +"_0",255) # reduced
            at_dec(name +"_1")
            if_equal(name + "_1",255)
                setv16(name, -1)
            fi
        fi
    fi
endmacro

# macro dec16() : 16 bits head of stack value decrement
macro dec16()
    popv16("__tmp16__")
    decv16("__tmp16__")
    pushv16("__tmp16__")
endmacro

# macro addvi16(name, immValue) : name += immediate value
macro addvi16(name,immValue)
js  _sv1++;
    scope_begin()
        lvar16("addvi16g16_"+_sv1)
        set16(immValue>0?immValue:-immValue)
        push    1
        sbm addvi16_loop{_sv1}

        while
            boolv16("addvi16g16_"+ _sv1)
            if
                decv16("addvi16g16_"+_sv1)
                js if (immValue>0) {
                    incv16(name)
                js } else {
                    decv16(name)
                js }
            else
                at_reset("addvi16_loop"+_sv1)
            fi
        wend
    scope_end()
endmacro

# macro addi16(immValue) : 16 bits head of stack value += immediate value
macro addi16(immValue)
    popv16("__tmp16__")
    addvi16("__tmp16__",immValue)
    pushv16("__tmp16__")
endmacro

# macro subvi(name, immValue) : name -= immediate value
macro subvi16(name,immValue)
js  _sv2++;
    scope_begin()
        lvar16("subvi16g16_"+_sv2)
        set16(immValue>0?immValue:-immValue)
        push    1
        sbm subvi16_loop{_sv2}
        while
            pushv16("subvi16g16_"+ _sv2)
            bool16()
            if
                decv16("subvi16g16_"+_sv2)
                js if (immValue>0) {
                    decv16(name)
                js } else {
                    incv16(name)
                js }
            else
                at_reset("subvi16_loop"+_sv2)
            fi
        wend
    scope_end()
endmacro

# macro subi16(immValue) : 16 bits head of stack value -= immediate value
macro subi16(immValue)
    popv16("__tmp16__")
    subvi16("__tmp16__",immValue)
    pushv16("__tmp16__")
endmacro

# macro addvvv16(name, nameA, nameB) : name = nameA + nameB
macro addvvv16(name, nameA, nameB)
js  _sv3++;
    pushv16(nameA)
    popv16(name)    # name = nameA
    scope_begin()
        lvar16("addvvv16g16_" + _sv3)
        pushv16(nameB)
        popv16("addvvv16g16_" + _sv3)
        push 0
        popsv16("addvvv16g16_" + _sv3) # absolute number (always positive)
        
        push    {nameB}_s
        if    # nameB is negative 
            push    1
            sbm addvvv16_loop{_sv3}
            while
                pushv16("addvvv16g16_"+ _sv3)
                bool16()
                if
                    decv16("addvvv16g16_"+_sv3)
                    decv16(name)
                else
                    at_reset("addvvv16_loop"+_sv3)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm addvvv16_loop{_sv3}
            while
                pushv16("addvvv16g16_"+ _sv3)
                bool16()
                if
                    decv16("addvvv16g16_"+_sv3)
                    incv16(name)
                else
                    at_reset("addvvv16_loop"+_sv3)
                fi
            wend
        fi
    scope_end()
endmacro

# macro addvv16(name, nameA) : name += nameA
macro addvv16(name, nameA)
    addvvv16(name, name, nameA)
endmacro

# macro addv16(nameA) : head stack += nameA
macro addv16(nameA)
    popv16("__tmp16__")
    addvv16("__tmp16__",nameA)
    pushv16("__tmp16__")
endmacro  

# macro add16() : stack-1 = stack-1 + stack ; stack--
macro add16()
    popv16("__tmp16b__")
    popv16("__tmp16a__")
    addvvv16("__tmp16c__", "__tmp16a__", "__tmp16b__")
    pushv16("__tmp16c__")
endmacro



# macro subvvv16(name, nameA, nameB) : name = nameA - nameB
macro subvvv16(name, nameA, nameB)
js  _sv4++;
    pushv16(nameA)
    popv16(name)    # name = nameA
    scope_begin()
        lvar16("subvvv16g16_" + _sv4)
        pushv16(nameB)
        popv16("subvvv16g16_" + _sv4)
        push 0
        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
        
        push    {nameB}_s
        if    # nameB is negative 
            push    1
            sbm subvvv16_loop{_sv4}
            while
                pushv16("subvvv16g16_"+ _sv4)
                bool16()
                if
                    decv16("subvvv16g16_"+_sv4)
                    incv16(name)
                else
                    at_reset("subvvv16_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvv16_loop{_sv4}
            while
                pushv16("subvvv16g16_"+ _sv4)
                bool16()
                if
                    decv16("subvvv16g16_"+_sv4)
                    decv16(name)
                else
                    at_reset("subvvv16_loop"+_sv4)
                fi
            wend
        fi
    scope_end()
endmacro

# macro subvv16(name, nameA) : name -= nameA 
macro subvv16(name, nameA)
    subvvv16(name, name, nameA)
endmacro

# macro subv16(nameA) : head stack -= nameA
macro addv16(nameA)
    popv16("__tmp16__")
    subvv16("__tmp16__",nameA)
    pushv16("__tmp16__")
endmacro  

# macro sub16() : stack-1 = stack-1 - stack ; stack--
macro sub16()
    popv16("__tmp16b__")
    popv16("__tmp16a__")
    subvvv16("__tmp16c__", "__tmp16a__", "__tmp16b__")
    pushv16("__tmp16c__")
endmacro

# macro mulvvv16(name, nameA, nameB) : name = nameA * nameB 
macro mulvvv16(name, nameA, nameB)
js _sv5++;
    scope_begin()
        lvar16("mulvvv16absNameA" + _sv5)
        pushv16(nameA)
        popv16("mulvvv16absNameA" + _sv5)
        lvar("mulvvv16sA" + _sv5, 0)
        pushsv16("mulvvv16absNameA" + _sv5)
        pop mulvvv16sA{_sv5}
        absv16("mulvvv16absNameA" + _sv5)   # absNameA = abs(nameA)
        
        lvar16("mulvvv16absNameB" + _sv5)
        pushv16(nameB)
        popv16("mulvvv16absNameB" + _sv5)
        lvar("mulvvv16sB" + _sv5, 0)
        pushsv16("mulvvv16absNameB" + _sv5)
        pop mulvvv16sB{_sv5}
        absv16("mulvvv16absNameB" + _sv5)   # absNameB = abs(nameB)
        
        resetv16(name)

        push    1
        sbm mulvvv16_loop{_sv5}
        while
            boolv16("mulvvv16absNameB" + _sv5)
            if  # absNameB is not zero
                addvv(name,"mulvvv16absNameA" + _sv5)
                decv16("mulvvv16absNameB" + _sv5)
            else 
                at_reset("mulvvv16_loop"+_sv5)
            fi
        wend        
        # resolve sign
        push mulvvv16sA{_sv5}
        push mulvvv16sB{_sv5}
        diff    # if sign(nameA) <> sign(nameB) then name is negative
        if
            at_set(name +"_s",1)
        fi        
    scope_end()
endmacro

# macro mulvv16(name, nameA) : name *= nameA
macro mulvv16(name, nameA)
    mulvvv16(name,name,nameA)
endmacro

# macro mulv16(name) : head of stack *= name
macro mulv16(name)
    popv16("__tmp16__")
    mulvv16("__tmp16__",name)
    pushv16("__tmp16__")
endmacro

# macro mul16() : stack-1 = stack-1 * stack : stack--
macro mul16()
    popv16("__tmp16a__")
    popv16("__tmp16b__")
    mulvvv16("__tmp16c__","__tmp16a__","__tmp16b__")
    pushv16("__tmp16c__")
endmacro

# macro equalvv16(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise
macro equalvv16(nameA, nameB)
    push {nameA}_s
    push {nameB}_s
    equal
    push {nameA}_0
    push {nameB}_0
    equal
    push {nameA}_1
    push {nameB}_1
    equal
    and
    and
endmacro

# macro equal16() : same as "equal" but with 16 bits value in stack
macro equal16()
    popv16("__tmp16b__")
    popv16("__tmp16a__")
    equalvv16("__tmp16a__", "__tmp16b__")
endmacro

# macro diffvv16(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise
macro diffvv16(nameA, nameB)
    equalvv16(nameA, nameB)
    not
endmacro

# macro diff16() : same as "diff" but with 16 bits value in stack
macro diff16()
    popv16("__tmp16b__")
    popv16("__tmp16a__")
    diffvv16("__tmp16a__", "__tmp16b__")
endmacro

# macro supequalvv16(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise
macro supequalvv16(nameA, nameB)
    subvvv16("__tmp16c__", nameA, nameB)
    push __tmp16c___s
    not
endmacro

# macro supequal16() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 16 bits value from stack
macro supequal16()
    popv16("__tmp16b__")
    popv16("__tmp16a__")
    supequalvv16("__tmp16a__","__tmp16b__")
endmacro

# macro infvv16(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise
macro infvv16(nameA, nameB)
    subvvv16("__tmp16c__", nameA, nameB)
    push __tmp16c___s
endmacro

# macro inf16() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 16 bits value from stack
macro inf16()
    popv16("__tmp16b__")
    popv16("__tmp16a__")
    infvv16("__tmp16a__","__tmp16b__")
endmacro

# macro infequalvv16(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise
macro infequalvv16(nameA, nameB)
    supequalvv16(nameB, nameA)
endmacro

# macro infequal16() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 16 bits value from stack 
macro infequal16()
    popv16("__tmp16b__")
    popv16("__tmp16a__")
    infequalvv16("__tmp16a__","__tmp16b__")
endmacro

# macro supvv16(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise
macro supvv16(nameA, nameB)
    infvv16(nameB, nameA)
endmacro 

# macro sup16() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 16 bits value from stack 
macro sup16()
    popv16("__tmp16b__")
    popv16("__tmp16a__")
    supvv16("__tmp16a__","__tmp16b__")
endmacro

# macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB
macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB)
js _sv6++;
    scope_begin()
        lvar16("divvvvv16absNameA" + _sv6)
        pushv16(nameA)
        popv16("divvvvv16absNameA" + _sv6)
        lvar("divvvvv16sA" + _sv6,0)
        push {nameA}_s
        pop divvvvv16sA{_sv6}
        absv16("divvvvv16absNameA" + _sv6)
        
        lvar16("divvvvv16absNameB" + _sv6)
        pushv16(nameB)
        popv16("divvvvv16absNameB" + _sv6)
        lvar("divvvvv16sB" + _sv6,0)
        push {nameB}_s
        pop divvvvv16sB{_sv6}
        absv16("divvvvv16absNameB" + _sv6)
        
        pushv16("divvvvv16absNameA" + _sv6)
        popv16(nameAmodB)
        
        resetv16(nameAdivB)
        
        boolv16("divvvvv16absNameB" + _sv6)
        if
            push    1
            sbm     divvvvv16_g{_sv6}
            while
                supequalvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
                if
                    incv16(nameAdivB)
                    subvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
                else
                    at_reset("divvvvv16_g" + _sv6) # break while/wend
                fi
            wend
            
            # treat sign of nameAmodB and nameAdivB
            push    divvvvv16sA{_sv6}
            pop     {nameAmodB}_s   # sign of nameAmodB is sign of nameA
            push    divvvvv16sA{_sv6}
            push    divvvvv16sB{_sv6}
            diff
            if
                push    1
                pop     {nameAdivB}_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
        else
            setcv16(nameAdivB)
            setcv16(nameAmodB)            
        fi
    scope_end()
endmacro

# macro divvv16(nameA, nameB) : Push 2 16 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB 
macro divvv16(nameA, nameB)
    divvvvv16("__tmp16a__", "__tmp16b__", nameA, nameB)
    pushv16("__tmp16b__")   # nameA mod nameB
    pushv16("__tmp16a__")   # nameA div nameB
endmacro

# macro div16() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B
macro div16()
    popv16("__tmp16b__")
    popv16("__tmp16a__")
    divvvvv16("__tmp16c__","__tmp16d__", "__tmp16a__", "__tmp16b__")
    pushv16("__tmp16d__") # __tmp16a__ mod __tpm16b__
    pushv16("__tmp16c__") # __tmp16a__ div __tmp16b__
endmacro





# macro write16(name) : print out the decimal value (signed)
macro write16(name)
js _sv7++;
    scope_begin()
        lvar("write16prefixzero"+_sv7,1)
        lvar16("write16_A"+_sv7)
        lvar16("write16_B"+_sv7)
        lvar16("write16_AmodB"+_sv7)
        lvar16("write16_AdivB"+_sv7)
        
        pushv16(name)
        popv16("write16_A"+_sv7)
        
        push16(10)
        popv16("write16_B"+_sv7)
        
        push write16_A{_sv7}_s
        if
            push    '-'
            pop     out   # write '-' if name < 0
        fi
        push 5
        loop
            # output = input mod 10 ; input = input div 10
            divvvvv16("write16_AdivB" + _sv7, "write16_AmodB" + _sv7, "write16_A" + _sv7, "write16_B" + _sv7)
            push    write16_AmodB{_sv7}_0
            pop  _stringDecimal_
            pushv16("write16_AdivB" + _sv7)
            popv16("write16_A" + _sv7)
            arotl _stringDecimal_
        endloop
        push 5
        sbm write16cnt{_sv7}
        loop
            arotr _stringDecimal_
            if_sup("write16cnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
                if_diff("_stringDecimal_",0)
                    push _stringDecimal_
                    popouthexa()
                    at_set("write16prefixzero"+_sv7,0)
                else    
                    if_equal("write16prefixzero"+_sv7,0)
                        push _stringDecimal_
                        popouthexa()
                    fi
                fi
            else
                push _stringDecimal_
                popouthexa()
            fi
        endloop
    scope_end()
endmacro

# macro printhexa16(name) : print the 16 bit variable in hexadecimal
macro printhexa16(name)
    push    {name}_c
    popout8hexa()
    push    {name}_s
    popout8hexa()
    push    {name}_1
    popout8hexa()
    push    {name}_0
    popout8hexa()
endmacro


js var _sv1; var _sv2; var _sv3; var _sv4; var _sv5; var _sv6; var _sv7;
js  _sv1 = 0; _sv2=0; _sv3 = 0; _sv4 = 0; _sv5 = 0; _sv6 = 0; _sv7 = 0;

# declare temporary 16 bits value used for signed16.inc macros
var16( "__tmp16__" )
var16( "__tmp16a__" )
var16( "__tmp16b__" )
var16( "__tmp16c__" )
var16( "__tmp16d__" )
var  _stringDecimal_*5
