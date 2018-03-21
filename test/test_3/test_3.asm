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

scope_begin()
    lvar32("var1")
    lvar32("var3")
    lvar32("var4")
    lvar32("var5")
    
    setv32("var1",0)
    setv32("var3",65536)
    setv32("var4",-10)
    addvvv32("var1","var3","var4")
    print("65536 + -10:")
    printhexa32("var1")
    print("\n")
    
    setv32("var1",0)
    setv32("var3",65535)
    setv32("var4",-10)
    addvvv32("var1","var3","var4")
    print("65535 + -10:")
    printhexa32("var1")
    print("\n")
    
    setv32("var1",0)
    setv32("var3",-10)
    setv32("var4",65536)
    addvvv32("var1","var3","var4")
    print("-10 + 65536:")
    printhexa32("var1")
    print("\n")

    setv32("var1",0)
    setv32("var3",65536)
    setv32("var4",10)
    addvvv32("var1","var3","var4")
    print("65536 + 10:")
    printhexa32("var1")
    print("\n")

    
    setv32("var1",0)
    print("0==")
    write32("var1")
    print("\n")
    setv32("var1",1)
    print("1==")
    write32("var1")
    print("\n")
    setv32("var1",10)
    print("10==")
    write32("var1")
    print("\n")
    setv32("var1",100)
    print("100==")
    write32("var1")
    print("\n")
    setv32("var1",1000)
    print("1000==")
    write32("var1")
    print("\n")
    setv32("var1",10000)
    print("10000==")
    write32("var1")
    print("\n")
    setv32("var1",100000)
    print("100000==")
    write32("var1")
    print("\n")
    setv32("var1",1000000)
    print("1000000==")
    write32("var1")
    print("\n")
    
    setv32("var1",100000)
    setv32("var3",10)
    divvvvv32("var4","var5","var1","var3")
    print("100000 div 10 : 10000 == ")
    write32("var4")
    print(":")
    printhexa32("var4")
    print("\n")
    print("100000 mod 10 : 0 == ")
    write32("var5")
    print("\n")

    setv32("var1",65535)
    setv32("var3",10)
    divvvvv32("var4","var5","var1","var3")
    print("65535 div 10 : 6553 == ")
    write32("var4")
    print(":")
    printhexa32("var4")
    print("\n")
    print("65535 mod 10 : 5 == ")
    write32("var5")
    print("\n")

    setv32("var1",65536)
    setv32("var3",10)
    divvvvv32("var4","var5","var1","var3")
    print("65536 div 10 : 6553 == ")
    write32("var4")
    print(":")
    printhexa32("var4")
    print("\n")
    print("65536 mod 10 : 6 == ")
    write32("var5")
    print("\n")

    setv32("var1",65545)
    setv32("var3",10)
    divvvvv32("var4","var5","var1","var3")
    print("65545 div 10 : 6554 == ")
    write32("var4")
    print(":")
    printhexa32("var4")
    print("\n")
    print("65545 mod 10 : 5 == ")
    write32("var5")
    print("\n")
    
    
    setv32("var3",100)
    push32(10384)
    push32(4)
    mul32()
    popv32("var1")
    print("10384*4: 41536 == ")
    write32("var1")
    print("\n")
    negv32("var1")
    print("-41536 == ")
    write32("var1")
    print("\n")
    
    push32(-253)
    push32(254)
    mul32()
    popv32("var1")
    print("-253*254: -64262 == ")
    write32("var1")
    print("\n")
    
    push32(-64262)
    pushv32("var1")
    equal32()
    if
        print("ok 1\n")
    else
        print("bug 1\n")
    fi
    
    push32(12)
    pushv32("var1")
    equal32()
    if
        print("bug 2\n")
    else
        print("ok 2\n")
    fi
    
    push 1
    if
        push32(-64262)
        pushv32("var1")
        diff32()
        if
            print("bug 3\n")
        else
            print("ok 3\n")
        fi
    fi
    
    push 1
    if
        push32(12)
        pushv32("var1")
        diff32()
        if
            print("ok 4\n")
        else
            print("bug 4\n")
        fi
    fi

    push 1
    if
        #push32(12)
        #pushv32("var1")
        infvv32("var3","var1")
        if
            print("bug 5\n")
        else
            print("ok 5\n")
        fi
    fi

    push 1
    if
        pushv32("var1")
        push32(12)
        inf32()
        if
            print("ok 6\n")
        else
            print("bug 6\n")
        fi
    fi
    
    incv32("var1")
    print("-64261 == ")
    write32("var1")
    print("\n")
        
scope_end()

# macro divvvvv32(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB
# macro divvv32(nameA, nameB) : Push 2 16 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB 
# macro div32() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B
scope_begin()
    lvar32("var2")
    push32(10384)
    push32(-512)
    div32()
    print("10384 div -512: -20 == ")
    popv32("var2")
    write32("var2")
    print("\n")
    print("10384 mod -512: 144 == ")
    popv32("var2")
    write32("var2")
    print("\n")
    
    push32(-10384)
    push32(512)
    div32()
    print("-10384 div 512: -20 == ")
    popv32("var2")
    write32("var2")
    print("\n")
    print("-10384 mod 512: -144 == ")
    popv32("var2")
    write32("var2")
    print("\n")
scope_end()

# macro equalvv32(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise
# macro equal32() : same as "equal" but with 16 bits value in stack

# macro diffvv32(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise
# macro diff32() : same as "diff" but with 16 bits value in stack

# macro supvv32(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise
# macro sup32() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 16 bits value from stack 

# macro supequalvv32(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise
# macro supequal32() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 16 bits value from stack

# macro infvv32(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise
# macro inf32() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 16 bits value from stack

# macro infequalvv32(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise
# macro infequal32() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 16 bits value from stack 

# macro write32(name) : print out the decimal value (signed)
# macro printhexa32(name) : print the 16 bit variable in hexadecimal
