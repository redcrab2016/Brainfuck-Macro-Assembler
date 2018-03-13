#(begin include)../include/macro.inc
# Common macros
# scope variables
#(js) var __scope; var __idx;
#(js) __scope=[0]; __idx = 0;


# macro scope_begin : start a new scope for local variable (usage of macro lvar)

# macro scope_end : end a scope , then drop scoped local variables (drop) (usage of lvar)

# macro lvar(vname,value) : declare  in scope, a local variable named vname with an assigned value (stored in stack)

# macro if_diff(a,b) : if (a != b) {

# macro if_equal(a,b) : if (a == b) {

# macro if_sup(a,b) : if (a > b) {

# macro if_inf(a,b) : if (a < b) {

# macro if_supequal(a,b) : if (a >= b) {

# macro if_infequal(a,b) : if (a <= b) {

# macro at_2

# macro at_1

# macro at_reset(a) : a=0

# macro at_inc(a) : a++

# macro at_dec(a) : a--

# macro at_in(a)  : a= readchar()

# macro at_out(a) : write(a)

# macro at_add(a,b) : a += b (immediate)

# macro at_sub(a,b) : a -= b (immediate)

# macro at_set(a,b) : a = b (immediate)





# macro popouthexa() : from head of stack value (from 0 to 15) write out hexa (from 0 to 9 and A to F)

# macro popout8hexa() : from head of stack the 8 bit value is write out in hexa

# macro print(aString) : print out a string
#(end include)../include/macro.inc
#(begin include)../include/signedX16.inc
# 16 bits signed integer ( 2 bytes)

#(begin include)signedX.inc
# X bytes : X*8 bits signed integer : 

# macro varX(name) :declare global X * 8 bits

# macro lvarX(X,name) : declare local X * 8 bits

# macro fixsvX(X,name) : be sure that name is positive if equal to zero

# macro pushvX(X,name) : push X*8 bits name on stack

# macro pushX(X,immValue) : push immediate X*8 bits value on the stack

# macro dupX(X) : duplicate X * 8 bits value on stack

# macro pushsvX(X,name) : push the sign of the X*8 bits variable 'name'

# macro pushcvX(X,name) : push the carry of the X*8 bits variable 'name'

# macro popvX(X,name) : pop the stack to the X*8 bits variable 'name'

# macro popsvX(X,name) : pop the sign(8 bits 0/1) to the X*8 bits variable 'name'

# macro popcvX(X,name) : pop the carry(8 bit 0/1) to the X*8 bits variable 'name'

# macro negvX(X,name) : name = -name

# macro absvX(X,name) : name = abs(name)

# macro absX(X) : X*8 bits head of stack = abs(X*8 bits head of stack)

# macro negX(X) : X*8 bits head of stack = - (X*8 bits head of stack)    

# macro setcX(X) : set 1 to X*8 bits head of stack carry

# macro setcvX(X,name) : set 1 to X*8 bits variable 'name' carry

# macro clearcX(X) : set 0 to 8*X bits head of stack carry

# macro clearcvX(X,name) : set 0 to X*8 bits variable 'name' carry

# macro dropX(X) : drop 8*X bits value from stack

# macro resetX(X) : reset X*8 bits value of the head of stack

# macro resetvX(X,name) : reset X*8 bits variable 'name'

# macro setX(X,immValue) : set X*8 bits value on the head of stack

# macro setvX(X,name, immValue) : set X*8 bits immediate value to a X*8 bits variable 'name' 

# macro fixsvX(X,name) : be sure to have sign to zero if X*8bits variable 'name' is zero

# macro fixsX(X) : be sure to have sign to zero if X*8 bits head of stack value is zero

# macro boolX(X) : same as 'bool' but with a X*8 bits value on stack

# macro boolvX(X,name) : push on stack the bool(name) X*8 bits 

# macro incvX(X,name) : name = name +1 (X*8 bits)

# macro incX(X) : X*8 bits head of stack value incremented

# macro decvX(X,name) : name-- (X*8 bits)

# macro decX(X) : X*8 bits head of stack value decrement

# macro addviX(X,name, immValue) : name += immediate value

# macro addi16(immValue) : 16 bits head of stack value += immediate value

# macro subviX(X,name, immValue) : name -= immediate value

# macro subiX(X,immValue) : X*8 bits head of stack value -= immediate value

# macro addvvvX(X,name, nameA, nameB) : name = nameA + nameB

# macro addvvX(X,name, nameA) : name += nameA

# macro addvX(X,nameA) : head stack += nameA

# macro addX(X) : stack-1 = stack-1 + stack ; stack--



# macro subvvvX(X,name, nameA, nameB) : name = nameA - nameB

# macro subvvX(X,name, nameA) : name -= nameA 

# macro subvX(X,nameA) : head stack -= nameA

# macro subX(X) : stack-1 = stack-1 - stack ; stack--

# macro mulvvvX(X,name, nameA, nameB) : name = nameA * nameB 

# macro mulvvX(X,name, nameA) : name *= nameA

# macro mulvX(X,name) : head of stack *= name

# macro mulX(X) : stack-1 = stack-1 * stack : stack--

# macro equalvvX(X,nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise

# macro equalX(X) : same as "equal" but with X*8 bits value in stack

# macro diffvvX(X,nameA, nameB) : push 1 if Name != NameB , push 0 otherwise

# macro diffX(X) : same as "diff" but with X*8 bits value in stack

# macro supequalvvX(X,nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise

# macro supequalX(X) : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 X*8 bits value from stack

# macro infvvX(X,nameA, nameB) : push 1 if nameA < nameB push 0 otherwise

# macro infX(X) : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 X*8 bits value from stack

# macro infequalvvX(X,nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise

# macro infequalX(X) : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 X*8 bits value from stack 

# macro supvvX(X,nameA , nameB) : push 1 if nameA > nameB push 0 otherwise

# macro supX(X) : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 X*8 bits value from stack

# macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB

# macro divvvX(X,nameA, nameB) : Push 2 X*8 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB 

# macro divX(X) : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B


# macro castX(X1,X2) : transform stack X1*8 bits value to X2*8 bits value

# upcast macro






# downcast macro








# macro writeX(X,name) : print out the decimal value (signed)

# macro printhexaX(X,name) : print the X*8 bit variable in hexadecimal


#(js) var _sv1; var _sv2; var _sv3; var _sv4; var _sv5; var _sv6; var _sv7;
#(js) _sv1 = 0; _sv2=0; _sv3 = 0; _sv4 = 0; _sv5 = 0; _sv6 = 0; _sv7 = 0;

# declare temporary 16 bits value used for signed16.inc macros
#(end include)signedX.inc

# macro var16(name) :declare global 16 bits

# macro lvar16(name) : declare local 16 bits

# macro fixsv16(name) : be sure that name is positive if equal to zero

# macro pushv16(name) : push 16 bits name on stack

# macro push16(immValue) : push immediate16 bits value on the stack

# macro dup16() : duplicate 16bits value on stack

# macro pushsv16(name) : push the sign of the 16 bits variable 'name'

# macro pushcv16(name) : push the carry of the 16 bits variable 'name'

# macro popv16(name) : pop the stack to the 16 bits variable 'name'

# macro popsv16(name) : pop the sign(8 bits 0/1) to the 16 bits variable 'name'

# macro popcv16(name) : pop the carry(8 bit 0/1) to the 16 bits variable 'name'

# macro negv16(name) : name = -name

# macro absv16(name) : name = abs(name)

# macro abs16() : 16 bits head of stack = abs(16 bits head of stack)

# macro neg16() : 16 bits head of stack = - (16 bits head of stack)    

# macro setc16() : set 1 to 16 bits head of stack carry

# macro setcv16(name) : set 1 to 16 bits variable 'name' carry

# macro clearc16() : set 0 to 16 bits head of stack carry

# macro clearcv16(name) : set 0 to 16 bits variable 'name' carry

# macro drop16() : drop 16 bits value from stack

# macro reset16() : reset 16 bits value of the head of stack

# macro resetv16(name) : reset 16 bits variable 'name'

# macro set16(immValue) : set 16 bits value on the head of stack

# macro setv16(name, immValue) : set 16 bits immediate value to a 16 bits variable 'name' 

# macro fixsv16(name) : be sure to have sign to zero if 16 bits variable 'name' is zero

# macro fixs16() : be sure to have sign to zero if 16 bits head of stack value is zero

# macro bool16() : same as 'bool' but with a 16 bits value on stack

# macro boolv16(name) : push on stack the bool(name) 16 bits 

# macro incv16(name) : name = name +1 (16 bits)

# macro inc16() : 16 bits head of stack value incremented

# macro decv16(name) : name-- (16 bits)

# macro dec16() : 16 bits head of stack value decrement

# macro addvi16(name, immValue) : name += immediate value

# macro addi16(immValue) : 16 bits head of stack value += immediate value

# macro subvi16(name, immValue) : name -= immediate value

# macro subi16(immValue) : 16 bits head of stack value -= immediate value

# macro addvvv16(name, nameA, nameB) : name = nameA + nameB

# macro addvv16(name, nameA) : name += nameA

# macro addv16(nameA) : head stack += nameA

# macro add16() : stack-1 = stack-1 + stack ; stack--

# macro subvvv16(name, nameA, nameB) : name = nameA - nameB

# macro subvv16(name, nameA) : name -= nameA 

# macro subv16(nameA) : head stack -= nameA

# macro sub16() : stack-1 = stack-1 - stack ; stack--

# macro mulvvv16(name, nameA, nameB) : name = nameA * nameB 

# macro mulvv16(name, nameA) : name *= nameA

# macro mulv16(name) : head of stack *= name

# macro mul16() : stack-1 = stack-1 * stack : stack--

# macro equalvv16(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise

# macro equal16() : same as "equal" but with 16 bits value in stack

# macro diffvv16(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise

# macro diff16() : same as "diff" but with 16 bits value in stack

# macro supequalvv16(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise

# macro supequal16() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 16 bits value from stack

# macro infvv16(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise

# macro inf16() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 16 bits value from stack

# macro infequalvv16(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise

# macro infequal16() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 16 bits value from stack 

# macro supvv16(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise

# macro sup16() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 16 bits value from stack 

# macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB

# macro divvv16(nameA, nameB) : Push 2 16 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB 

# macro div16() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B

# macro write16(name) : print out the decimal value (signed)

# macro printhexa16(name) : print the 16 bit variable in hexadecimal

#(begin macro)declareTmpX(2)
#(js) var _xbits; _xbits = X * 8;
#(js) var _nDecimal ; _nDecimal = ("" + (Math.pow(2,8*X)-1)).length;
#(begin macro)    varX(X, "__tmp" + _xbits + "__" )
#(js) for (var xx=0 ; xx < X ; xx++) {
    var __tmp16___0    # 0 byte of __tmp16__
#(js) }
    var __tmp16___1    # 1 byte of __tmp16__
#(js) }
    var __tmp16___s    # Sign of __tmp16__
    var __tmp16___c    # carry of __tmp16__ 
#(end macro)    varX(X, "__tmp" + _xbits + "__" )
#(begin macro)    varX(X, "__tmp" + _xbits + "a__" )
#(js) for (var xx=0 ; xx < X ; xx++) {
    var __tmp16a___0    # 0 byte of __tmp16a__
#(js) }
    var __tmp16a___1    # 1 byte of __tmp16a__
#(js) }
    var __tmp16a___s    # Sign of __tmp16a__
    var __tmp16a___c    # carry of __tmp16a__ 
#(end macro)    varX(X, "__tmp" + _xbits + "a__" )
#(begin macro)    varX(X, "__tmp" + _xbits + "b__" )
#(js) for (var xx=0 ; xx < X ; xx++) {
    var __tmp16b___0    # 0 byte of __tmp16b__
#(js) }
    var __tmp16b___1    # 1 byte of __tmp16b__
#(js) }
    var __tmp16b___s    # Sign of __tmp16b__
    var __tmp16b___c    # carry of __tmp16b__ 
#(end macro)    varX(X, "__tmp" + _xbits + "b__" )
#(begin macro)    varX(X, "__tmp" + _xbits + "c__" )
#(js) for (var xx=0 ; xx < X ; xx++) {
    var __tmp16c___0    # 0 byte of __tmp16c__
#(js) }
    var __tmp16c___1    # 1 byte of __tmp16c__
#(js) }
    var __tmp16c___s    # Sign of __tmp16c__
    var __tmp16c___c    # carry of __tmp16c__ 
#(end macro)    varX(X, "__tmp" + _xbits + "c__" )
#(begin macro)    varX(X, "__tmp" + _xbits + "d__" )
#(js) for (var xx=0 ; xx < X ; xx++) {
    var __tmp16d___0    # 0 byte of __tmp16d__
#(js) }
    var __tmp16d___1    # 1 byte of __tmp16d__
#(js) }
    var __tmp16d___s    # Sign of __tmp16d__
    var __tmp16d___c    # carry of __tmp16d__ 
#(end macro)    varX(X, "__tmp" + _xbits + "d__" )
    var  _stringDecimal16_*5
#(end macro)declareTmpX(2)

#(end include)../include/signedX16.inc

# display a number
#(begin macro)var16("number1")
#(begin macro)    varX(2,name)
#(js) for (var xx=0 ; xx < X ; xx++) {
    var number1_0    # 0 byte of number1
#(js) }
    var number1_1    # 1 byte of number1
#(js) }
    var number1_s    # Sign of number1
    var number1_c    # carry of number1 
#(end macro)    varX(2,name)
#(end macro)var16("number1")

push    0
#(begin macro)setv16("number1", 10384)
#(begin macro)    setvX(2,name, immValue)
    at number1_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    40
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    144
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)    setvX(2,name, immValue)
#(end macro)setv16("number1", 10384)


#(begin macro)scope_begin()
#(js) __scope.push(0);
#(end macro)scope_begin()
#(begin macro)    lvar16("number2")
#(begin macro)    lvarX(2,name)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm number2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm number2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm number2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm number2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)    lvarX(2,name)
#(end macro)    lvar16("number2")
#(begin macro)    set16(-1024)
#(begin macro)    setX(2,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    4
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(end macro)    setX(2,immValue)
#(end macro)    set16(-1024)

    
#(begin macro)    print("Hexa dump\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     72    
#(js) }
    out             # 'H'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     29   
#(js) } else {
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     19   
#(js) } else {
#(js) } else {
    out             # 'x'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     23   
#(js) }
#(js) }
#(js) } else {
    out             # 'a'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     68   
#(js) } else {
#(js) } else {
    out             # 'd'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     17   
#(js) } else {
#(js) } else {
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     8   
#(js) }
#(js) }
#(js) } else {
    out             # 'm'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'p'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("Hexa dump\n")
#(begin macro)    print("c : carry , overflow or underflow\n")    
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     99    
#(js) }
    out             # 'c'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     26   
#(js) } else {
#(js) } else {
    out             # ':'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     26   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     67   
#(js) } else {
#(js) } else {
    out             # 'c'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     2   
#(js) }
#(js) }
#(js) } else {
    out             # 'a'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     17   
#(js) } else {
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'y'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     12   
#(js) } else {
#(js) } else {
    out             # ','
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     12   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     79   
#(js) } else {
#(js) } else {
    out             # 'o'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'v'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     17   
#(js) }
#(js) }
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     12   
#(js) }
#(js) }
#(js) } else {
    out             # 'f'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     6   
#(js) } else {
#(js) } else {
    out             # 'l'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'o'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     8   
#(js) } else {
#(js) } else {
    out             # 'w'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     79   
#(js) } else {
#(js) } else {
    out             # 'o'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     85   
#(js) } else {
#(js) } else {
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     7   
#(js) }
#(js) }
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     10   
#(js) }
#(js) }
#(js) } else {
    out             # 'd'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     1   
#(js) } else {
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     12   
#(js) }
#(js) }
#(js) } else {
    out             # 'f'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     6   
#(js) } else {
#(js) } else {
    out             # 'l'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'o'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     8   
#(js) } else {
#(js) } else {
    out             # 'w'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("c : carry , overflow or underflow\n")    
#(begin macro)    print("s : sign , 00 positive, 01 negative\n")    
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     115    
#(js) }
    out             # 's'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     26   
#(js) } else {
#(js) } else {
    out             # ':'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     26   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     83   
#(js) } else {
#(js) } else {
    out             # 's'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     10   
#(js) }
#(js) }
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     2   
#(js) }
#(js) }
#(js) } else {
    out             # 'g'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     12   
#(js) } else {
#(js) } else {
    out             # ','
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     12   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     16   
#(js) } else {
#(js) } else {
    out             # '0'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # '0'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     16   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     80   
#(js) } else {
#(js) } else {
    out             # 'p'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     1   
#(js) }
#(js) }
#(js) } else {
    out             # 'o'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     4   
#(js) } else {
#(js) } else {
    out             # 's'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     10   
#(js) }
#(js) }
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     11   
#(js) } else {
#(js) } else {
    out             # 't'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'v'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     17   
#(js) }
#(js) }
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     44    
#(js) }
    out             # ','
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     12   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     16   
#(js) } else {
#(js) } else {
    out             # '0'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     1   
#(js) } else {
#(js) } else {
    out             # '1'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     17   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     78   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     9   
#(js) }
#(js) }
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     2   
#(js) } else {
#(js) } else {
    out             # 'g'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     6   
#(js) }
#(js) }
#(js) } else {
    out             # 'a'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     19   
#(js) } else {
#(js) } else {
    out             # 't'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'v'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     17   
#(js) }
#(js) }
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("s : sign , 00 positive, 01 negative\n")    
#(begin macro)    print("1 : most significant byte\n")    
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     49    
#(js) }
    out             # '1'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     17   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     26   
#(js) } else {
#(js) } else {
    out             # ':'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     26   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     77   
#(js) } else {
#(js) } else {
    out             # 'm'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     2   
#(js) } else {
#(js) } else {
    out             # 'o'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     4   
#(js) } else {
#(js) } else {
    out             # 's'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     1   
#(js) } else {
#(js) } else {
    out             # 't'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     83   
#(js) } else {
#(js) } else {
    out             # 's'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     10   
#(js) }
#(js) }
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     2   
#(js) }
#(js) }
#(js) } else {
    out             # 'g'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     5   
#(js) }
#(js) }
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     3   
#(js) }
#(js) }
#(js) } else {
    out             # 'f'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     6   
#(js) }
#(js) }
#(js) } else {
    out             # 'c'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     2   
#(js) }
#(js) }
#(js) } else {
    out             # 'a'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     6   
#(js) } else {
#(js) } else {
    out             # 't'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     66   
#(js) } else {
#(js) } else {
    out             # 'b'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     23   
#(js) } else {
#(js) } else {
    out             # 'y'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     5   
#(js) }
#(js) }
#(js) } else {
    out             # 't'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     15   
#(js) }
#(js) }
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("1 : most significant byte\n")    
#(begin macro)    print("0 : less significant byte\n")    
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     48    
#(js) }
    out             # '0'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     16   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     26   
#(js) } else {
#(js) } else {
    out             # ':'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     26   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     76   
#(js) } else {
#(js) } else {
    out             # 'l'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     7   
#(js) }
#(js) }
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     14   
#(js) } else {
#(js) } else {
    out             # 's'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # 's'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     83   
#(js) } else {
#(js) } else {
    out             # 's'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     10   
#(js) }
#(js) }
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     2   
#(js) }
#(js) }
#(js) } else {
    out             # 'g'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     5   
#(js) }
#(js) }
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     3   
#(js) }
#(js) }
#(js) } else {
    out             # 'f'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     6   
#(js) }
#(js) }
#(js) } else {
    out             # 'c'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     2   
#(js) }
#(js) }
#(js) } else {
    out             # 'a'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     6   
#(js) } else {
#(js) } else {
    out             # 't'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     66   
#(js) } else {
#(js) } else {
    out             # 'b'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     23   
#(js) } else {
#(js) } else {
    out             # 'y'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     5   
#(js) }
#(js) }
#(js) } else {
    out             # 't'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     15   
#(js) }
#(js) }
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("0 : less significant byte\n")    
#(begin macro)    print("[number1]")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     91    
#(js) }
    out             # '['
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     19   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     8   
#(js) }
#(js) }
#(js) } else {
    out             # 'm'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'b'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     49    
#(js) }
    out             # '1'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     44   
#(js) } else {
#(js) } else {
    out             # ']'
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("[number1]")
    
    push 1
    if
#(begin macro)    printhexa16("number1")
#(begin macro)    printhexaX(2,name)
    push    number1_c
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input1
#(begin macro)    if_sup("_input" + __idx,9)
    push _input1
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input1
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input1
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input2
#(begin macro)    if_sup("_input" + __idx,9)
    push _input2
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input2
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input2
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)    popout8hexa()
    push    number1_s
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input3
#(begin macro)    if_sup("_input" + __idx,9)
    push _input3
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input3
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input3
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input4
#(begin macro)    if_sup("_input" + __idx,9)
    push _input4
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input4
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input4
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)    popout8hexa()
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
#(js) var xx1; xx1= X-xx-1
    push    number1_1
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input5
#(begin macro)    if_sup("_input" + __idx,9)
    push _input5
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input5
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input5
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input6
#(begin macro)    if_sup("_input" + __idx,9)
    push _input6
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input6
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input6
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)    popout8hexa()
#(js) }
#(end macro)    printhexaX(2,name)
#(end macro)    printhexa16("number1")
    fi
#(begin macro)    print("\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("\n")
#(begin macro)    print("          c s 1 0\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     67   
#(js) } else {
#(js) } else {
    out             # 'c'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     83   
#(js) } else {
#(js) } else {
    out             # 's'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     17   
#(js) } else {
#(js) } else {
    out             # '1'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     17   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     16   
#(js) } else {
#(js) } else {
    out             # '0'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("          c s 1 0\n")
#(begin macro)    print("[number2]")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     91    
#(js) }
    out             # '['
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     19   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     8   
#(js) }
#(js) }
#(js) } else {
    out             # 'm'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'b'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     50    
#(js) }
    out             # '2'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     43   
#(js) } else {
#(js) } else {
    out             # ']'
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("[number2]")
    push 1
    if
#(begin macro)    printhexa16("number2")
#(begin macro)    printhexaX(2,name)
    push    number2_c
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input7
#(begin macro)    if_sup("_input" + __idx,9)
    push _input7
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input7
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input7
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input8
#(begin macro)    if_sup("_input" + __idx,9)
    push _input8
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input8
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input8
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)    popout8hexa()
    push    number2_s
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input9
#(begin macro)    if_sup("_input" + __idx,9)
    push _input9
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input9
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input9
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input10
#(begin macro)    if_sup("_input" + __idx,9)
    push _input10
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input10
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input10
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)    popout8hexa()
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
#(js) var xx1; xx1= X-xx-1
    push    number2_1
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input11
#(begin macro)    if_sup("_input" + __idx,9)
    push _input11
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input11
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input11
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input12
#(begin macro)    if_sup("_input" + __idx,9)
    push _input12
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input12
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input12
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)    popout8hexa()
#(js) }
#(end macro)    printhexaX(2,name)
#(end macro)    printhexa16("number2")
    fi
    
#(begin macro)    print("\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("\n")
#(begin macro)    print("          c s 1 0\n\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     67   
#(js) } else {
#(js) } else {
    out             # 'c'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     83   
#(js) } else {
#(js) } else {
    out             # 's'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     17   
#(js) } else {
#(js) } else {
    out             # '1'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     17   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     16   
#(js) } else {
#(js) } else {
    out             # '0'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("          c s 1 0\n\n")
    
#(begin macro)    print("[decimal number1]")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     91    
#(js) }
    out             # '['
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     9   
#(js) } else {
#(js) } else {
    out             # 'd'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     1   
#(js) } else {
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     2   
#(js) }
#(js) }
#(js) } else {
    out             # 'c'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     6   
#(js) } else {
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     4   
#(js) } else {
#(js) } else {
    out             # 'm'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     12   
#(js) }
#(js) }
#(js) } else {
    out             # 'a'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     11   
#(js) } else {
#(js) } else {
    out             # 'l'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     78   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     8   
#(js) }
#(js) }
#(js) } else {
    out             # 'm'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'b'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     49    
#(js) }
    out             # '1'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     44   
#(js) } else {
#(js) } else {
    out             # ']'
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("[decimal number1]")
    push 1
    if
#(begin macro)    write16("number1")
#(begin macro)    writeX(2,name)
#(js) _sv7++;
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar("writeXprefixzero"+_sv7,1)
    push 1
    sbm writeXprefixzero1
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("writeXprefixzero"+_sv7,1)
#(begin macro)        lvarX(X,"writeX_A"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_A1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_A1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_A1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_A1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_A"+_sv7)
#(begin macro)        lvarX(X,"writeX_B"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_B1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_B1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_B1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_B1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_B"+_sv7)
#(begin macro)        lvarX(X,"writeX_AmodB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_AmodB1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_AmodB1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AmodB1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AmodB1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_AmodB"+_sv7)
#(begin macro)        lvarX(X,"writeX_AdivB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_AdivB1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_AdivB1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AdivB1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AdivB1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_AdivB"+_sv7)

        push 1
        if
                
#(begin macro)        pushvX(X,name)
    push    number1_c
    push    number1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    number1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    number1_0
#(js) }
#(end macro)        pushvX(X,name)
#(begin macro)        popvX(X,"writeX_A"+_sv7)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_A1_0
#(js) }
    pop     writeX_A1_1
#(js) }
    pop     writeX_A1_s
    pop     writeX_A1_c
#(end macro)        popvX(X,"writeX_A"+_sv7)
        
#(begin macro)        pushX(X,10)
    push    0
    push    0
#(js) var absImmValue; absImmValue = immValue>=0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    push    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    push    10
#(js) }
#(end macro)        pushX(X,10)
#(begin macro)        popvX(X,"writeX_B"+_sv7)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_B1_0
#(js) }
    pop     writeX_B1_1
#(js) }
    pop     writeX_B1_s
    pop     writeX_B1_c
#(end macro)        popvX(X,"writeX_B"+_sv7)
        
        fi
        
        push writeX_A1_s
        if
            push    '-'
            pop     out   # write '-' if name < 0
        fi
        
        push _stringDecimal16_.size
        loop
            # output = input mod 10 ; input = input div 10
#(begin macro)            divvvvvX(X,"writeX_AdivB" + _sv7, "writeX_AmodB" + _sv7, "writeX_A" + _sv7, "writeX_B" + _sv7)
#(js) _sv6++;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvarX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvvXabsNameA1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvvXabsNameA1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameA1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameA1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)        pushvX(X,nameA)
    push    writeX_A1_c
    push    writeX_A1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_A1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_A1_0
#(js) }
#(end macro)        pushvX(X,nameA)
#(begin macro)        popvX(X,"divvvvvXabsNameA" + _sv6)
#(js) for (var xx=0; xx < X; xx++) {
    pop     divvvvvXabsNameA1_0
#(js) }
    pop     divvvvvXabsNameA1_1
#(js) }
    pop     divvvvvXabsNameA1_s
    pop     divvvvvXabsNameA1_c
#(end macro)        popvX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)        lvar("divvvvvXsA" + _sv6,0)
    push 0
    sbm divvvvvXsA1
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvvXsA" + _sv6,0)
        push writeX_A1_s
        pop divvvvvXsA1
#(begin macro)        absvX(X,"divvvvvXabsNameA" + _sv6)
    push    0
    pop     divvvvvXabsNameA1_s
#(end macro)        absvX(X,"divvvvvXabsNameA" + _sv6)
        
#(begin macro)        lvarX(X,"divvvvvXabsNameB" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvvXabsNameB1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvvXabsNameB1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameB1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameB1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"divvvvvXabsNameB" + _sv6)
#(begin macro)        pushvX(X,nameB)
    push    writeX_B1_c
    push    writeX_B1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_B1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_B1_0
#(js) }
#(end macro)        pushvX(X,nameB)
#(begin macro)        popvX(X,"divvvvvXabsNameB" + _sv6)
#(js) for (var xx=0; xx < X; xx++) {
    pop     divvvvvXabsNameB1_0
#(js) }
    pop     divvvvvXabsNameB1_1
#(js) }
    pop     divvvvvXabsNameB1_s
    pop     divvvvvXabsNameB1_c
#(end macro)        popvX(X,"divvvvvXabsNameB" + _sv6)
#(begin macro)        lvar("divvvvvXsB" + _sv6,0)
    push 0
    sbm divvvvvXsB1
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvvXsB" + _sv6,0)
        push writeX_B1_s
        pop divvvvvXsB1
#(begin macro)        absvX(X,"divvvvvXabsNameB" + _sv6)
    push    0
    pop     divvvvvXabsNameB1_s
#(end macro)        absvX(X,"divvvvvXabsNameB" + _sv6)
        
#(begin macro)        pushvX(X,"divvvvvXabsNameA" + _sv6)
    push    divvvvvXabsNameA1_c
    push    divvvvvXabsNameA1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameA1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameA1_0
#(js) }
#(end macro)        pushvX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)        popvX(X,nameAmodB)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_AmodB1_0
#(js) }
    pop     writeX_AmodB1_1
#(js) }
    pop     writeX_AmodB1_s
    pop     writeX_AmodB1_c
#(end macro)        popvX(X,nameAmodB)
        
#(begin macro)        resetvX(X,nameAdivB)
    at writeX_AdivB1_0
#(begin macro)        resetX(X)
#(js) for (var xx= 0; xx < X+1 ; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    bf [-]
#(js) for (var xx= 0; xx < X+1 ; xx++) {
    bf >[-]
#(js) }
    bf >[-]
#(js) }
    bf >[-]
#(js) }
#(end macro)        resetX(X)
    ta
#(end macro)        resetvX(X,nameAdivB)
        
#(begin macro)        boolvX(X,"divvvvvXabsNameB" + _sv6)
#(js) for (var xx = 0 ; xx < X; xx++) {
    push divvvvvXabsNameB1_0
    bool
#(js) }
    push divvvvvXabsNameB1_1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1; xx++) {
    or
#(js) }
#(end macro)        boolvX(X,"divvvvvXabsNameB" + _sv6)
        if
            push    1
            sbm     divvvvvX_g1
            while
#(begin macro)                supequalvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)
#(js) _sv4++;
#(begin macro)    pushvX(X,nameA)
    push    writeX_AmodB1_c
    push    writeX_AmodB1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB1_0
#(js) }
#(end macro)    pushvX(X,nameA)
#(begin macro)    popvX(X,name)    # name = nameA
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16c___0
#(js) }
    pop     __tmp16c___1
#(js) }
    pop     __tmp16c___s
    pop     __tmp16c___c
#(end macro)    popvX(X,name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvvXgX_1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvvXgX_1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)        pushvX(X,nameB)
    push    divvvvvXabsNameB1_c
    push    divvvvvXabsNameB1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB1_0
#(js) }
#(end macro)        pushvX(X,nameB)
#(begin macro)        popvX(X,"subvvvXgX_" + _sv4)
#(js) for (var xx=0; xx < X; xx++) {
    pop     subvvvXgX_1_0
#(js) }
    pop     subvvvXgX_1_1
#(js) }
    pop     subvvvXgX_1_s
    pop     subvvvXgX_1_c
#(end macro)        popvX(X,"subvvvXgX_" + _sv4)
        push 0
#(begin macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
    POP    subvvvXgX_1_s
#(end macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
        
        push    divvvvvXabsNameB1_s
        if    # nameB is negative 
            push    1
            sbm subvvvX_loop1
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_1_c
    push    subvvvXgX_1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_1_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_1_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_1_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_1_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    incvX(X,name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push __tmp16c___s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,1)
    at __tmp16c___0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
#(begin macro)        fixsvX(X,name)    
    push    __tmp16c___s
    if    # if name is negative
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(begin macro)        if_equal(name +"_" + xx, 0)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)        if_equal(name +"_" + xx, 0)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)            at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset(name + "_s")   # set sign to positive
#(js) for (var xx = 0 ; xx < X ; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)        fixsvX(X,name)    
    fi
#(end macro)                    incvX(X,name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop1
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvvX_loop1
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_1_c
    push    subvvvXgX_1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_1_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_1_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_1_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_1_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    decvX(X, name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push __tmp16c___s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at __tmp16c___0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X, name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop1
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)
    push __tmp16c___s
    not
#(end macro)                supequalvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
                if
#(begin macro)                    incvX(X,nameAdivB)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push writeX_AdivB1_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AdivB1_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AdivB1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AdivB1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AdivB1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AdivB1_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,1)
    at writeX_AdivB1_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
#(begin macro)        fixsvX(X,name)    
    push    writeX_AdivB1_s
    if    # if name is negative
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AdivB1_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AdivB1_1
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)            at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB1_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset(name + "_s")   # set sign to positive
#(js) for (var xx = 0 ; xx < X ; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)        fixsvX(X,name)    
    fi
#(end macro)                    incvX(X,nameAdivB)
#(begin macro)                    subvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
#(begin macro)    subvvvX(X,name, name, nameA)
#(js) _sv4++;
#(begin macro)    pushvX(X,nameA)
    push    writeX_AmodB1_c
    push    writeX_AmodB1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB1_0
#(js) }
#(end macro)    pushvX(X,nameA)
#(begin macro)    popvX(X,name)    # name = nameA
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_AmodB1_0
#(js) }
    pop     writeX_AmodB1_1
#(js) }
    pop     writeX_AmodB1_s
    pop     writeX_AmodB1_c
#(end macro)    popvX(X,name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvvXgX_2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvvXgX_2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)        pushvX(X,nameB)
    push    divvvvvXabsNameB1_c
    push    divvvvvXabsNameB1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB1_0
#(js) }
#(end macro)        pushvX(X,nameB)
#(begin macro)        popvX(X,"subvvvXgX_" + _sv4)
#(js) for (var xx=0; xx < X; xx++) {
    pop     subvvvXgX_2_0
#(js) }
    pop     subvvvXgX_2_1
#(js) }
    pop     subvvvXgX_2_s
    pop     subvvvXgX_2_c
#(end macro)        popvX(X,"subvvvXgX_" + _sv4)
        push 0
#(begin macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
    POP    subvvvXgX_2_s
#(end macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
        
        push    divvvvvXabsNameB1_s
        if    # nameB is negative 
            push    1
            sbm subvvvX_loop2
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_2_c
    push    subvvvXgX_2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_2_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_2_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_2_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_2_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_2_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_2_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_2_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_2_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_2_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_2_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_2_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    incvX(X,name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push writeX_AmodB1_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB1_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AmodB1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB1_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,1)
    at writeX_AmodB1_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
#(begin macro)        fixsvX(X,name)    
    push    writeX_AmodB1_s
    if    # if name is negative
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AmodB1_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AmodB1_1
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)            at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB1_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset(name + "_s")   # set sign to positive
#(js) for (var xx = 0 ; xx < X ; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)        fixsvX(X,name)    
    fi
#(end macro)                    incvX(X,name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop2
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvvX_loop2
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_2_c
    push    subvvvXgX_2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_2_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_2_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_2_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_2_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_2_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_2_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_2_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_2_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_2_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_2_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_2_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    decvX(X, name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push writeX_AmodB1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB1_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AmodB1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB1_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at writeX_AmodB1_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X, name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop2
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)    subvvvX(X,name, name, nameA)
#(end macro)                    subvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
                else
#(begin macro)                    at_reset("divvvvvX_g" + _sv6) # break while/wend
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at divvvvvX_g1
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("divvvvvX_g" + _sv6) # break while/wend
                fi
            wend
            
            # treat sign of nameAmodB and nameAdivB
            push    divvvvvXsA1
            pop     writeX_AmodB1_s   # sign of nameAmodB is sign of nameA
            push    divvvvvXsA1
            push    divvvvvXsB1
            diff
            if
                push    1
                pop     writeX_AdivB1_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
        else
#(begin macro)            setcvX(X,nameAdivB)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AdivB1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcvX(X,nameAdivB)
#(begin macro)            setcvX(X,nameAmodB)            
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AmodB1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcvX(X,nameAmodB)            
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)            divvvvvX(X,"writeX_AdivB" + _sv7, "writeX_AmodB" + _sv7, "writeX_A" + _sv7, "writeX_B" + _sv7)
            push    writeX_AmodB1_0
            pop  _stringDecimal16_
#(begin macro)            pushvX(X,"writeX_AdivB" + _sv7)
    push    writeX_AdivB1_c
    push    writeX_AdivB1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AdivB1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AdivB1_0
#(js) }
#(end macro)            pushvX(X,"writeX_AdivB" + _sv7)
#(begin macro)            popvX(X,"writeX_A" + _sv7)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_A1_0
#(js) }
    pop     writeX_A1_1
#(js) }
    pop     writeX_A1_s
    pop     writeX_A1_c
#(end macro)            popvX(X,"writeX_A" + _sv7)
            arotl _stringDecimal16_
        endloop
        
        push _stringDecimal16_.size
        sbm writeXcnt1
        loop
            arotr _stringDecimal16_
#(begin macro)            if_sup("writeXcnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
    push writeXcnt1
    push 1
    sup
    if
#(end macro)            if_sup("writeXcnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
#(begin macro)                if_diff("_stringDecimal" + _xbits +"_",0)
    push _stringDecimal16_
    push 0
    diff
    if
#(end macro)                if_diff("_stringDecimal" + _xbits +"_",0)
                    push _stringDecimal16_
#(begin macro)                    popouthexa()
#(js) __idx++;
    sbm _input13
#(begin macro)    if_sup("_input" + __idx,9)
    push _input13
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input13
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input13
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)                    popouthexa()
#(begin macro)                    at_set("writeXprefixzero"+_sv7,0)
#(begin macro)    at_2("set",a,b)
    at writeXprefixzero1
    set 0
    ta
#(end macro)    at_2("set",a,b)
#(end macro)                    at_set("writeXprefixzero"+_sv7,0)
                else    
#(begin macro)                    if_equal("writeXprefixzero"+_sv7,0)
    push writeXprefixzero1
    push 0
    equal
    if
#(end macro)                    if_equal("writeXprefixzero"+_sv7,0)
                        push _stringDecimal16_
#(begin macro)                        popouthexa()
#(js) __idx++;
    sbm _input14
#(begin macro)    if_sup("_input" + __idx,9)
    push _input14
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input14
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input14
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)                        popouthexa()
                    fi
                fi
            else
                push _stringDecimal16_
#(begin macro)                popouthexa()
#(js) __idx++;
    sbm _input15
#(begin macro)    if_sup("_input" + __idx,9)
    push _input15
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input15
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input15
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)                popouthexa()
            fi
        endloop
        
        
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)    writeX(2,name)
#(end macro)    write16("number1")
    fi
#(begin macro)    print("\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("\n")
#(begin macro)    print("[decimal number2]")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     91    
#(js) }
    out             # '['
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     9   
#(js) } else {
#(js) } else {
    out             # 'd'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     1   
#(js) } else {
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     2   
#(js) }
#(js) }
#(js) } else {
    out             # 'c'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     6   
#(js) } else {
#(js) } else {
    out             # 'i'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     4   
#(js) } else {
#(js) } else {
    out             # 'm'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     12   
#(js) }
#(js) }
#(js) } else {
    out             # 'a'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     11   
#(js) } else {
#(js) } else {
    out             # 'l'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     32    
#(js) }
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     78   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     8   
#(js) }
#(js) }
#(js) } else {
    out             # 'm'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'b'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     50    
#(js) }
    out             # '2'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     43   
#(js) } else {
#(js) } else {
    out             # ']'
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("[decimal number2]")
    push 1
    if
#(begin macro)    write16("number2")
#(begin macro)    writeX(2,name)
#(js) _sv7++;
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar("writeXprefixzero"+_sv7,1)
    push 1
    sbm writeXprefixzero2
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("writeXprefixzero"+_sv7,1)
#(begin macro)        lvarX(X,"writeX_A"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_A2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_A2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_A2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_A2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_A"+_sv7)
#(begin macro)        lvarX(X,"writeX_B"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_B2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_B2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_B2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_B2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_B"+_sv7)
#(begin macro)        lvarX(X,"writeX_AmodB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_AmodB2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_AmodB2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AmodB2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AmodB2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_AmodB"+_sv7)
#(begin macro)        lvarX(X,"writeX_AdivB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_AdivB2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_AdivB2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AdivB2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AdivB2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_AdivB"+_sv7)

        push 1
        if
                
#(begin macro)        pushvX(X,name)
    push    number2_c
    push    number2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    number2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    number2_0
#(js) }
#(end macro)        pushvX(X,name)
#(begin macro)        popvX(X,"writeX_A"+_sv7)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_A2_0
#(js) }
    pop     writeX_A2_1
#(js) }
    pop     writeX_A2_s
    pop     writeX_A2_c
#(end macro)        popvX(X,"writeX_A"+_sv7)
        
#(begin macro)        pushX(X,10)
    push    0
    push    0
#(js) var absImmValue; absImmValue = immValue>=0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    push    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    push    10
#(js) }
#(end macro)        pushX(X,10)
#(begin macro)        popvX(X,"writeX_B"+_sv7)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_B2_0
#(js) }
    pop     writeX_B2_1
#(js) }
    pop     writeX_B2_s
    pop     writeX_B2_c
#(end macro)        popvX(X,"writeX_B"+_sv7)
        
        fi
        
        push writeX_A2_s
        if
            push    '-'
            pop     out   # write '-' if name < 0
        fi
        
        push _stringDecimal16_.size
        loop
            # output = input mod 10 ; input = input div 10
#(begin macro)            divvvvvX(X,"writeX_AdivB" + _sv7, "writeX_AmodB" + _sv7, "writeX_A" + _sv7, "writeX_B" + _sv7)
#(js) _sv6++;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvarX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvvXabsNameA2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvvXabsNameA2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameA2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameA2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)        pushvX(X,nameA)
    push    writeX_A2_c
    push    writeX_A2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_A2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_A2_0
#(js) }
#(end macro)        pushvX(X,nameA)
#(begin macro)        popvX(X,"divvvvvXabsNameA" + _sv6)
#(js) for (var xx=0; xx < X; xx++) {
    pop     divvvvvXabsNameA2_0
#(js) }
    pop     divvvvvXabsNameA2_1
#(js) }
    pop     divvvvvXabsNameA2_s
    pop     divvvvvXabsNameA2_c
#(end macro)        popvX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)        lvar("divvvvvXsA" + _sv6,0)
    push 0
    sbm divvvvvXsA2
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvvXsA" + _sv6,0)
        push writeX_A2_s
        pop divvvvvXsA2
#(begin macro)        absvX(X,"divvvvvXabsNameA" + _sv6)
    push    0
    pop     divvvvvXabsNameA2_s
#(end macro)        absvX(X,"divvvvvXabsNameA" + _sv6)
        
#(begin macro)        lvarX(X,"divvvvvXabsNameB" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvvXabsNameB2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvvXabsNameB2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameB2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameB2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"divvvvvXabsNameB" + _sv6)
#(begin macro)        pushvX(X,nameB)
    push    writeX_B2_c
    push    writeX_B2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_B2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_B2_0
#(js) }
#(end macro)        pushvX(X,nameB)
#(begin macro)        popvX(X,"divvvvvXabsNameB" + _sv6)
#(js) for (var xx=0; xx < X; xx++) {
    pop     divvvvvXabsNameB2_0
#(js) }
    pop     divvvvvXabsNameB2_1
#(js) }
    pop     divvvvvXabsNameB2_s
    pop     divvvvvXabsNameB2_c
#(end macro)        popvX(X,"divvvvvXabsNameB" + _sv6)
#(begin macro)        lvar("divvvvvXsB" + _sv6,0)
    push 0
    sbm divvvvvXsB2
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvvXsB" + _sv6,0)
        push writeX_B2_s
        pop divvvvvXsB2
#(begin macro)        absvX(X,"divvvvvXabsNameB" + _sv6)
    push    0
    pop     divvvvvXabsNameB2_s
#(end macro)        absvX(X,"divvvvvXabsNameB" + _sv6)
        
#(begin macro)        pushvX(X,"divvvvvXabsNameA" + _sv6)
    push    divvvvvXabsNameA2_c
    push    divvvvvXabsNameA2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameA2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameA2_0
#(js) }
#(end macro)        pushvX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)        popvX(X,nameAmodB)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_AmodB2_0
#(js) }
    pop     writeX_AmodB2_1
#(js) }
    pop     writeX_AmodB2_s
    pop     writeX_AmodB2_c
#(end macro)        popvX(X,nameAmodB)
        
#(begin macro)        resetvX(X,nameAdivB)
    at writeX_AdivB2_0
#(begin macro)        resetX(X)
#(js) for (var xx= 0; xx < X+1 ; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    bf [-]
#(js) for (var xx= 0; xx < X+1 ; xx++) {
    bf >[-]
#(js) }
    bf >[-]
#(js) }
    bf >[-]
#(js) }
#(end macro)        resetX(X)
    ta
#(end macro)        resetvX(X,nameAdivB)
        
#(begin macro)        boolvX(X,"divvvvvXabsNameB" + _sv6)
#(js) for (var xx = 0 ; xx < X; xx++) {
    push divvvvvXabsNameB2_0
    bool
#(js) }
    push divvvvvXabsNameB2_1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1; xx++) {
    or
#(js) }
#(end macro)        boolvX(X,"divvvvvXabsNameB" + _sv6)
        if
            push    1
            sbm     divvvvvX_g2
            while
#(begin macro)                supequalvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)
#(js) _sv4++;
#(begin macro)    pushvX(X,nameA)
    push    writeX_AmodB2_c
    push    writeX_AmodB2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB2_0
#(js) }
#(end macro)    pushvX(X,nameA)
#(begin macro)    popvX(X,name)    # name = nameA
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16c___0
#(js) }
    pop     __tmp16c___1
#(js) }
    pop     __tmp16c___s
    pop     __tmp16c___c
#(end macro)    popvX(X,name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvvXgX_3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvvXgX_3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)        pushvX(X,nameB)
    push    divvvvvXabsNameB2_c
    push    divvvvvXabsNameB2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB2_0
#(js) }
#(end macro)        pushvX(X,nameB)
#(begin macro)        popvX(X,"subvvvXgX_" + _sv4)
#(js) for (var xx=0; xx < X; xx++) {
    pop     subvvvXgX_3_0
#(js) }
    pop     subvvvXgX_3_1
#(js) }
    pop     subvvvXgX_3_s
    pop     subvvvXgX_3_c
#(end macro)        popvX(X,"subvvvXgX_" + _sv4)
        push 0
#(begin macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
    POP    subvvvXgX_3_s
#(end macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
        
        push    divvvvvXabsNameB2_s
        if    # nameB is negative 
            push    1
            sbm subvvvX_loop3
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_3_c
    push    subvvvXgX_3_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_3_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_3_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_3_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_3_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_3_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_3_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_3_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_3_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_3_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_3_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_3_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_3_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    incvX(X,name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push __tmp16c___s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,1)
    at __tmp16c___0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
#(begin macro)        fixsvX(X,name)    
    push    __tmp16c___s
    if    # if name is negative
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(begin macro)        if_equal(name +"_" + xx, 0)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)        if_equal(name +"_" + xx, 0)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)            at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset(name + "_s")   # set sign to positive
#(js) for (var xx = 0 ; xx < X ; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)        fixsvX(X,name)    
    fi
#(end macro)                    incvX(X,name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop3
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvvX_loop3
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_3_c
    push    subvvvXgX_3_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_3_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_3_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_3_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_3_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_3_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_3_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_3_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_3_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_3_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_3_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_3_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_3_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    decvX(X, name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push __tmp16c___s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at __tmp16c___0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X, name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop3
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)
    push __tmp16c___s
    not
#(end macro)                supequalvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
                if
#(begin macro)                    incvX(X,nameAdivB)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push writeX_AdivB2_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB2_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AdivB2_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB2_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AdivB2_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AdivB2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB2_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AdivB2_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB2_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AdivB2_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,1)
    at writeX_AdivB2_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
#(begin macro)        fixsvX(X,name)    
    push    writeX_AdivB2_s
    if    # if name is negative
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AdivB2_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AdivB2_1
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)            at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB2_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset(name + "_s")   # set sign to positive
#(js) for (var xx = 0 ; xx < X ; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)        fixsvX(X,name)    
    fi
#(end macro)                    incvX(X,nameAdivB)
#(begin macro)                    subvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
#(begin macro)    subvvvX(X,name, name, nameA)
#(js) _sv4++;
#(begin macro)    pushvX(X,nameA)
    push    writeX_AmodB2_c
    push    writeX_AmodB2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB2_0
#(js) }
#(end macro)    pushvX(X,nameA)
#(begin macro)    popvX(X,name)    # name = nameA
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_AmodB2_0
#(js) }
    pop     writeX_AmodB2_1
#(js) }
    pop     writeX_AmodB2_s
    pop     writeX_AmodB2_c
#(end macro)    popvX(X,name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvvXgX_4_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvvXgX_4_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_4_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_4_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)        pushvX(X,nameB)
    push    divvvvvXabsNameB2_c
    push    divvvvvXabsNameB2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB2_0
#(js) }
#(end macro)        pushvX(X,nameB)
#(begin macro)        popvX(X,"subvvvXgX_" + _sv4)
#(js) for (var xx=0; xx < X; xx++) {
    pop     subvvvXgX_4_0
#(js) }
    pop     subvvvXgX_4_1
#(js) }
    pop     subvvvXgX_4_s
    pop     subvvvXgX_4_c
#(end macro)        popvX(X,"subvvvXgX_" + _sv4)
        push 0
#(begin macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
    POP    subvvvXgX_4_s
#(end macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
        
        push    divvvvvXabsNameB2_s
        if    # nameB is negative 
            push    1
            sbm subvvvX_loop4
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_4_c
    push    subvvvXgX_4_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_4_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_4_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_4_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_4_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_4_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_4_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_4_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_4_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_4_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_4_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_4_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_4_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_4_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    incvX(X,name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push writeX_AmodB2_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB2_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB2_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB2_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB2_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AmodB2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB2_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB2_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB2_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB2_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,1)
    at writeX_AmodB2_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
#(begin macro)        fixsvX(X,name)    
    push    writeX_AmodB2_s
    if    # if name is negative
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AmodB2_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AmodB2_1
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)            at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB2_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset(name + "_s")   # set sign to positive
#(js) for (var xx = 0 ; xx < X ; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)        fixsvX(X,name)    
    fi
#(end macro)                    incvX(X,name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop4
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvvX_loop4
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_4_c
    push    subvvvXgX_4_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_4_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_4_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_4_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_4_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_4_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_4_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_4_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_4_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_4_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_4_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_4_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_4_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_4_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    decvX(X, name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push writeX_AmodB2_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB2_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB2_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB2_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB2_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AmodB2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB2_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB2_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB2_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB2_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at writeX_AmodB2_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X, name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop4
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)    subvvvX(X,name, name, nameA)
#(end macro)                    subvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
                else
#(begin macro)                    at_reset("divvvvvX_g" + _sv6) # break while/wend
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at divvvvvX_g2
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("divvvvvX_g" + _sv6) # break while/wend
                fi
            wend
            
            # treat sign of nameAmodB and nameAdivB
            push    divvvvvXsA2
            pop     writeX_AmodB2_s   # sign of nameAmodB is sign of nameA
            push    divvvvvXsA2
            push    divvvvvXsB2
            diff
            if
                push    1
                pop     writeX_AdivB2_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
        else
#(begin macro)            setcvX(X,nameAdivB)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AdivB2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcvX(X,nameAdivB)
#(begin macro)            setcvX(X,nameAmodB)            
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AmodB2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcvX(X,nameAmodB)            
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)            divvvvvX(X,"writeX_AdivB" + _sv7, "writeX_AmodB" + _sv7, "writeX_A" + _sv7, "writeX_B" + _sv7)
            push    writeX_AmodB2_0
            pop  _stringDecimal16_
#(begin macro)            pushvX(X,"writeX_AdivB" + _sv7)
    push    writeX_AdivB2_c
    push    writeX_AdivB2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AdivB2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AdivB2_0
#(js) }
#(end macro)            pushvX(X,"writeX_AdivB" + _sv7)
#(begin macro)            popvX(X,"writeX_A" + _sv7)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_A2_0
#(js) }
    pop     writeX_A2_1
#(js) }
    pop     writeX_A2_s
    pop     writeX_A2_c
#(end macro)            popvX(X,"writeX_A" + _sv7)
            arotl _stringDecimal16_
        endloop
        
        push _stringDecimal16_.size
        sbm writeXcnt2
        loop
            arotr _stringDecimal16_
#(begin macro)            if_sup("writeXcnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
    push writeXcnt2
    push 1
    sup
    if
#(end macro)            if_sup("writeXcnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
#(begin macro)                if_diff("_stringDecimal" + _xbits +"_",0)
    push _stringDecimal16_
    push 0
    diff
    if
#(end macro)                if_diff("_stringDecimal" + _xbits +"_",0)
                    push _stringDecimal16_
#(begin macro)                    popouthexa()
#(js) __idx++;
    sbm _input16
#(begin macro)    if_sup("_input" + __idx,9)
    push _input16
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input16
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input16
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)                    popouthexa()
#(begin macro)                    at_set("writeXprefixzero"+_sv7,0)
#(begin macro)    at_2("set",a,b)
    at writeXprefixzero2
    set 0
    ta
#(end macro)    at_2("set",a,b)
#(end macro)                    at_set("writeXprefixzero"+_sv7,0)
                else    
#(begin macro)                    if_equal("writeXprefixzero"+_sv7,0)
    push writeXprefixzero2
    push 0
    equal
    if
#(end macro)                    if_equal("writeXprefixzero"+_sv7,0)
                        push _stringDecimal16_
#(begin macro)                        popouthexa()
#(js) __idx++;
    sbm _input17
#(begin macro)    if_sup("_input" + __idx,9)
    push _input17
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input17
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input17
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)                        popouthexa()
                    fi
                fi
            else
                push _stringDecimal16_
#(begin macro)                popouthexa()
#(js) __idx++;
    sbm _input18
#(begin macro)    if_sup("_input" + __idx,9)
    push _input18
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input18
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input18
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)                popouthexa()
            fi
        endloop
        
        
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)    writeX(2,name)
#(end macro)    write16("number2")
    fi 
#(begin macro)    print("\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("\n")

    push 1
    if
#(begin macro)    addvv16("number1","number2")
#(begin macro)    addvvX(2,name,nameA)
#(begin macro)    addvvvX(X,name, name, nameA)
#(js) _sv3++;
#(begin macro)    pushvX(X,nameA)
    push    number1_c
    push    number1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    number1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    number1_0
#(js) }
#(end macro)    pushvX(X,nameA)
#(begin macro)    popvX(X,name)    # name = nameA
#(js) for (var xx=0; xx < X; xx++) {
    pop     number1_0
#(js) }
    pop     number1_1
#(js) }
    pop     number1_s
    pop     number1_c
#(end macro)    popvX(X,name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvarX(X,"addvvvXgX_" + _sv3)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm addvvvXgX_1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm addvvvXgX_1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm addvvvXgX_1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm addvvvXgX_1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"addvvvXgX_" + _sv3)
#(begin macro)        pushvX(X,nameB)
    push    number2_c
    push    number2_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    number2_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    number2_0
#(js) }
#(end macro)        pushvX(X,nameB)
#(begin macro)        popvX(X,"addvvvXgX_" + _sv3)
#(js) for (var xx=0; xx < X; xx++) {
    pop     addvvvXgX_1_0
#(js) }
    pop     addvvvXgX_1_1
#(js) }
    pop     addvvvXgX_1_s
    pop     addvvvXgX_1_c
#(end macro)        popvX(X,"addvvvXgX_" + _sv3)
        push 0
#(begin macro)        popsvX(X,"addvvvXgX_" + _sv3) # absolute number (always positive)
    POP    addvvvXgX_1_s
#(end macro)        popsvX(X,"addvvvXgX_" + _sv3) # absolute number (always positive)
        
        push    number2_s
        if    # nameB is negative 
            push    1
            sbm addvvvX_loop1
            while
#(begin macro)                pushvX(X,"addvvvXgX_"+ _sv3)
    push    addvvvXgX_1_c
    push    addvvvXgX_1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    addvvvXgX_1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    addvvvXgX_1_0
#(js) }
#(end macro)                pushvX(X,"addvvvXgX_"+ _sv3)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"addvvvXgX_"+_sv3)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push addvvvXgX_1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at addvvvXgX_1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push addvvvXgX_1_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at addvvvXgX_1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push addvvvXgX_1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at addvvvXgX_1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at addvvvXgX_1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push addvvvXgX_1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at addvvvXgX_1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push addvvvXgX_1_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at addvvvXgX_1_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"addvvvXgX_"+_sv3)
#(begin macro)                    decvX(X,name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push number1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at number1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push number1_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at number1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push number1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at number1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at number1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push number1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at number1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push number1_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at number1_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,name)
                else
#(begin macro)                    at_reset("addvvvX_loop"+_sv3)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at addvvvX_loop1
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("addvvvX_loop"+_sv3)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm addvvvX_loop1
            while
#(begin macro)                pushvX(X,"addvvvXgX_"+ _sv3)
    push    addvvvXgX_1_c
    push    addvvvXgX_1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    addvvvXgX_1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    addvvvXgX_1_0
#(js) }
#(end macro)                pushvX(X,"addvvvXgX_"+ _sv3)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"addvvvXgX_"+_sv3)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push addvvvXgX_1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at addvvvXgX_1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push addvvvXgX_1_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at addvvvXgX_1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push addvvvXgX_1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at addvvvXgX_1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at addvvvXgX_1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push addvvvXgX_1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at addvvvXgX_1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push addvvvXgX_1_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at addvvvXgX_1_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"addvvvXgX_"+_sv3)
#(begin macro)                    incvX(X,name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push number1_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at number1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push number1_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at number1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push number1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at number1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at number1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push number1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at number1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push number1_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,1)
    at number1_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
#(begin macro)        fixsvX(X,name)    
    push    number1_s
    if    # if name is negative
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(begin macro)        if_equal(name +"_" + xx, 0)
    push number1_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)        if_equal(name +"_" + xx, 0)
    push number1_1
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)            at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at number1_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset(name + "_s")   # set sign to positive
#(js) for (var xx = 0 ; xx < X ; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)        fixsvX(X,name)    
    fi
#(end macro)                    incvX(X,name)
                else
#(begin macro)                    at_reset("addvvvX_loop"+_sv3)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at addvvvX_loop1
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("addvvvX_loop"+_sv3)
                fi
            wend
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)    addvvvX(X,name, name, nameA)
#(end macro)    addvvX(2,name,nameA)
#(end macro)    addvv16("number1","number2")
    fi
#(begin macro)    print("[number1+=number2]")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     91    
#(js) }
    out             # '['
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     19   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     8   
#(js) }
#(js) }
#(js) } else {
    out             # 'm'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'b'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     49    
#(js) }
    out             # '1'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     6   
#(js) }
#(js) }
#(js) } else {
    out             # '+'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     18   
#(js) } else {
#(js) } else {
    out             # '='
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     49   
#(js) } else {
#(js) } else {
    out             # 'n'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     7   
#(js) } else {
#(js) } else {
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     8   
#(js) }
#(js) }
#(js) } else {
    out             # 'm'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'b'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     3   
#(js) } else {
#(js) } else {
    out             # 'e'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     13   
#(js) } else {
#(js) } else {
    out             # 'r'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     50    
#(js) }
    out             # '2'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     43   
#(js) } else {
#(js) } else {
    out             # ']'
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("[number1+=number2]")
    push 1
    if
#(begin macro)    write16("number1")
#(begin macro)    writeX(2,name)
#(js) _sv7++;
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar("writeXprefixzero"+_sv7,1)
    push 1
    sbm writeXprefixzero3
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("writeXprefixzero"+_sv7,1)
#(begin macro)        lvarX(X,"writeX_A"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_A3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_A3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_A3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_A3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_A"+_sv7)
#(begin macro)        lvarX(X,"writeX_B"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_B3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_B3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_B3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_B3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_B"+_sv7)
#(begin macro)        lvarX(X,"writeX_AmodB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_AmodB3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_AmodB3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AmodB3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AmodB3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_AmodB"+_sv7)
#(begin macro)        lvarX(X,"writeX_AdivB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm writeX_AdivB3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm writeX_AdivB3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AdivB3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm writeX_AdivB3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"writeX_AdivB"+_sv7)

        push 1
        if
                
#(begin macro)        pushvX(X,name)
    push    number1_c
    push    number1_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    number1_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    number1_0
#(js) }
#(end macro)        pushvX(X,name)
#(begin macro)        popvX(X,"writeX_A"+_sv7)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_A3_0
#(js) }
    pop     writeX_A3_1
#(js) }
    pop     writeX_A3_s
    pop     writeX_A3_c
#(end macro)        popvX(X,"writeX_A"+_sv7)
        
#(begin macro)        pushX(X,10)
    push    0
    push    0
#(js) var absImmValue; absImmValue = immValue>=0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    push    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    push    10
#(js) }
#(end macro)        pushX(X,10)
#(begin macro)        popvX(X,"writeX_B"+_sv7)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_B3_0
#(js) }
    pop     writeX_B3_1
#(js) }
    pop     writeX_B3_s
    pop     writeX_B3_c
#(end macro)        popvX(X,"writeX_B"+_sv7)
        
        fi
        
        push writeX_A3_s
        if
            push    '-'
            pop     out   # write '-' if name < 0
        fi
        
        push _stringDecimal16_.size
        loop
            # output = input mod 10 ; input = input div 10
#(begin macro)            divvvvvX(X,"writeX_AdivB" + _sv7, "writeX_AmodB" + _sv7, "writeX_A" + _sv7, "writeX_B" + _sv7)
#(js) _sv6++;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvarX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvvXabsNameA3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvvXabsNameA3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameA3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameA3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)        pushvX(X,nameA)
    push    writeX_A3_c
    push    writeX_A3_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_A3_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_A3_0
#(js) }
#(end macro)        pushvX(X,nameA)
#(begin macro)        popvX(X,"divvvvvXabsNameA" + _sv6)
#(js) for (var xx=0; xx < X; xx++) {
    pop     divvvvvXabsNameA3_0
#(js) }
    pop     divvvvvXabsNameA3_1
#(js) }
    pop     divvvvvXabsNameA3_s
    pop     divvvvvXabsNameA3_c
#(end macro)        popvX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)        lvar("divvvvvXsA" + _sv6,0)
    push 0
    sbm divvvvvXsA3
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvvXsA" + _sv6,0)
        push writeX_A3_s
        pop divvvvvXsA3
#(begin macro)        absvX(X,"divvvvvXabsNameA" + _sv6)
    push    0
    pop     divvvvvXabsNameA3_s
#(end macro)        absvX(X,"divvvvvXabsNameA" + _sv6)
        
#(begin macro)        lvarX(X,"divvvvvXabsNameB" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvvXabsNameB3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvvXabsNameB3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameB3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm divvvvvXabsNameB3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"divvvvvXabsNameB" + _sv6)
#(begin macro)        pushvX(X,nameB)
    push    writeX_B3_c
    push    writeX_B3_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_B3_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_B3_0
#(js) }
#(end macro)        pushvX(X,nameB)
#(begin macro)        popvX(X,"divvvvvXabsNameB" + _sv6)
#(js) for (var xx=0; xx < X; xx++) {
    pop     divvvvvXabsNameB3_0
#(js) }
    pop     divvvvvXabsNameB3_1
#(js) }
    pop     divvvvvXabsNameB3_s
    pop     divvvvvXabsNameB3_c
#(end macro)        popvX(X,"divvvvvXabsNameB" + _sv6)
#(begin macro)        lvar("divvvvvXsB" + _sv6,0)
    push 0
    sbm divvvvvXsB3
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvvXsB" + _sv6,0)
        push writeX_B3_s
        pop divvvvvXsB3
#(begin macro)        absvX(X,"divvvvvXabsNameB" + _sv6)
    push    0
    pop     divvvvvXabsNameB3_s
#(end macro)        absvX(X,"divvvvvXabsNameB" + _sv6)
        
#(begin macro)        pushvX(X,"divvvvvXabsNameA" + _sv6)
    push    divvvvvXabsNameA3_c
    push    divvvvvXabsNameA3_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameA3_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameA3_0
#(js) }
#(end macro)        pushvX(X,"divvvvvXabsNameA" + _sv6)
#(begin macro)        popvX(X,nameAmodB)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_AmodB3_0
#(js) }
    pop     writeX_AmodB3_1
#(js) }
    pop     writeX_AmodB3_s
    pop     writeX_AmodB3_c
#(end macro)        popvX(X,nameAmodB)
        
#(begin macro)        resetvX(X,nameAdivB)
    at writeX_AdivB3_0
#(begin macro)        resetX(X)
#(js) for (var xx= 0; xx < X+1 ; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    bf [-]
#(js) for (var xx= 0; xx < X+1 ; xx++) {
    bf >[-]
#(js) }
    bf >[-]
#(js) }
    bf >[-]
#(js) }
#(end macro)        resetX(X)
    ta
#(end macro)        resetvX(X,nameAdivB)
        
#(begin macro)        boolvX(X,"divvvvvXabsNameB" + _sv6)
#(js) for (var xx = 0 ; xx < X; xx++) {
    push divvvvvXabsNameB3_0
    bool
#(js) }
    push divvvvvXabsNameB3_1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1; xx++) {
    or
#(js) }
#(end macro)        boolvX(X,"divvvvvXabsNameB" + _sv6)
        if
            push    1
            sbm     divvvvvX_g3
            while
#(begin macro)                supequalvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)
#(js) _sv4++;
#(begin macro)    pushvX(X,nameA)
    push    writeX_AmodB3_c
    push    writeX_AmodB3_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB3_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB3_0
#(js) }
#(end macro)    pushvX(X,nameA)
#(begin macro)    popvX(X,name)    # name = nameA
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16c___0
#(js) }
    pop     __tmp16c___1
#(js) }
    pop     __tmp16c___s
    pop     __tmp16c___c
#(end macro)    popvX(X,name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvvXgX_5_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvvXgX_5_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_5_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_5_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)        pushvX(X,nameB)
    push    divvvvvXabsNameB3_c
    push    divvvvvXabsNameB3_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB3_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB3_0
#(js) }
#(end macro)        pushvX(X,nameB)
#(begin macro)        popvX(X,"subvvvXgX_" + _sv4)
#(js) for (var xx=0; xx < X; xx++) {
    pop     subvvvXgX_5_0
#(js) }
    pop     subvvvXgX_5_1
#(js) }
    pop     subvvvXgX_5_s
    pop     subvvvXgX_5_c
#(end macro)        popvX(X,"subvvvXgX_" + _sv4)
        push 0
#(begin macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
    POP    subvvvXgX_5_s
#(end macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
        
        push    divvvvvXabsNameB3_s
        if    # nameB is negative 
            push    1
            sbm subvvvX_loop5
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_5_c
    push    subvvvXgX_5_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_5_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_5_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_5_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_5_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_5_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_5_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_5_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_5_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_5_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_5_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_5_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_5_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_5_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    incvX(X,name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push __tmp16c___s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,1)
    at __tmp16c___0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
#(begin macro)        fixsvX(X,name)    
    push    __tmp16c___s
    if    # if name is negative
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(begin macro)        if_equal(name +"_" + xx, 0)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)        if_equal(name +"_" + xx, 0)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)            at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset(name + "_s")   # set sign to positive
#(js) for (var xx = 0 ; xx < X ; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)        fixsvX(X,name)    
    fi
#(end macro)                    incvX(X,name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop5
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvvX_loop5
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_5_c
    push    subvvvXgX_5_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_5_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_5_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_5_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_5_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_5_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_5_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_5_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_5_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_5_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_5_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_5_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_5_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_5_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    decvX(X, name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push __tmp16c___s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at __tmp16c___0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X, name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop5
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)
    push __tmp16c___s
    not
#(end macro)                supequalvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
                if
#(begin macro)                    incvX(X,nameAdivB)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push writeX_AdivB3_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB3_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AdivB3_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB3_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AdivB3_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AdivB3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB3_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AdivB3_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB3_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AdivB3_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,1)
    at writeX_AdivB3_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
#(begin macro)        fixsvX(X,name)    
    push    writeX_AdivB3_s
    if    # if name is negative
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AdivB3_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AdivB3_1
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)            at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AdivB3_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset(name + "_s")   # set sign to positive
#(js) for (var xx = 0 ; xx < X ; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)        fixsvX(X,name)    
    fi
#(end macro)                    incvX(X,nameAdivB)
#(begin macro)                    subvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
#(begin macro)    subvvvX(X,name, name, nameA)
#(js) _sv4++;
#(begin macro)    pushvX(X,nameA)
    push    writeX_AmodB3_c
    push    writeX_AmodB3_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB3_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AmodB3_0
#(js) }
#(end macro)    pushvX(X,nameA)
#(begin macro)    popvX(X,name)    # name = nameA
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_AmodB3_0
#(js) }
    pop     writeX_AmodB3_1
#(js) }
    pop     writeX_AmodB3_s
    pop     writeX_AmodB3_c
#(end macro)    popvX(X,name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvvXgX_6_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvvXgX_6_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_6_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(begin macro)    lvar(name + "_"+ xx1,0)
    push 0
    sbm subvvvXgX_6_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_"+ xx1,0)
#(js) }
#(end macro)        lvarX(X,"subvvvXgX_" + _sv4)
#(begin macro)        pushvX(X,nameB)
    push    divvvvvXabsNameB3_c
    push    divvvvvXabsNameB3_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB3_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    divvvvvXabsNameB3_0
#(js) }
#(end macro)        pushvX(X,nameB)
#(begin macro)        popvX(X,"subvvvXgX_" + _sv4)
#(js) for (var xx=0; xx < X; xx++) {
    pop     subvvvXgX_6_0
#(js) }
    pop     subvvvXgX_6_1
#(js) }
    pop     subvvvXgX_6_s
    pop     subvvvXgX_6_c
#(end macro)        popvX(X,"subvvvXgX_" + _sv4)
        push 0
#(begin macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
    POP    subvvvXgX_6_s
#(end macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)
        
        push    divvvvvXabsNameB3_s
        if    # nameB is negative 
            push    1
            sbm subvvvX_loop6
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_6_c
    push    subvvvXgX_6_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_6_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_6_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_6_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_6_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_6_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_6_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_6_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_6_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_6_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_6_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_6_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_6_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_6_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    incvX(X,name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push writeX_AmodB3_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB3_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB3_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB3_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB3_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AmodB3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB3_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB3_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB3_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB3_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,1)
    at writeX_AmodB3_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 0
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
#(begin macro)        fixsvX(X,name)    
    push    writeX_AmodB3_s
    if    # if name is negative
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AmodB3_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)        if_equal(name +"_" + xx, 0)
    push writeX_AmodB3_1
    push 0
    equal
    if
#(end macro)        if_equal(name +"_" + xx, 0)
#(js) }
#(begin macro)            at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB3_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset(name + "_s")   # set sign to positive
#(js) for (var xx = 0 ; xx < X ; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)        fixsvX(X,name)    
    fi
#(end macro)                    incvX(X,name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop6
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvvX_loop6
            while
#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)
    push    subvvvXgX_6_c
    push    subvvvXgX_6_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_6_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    subvvvXgX_6_0
#(js) }
#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)
#(begin macro)                boolX(X)
#(js) var _xbits; _xbits = X * 8;
#(begin macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx=0; xx < X; xx++) {
    pop     __tmp16___0
#(js) }
    pop     __tmp16___1
#(js) }
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popvX(X,"__tmp" + _xbits + "__")
#(js) for (var xx = 0 ; xx < X ; xx++) { 
    push __tmp16___0
    bool
#(js) }
    push __tmp16___1
    bool
#(js) }
#(js) for (var xx = 0 ; xx < X-1 ; xx++) {
    or
#(js) }
#(end macro)                boolX(X)
                if
#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvvXgX_6_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_6_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_6_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_6_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push subvvvXgX_6_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvvXgX_6_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_6_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_6_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvXgX_6_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push subvvvXgX_6_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at subvvvXgX_6_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)
#(begin macro)                    decvX(X, name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push writeX_AmodB3_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB3_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB3_0
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)            at_inc(name + "_" + xx)
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB3_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_" + xx)
#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
    push writeX_AmodB3_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)
#(js) }
#(begin macro)           setcvX(X, name) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AmodB3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)           setcvX(X, name) ## set carry (overflow)
#(js) for (var xx=0; xx < X; xx++) {
            fi
#(js) }        
            fi
#(js) }        
    else    # positive number
#(js) for (var xx=0; xx < X; xx++) {
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB3_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB3_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        at_dec(name + "_" + xx)
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at writeX_AmodB3_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_" + xx)
#(begin macro)        if_equal(name +"_" + xx,255) # reduced
    push writeX_AmodB3_1
    push 255
    equal
    if
#(end macro)        if_equal(name +"_" + xx,255) # reduced
#(js) }
#(begin macro)        setvX(X,name,-1)
    at writeX_AmodB3_0
#(begin macro)        setX(X,immValue)
#(js) for (var xx=0; xx < X+1; xx++) {
    bf <
#(js) }
    bf <
#(js) }
    bf <
#(js) }
    reset
    bf  >
    set 1
#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
#(js) for (var xx = 0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    0
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);
    bf >
    set    1
#(js) }
#(end macro)        setX(X,immValue)
    ta
#(end macro)        setvX(X,name,-1)
#(js) for (var xx=0; xx < X; xx++) {
        fi
#(js) }
        fi
#(js) }
    fi
#(end macro)                    decvX(X, name)
                else
#(begin macro)                    at_reset("subvvvX_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvvX_loop6
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvvX_loop"+_sv4)
                fi
            wend
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)    subvvvX(X,name, name, nameA)
#(end macro)                    subvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)
                else
#(begin macro)                    at_reset("divvvvvX_g" + _sv6) # break while/wend
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at divvvvvX_g3
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("divvvvvX_g" + _sv6) # break while/wend
                fi
            wend
            
            # treat sign of nameAmodB and nameAdivB
            push    divvvvvXsA3
            pop     writeX_AmodB3_s   # sign of nameAmodB is sign of nameA
            push    divvvvvXsA3
            push    divvvvvXsB3
            diff
            if
                push    1
                pop     writeX_AdivB3_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
        else
#(begin macro)            setcvX(X,nameAdivB)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AdivB3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcvX(X,nameAdivB)
#(begin macro)            setcvX(X,nameAmodB)            
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at writeX_AmodB3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcvX(X,nameAmodB)            
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)            divvvvvX(X,"writeX_AdivB" + _sv7, "writeX_AmodB" + _sv7, "writeX_A" + _sv7, "writeX_B" + _sv7)
            push    writeX_AmodB3_0
            pop  _stringDecimal16_
#(begin macro)            pushvX(X,"writeX_AdivB" + _sv7)
    push    writeX_AdivB3_c
    push    writeX_AdivB3_s
#(js) for (var xx =0 ; xx < X ; xx++) {
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AdivB3_1
#(js) }
#(js) var xx1; xx1 = X-xx-1; // X-1 to 0
    push    writeX_AdivB3_0
#(js) }
#(end macro)            pushvX(X,"writeX_AdivB" + _sv7)
#(begin macro)            popvX(X,"writeX_A" + _sv7)
#(js) for (var xx=0; xx < X; xx++) {
    pop     writeX_A3_0
#(js) }
    pop     writeX_A3_1
#(js) }
    pop     writeX_A3_s
    pop     writeX_A3_c
#(end macro)            popvX(X,"writeX_A" + _sv7)
            arotl _stringDecimal16_
        endloop
        
        push _stringDecimal16_.size
        sbm writeXcnt3
        loop
            arotr _stringDecimal16_
#(begin macro)            if_sup("writeXcnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
    push writeXcnt3
    push 1
    sup
    if
#(end macro)            if_sup("writeXcnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
#(begin macro)                if_diff("_stringDecimal" + _xbits +"_",0)
    push _stringDecimal16_
    push 0
    diff
    if
#(end macro)                if_diff("_stringDecimal" + _xbits +"_",0)
                    push _stringDecimal16_
#(begin macro)                    popouthexa()
#(js) __idx++;
    sbm _input19
#(begin macro)    if_sup("_input" + __idx,9)
    push _input19
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input19
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input19
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)                    popouthexa()
#(begin macro)                    at_set("writeXprefixzero"+_sv7,0)
#(begin macro)    at_2("set",a,b)
    at writeXprefixzero3
    set 0
    ta
#(end macro)    at_2("set",a,b)
#(end macro)                    at_set("writeXprefixzero"+_sv7,0)
                else    
#(begin macro)                    if_equal("writeXprefixzero"+_sv7,0)
    push writeXprefixzero3
    push 0
    equal
    if
#(end macro)                    if_equal("writeXprefixzero"+_sv7,0)
                        push _stringDecimal16_
#(begin macro)                        popouthexa()
#(js) __idx++;
    sbm _input20
#(begin macro)    if_sup("_input" + __idx,9)
    push _input20
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input20
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input20
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)                        popouthexa()
                    fi
                fi
            else
                push _stringDecimal16_
#(begin macro)                popouthexa()
#(js) __idx++;
    sbm _input21
#(begin macro)    if_sup("_input" + __idx,9)
    push _input21
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input21
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input21
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)                popouthexa()
            fi
        endloop
        
        
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
#(end macro)    writeX(2,name)
#(end macro)    write16("number1")
    fi 
#(begin macro)    print("\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("\n")
    
   
#(begin macro)scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)scope_end()

drop


