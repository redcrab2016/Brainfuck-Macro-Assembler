# 16 bits signed integer ( 2 bytes)

include signedX.inc

# macro var16(name) :declare global 16 bits
macro var16(name)
    varX(2,name)
endmacro

# macro lvar16(name) : declare local 16 bits
macro lvar16(name)
    lvarX(2,name)
endmacro

# macro fixsv16(name) : be sure that name is positive if equal to zero
macro fixsv16(name)
    fixsvX(2,name)
endmacro

# macro pushv16(name) : push 16 bits name on stack
macro pushv16(name)
    pushvX(2,name)
endmacro

# macro push16(immValue) : push immediate16 bits value on the stack
macro push16(immValue)
    pushX(2, immValue) 
endmacro

# macro dup16() : duplicate 16bits value on stack
macro dup16()
    dupX(2)
endmacro

# macro pushsv16(name) : push the sign of the 16 bits variable 'name'
macro pushsv16(name)
    pushsvX(2,name)
endmacro

# macro pushcv16(name) : push the carry of the 16 bits variable 'name'
macro pushcv16(name)
    pushcvX(2,name)
endmacro

# macro popv16(name) : pop the stack to the 16 bits variable 'name'
macro popv16(name)
    popvX(2,name)
endmacro

# macro popsv16(name) : pop the sign(8 bits 0/1) to the 16 bits variable 'name'
macro popsv16(name)
    popsvX(2,name)
endmacro

# macro popcv16(name) : pop the carry(8 bit 0/1) to the 16 bits variable 'name'
macro popcv16(name)
    popcvX(2,name)
endmacro

# macro negv16(name) : name = -name
macro negv16(name)
    negvX(2,name)
endmacro

# macro absv16(name) : name = abs(name)
macro absv16(name)
    absvX(2,name)
endmacro

# macro abs16() : 16 bits head of stack = abs(16 bits head of stack)
macro abs16()
    absX(2)
endmacro

# macro neg16() : 16 bits head of stack = - (16 bits head of stack)    
macro neg16()
    negX(2)
endmacro

# macro setc16() : set 1 to 16 bits head of stack carry
macro setc16()
    setcX(2)
endmacro

# macro setcv16(name) : set 1 to 16 bits variable 'name' carry
macro setcv16(name)
    setcvX(2,name)
endmacro

# macro clearc16() : set 0 to 16 bits head of stack carry
macro clearc16()
    clearcX(2)
endmacro

# macro clearcv16(name) : set 0 to 16 bits variable 'name' carry
macro clearcv16(name)
    clearcvX(2,name)
endmacro

# macro drop16() : drop 16 bits value from stack
macro drop16()
    dropX(2)
endmacro

# macro reset16() : reset 16 bits value of the head of stack
macro reset16()
    resetX(2)
endmacro

# macro resetv16(name) : reset 16 bits variable 'name'
macro resetv16(name)
    resetvX(2,name)
endmacro

# macro set16(immValue) : set 16 bits value on the head of stack
macro set16(immValue)
    setX(2,immValue)
endmacro

# macro setv16(name, immValue) : set 16 bits immediate value to a 16 bits variable 'name' 
macro setv16(name,immValue)
    setvX(2,name, immValue)
endmacro

# macro fixsv16(name) : be sure to have sign to zero if 16 bits variable 'name' is zero
macro fixsv16(name)
    fixsvX(2,name)
endmacro

# macro fixs16() : be sure to have sign to zero if 16 bits head of stack value is zero
macro fixs16()
    fixsX(2)
endmacro

# macro bool16() : same as 'bool' but with a 16 bits value on stack
macro bool16()
    boolX(2)
endmacro

# macro boolv16(name) : push on stack the bool(name) 16 bits 
macro boolv16(name)
    boolvX(2,name)
endmacro

# macro incv16(name) : name = name +1 (16 bits)
macro incv16(name)
    incvX(2,name)
endmacro

# macro inc16() : 16 bits head of stack value incremented
macro inc16()
    incX(2)
endmacro

# macro decv16(name) : name-- (16 bits)
macro decv16(name)
    decvX(2,name)
endmacro

# macro dec16() : 16 bits head of stack value decrement
macro dec16()
    decX(2)
endmacro

# macro addvi16(name, immValue) : name += immediate value
macro addvi16(name,immValue)
    addviX(2,name,immValue)
endmacro

# macro addi16(immValue) : 16 bits head of stack value += immediate value
macro addi16(immValue)
    addiX(2,immValue)
endmacro

# macro subvi16(name, immValue) : name -= immediate value
macro subvi16(name,immValue)
    subviX(2,name,immValue)
endmacro

# macro subi16(immValue) : 16 bits head of stack value -= immediate value
macro subi16(immValue)
    subiX(2,immValue)
endmacro

# macro addvvv16(name, nameA, nameB) : name = nameA + nameB
macro addvvv16(name, nameA, nameB)
    addvvvX(2,name,nameA,nameB)
endmacro

# macro addvv16(name, nameA) : name += nameA
macro addvv16(name, nameA)
    addvvX(2,name,nameA)
endmacro

# macro addv16(nameA) : head stack += nameA
macro addv16(nameA)
    addvX(2,nameA)
endmacro  

# macro add16() : stack-1 = stack-1 + stack ; stack--
macro add16()
    addX(2)
endmacro

# macro subvvv16(name, nameA, nameB) : name = nameA - nameB
macro subvvv16(name, nameA, nameB)
    subvvvX(2,name,nameA,nameB)
endmacro

# macro subvv16(name, nameA) : name -= nameA 
macro subvv16(name, nameA)
    subvvX(2,name,nameA)
endmacro

# macro subv16(nameA) : head stack -= nameA
macro addv16(nameA)
    addvX(2,nameA)
endmacro  

# macro sub16() : stack-1 = stack-1 - stack ; stack--
macro sub16()
    subX(2)
endmacro

# macro mulvvv16(name, nameA, nameB) : name = nameA * nameB 
macro mulvvv16(name, nameA, nameB)
    mulvvvX(2, name, nameA, nameB)
endmacro

# macro mulvv16(name, nameA) : name *= nameA
macro mulvv16(name, nameA)
    mulvvX(2,name,nameA)
endmacro

# macro mulv16(name) : head of stack *= name
macro mulv16(name)
    mulvX(2,name)
endmacro

# macro mul16() : stack-1 = stack-1 * stack : stack--
macro mul16()
    mulX(2)
endmacro

# macro equalvv16(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise
macro equalvv16(nameA, nameB)
    equalvvX(2, nameA, nameB)
endmacro

# macro equal16() : same as "equal" but with 16 bits value in stack
macro equal16()
    equalX(2)
endmacro

# macro diffvv16(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise
macro diffvv16(nameA, nameB)
    diffvvX(2, nameA, nameB)
endmacro

# macro diff16() : same as "diff" but with 16 bits value in stack
macro diff16()
endmacro

# macro supequalvv16(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise
macro supequalvv16(nameA, nameB)
    supequalvvX(2,nameA, nameB)
endmacro

# macro supequal16() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 16 bits value from stack
macro supequal16()
    supequalX(2)
endmacro

# macro infvv16(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise
macro infvv16(nameA, nameB)
    infvvX(2, nameA, nameB)
endmacro

# macro inf16() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 16 bits value from stack
macro inf16()
    infX(2)
endmacro

# macro infequalvv16(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise
macro infequalvv16(nameA, nameB)
    infequalvvX(2,nameA,nameB)
endmacro

# macro infequal16() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 16 bits value from stack 
macro infequal16()
    infequalX(2)
endmacro

# macro supvv16(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise
macro supvv16(nameA, nameB)
    supvvX(2,nameA,nameB)
endmacro 

# macro sup16() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 16 bits value from stack 
macro sup16()
    supX(2)
endmacro

# macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB
macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB)
    divvvvvX(2,nameAdivB, nameAmodB, nameA, nameB)
endmacro

# macro divvv16(nameA, nameB) : Push 2 16 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB 
macro divvv16(nameA, nameB)
    divvvX(2,nameA,nameB)
endmacro

# macro div16() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B
macro div16()
    divX(2)
endmacro

# macro write16(name) : print out the decimal value (signed)
macro write16(name)
    writeX(2,name)
endmacro

# macro printhexa16(name) : print the 16 bit variable in hexadecimal
macro printhexa16(name)
    printhexaX(2,name)
endmacro

declareTmpX(2)

