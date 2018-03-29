# Test 3
include ../../samples/include/macro.inc
include ../../samples/include/signedX32.inc

# signedX16 macros test
print("Signed 32 bits macro test.\n\n")

# macro var32(name) :declare global 16 bits
# macro lvar32(name) : declare local 16 bits

# macro fixsv32(name) : be sure that name is positive if equal to zero
# macro fixs32() : be sure to have sign to zero if 16 bits head of stack value is zero

# macro pushv32(name) : push 16 bits name on stack
# macro push32(immValue) : push immediate16 bits value on the stack
# macro pushsv32(name) : push the sign of the 16 bits variable 'name'
# macro pushcv32(name) : push the carry of the 16 bits variable 'name'

# macro dup32() : duplicate 16bits value on stack

# macro popv32(name) : pop the stack to the 16 bits variable 'name'
# macro popsv32(name) : pop the sign(8 bits 0/1) to the 16 bits variable 'name'
# macro popcv32(name) : pop the carry(8 bit 0/1) to the 16 bits variable 'name'

# macro drop32() : drop 16 bits value from stack

# macro negv32(name) : name = -name
# macro neg32() : 16 bits head of stack = - (16 bits head of stack)    

# macro absv32(name) : name = abs(name)
# macro abs32() : 16 bits head of stack = abs(16 bits head of stack)

# macro setc32() : set 1 to 16 bits head of stack carry
# macro setcv32(name) : set 1 to 16 bits variable 'name' carry

# macro clearc32() : set 0 to 16 bits head of stack carry
# macro clearcv32(name) : set 0 to 16 bits variable 'name' carry

# macro reset32() : reset 16 bits value of the head of stack
# macro resetv32(name) : reset 16 bits variable 'name'

# macro set32(immValue) : set 16 bits value on the head of stack
# macro setv32(name, immValue) : set 16 bits immediate value to a 16 bits variable 'name' 

# macro bool32() : same as 'bool' but with a 16 bits value on stack
# macro boolv32(name) : push on stack the bool(name) 16 bits 

# macro incv32(name) : name = name +1 (16 bits)
# macro inc32() : 16 bits head of stack value incremented

# macro decv32(name) : name-- (16 bits)
# macro dec32() : 16 bits head of stack value decrement

# macro addvi32(name, immValue) : name += immediate value
# macro addi32(immValue) : 16 bits head of stack value += immediate value
# macro addvvv32(name, nameA, nameB) : name = nameA + nameB
# macro addvv32(name, nameA) : name += nameA
# macro addv32(nameA) : head stack += nameA
# macro add32() : stack-1 = stack-1 + stack ; stack--

# macro subvi32(name, immValue) : name -= immediate value
# macro subi32(immValue) : 16 bits head of stack value -= immediate value
# macro subvvv32(name, nameA, nameB) : name = nameA - nameB
# macro subvv32(name, nameA) : name -= nameA 
# macro subv32(nameA) : head stack -= nameA
# macro sub32() : stack-1 = stack-1 - stack ; stack--

# macro mulvvv32(name, nameA, nameB) : name = nameA * nameB 
# macro mulvv32(name, nameA) : name *= nameA
# macro mulv32(name) : head of stack *= name
# macro mul32() : stack-1 = stack-1 * stack : stack--
define  large   8

scope_begin
    lvar32  var1
    lvar32  var3
    lvar32  var4
    lvar32  var5
    lvarX   {large},    var6A
    lvarX   {large},    var6B
    lvarX   {large},    var6C

    print("setvX {large},var6A, -1:")
    setvX   {large},var6A, -1
    printhexaX  {large},  var6A
    
    print("mulof : FF * FF = ")
    push    255
    push    255
    mulof
    swap
    popout8hexa
    popout8hexa
    print("\n")
    
    setv32  var1,   100000
    setv32  var3,   0
    setvX   {large},  var6A,  688128  # A 80 00
    setvX   {large},  var6B,  256  #131072  # 2 00 00
    setvX   {large},  var6C,  0       # 2 00 00
    print("quick mul :")
    printhexaX  {large},  var6A
    print(" * ")
    printhexaX  {large},  var6B
    print("=")
    push    1
    sbm     looper1
    while
        boolvX  {large}, var6B
        if
            addvvX  {large},  var6C,  var6A
           # print("\n[")
           # printhexaX  {large},    var6B
           # print(":")
           # printhexaX  {large},    var6C
           # print("]")
            decvX  {large},   var6B
        else
            at  looper1
                reset
            ta
        fi
    wend
    printhexaX  {large},  var6C
    print("\n")

    setvX(large,"var6A",16777216)  # FF FF
    setvX(large,"var6B",16777216)  # 0A
    print("1000000 + 1000000=")
    addvvvX(large, "var6C", "var6A","var6B")
    printhexaX(large, "var6C")
    print("\n")

    
    setvX   {large},  var6A,  -65535  # FF FF
    setvX   {large},  var6B,  65535  # FF FF
    #pushX   {large},  -65535
    #popvX   {large},  var6A
    print("var6A=")
    printhexaX  {large},  var6A
    print("\n")
    print("FFFF * FFFF=")
    mulvvvX {large},  var6C,  var6A,  var6B
    printhexaX  {large},  var6C
    print("\n")
    
    setvX   {large},  var6A,  688128  # A 80 00
    setvX   {large},  var6B,  131072  # 2 00 00
    print("A8000 * 20000=")
    mulvvvX {large},  var6C,  var6A,  var6B
    printhexaX  {large},  var6C
    print("\n")
 
scope_end