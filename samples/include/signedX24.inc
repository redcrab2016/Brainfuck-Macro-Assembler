# 24 bits signed integer ( 3 bytes)

include signedX.inc

# macro var24(name) :declare global 24 bits
macro var24(name)
    varX(3,name)
endmacro

# macro lvar24(name) : declare local 24 bits
macro lvar24(name)
    lvarX(3,name)
endmacro

# macro fixsv24(name) : be sure that name is positive if equal to zero
macro fixsv24(name)
    fixsvX(3,name)
endmacro

# macro pushv24(name) : push 24 bits name on stack
macro pushv24(name)
    pushvX(3,name)
endmacro

# macro push24(immValue) : push immediate24 bits value on the stack
macro push24(immValue)
    pushX(3, immValue) 
endmacro

# macro dup24() : duplicate 24bits value on stack
macro dup24()
    dupX(3)
endmacro

# macro pushsv24(name) : push the sign of the 24 bits variable 'name'
macro pushsv24(name)
    pushsvX(3,name)
endmacro

# macro pushcv24(name) : push the carry of the 24 bits variable 'name'
macro pushcv24(name)
    pushcvX(3,name)
endmacro

# macro popv24(name) : pop the stack to the 24 bits variable 'name'
macro popv24(name)
    popvX(3,name)
endmacro

# macro popsv24(name) : pop the sign(8 bits 0/1) to the 24 bits variable 'name'
macro popsv24(name)
    popsvX(3,name)
endmacro

# macro popcv24(name) : pop the carry(8 bit 0/1) to the 24 bits variable 'name'
macro popcv24(name)
    popcvX(3,name)
endmacro

# macro negv24(name) : name = -name
macro negv24(name)
    negvX(3,name)
endmacro

# macro absv24(name) : name = abs(name)
macro absv24(name)
    absvX(3,name)
endmacro

# macro abs24() : 24 bits head of stack = abs(24 bits head of stack)
macro abs24()
    absX(3)
endmacro

# macro neg24() : 24 bits head of stack = - (24 bits head of stack)    
macro neg24()
    negX(3)
endmacro

# macro setc24() : set 1 to 24 bits head of stack carry
macro setc24()
    setcX(3)
endmacro

# macro setcv24(name) : set 1 to 24 bits variable 'name' carry
macro setcv24(name)
    setcvX(3,name)
endmacro

# macro clearc24() : set 0 to 24 bits head of stack carry
macro clearc24()
    clearcX(3)
endmacro

# macro clearcv24(name) : set 0 to 24 bits variable 'name' carry
macro clearcv24(name)
    clearcvX(3,name)
endmacro

# macro drop24() : drop 24 bits value from stack
macro drop24()
    dropX(3)
endmacro

# macro reset24() : reset 24 bits value of the head of stack
macro reset24()
    resetX(3)
endmacro

# macro resetv24(name) : reset 24 bits variable 'name'
macro resetv24(name)
    resetvX(3,name)
endmacro

# macro set24(immValue) : set 24 bits value on the head of stack
macro set24(immValue)
    setX(3,immValue)
endmacro

# macro setv24(name, immValue) : set 24 bits immediate value to a 24 bits variable 'name' 
macro setv24(name,immValue)
    setvX(3,name, immValue)
endmacro

# macro fixsv24(name) : be sure to have sign to zero if 24 bits variable 'name' is zero
macro fixsv24(name)
    fixsvX(3,name)
endmacro

# macro fixs24() : be sure to have sign to zero if 24 bits head of stack value is zero
macro fixs24()
    fixsX(3)
endmacro

# macro bool24() : same as 'bool' but with a 24 bits value on stack
macro bool24()
    boolX(3)
endmacro

# macro boolv24(name) : push on stack the bool(name) 24 bits 
macro boolv24(name)
    boolvX(3,name)
endmacro

# macro incv24(name) : name = name +1 (24 bits)
macro incv24(name)
    incvX(3,name)
endmacro

# macro inc24() : 24 bits head of stack value incremented
macro inc24()
    incX(3)
endmacro

# macro decv24(name) : name-- (24 bits)
macro decv24(name)
    decvX(3,name)
endmacro

# macro dec24() : 24 bits head of stack value decrement
macro dec24()
    decX(3)
endmacro

# macro addvi24(name, immValue) : name += immediate value
macro addvi24(name,immValue)
    addviX(3,name,immValue)
endmacro

# macro addi24(immValue) : 24 bits head of stack value += immediate value
macro addi24(immValue)
    addiX(3,immValue)
endmacro

# macro subvi24(name, immValue) : name -= immediate value
macro subvi24(name,immValue)
    subviX(3,name,immValue)
endmacro

# macro subi24(immValue) : 24 bits head of stack value -= immediate value
macro subi24(immValue)
    subiX(3,immValue)
endmacro

# macro addvvv24(name, nameA, nameB) : name = nameA + nameB
macro addvvv24(name, nameA, nameB)
    addvvvX(3,name,nameA,nameB)
endmacro

# macro addvv24(name, nameA) : name += nameA
macro addvv24(name, nameA)
    addvvX(3,name,nameA)
endmacro

# macro addv24(nameA) : head stack += nameA
macro addv24(nameA)
    addvX(3,nameA)
endmacro  

# macro add24() : stack-1 = stack-1 + stack ; stack--
macro add24()
    addX(3)
endmacro

# macro subvvv24(name, nameA, nameB) : name = nameA - nameB
macro subvvv24(name, nameA, nameB)
    subvvvX(3,name,nameA,nameB)
endmacro

# macro subvv24(name, nameA) : name -= nameA 
macro subvv24(name, nameA)
    subvvX(3,name,nameA)
endmacro

# macro subv24(nameA) : head stack -= nameA
macro addv24(nameA)
    addvX(3,nameA)
endmacro  

# macro sub24() : stack-1 = stack-1 - stack ; stack--
macro sub24()
    subX(3)
endmacro

# macro mulvvv24(name, nameA, nameB) : name = nameA * nameB 
macro mulvvv24(name, nameA, nameB)
    mulvvvX(3, name, nameA, nameB)
endmacro

# macro mulvv24(name, nameA) : name *= nameA
macro mulvv24(name, nameA)
    mulvvX(3,name,nameA)
endmacro

# macro mulv24(name) : head of stack *= name
macro mulv24(name)
    mulvX(3,name)
endmacro

# macro mul24() : stack-1 = stack-1 * stack : stack--
macro mul24()
    mulX(3)
endmacro

# macro equalvv24(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise
macro equalvv24(nameA, nameB)
    equalvvX(3, nameA, nameB)
endmacro

# macro equal24() : same as "equal" but with 24 bits value in stack
macro equal24()
    equalX(3)
endmacro

# macro diffvv24(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise
macro diffvv24(nameA, nameB)
    diffvvX(3, nameA, nameB)
endmacro

# macro diff24() : same as "diff" but with 24 bits value in stack
macro diff24()
    diffX(3)
endmacro

# macro supequalvv24(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise
macro supequalvv24(nameA, nameB)
    supequalvvX(3,nameA, nameB)
endmacro

# macro supequal24() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 24 bits value from stack
macro supequal24()
    supequalX(3)
endmacro

# macro infvv24(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise
macro infvv24(nameA, nameB)
    infvvX(3, nameA, nameB)
endmacro

# macro inf24() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 24 bits value from stack
macro inf24()
    infX(3)
endmacro

# macro infequalvv24(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise
macro infequalvv24(nameA, nameB)
    infequalvvX(3,nameA,nameB)
endmacro

# macro infequal24() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 24 bits value from stack 
macro infequal24()
    infequalX(3)
endmacro

# macro supvv24(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise
macro supvv24(nameA, nameB)
    supvvX(3,nameA,nameB)
endmacro 

# macro sup24() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 24 bits value from stack 
macro sup24()
    supX(3)
endmacro

# macro divvvvv24(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB
macro divvvvv24(nameAdivB, nameAmodB, nameA, nameB)
    divvvvvX(3,nameAdivB, nameAmodB, nameA, nameB)
endmacro

# macro divvv24(nameA, nameB) : Push 2 24 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB 
macro divvv24(nameA, nameB)
    divvvX(3,nameA,nameB)
endmacro

# macro div24() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B
macro div24()
    divX(3)
endmacro

# macro write24(name) : print out the decimal value (signed)
macro write24(name)
    writeX(3,name)
endmacro

# macro printhexa24(name) : print the 24 bit variable in hexadecimal
macro printhexa24(name)
    printhexaX(3,name)
endmacro

declareTmpX(3)

