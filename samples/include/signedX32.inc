# 32 bits signed integer ( 4 bytes)

include signedX.inc

# macro var32(name) :declare global 32 bits
macro var32(name)
    varX(4,name)
endmacro

# macro lvar32(name) : declare local 32 bits
macro lvar32(name)
    lvarX(4,name)
endmacro

# macro fixsv32(name) : be sure that name is positive if equal to zero
macro fixsv32(name)
    fixsvX(4,name)
endmacro

# macro pushv32(name) : push 32 bits name on stack
macro pushv32(name)
    pushvX(4,name)
endmacro

# macro push32(immValue) : push immediate32 bits value on the stack
macro push32(immValue)
    pushX(4, immValue) 
endmacro

# macro dup32() : duplicate 32bits value on stack
macro dup32()
    dupX(4)
endmacro

# macro pushsv32(name) : push the sign of the 32 bits variable 'name'
macro pushsv32(name)
    pushsvX(4,name)
endmacro

# macro pushcv32(name) : push the carry of the 32 bits variable 'name'
macro pushcv32(name)
    pushcvX(4,name)
endmacro

# macro popv32(name) : pop the stack to the 32 bits variable 'name'
macro popv32(name)
    popvX(4,name)
endmacro

# macro popsv32(name) : pop the sign(8 bits 0/1) to the 32 bits variable 'name'
macro popsv32(name)
    popsvX(4,name)
endmacro

# macro popcv32(name) : pop the carry(8 bit 0/1) to the 32 bits variable 'name'
macro popcv32(name)
    popcvX(4,name)
endmacro

# macro negv32(name) : name = -name
macro negv32(name)
    negvX(4,name)
endmacro

# macro absv32(name) : name = abs(name)
macro absv32(name)
    absvX(4,name)
endmacro

# macro abs32() : 32 bits head of stack = abs(32 bits head of stack)
macro abs32()
    absX(4)
endmacro

# macro neg32() : 32 bits head of stack = - (32 bits head of stack)    
macro neg32()
    negX(4)
endmacro

# macro setc32() : set 1 to 32 bits head of stack carry
macro setc32()
    setcX(4)
endmacro

# macro setcv32(name) : set 1 to 32 bits variable 'name' carry
macro setcv32(name)
    setcvX(4,name)
endmacro

# macro clearc32() : set 0 to 32 bits head of stack carry
macro clearc32()
    clearcX(4)
endmacro

# macro clearcv32(name) : set 0 to 32 bits variable 'name' carry
macro clearcv32(name)
    clearcvX(4,name)
endmacro

# macro drop32() : drop 32 bits value from stack
macro drop32()
    dropX(4)
endmacro

# macro reset32() : reset 32 bits value of the head of stack
macro reset32()
    resetX(4)
endmacro

# macro resetv32(name) : reset 32 bits variable 'name'
macro resetv32(name)
    resetvX(4,name)
endmacro

# macro set32(immValue) : set 32 bits value on the head of stack
macro set32(immValue)
    setX(4,immValue)
endmacro

# macro setv32(name, immValue) : set 32 bits immediate value to a 32 bits variable 'name' 
macro setv32(name,immValue)
    setvX(4,name, immValue)
endmacro

# macro fixsv32(name) : be sure to have sign to zero if 32 bits variable 'name' is zero
macro fixsv32(name)
    fixsvX(4,name)
endmacro

# macro fixs32() : be sure to have sign to zero if 32 bits head of stack value is zero
macro fixs32()
    fixsX(4)
endmacro

# macro bool32() : same as 'bool' but with a 32 bits value on stack
macro bool32()
    boolX(4)
endmacro

# macro boolv32(name) : push on stack the bool(name) 32 bits 
macro boolv32(name)
    boolvX(4,name)
endmacro

# macro incv32(name) : name = name +1 (32 bits)
macro incv32(name)
    incvX(4,name)
endmacro

# macro inc32() : 32 bits head of stack value incremented
macro inc32()
    incX(4)
endmacro

# macro decv32(name) : name-- (32 bits)
macro decv32(name)
    decvX(4,name)
endmacro

# macro dec32() : 32 bits head of stack value decrement
macro dec32()
    decX(4)
endmacro

# macro addvi32(name, immValue) : name += immediate value
macro addvi32(name,immValue)
    addviX(4,name,immValue)
endmacro

# macro addi32(immValue) : 32 bits head of stack value += immediate value
macro addi32(immValue)
    addiX(4,immValue)
endmacro

# macro subvi32(name, immValue) : name -= immediate value
macro subvi32(name,immValue)
    subviX(4,name,immValue)
endmacro

# macro subi32(immValue) : 32 bits head of stack value -= immediate value
macro subi32(immValue)
    subiX(4,immValue)
endmacro

# macro addvvv32(name, nameA, nameB) : name = nameA + nameB
macro addvvv32(name, nameA, nameB)
    addvvvX(4,name,nameA,nameB)
endmacro

# macro addvv32(name, nameA) : name += nameA
macro addvv32(name, nameA)
    addvvX(4,name,nameA)
endmacro

# macro addv32(nameA) : head stack += nameA
macro addv32(nameA)
    addvX(4,nameA)
endmacro  

# macro add32() : stack-1 = stack-1 + stack ; stack--
macro add32()
    addX(4)
endmacro

# macro subvvv32(name, nameA, nameB) : name = nameA - nameB
macro subvvv32(name, nameA, nameB)
    subvvvX(4,name,nameA,nameB)
endmacro

# macro subvv32(name, nameA) : name -= nameA 
macro subvv32(name, nameA)
    subvvX(4,name,nameA)
endmacro

# macro subv32(nameA) : head stack -= nameA
macro addv32(nameA)
    addvX(4,nameA)
endmacro  

# macro sub32() : stack-1 = stack-1 - stack ; stack--
macro sub32()
    subX(4)
endmacro

# macro mulvvv32(name, nameA, nameB) : name = nameA * nameB 
macro mulvvv32(name, nameA, nameB)
    mulvvvX(4, name, nameA, nameB)
endmacro

# macro mulvv32(name, nameA) : name *= nameA
macro mulvv32(name, nameA)
    mulvvX(4,name,nameA)
endmacro

# macro mulv32(name) : head of stack *= name
macro mulv32(name)
    mulvX(4,name)
endmacro

# macro mul32() : stack-1 = stack-1 * stack : stack--
macro mul32()
    mulX(4)
endmacro

# macro equalvv32(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise
macro equalvv32(nameA, nameB)
    equalvvX(4, nameA, nameB)
endmacro

# macro equal32() : same as "equal" but with 32 bits value in stack
macro equal32()
    equalX(4)
endmacro

# macro diffvv32(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise
macro diffvv32(nameA, nameB)
    diffvvX(4, nameA, nameB)
endmacro

# macro diff32() : same as "diff" but with 32 bits value in stack
macro diff32()
endmacro

# macro supequalvv32(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise
macro supequalvv32(nameA, nameB)
    supequalvvX(4,nameA, nameB)
endmacro

# macro supequal32() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 32 bits value from stack
macro supequal32()
    supequalX(4)
endmacro

# macro infvv32(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise
macro infvv32(nameA, nameB)
    infvvX(4, nameA, nameB)
endmacro

# macro inf32() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 32 bits value from stack
macro inf32()
    infX(4)
endmacro

# macro infequalvv32(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise
macro infequalvv32(nameA, nameB)
    infequalvvX(4,nameA,nameB)
endmacro

# macro infequal32() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 32 bits value from stack 
macro infequal32()
    infequalX(4)
endmacro

# macro supvv32(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise
macro supvv32(nameA, nameB)
    supvvX(4,nameA,nameB)
endmacro 

# macro sup32() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 32 bits value from stack 
macro sup32()
    supX(4)
endmacro

# macro divvvvv32(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB
macro divvvvv32(nameAdivB, nameAmodB, nameA, nameB)
    divvvvvX(4,nameAdivB, nameAmodB, nameA, nameB)
endmacro

# macro divvv32(nameA, nameB) : Push 2 32 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB 
macro divvv32(nameA, nameB)
    divvvX(4,nameA,nameB)
endmacro

# macro div32() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B
macro div32()
    divX(4)
endmacro

# macro write32(name) : print out the decimal value (signed)
macro write32(name)
    writeX(4,name)
endmacro

# macro printhexa32(name) : print the 32 bit variable in hexadecimal
macro printhexa32(name)
    printhexaX(4,name)
endmacro

declareTmpX(4)

