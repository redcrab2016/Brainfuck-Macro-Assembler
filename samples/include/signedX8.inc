# 8 bits signed integer ( 1 byte)

include signedX.inc

# macro var8(name) :declare global 8 bits
macro var8(name)
    varX(1,name)
endmacro

# macro lvar8(name) : declare local 8 bits
macro lvar8(name)
    lvarX(1,name)
endmacro

# macro fixsv8(name) : be sure that name is positive if equal to zero
macro fixsv8(name)
    fixsvX(1,name)
endmacro

# macro pushv8(name) : push 8 bits name on stack
macro pushv8(name)
    pushvX(1,name)
endmacro

# macro push8(immValue) : push immediate8 bits value on the stack
macro push8(immValue)
    pushX(1, immValue) 
endmacro

# macro dup8() : duplicate 8bits value on stack
macro dup8()
    dupX(1)
endmacro

# macro pushsv8(name) : push the sign of the 8 bits variable 'name'
macro pushsv8(name)
    pushsvX(1,name)
endmacro

# macro pushcv8(name) : push the carry of the 8 bits variable 'name'
macro pushcv8(name)
    pushcvX(1,name)
endmacro

# macro popv8(name) : pop the stack to the 8 bits variable 'name'
macro popv8(name)
    popvX(1,name)
endmacro

# macro popsv8(name) : pop the sign(8 bits 0/1) to the 8 bits variable 'name'
macro popsv8(name)
    popsvX(1,name)
endmacro

# macro popcv8(name) : pop the carry(8 bit 0/1) to the 8 bits variable 'name'
macro popcv8(name)
    popcvX(1,name)
endmacro

# macro negv8(name) : name = -name
macro negv8(name)
    negvX(1,name)
endmacro

# macro absv8(name) : name = abs(name)
macro absv8(name)
    absvX(1,name)
endmacro

# macro abs8() : 8 bits head of stack = abs(8 bits head of stack)
macro abs8()
    absX(1)
endmacro

# macro neg8() : 8 bits head of stack = - (8 bits head of stack)    
macro neg8()
    negX(1)
endmacro

# macro setc8() : set 1 to 8 bits head of stack carry
macro setc8()
    setcX(1)
endmacro

# macro setcv8(name) : set 1 to 8 bits variable 'name' carry
macro setcv8(name)
    setcvX(1,name)
endmacro

# macro clearc8() : set 0 to 8 bits head of stack carry
macro clearc8()
    clearcX(1)
endmacro

# macro clearcv8(name) : set 0 to 8 bits variable 'name' carry
macro clearcv8(name)
    clearcvX(1,name)
endmacro

# macro drop8() : drop 8 bits value from stack
macro drop8()
    dropX(1)
endmacro

# macro reset8() : reset 8 bits value of the head of stack
macro reset8()
    resetX(1)
endmacro

# macro resetv8(name) : reset 8 bits variable 'name'
macro resetv8(name)
    resetvX(1,name)
endmacro

# macro set8(immValue) : set 8 bits value on the head of stack
macro set8(immValue)
    setX(1,immValue)
endmacro

# macro setv8(name, immValue) : set 8 bits immediate value to a 8 bits variable 'name' 
macro setv8(name,immValue)
    setvX(1,name, immValue)
endmacro

# macro fixsv8(name) : be sure to have sign to zero if 8 bits variable 'name' is zero
macro fixsv8(name)
    fixsvX(1,name)
endmacro

# macro fixs8() : be sure to have sign to zero if 8 bits head of stack value is zero
macro fixs8()
    fixsX(1)
endmacro

# macro bool8() : same as 'bool' but with a 8 bits value on stack
macro bool8()
    boolX(1)
endmacro

# macro boolv8(name) : push on stack the bool(name) 8 bits 
macro boolv8(name)
    boolvX(1,name)
endmacro

# macro incv8(name) : name = name +1 (8 bits)
macro incv8(name)
    incvX(1,name)
endmacro

# macro inc8() : 8 bits head of stack value incremented
macro inc8()
    incX(1)
endmacro

# macro decv8(name) : name-- (8 bits)
macro decv8(name)
    decvX(1,name)
endmacro

# macro dec8() : 8 bits head of stack value decrement
macro dec8()
    decX(1)
endmacro

# macro addvi8(name, immValue) : name += immediate value
macro addvi8(name,immValue)
    addviX(1,name,immValue)
endmacro

# macro addi8(immValue) : 8 bits head of stack value += immediate value
macro addi8(immValue)
    addiX(1,immValue)
endmacro

# macro subvi8(name, immValue) : name -= immediate value
macro subvi8(name,immValue)
    subviX(1,name,immValue)
endmacro

# macro subi8(immValue) : 8 bits head of stack value -= immediate value
macro subi8(immValue)
    subiX(1,immValue)
endmacro

# macro addvvv8(name, nameA, nameB) : name = nameA + nameB
macro addvvv8(name, nameA, nameB)
    addvvvX(1,name,nameA,nameB)
endmacro

# macro addvv8(name, nameA) : name += nameA
macro addvv8(name, nameA)
    addvvX(1,name,nameA)
endmacro

# macro addv8(nameA) : head stack += nameA
macro addv8(nameA)
    addvX(1,nameA)
endmacro  

# macro add8() : stack-1 = stack-1 + stack ; stack--
macro add8()
    addX(1)
endmacro

# macro subvvv8(name, nameA, nameB) : name = nameA - nameB
macro subvvv8(name, nameA, nameB)
    subvvvX(1,name,nameA,nameB)
endmacro

# macro subvv8(name, nameA) : name -= nameA 
macro subvv8(name, nameA)
    subvvX(1,name,nameA)
endmacro

# macro subv8(nameA) : head stack -= nameA
macro addv8(nameA)
    addvX(1,nameA)
endmacro  

# macro sub8() : stack-1 = stack-1 - stack ; stack--
macro sub8()
    subX(1)
endmacro

# macro mulvvv8(name, nameA, nameB) : name = nameA * nameB 
macro mulvvv8(name, nameA, nameB)
    mulvvvX(1, name, nameA, nameB)
endmacro

# macro mulvv8(name, nameA) : name *= nameA
macro mulvv8(name, nameA)
    mulvvX(1,name,nameA)
endmacro

# macro mulv8(name) : head of stack *= name
macro mulv8(name)
    mulvX(1,name)
endmacro

# macro mul8() : stack-1 = stack-1 * stack : stack--
macro mul8()
    mulX(1)
endmacro

# macro equalvv8(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise
macro equalvv8(nameA, nameB)
    equalvvX(1, nameA, nameB)
endmacro

# macro equal8() : same as "equal" but with 8 bits value in stack
macro equal8()
    equalX(1)
endmacro

# macro diffvv8(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise
macro diffvv8(nameA, nameB)
    diffvvX(1, nameA, nameB)
endmacro

# macro diff8() : same as "diff" but with 8 bits value in stack
macro diff8()
    diffX(1)
endmacro

# macro supequalvv8(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise
macro supequalvv8(nameA, nameB)
    supequalvvX(1,nameA, nameB)
endmacro

# macro supequal8() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 8 bits value from stack
macro supequal8()
    supequalX(1)
endmacro

# macro infvv8(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise
macro infvv8(nameA, nameB)
    infvvX(1, nameA, nameB)
endmacro

# macro inf8() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 8 bits value from stack
macro inf8()
    infX(1)
endmacro

# macro infequalvv8(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise
macro infequalvv8(nameA, nameB)
    infequalvvX(1,nameA,nameB)
endmacro

# macro infequal8() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 8 bits value from stack 
macro infequal8()
    infequalX(1)
endmacro

# macro supvv8(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise
macro supvv8(nameA, nameB)
    supvvX(1,nameA,nameB)
endmacro 

# macro sup8() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 8 bits value from stack 
macro sup8()
    supX(1)
endmacro

# macro divvvvv8(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB
macro divvvvv8(nameAdivB, nameAmodB, nameA, nameB)
    divvvvvX(1,nameAdivB, nameAmodB, nameA, nameB)
endmacro

# macro divvv8(nameA, nameB) : Push 2 8 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB 
macro divvv8(nameA, nameB)
    divvvX(1,nameA,nameB)
endmacro

# macro div8() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B
macro div8()
    divX(1)
endmacro

# macro write8(name) : print out the decimal value (signed)
macro write8(name)
    writeX(1,name)
endmacro

# macro printhexa8(name) : print the 8 bit variable in hexadecimal
macro printhexa8(name)
    printhexaX(1,name)
endmacro

declareTmpX(1)

