# Test 1
include ../../samples/include/macro.inc

# basic operation test

print("Basic operation test.\n\n")
print("ADD an immediate\n")
push    1
add     3
print(" push 1; add 3 ; 04 == ")
popout8hexa()
print("\n") 

print("ADD two 8 bits in stack\n")
push    2
push    5
add
print(" push 2; push 5 ; add ;  07 == ")
popout8hexa()
print("\n") 
push    253
push    5
add
print(" push 253; push 5 ; add ;  02 == ")
popout8hexa()
print("\n") 

print("AND two boolean 8 bits in stack\n")
push    2
push    5
and
print(" push 2; push 5 ; add ;  01 == ")
popout8hexa()
print("\n") 
push    1
push    1
and
print(" push 1; push 1 ; add ;  01 == ")
popout8hexa()
print("\n") 
push    0
push    1
and
print(" push 0; push 1 ; add ;  00 == ")
popout8hexa()
print("\n") 
push    1
push    0
and
print(" push 1; push 0 ; add ;  00 == ")
popout8hexa()
print("\n") 

print("AROTL rotate array\n")
var grot1*3
push 1
pop grot1
arotl grot1
push 2
pop grot1
arotl grot1
push 3
pop grot1
arotl grot1
print("  01 02 03 == ")
push 3
loop
    push grot1
    popout8hexa()
    print(" ") 
    arotl grot1
endloop
print("\n")    

print("AROTR rotate array\n")
var grot2*3
push 1
pop grot2
arotr grot2
push 2
pop grot2
arotr grot2
push 3
pop grot2
arotr grot2
print("  01 02 03 == ")
push 3
loop
    push grot2
    popout8hexa()
    print(" ") 
    arotr grot2
endloop
print("\n")    

print("AT / TA at variable action\n")
var gvar2
at gvar2
    set 9
ta
push gvar2
print("  09 == ")
popout8hexa()
print("\n")

print("BF inline BF actions\n")
print("  09 == ")
push    0
bf  +++++++++
popout8hexa()
print("\n")

print("BOOL transform stack value to 0 or 1\n")
print("  10 : 01 == ")
push 10
bool
popout8hexa()
print("\n")
print("  0 : 00 == ")
push 0
bool
popout8hexa()
print("\n")

print("DEC , decrement head of stack value\n")
print(" 10 - 1 : 09 == ")
push 10
dec
popout8hexa()
print("\n")

print("DIFF , 2 value in stack are different\n")
print(" 10 <> 10 : 00 == ")
push 10
push 10
diff
popout8hexa()
print("\n")
print(" 10 <> 8 : 01 == ")
push 10
push 8
diff
popout8hexa()
print("\n")

print("DIV , div 2 value in stack\n")
print("  5 div 2 = 2 ; 02 == ")
push 5
push 2
div
popout8hexa()
print("\n")
print("  5 mod 2 = 1 ; 01 == ")
popout8hexa()
print("\n")

print("DROP, drop a value in stack\n")
push 8
push 5
drop
print (" push 8; push 5 ; drop  ; 08 == ")
popout8hexa()
print("\n")

print("DUP,  duplicate head of stack value\n")
push 10
dup
print(" push 10; dup ;  0A == ")
popout8hexa()
print("\n")
print(" then... drop once ; 0A == ")
popout8hexa()
print("\n")

print("EQUAL , 2 value in stack are equal\n")
print(" 10 == 10 : 01 == ")
push 10
push 10
equal
popout8hexa()
print("\n")
print(" 10 == 8 : 00 == ")
push 10
push 8
equal
popout8hexa()
print("\n")

print("IF/FI IF/ELSE/FI ...\n")
push 1
if
    push 1
    print("   01 == ")
    popout8hexa()
    print("\n")
fi
push 255
if
    push 255
    print("   FF == ")
    popout8hexa()
    print("\n")
else
    print("  BUG 255 !!!\n")    
fi
push 0
if
    print("  BUG 0 !!!\n")
else
    push 0
    print("   00 == ")
    popout8hexa()
    print("\n")
fi

print("INC , decrement head of stack value\n")
print(" 10 + 1 : 0B == ")
push 10
inc
popout8hexa()
print("\n")

print("INF , 2 value in stack are equal\n")
print(" 10 < 10 : 00 == ")
push 10
push 10
inf
popout8hexa()
print("\n")
print(" 8 < 10 : 01 == ")
push 8
push 10
equal
popout8hexa()
print("\n")









