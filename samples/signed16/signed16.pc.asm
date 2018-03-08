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
#(begin include)../include/signed16.inc
# 16 bits signed integer

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

# macro subvi(name, immValue) : name -= immediate value

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


#(js) var _sv1; var _sv2; var _sv3; var _sv4; var _sv5; var _sv6; var _sv7;
#(js) _sv1 = 0; _sv2=0; _sv3 = 0; _sv4 = 0; _sv5 = 0; _sv6 = 0; _sv7 = 0;

# declare temporary 16 bits value used for signed16.inc macros
#(begin macro)var16( "__tmp16__" )
    var __tmp16___0    # LSB of __tmp16__
    var __tmp16___1    # MSB of __tmp16__
    var __tmp16___s    # Sign of __tmp16__
    var __tmp16___c    # carry of __tmp16__ 
#(end macro)var16( "__tmp16__" )
#(begin macro)var16( "__tmp16a__" )
    var __tmp16a___0    # LSB of __tmp16a__
    var __tmp16a___1    # MSB of __tmp16a__
    var __tmp16a___s    # Sign of __tmp16a__
    var __tmp16a___c    # carry of __tmp16a__ 
#(end macro)var16( "__tmp16a__" )
#(begin macro)var16( "__tmp16b__" )
    var __tmp16b___0    # LSB of __tmp16b__
    var __tmp16b___1    # MSB of __tmp16b__
    var __tmp16b___s    # Sign of __tmp16b__
    var __tmp16b___c    # carry of __tmp16b__ 
#(end macro)var16( "__tmp16b__" )
#(begin macro)var16( "__tmp16c__" )
    var __tmp16c___0    # LSB of __tmp16c__
    var __tmp16c___1    # MSB of __tmp16c__
    var __tmp16c___s    # Sign of __tmp16c__
    var __tmp16c___c    # carry of __tmp16c__ 
#(end macro)var16( "__tmp16c__" )
#(begin macro)var16( "__tmp16d__" )
    var __tmp16d___0    # LSB of __tmp16d__
    var __tmp16d___1    # MSB of __tmp16d__
    var __tmp16d___s    # Sign of __tmp16d__
    var __tmp16d___c    # carry of __tmp16d__ 
#(end macro)var16( "__tmp16d__" )
var  _stringDecimal_*5
#(end include)../include/signed16.inc

# display a number
#(begin macro)var16("number1")
    var number1_0    # LSB of number1
    var number1_1    # MSB of number1
    var number1_s    # Sign of number1
    var number1_c    # carry of number1 
#(end macro)var16("number1")

push    0
#(begin macro)setv16("number1", 10384)
    at number1_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 40
    bf  >
    set 144
#(end macro)        set16(immValue)
    ta
#(end macro)setv16("number1", 10384)


#(begin macro)scope_begin()
#(js) __scope.push(0);
#(end macro)scope_begin()
#(begin macro)    lvar16("number2")
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
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm number2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm number2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)    lvar16("number2")
#(begin macro)    set16(-1024)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 4
    bf  >
    set 0
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
#(begin macro)    printhexa16("number1")
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
    push    number1_0
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
#(end macro)    printhexa16("number1")
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
#(begin macro)    printhexa16("number2")
    push    number2_c
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
    push    number2_s
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
    push    number2_1
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)    popout8hexa()
    push    number2_0
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)    popout8hexa()
#(end macro)    printhexa16("number2")
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
#(begin macro)    write16("number1") 
#(js) _sv7++;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar("write16prefixzero"+_sv7,1)
    push 1
    sbm write16prefixzero1
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("write16prefixzero"+_sv7,1)
#(begin macro)        lvar16("write16_A"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_A1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_A1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_A1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_A1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_A"+_sv7)
#(begin macro)        lvar16("write16_B"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_B1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_B1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_B1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_B1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_B"+_sv7)
#(begin macro)        lvar16("write16_AmodB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_AmodB1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_AmodB1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_AmodB1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_AmodB1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_AmodB"+_sv7)
#(begin macro)        lvar16("write16_AdivB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_AdivB1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_AdivB1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_AdivB1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_AdivB1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_AdivB"+_sv7)
        
#(begin macro)        pushv16(name)
    push    number1_c
    push    number1_s
    push    number1_1
    push    number1_0
#(end macro)        pushv16(name)
#(begin macro)        popv16("write16_A"+_sv7)
    pop     write16_A1_0
    pop     write16_A1_1
    pop     write16_A1_s
    pop     write16_A1_c
#(end macro)        popv16("write16_A"+_sv7)
        
#(begin macro)        push16(10)
    push    0
    push    0
    push    0
    push    10
#(end macro)        push16(10)
#(begin macro)        popv16("write16_B"+_sv7)
    pop     write16_B1_0
    pop     write16_B1_1
    pop     write16_B1_s
    pop     write16_B1_c
#(end macro)        popv16("write16_B"+_sv7)
        
        push write16_A1_s
        if
            push    '-'
            pop     out   # write '-' if name < 0
        fi
        push 5
        loop
            # output = input mod 10 ; input = input div 10
#(begin macro)            divvvvv16("write16_AdivB" + _sv7, "write16_AmodB" + _sv7, "write16_A" + _sv7, "write16_B" + _sv7)
#(js) _sv6++;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar16("divvvvv16absNameA" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvv16absNameA1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvv16absNameA1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm divvvvv16absNameA1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm divvvvv16absNameA1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("divvvvv16absNameA" + _sv6)
#(begin macro)        pushv16(nameA)
    push    write16_A1_c
    push    write16_A1_s
    push    write16_A1_1
    push    write16_A1_0
#(end macro)        pushv16(nameA)
#(begin macro)        popv16("divvvvv16absNameA" + _sv6)
    pop     divvvvv16absNameA1_0
    pop     divvvvv16absNameA1_1
    pop     divvvvv16absNameA1_s
    pop     divvvvv16absNameA1_c
#(end macro)        popv16("divvvvv16absNameA" + _sv6)
#(begin macro)        lvar("divvvvv16sA" + _sv6,0)
    push 0
    sbm divvvvv16sA1
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvv16sA" + _sv6,0)
        push write16_A1_s
        pop divvvvv16sA1
#(begin macro)        absv16("divvvvv16absNameA" + _sv6)
    push    0
    pop     divvvvv16absNameA1_s
#(end macro)        absv16("divvvvv16absNameA" + _sv6)
        
#(begin macro)        lvar16("divvvvv16absNameB" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvv16absNameB1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvv16absNameB1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm divvvvv16absNameB1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm divvvvv16absNameB1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("divvvvv16absNameB" + _sv6)
#(begin macro)        pushv16(nameB)
    push    write16_B1_c
    push    write16_B1_s
    push    write16_B1_1
    push    write16_B1_0
#(end macro)        pushv16(nameB)
#(begin macro)        popv16("divvvvv16absNameB" + _sv6)
    pop     divvvvv16absNameB1_0
    pop     divvvvv16absNameB1_1
    pop     divvvvv16absNameB1_s
    pop     divvvvv16absNameB1_c
#(end macro)        popv16("divvvvv16absNameB" + _sv6)
#(begin macro)        lvar("divvvvv16sB" + _sv6,0)
    push 0
    sbm divvvvv16sB1
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvv16sB" + _sv6,0)
        push write16_B1_s
        pop divvvvv16sB1
#(begin macro)        absv16("divvvvv16absNameB" + _sv6)
    push    0
    pop     divvvvv16absNameB1_s
#(end macro)        absv16("divvvvv16absNameB" + _sv6)
        
#(begin macro)        pushv16("divvvvv16absNameA" + _sv6)
    push    divvvvv16absNameA1_c
    push    divvvvv16absNameA1_s
    push    divvvvv16absNameA1_1
    push    divvvvv16absNameA1_0
#(end macro)        pushv16("divvvvv16absNameA" + _sv6)
#(begin macro)        popv16(nameAmodB)
    pop     write16_AmodB1_0
    pop     write16_AmodB1_1
    pop     write16_AmodB1_s
    pop     write16_AmodB1_c
#(end macro)        popv16(nameAmodB)
        
#(begin macro)        resetv16(nameAdivB)
    at write16_AdivB1_0
#(begin macro)        reset16()
    bf  <<<[-]>[-]>[-]>[-]
#(end macro)        reset16()
    ta
#(end macro)        resetv16(nameAdivB)
        
#(begin macro)        boolv16("divvvvv16absNameB" + _sv6)
    push divvvvv16absNameB1_0
    bool
    push divvvvv16absNameB1_1
    bool
    or
#(end macro)        boolv16("divvvvv16absNameB" + _sv6)
        if
            push    1
            sbm     divvvvv16_g1
            while
#(begin macro)                supequalvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
#(begin macro)    subvvv16("__tmp16c__", nameA, nameB)
#(js) _sv4++;
#(begin macro)    pushv16(nameA)
    push    write16_AmodB1_c
    push    write16_AmodB1_s
    push    write16_AmodB1_1
    push    write16_AmodB1_0
#(end macro)    pushv16(nameA)
#(begin macro)    popv16(name)    # name = nameA
    pop     __tmp16c___0
    pop     __tmp16c___1
    pop     __tmp16c___s
    pop     __tmp16c___c
#(end macro)    popv16(name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvv16g16_1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvv16g16_1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm subvvv16g16_1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm subvvv16g16_1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)        pushv16(nameB)
    push    divvvvv16absNameB1_c
    push    divvvvv16absNameB1_s
    push    divvvvv16absNameB1_1
    push    divvvvv16absNameB1_0
#(end macro)        pushv16(nameB)
#(begin macro)        popv16("subvvv16g16_" + _sv4)
    pop     subvvv16g16_1_0
    pop     subvvv16g16_1_1
    pop     subvvv16g16_1_s
    pop     subvvv16g16_1_c
#(end macro)        popv16("subvvv16g16_" + _sv4)
        push 0
#(begin macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
    POP    subvvv16g16_1_s
#(end macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
        
        push    divvvvv16absNameB1_s
        if    # nameB is negative 
            push    1
            sbm subvvv16_loop1
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_1_c
    push    subvvv16g16_1_s
    push    subvvv16g16_1_1
    push    subvvv16g16_1_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_1_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_1_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_1_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    incv16(name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push __tmp16c___s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name ) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, 1)
    at __tmp16c___0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, 1)
            fi
        fi
#(begin macro)        fixsv16(name)
    push    __tmp16c___s
    IF    # if name is negative
#(begin macro)        if_equal(name +"_0", 0)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_0", 0)
#(begin macro)            if_equal(name +"_1", 0)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal(name +"_1", 0)
#(begin macro)                at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
#(end macro)        fixsv16(name)
    fi
#(end macro)                    incv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop1
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvv16_loop1
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_1_c
    push    subvvv16g16_1_s
    push    subvvv16g16_1_1
    push    subvvv16g16_1_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_1_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_1_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_1_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    decv16(name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push __tmp16c___s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at __tmp16c___0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop1
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
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
#(end macro)    subvvv16("__tmp16c__", nameA, nameB)
    push __tmp16c___s
    not
#(end macro)                supequalvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
                if
#(begin macro)                    incv16(nameAdivB)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push write16_AdivB1_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push write16_AdivB1_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push write16_AdivB1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name ) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AdivB1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push write16_AdivB1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push write16_AdivB1_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, 1)
    at write16_AdivB1_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, 1)
            fi
        fi
#(begin macro)        fixsv16(name)
    push    write16_AdivB1_s
    IF    # if name is negative
#(begin macro)        if_equal(name +"_0", 0)
    push write16_AdivB1_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_0", 0)
#(begin macro)            if_equal(name +"_1", 0)
    push write16_AdivB1_1
    push 0
    equal
    if
#(end macro)            if_equal(name +"_1", 0)
#(begin macro)                at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB1_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
#(end macro)        fixsv16(name)
    fi
#(end macro)                    incv16(nameAdivB)
#(begin macro)                    subvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
#(begin macro)    subvvv16(name, name, nameA)
#(js) _sv4++;
#(begin macro)    pushv16(nameA)
    push    write16_AmodB1_c
    push    write16_AmodB1_s
    push    write16_AmodB1_1
    push    write16_AmodB1_0
#(end macro)    pushv16(nameA)
#(begin macro)    popv16(name)    # name = nameA
    pop     write16_AmodB1_0
    pop     write16_AmodB1_1
    pop     write16_AmodB1_s
    pop     write16_AmodB1_c
#(end macro)    popv16(name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvv16g16_2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvv16g16_2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm subvvv16g16_2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm subvvv16g16_2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)        pushv16(nameB)
    push    divvvvv16absNameB1_c
    push    divvvvv16absNameB1_s
    push    divvvvv16absNameB1_1
    push    divvvvv16absNameB1_0
#(end macro)        pushv16(nameB)
#(begin macro)        popv16("subvvv16g16_" + _sv4)
    pop     subvvv16g16_2_0
    pop     subvvv16g16_2_1
    pop     subvvv16g16_2_s
    pop     subvvv16g16_2_c
#(end macro)        popv16("subvvv16g16_" + _sv4)
        push 0
#(begin macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
    POP    subvvv16g16_2_s
#(end macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
        
        push    divvvvv16absNameB1_s
        if    # nameB is negative 
            push    1
            sbm subvvv16_loop2
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_2_c
    push    subvvv16g16_2_s
    push    subvvv16g16_2_1
    push    subvvv16g16_2_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_2_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_2_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_2_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_2_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_2_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_2_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_2_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_2_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_2_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_2_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    incv16(name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push write16_AmodB1_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push write16_AmodB1_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push write16_AmodB1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name ) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AmodB1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push write16_AmodB1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push write16_AmodB1_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, 1)
    at write16_AmodB1_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, 1)
            fi
        fi
#(begin macro)        fixsv16(name)
    push    write16_AmodB1_s
    IF    # if name is negative
#(begin macro)        if_equal(name +"_0", 0)
    push write16_AmodB1_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_0", 0)
#(begin macro)            if_equal(name +"_1", 0)
    push write16_AmodB1_1
    push 0
    equal
    if
#(end macro)            if_equal(name +"_1", 0)
#(begin macro)                at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB1_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
#(end macro)        fixsv16(name)
    fi
#(end macro)                    incv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop2
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvv16_loop2
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_2_c
    push    subvvv16g16_2_s
    push    subvvv16g16_2_1
    push    subvvv16g16_2_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_2_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_2_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_2_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_2_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_2_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_2_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_2_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_2_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_2_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_2_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    decv16(name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push write16_AmodB1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push write16_AmodB1_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push write16_AmodB1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AmodB1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push write16_AmodB1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push write16_AmodB1_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at write16_AmodB1_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop2
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
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
#(end macro)    subvvv16(name, name, nameA)
#(end macro)                    subvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
                else
#(begin macro)                    at_reset("divvvvv16_g" + _sv6) # break while/wend
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at divvvvv16_g1
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("divvvvv16_g" + _sv6) # break while/wend
                fi
            wend
            
            # treat sign of nameAmodB and nameAdivB
            push    divvvvv16sA1
            pop     write16_AmodB1_s   # sign of nameAmodB is sign of nameA
            push    divvvvv16sA1
            push    divvvvv16sB1
            diff
            if
                push    1
                pop     write16_AdivB1_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
        else
#(begin macro)            setcv16(nameAdivB)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AdivB1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcv16(nameAdivB)
#(begin macro)            setcv16(nameAmodB)            
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AmodB1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcv16(nameAmodB)            
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
#(end macro)            divvvvv16("write16_AdivB" + _sv7, "write16_AmodB" + _sv7, "write16_A" + _sv7, "write16_B" + _sv7)
            push    write16_AmodB1_0
            pop  _stringDecimal_
#(begin macro)            pushv16("write16_AdivB" + _sv7)
    push    write16_AdivB1_c
    push    write16_AdivB1_s
    push    write16_AdivB1_1
    push    write16_AdivB1_0
#(end macro)            pushv16("write16_AdivB" + _sv7)
#(begin macro)            popv16("write16_A" + _sv7)
    pop     write16_A1_0
    pop     write16_A1_1
    pop     write16_A1_s
    pop     write16_A1_c
#(end macro)            popv16("write16_A" + _sv7)
            arotl _stringDecimal_
        endloop
        push 5
        sbm write16cnt1
        loop
            arotr _stringDecimal_
#(begin macro)            if_sup("write16cnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
    push write16cnt1
    push 1
    sup
    if
#(end macro)            if_sup("write16cnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
#(begin macro)                if_diff("_stringDecimal_",0)
    push _stringDecimal_
    push 0
    diff
    if
#(end macro)                if_diff("_stringDecimal_",0)
                    push _stringDecimal_
#(begin macro)                    popouthexa()
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
#(end macro)                    popouthexa()
#(begin macro)                    at_set("write16prefixzero"+_sv7,0)
#(begin macro)    at_2("set",a,b)
    at write16prefixzero1
    set 0
    ta
#(end macro)    at_2("set",a,b)
#(end macro)                    at_set("write16prefixzero"+_sv7,0)
                else    
#(begin macro)                    if_equal("write16prefixzero"+_sv7,0)
    push write16prefixzero1
    push 0
    equal
    if
#(end macro)                    if_equal("write16prefixzero"+_sv7,0)
                        push _stringDecimal_
#(begin macro)                        popouthexa()
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
#(end macro)                        popouthexa()
                    fi
                fi
            else
                push _stringDecimal_
#(begin macro)                popouthexa()
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
#(end macro)    write16("number1") 
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
#(begin macro)    write16("number2") 
#(js) _sv7++;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar("write16prefixzero"+_sv7,1)
    push 1
    sbm write16prefixzero2
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("write16prefixzero"+_sv7,1)
#(begin macro)        lvar16("write16_A"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_A2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_A2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_A2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_A2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_A"+_sv7)
#(begin macro)        lvar16("write16_B"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_B2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_B2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_B2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_B2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_B"+_sv7)
#(begin macro)        lvar16("write16_AmodB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_AmodB2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_AmodB2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_AmodB2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_AmodB2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_AmodB"+_sv7)
#(begin macro)        lvar16("write16_AdivB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_AdivB2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_AdivB2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_AdivB2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_AdivB2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_AdivB"+_sv7)
        
#(begin macro)        pushv16(name)
    push    number2_c
    push    number2_s
    push    number2_1
    push    number2_0
#(end macro)        pushv16(name)
#(begin macro)        popv16("write16_A"+_sv7)
    pop     write16_A2_0
    pop     write16_A2_1
    pop     write16_A2_s
    pop     write16_A2_c
#(end macro)        popv16("write16_A"+_sv7)
        
#(begin macro)        push16(10)
    push    0
    push    0
    push    0
    push    10
#(end macro)        push16(10)
#(begin macro)        popv16("write16_B"+_sv7)
    pop     write16_B2_0
    pop     write16_B2_1
    pop     write16_B2_s
    pop     write16_B2_c
#(end macro)        popv16("write16_B"+_sv7)
        
        push write16_A2_s
        if
            push    '-'
            pop     out   # write '-' if name < 0
        fi
        push 5
        loop
            # output = input mod 10 ; input = input div 10
#(begin macro)            divvvvv16("write16_AdivB" + _sv7, "write16_AmodB" + _sv7, "write16_A" + _sv7, "write16_B" + _sv7)
#(js) _sv6++;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar16("divvvvv16absNameA" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvv16absNameA2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvv16absNameA2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm divvvvv16absNameA2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm divvvvv16absNameA2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("divvvvv16absNameA" + _sv6)
#(begin macro)        pushv16(nameA)
    push    write16_A2_c
    push    write16_A2_s
    push    write16_A2_1
    push    write16_A2_0
#(end macro)        pushv16(nameA)
#(begin macro)        popv16("divvvvv16absNameA" + _sv6)
    pop     divvvvv16absNameA2_0
    pop     divvvvv16absNameA2_1
    pop     divvvvv16absNameA2_s
    pop     divvvvv16absNameA2_c
#(end macro)        popv16("divvvvv16absNameA" + _sv6)
#(begin macro)        lvar("divvvvv16sA" + _sv6,0)
    push 0
    sbm divvvvv16sA2
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvv16sA" + _sv6,0)
        push write16_A2_s
        pop divvvvv16sA2
#(begin macro)        absv16("divvvvv16absNameA" + _sv6)
    push    0
    pop     divvvvv16absNameA2_s
#(end macro)        absv16("divvvvv16absNameA" + _sv6)
        
#(begin macro)        lvar16("divvvvv16absNameB" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvv16absNameB2_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvv16absNameB2_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm divvvvv16absNameB2_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm divvvvv16absNameB2_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("divvvvv16absNameB" + _sv6)
#(begin macro)        pushv16(nameB)
    push    write16_B2_c
    push    write16_B2_s
    push    write16_B2_1
    push    write16_B2_0
#(end macro)        pushv16(nameB)
#(begin macro)        popv16("divvvvv16absNameB" + _sv6)
    pop     divvvvv16absNameB2_0
    pop     divvvvv16absNameB2_1
    pop     divvvvv16absNameB2_s
    pop     divvvvv16absNameB2_c
#(end macro)        popv16("divvvvv16absNameB" + _sv6)
#(begin macro)        lvar("divvvvv16sB" + _sv6,0)
    push 0
    sbm divvvvv16sB2
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvv16sB" + _sv6,0)
        push write16_B2_s
        pop divvvvv16sB2
#(begin macro)        absv16("divvvvv16absNameB" + _sv6)
    push    0
    pop     divvvvv16absNameB2_s
#(end macro)        absv16("divvvvv16absNameB" + _sv6)
        
#(begin macro)        pushv16("divvvvv16absNameA" + _sv6)
    push    divvvvv16absNameA2_c
    push    divvvvv16absNameA2_s
    push    divvvvv16absNameA2_1
    push    divvvvv16absNameA2_0
#(end macro)        pushv16("divvvvv16absNameA" + _sv6)
#(begin macro)        popv16(nameAmodB)
    pop     write16_AmodB2_0
    pop     write16_AmodB2_1
    pop     write16_AmodB2_s
    pop     write16_AmodB2_c
#(end macro)        popv16(nameAmodB)
        
#(begin macro)        resetv16(nameAdivB)
    at write16_AdivB2_0
#(begin macro)        reset16()
    bf  <<<[-]>[-]>[-]>[-]
#(end macro)        reset16()
    ta
#(end macro)        resetv16(nameAdivB)
        
#(begin macro)        boolv16("divvvvv16absNameB" + _sv6)
    push divvvvv16absNameB2_0
    bool
    push divvvvv16absNameB2_1
    bool
    or
#(end macro)        boolv16("divvvvv16absNameB" + _sv6)
        if
            push    1
            sbm     divvvvv16_g2
            while
#(begin macro)                supequalvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
#(begin macro)    subvvv16("__tmp16c__", nameA, nameB)
#(js) _sv4++;
#(begin macro)    pushv16(nameA)
    push    write16_AmodB2_c
    push    write16_AmodB2_s
    push    write16_AmodB2_1
    push    write16_AmodB2_0
#(end macro)    pushv16(nameA)
#(begin macro)    popv16(name)    # name = nameA
    pop     __tmp16c___0
    pop     __tmp16c___1
    pop     __tmp16c___s
    pop     __tmp16c___c
#(end macro)    popv16(name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvv16g16_3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvv16g16_3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm subvvv16g16_3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm subvvv16g16_3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)        pushv16(nameB)
    push    divvvvv16absNameB2_c
    push    divvvvv16absNameB2_s
    push    divvvvv16absNameB2_1
    push    divvvvv16absNameB2_0
#(end macro)        pushv16(nameB)
#(begin macro)        popv16("subvvv16g16_" + _sv4)
    pop     subvvv16g16_3_0
    pop     subvvv16g16_3_1
    pop     subvvv16g16_3_s
    pop     subvvv16g16_3_c
#(end macro)        popv16("subvvv16g16_" + _sv4)
        push 0
#(begin macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
    POP    subvvv16g16_3_s
#(end macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
        
        push    divvvvv16absNameB2_s
        if    # nameB is negative 
            push    1
            sbm subvvv16_loop3
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_3_c
    push    subvvv16g16_3_s
    push    subvvv16g16_3_1
    push    subvvv16g16_3_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_3_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_3_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_3_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_3_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_3_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_3_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_3_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_3_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_3_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_3_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    incv16(name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push __tmp16c___s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name ) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, 1)
    at __tmp16c___0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, 1)
            fi
        fi
#(begin macro)        fixsv16(name)
    push    __tmp16c___s
    IF    # if name is negative
#(begin macro)        if_equal(name +"_0", 0)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_0", 0)
#(begin macro)            if_equal(name +"_1", 0)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal(name +"_1", 0)
#(begin macro)                at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
#(end macro)        fixsv16(name)
    fi
#(end macro)                    incv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop3
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvv16_loop3
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_3_c
    push    subvvv16g16_3_s
    push    subvvv16g16_3_1
    push    subvvv16g16_3_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_3_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_3_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_3_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_3_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_3_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_3_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_3_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_3_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_3_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_3_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    decv16(name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push __tmp16c___s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at __tmp16c___0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop3
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
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
#(end macro)    subvvv16("__tmp16c__", nameA, nameB)
    push __tmp16c___s
    not
#(end macro)                supequalvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
                if
#(begin macro)                    incv16(nameAdivB)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push write16_AdivB2_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB2_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push write16_AdivB2_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB2_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push write16_AdivB2_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name ) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AdivB2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB2_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push write16_AdivB2_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB2_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push write16_AdivB2_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, 1)
    at write16_AdivB2_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, 1)
            fi
        fi
#(begin macro)        fixsv16(name)
    push    write16_AdivB2_s
    IF    # if name is negative
#(begin macro)        if_equal(name +"_0", 0)
    push write16_AdivB2_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_0", 0)
#(begin macro)            if_equal(name +"_1", 0)
    push write16_AdivB2_1
    push 0
    equal
    if
#(end macro)            if_equal(name +"_1", 0)
#(begin macro)                at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB2_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
#(end macro)        fixsv16(name)
    fi
#(end macro)                    incv16(nameAdivB)
#(begin macro)                    subvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
#(begin macro)    subvvv16(name, name, nameA)
#(js) _sv4++;
#(begin macro)    pushv16(nameA)
    push    write16_AmodB2_c
    push    write16_AmodB2_s
    push    write16_AmodB2_1
    push    write16_AmodB2_0
#(end macro)    pushv16(nameA)
#(begin macro)    popv16(name)    # name = nameA
    pop     write16_AmodB2_0
    pop     write16_AmodB2_1
    pop     write16_AmodB2_s
    pop     write16_AmodB2_c
#(end macro)    popv16(name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvv16g16_4_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvv16g16_4_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm subvvv16g16_4_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm subvvv16g16_4_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)        pushv16(nameB)
    push    divvvvv16absNameB2_c
    push    divvvvv16absNameB2_s
    push    divvvvv16absNameB2_1
    push    divvvvv16absNameB2_0
#(end macro)        pushv16(nameB)
#(begin macro)        popv16("subvvv16g16_" + _sv4)
    pop     subvvv16g16_4_0
    pop     subvvv16g16_4_1
    pop     subvvv16g16_4_s
    pop     subvvv16g16_4_c
#(end macro)        popv16("subvvv16g16_" + _sv4)
        push 0
#(begin macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
    POP    subvvv16g16_4_s
#(end macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
        
        push    divvvvv16absNameB2_s
        if    # nameB is negative 
            push    1
            sbm subvvv16_loop4
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_4_c
    push    subvvv16g16_4_s
    push    subvvv16g16_4_1
    push    subvvv16g16_4_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_4_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_4_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_4_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_4_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_4_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_4_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_4_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_4_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_4_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_4_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_4_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    incv16(name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push write16_AmodB2_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB2_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push write16_AmodB2_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB2_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push write16_AmodB2_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name ) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AmodB2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB2_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push write16_AmodB2_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB2_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push write16_AmodB2_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, 1)
    at write16_AmodB2_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, 1)
            fi
        fi
#(begin macro)        fixsv16(name)
    push    write16_AmodB2_s
    IF    # if name is negative
#(begin macro)        if_equal(name +"_0", 0)
    push write16_AmodB2_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_0", 0)
#(begin macro)            if_equal(name +"_1", 0)
    push write16_AmodB2_1
    push 0
    equal
    if
#(end macro)            if_equal(name +"_1", 0)
#(begin macro)                at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB2_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
#(end macro)        fixsv16(name)
    fi
#(end macro)                    incv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop4
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvv16_loop4
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_4_c
    push    subvvv16g16_4_s
    push    subvvv16g16_4_1
    push    subvvv16g16_4_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_4_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_4_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_4_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_4_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_4_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_4_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_4_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_4_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_4_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_4_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_4_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    decv16(name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push write16_AmodB2_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB2_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push write16_AmodB2_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB2_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push write16_AmodB2_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AmodB2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB2_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push write16_AmodB2_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB2_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push write16_AmodB2_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at write16_AmodB2_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop4
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
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
#(end macro)    subvvv16(name, name, nameA)
#(end macro)                    subvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
                else
#(begin macro)                    at_reset("divvvvv16_g" + _sv6) # break while/wend
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at divvvvv16_g2
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("divvvvv16_g" + _sv6) # break while/wend
                fi
            wend
            
            # treat sign of nameAmodB and nameAdivB
            push    divvvvv16sA2
            pop     write16_AmodB2_s   # sign of nameAmodB is sign of nameA
            push    divvvvv16sA2
            push    divvvvv16sB2
            diff
            if
                push    1
                pop     write16_AdivB2_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
        else
#(begin macro)            setcv16(nameAdivB)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AdivB2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcv16(nameAdivB)
#(begin macro)            setcv16(nameAmodB)            
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AmodB2_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcv16(nameAmodB)            
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
#(end macro)            divvvvv16("write16_AdivB" + _sv7, "write16_AmodB" + _sv7, "write16_A" + _sv7, "write16_B" + _sv7)
            push    write16_AmodB2_0
            pop  _stringDecimal_
#(begin macro)            pushv16("write16_AdivB" + _sv7)
    push    write16_AdivB2_c
    push    write16_AdivB2_s
    push    write16_AdivB2_1
    push    write16_AdivB2_0
#(end macro)            pushv16("write16_AdivB" + _sv7)
#(begin macro)            popv16("write16_A" + _sv7)
    pop     write16_A2_0
    pop     write16_A2_1
    pop     write16_A2_s
    pop     write16_A2_c
#(end macro)            popv16("write16_A" + _sv7)
            arotl _stringDecimal_
        endloop
        push 5
        sbm write16cnt2
        loop
            arotr _stringDecimal_
#(begin macro)            if_sup("write16cnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
    push write16cnt2
    push 1
    sup
    if
#(end macro)            if_sup("write16cnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
#(begin macro)                if_diff("_stringDecimal_",0)
    push _stringDecimal_
    push 0
    diff
    if
#(end macro)                if_diff("_stringDecimal_",0)
                    push _stringDecimal_
#(begin macro)                    popouthexa()
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
#(end macro)                    popouthexa()
#(begin macro)                    at_set("write16prefixzero"+_sv7,0)
#(begin macro)    at_2("set",a,b)
    at write16prefixzero2
    set 0
    ta
#(end macro)    at_2("set",a,b)
#(end macro)                    at_set("write16prefixzero"+_sv7,0)
                else    
#(begin macro)                    if_equal("write16prefixzero"+_sv7,0)
    push write16prefixzero2
    push 0
    equal
    if
#(end macro)                    if_equal("write16prefixzero"+_sv7,0)
                        push _stringDecimal_
#(begin macro)                        popouthexa()
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
#(end macro)                        popouthexa()
                    fi
                fi
            else
                push _stringDecimal_
#(begin macro)                popouthexa()
#(js) __idx++;
    sbm _input22
#(begin macro)    if_sup("_input" + __idx,9)
    push _input22
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input22
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input22
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
#(end macro)    write16("number2") 
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

#(begin macro)    addvv16("number1","number2")
#(begin macro)    addvvv16(name, name, nameA)
#(js) _sv3++;
#(begin macro)    pushv16(nameA)
    push    number1_c
    push    number1_s
    push    number1_1
    push    number1_0
#(end macro)    pushv16(nameA)
#(begin macro)    popv16(name)    # name = nameA
    pop     number1_0
    pop     number1_1
    pop     number1_s
    pop     number1_c
#(end macro)    popv16(name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar16("addvvv16g16_" + _sv3)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm addvvv16g16_1_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm addvvv16g16_1_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm addvvv16g16_1_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm addvvv16g16_1_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("addvvv16g16_" + _sv3)
#(begin macro)        pushv16(nameB)
    push    number2_c
    push    number2_s
    push    number2_1
    push    number2_0
#(end macro)        pushv16(nameB)
#(begin macro)        popv16("addvvv16g16_" + _sv3)
    pop     addvvv16g16_1_0
    pop     addvvv16g16_1_1
    pop     addvvv16g16_1_s
    pop     addvvv16g16_1_c
#(end macro)        popv16("addvvv16g16_" + _sv3)
        push 0
#(begin macro)        popsv16("addvvv16g16_" + _sv3) # absolute number (always positive)
    POP    addvvv16g16_1_s
#(end macro)        popsv16("addvvv16g16_" + _sv3) # absolute number (always positive)
        
        push    number2_s
        if    # nameB is negative 
            push    1
            sbm addvvv16_loop1
            while
#(begin macro)                pushv16("addvvv16g16_"+ _sv3)
    push    addvvv16g16_1_c
    push    addvvv16g16_1_s
    push    addvvv16g16_1_1
    push    addvvv16g16_1_0
#(end macro)                pushv16("addvvv16g16_"+ _sv3)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("addvvv16g16_"+_sv3)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push addvvv16g16_1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at addvvv16g16_1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push addvvv16g16_1_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at addvvv16g16_1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push addvvv16g16_1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at addvvv16g16_1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at addvvv16g16_1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push addvvv16g16_1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at addvvv16g16_1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push addvvv16g16_1_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at addvvv16g16_1_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("addvvv16g16_"+_sv3)
#(begin macro)                    decv16(name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push number1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at number1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push number1_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at number1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push number1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at number1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at number1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push number1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at number1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push number1_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at number1_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16(name)
                else
#(begin macro)                    at_reset("addvvv16_loop"+_sv3)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at addvvv16_loop1
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("addvvv16_loop"+_sv3)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm addvvv16_loop1
            while
#(begin macro)                pushv16("addvvv16g16_"+ _sv3)
    push    addvvv16g16_1_c
    push    addvvv16g16_1_s
    push    addvvv16g16_1_1
    push    addvvv16g16_1_0
#(end macro)                pushv16("addvvv16g16_"+ _sv3)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("addvvv16g16_"+_sv3)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push addvvv16g16_1_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at addvvv16g16_1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push addvvv16g16_1_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at addvvv16g16_1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push addvvv16g16_1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at addvvv16g16_1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at addvvv16g16_1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push addvvv16g16_1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at addvvv16g16_1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push addvvv16g16_1_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at addvvv16g16_1_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("addvvv16g16_"+_sv3)
#(begin macro)                    incv16(name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push number1_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at number1_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push number1_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at number1_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push number1_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name ) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at number1_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at number1_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push number1_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at number1_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push number1_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, 1)
    at number1_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, 1)
            fi
        fi
#(begin macro)        fixsv16(name)
    push    number1_s
    IF    # if name is negative
#(begin macro)        if_equal(name +"_0", 0)
    push number1_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_0", 0)
#(begin macro)            if_equal(name +"_1", 0)
    push number1_1
    push 0
    equal
    if
#(end macro)            if_equal(name +"_1", 0)
#(begin macro)                at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at number1_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
#(end macro)        fixsv16(name)
    fi
#(end macro)                    incv16(name)
                else
#(begin macro)                    at_reset("addvvv16_loop"+_sv3)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at addvvv16_loop1
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("addvvv16_loop"+_sv3)
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
#(end macro)    addvvv16(name, name, nameA)
#(end macro)    addvv16("number1","number2")
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
#(begin macro)    write16("number1") 
#(js) _sv7++;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar("write16prefixzero"+_sv7,1)
    push 1
    sbm write16prefixzero3
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("write16prefixzero"+_sv7,1)
#(begin macro)        lvar16("write16_A"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_A3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_A3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_A3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_A3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_A"+_sv7)
#(begin macro)        lvar16("write16_B"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_B3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_B3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_B3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_B3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_B"+_sv7)
#(begin macro)        lvar16("write16_AmodB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_AmodB3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_AmodB3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_AmodB3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_AmodB3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_AmodB"+_sv7)
#(begin macro)        lvar16("write16_AdivB"+_sv7)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm write16_AdivB3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm write16_AdivB3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm write16_AdivB3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm write16_AdivB3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("write16_AdivB"+_sv7)
        
#(begin macro)        pushv16(name)
    push    number1_c
    push    number1_s
    push    number1_1
    push    number1_0
#(end macro)        pushv16(name)
#(begin macro)        popv16("write16_A"+_sv7)
    pop     write16_A3_0
    pop     write16_A3_1
    pop     write16_A3_s
    pop     write16_A3_c
#(end macro)        popv16("write16_A"+_sv7)
        
#(begin macro)        push16(10)
    push    0
    push    0
    push    0
    push    10
#(end macro)        push16(10)
#(begin macro)        popv16("write16_B"+_sv7)
    pop     write16_B3_0
    pop     write16_B3_1
    pop     write16_B3_s
    pop     write16_B3_c
#(end macro)        popv16("write16_B"+_sv7)
        
        push write16_A3_s
        if
            push    '-'
            pop     out   # write '-' if name < 0
        fi
        push 5
        loop
            # output = input mod 10 ; input = input div 10
#(begin macro)            divvvvv16("write16_AdivB" + _sv7, "write16_AmodB" + _sv7, "write16_A" + _sv7, "write16_B" + _sv7)
#(js) _sv6++;
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar16("divvvvv16absNameA" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvv16absNameA3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvv16absNameA3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm divvvvv16absNameA3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm divvvvv16absNameA3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("divvvvv16absNameA" + _sv6)
#(begin macro)        pushv16(nameA)
    push    write16_A3_c
    push    write16_A3_s
    push    write16_A3_1
    push    write16_A3_0
#(end macro)        pushv16(nameA)
#(begin macro)        popv16("divvvvv16absNameA" + _sv6)
    pop     divvvvv16absNameA3_0
    pop     divvvvv16absNameA3_1
    pop     divvvvv16absNameA3_s
    pop     divvvvv16absNameA3_c
#(end macro)        popv16("divvvvv16absNameA" + _sv6)
#(begin macro)        lvar("divvvvv16sA" + _sv6,0)
    push 0
    sbm divvvvv16sA3
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvv16sA" + _sv6,0)
        push write16_A3_s
        pop divvvvv16sA3
#(begin macro)        absv16("divvvvv16absNameA" + _sv6)
    push    0
    pop     divvvvv16absNameA3_s
#(end macro)        absv16("divvvvv16absNameA" + _sv6)
        
#(begin macro)        lvar16("divvvvv16absNameB" + _sv6)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm divvvvv16absNameB3_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm divvvvv16absNameB3_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm divvvvv16absNameB3_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm divvvvv16absNameB3_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("divvvvv16absNameB" + _sv6)
#(begin macro)        pushv16(nameB)
    push    write16_B3_c
    push    write16_B3_s
    push    write16_B3_1
    push    write16_B3_0
#(end macro)        pushv16(nameB)
#(begin macro)        popv16("divvvvv16absNameB" + _sv6)
    pop     divvvvv16absNameB3_0
    pop     divvvvv16absNameB3_1
    pop     divvvvv16absNameB3_s
    pop     divvvvv16absNameB3_c
#(end macro)        popv16("divvvvv16absNameB" + _sv6)
#(begin macro)        lvar("divvvvv16sB" + _sv6,0)
    push 0
    sbm divvvvv16sB3
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("divvvvv16sB" + _sv6,0)
        push write16_B3_s
        pop divvvvv16sB3
#(begin macro)        absv16("divvvvv16absNameB" + _sv6)
    push    0
    pop     divvvvv16absNameB3_s
#(end macro)        absv16("divvvvv16absNameB" + _sv6)
        
#(begin macro)        pushv16("divvvvv16absNameA" + _sv6)
    push    divvvvv16absNameA3_c
    push    divvvvv16absNameA3_s
    push    divvvvv16absNameA3_1
    push    divvvvv16absNameA3_0
#(end macro)        pushv16("divvvvv16absNameA" + _sv6)
#(begin macro)        popv16(nameAmodB)
    pop     write16_AmodB3_0
    pop     write16_AmodB3_1
    pop     write16_AmodB3_s
    pop     write16_AmodB3_c
#(end macro)        popv16(nameAmodB)
        
#(begin macro)        resetv16(nameAdivB)
    at write16_AdivB3_0
#(begin macro)        reset16()
    bf  <<<[-]>[-]>[-]>[-]
#(end macro)        reset16()
    ta
#(end macro)        resetv16(nameAdivB)
        
#(begin macro)        boolv16("divvvvv16absNameB" + _sv6)
    push divvvvv16absNameB3_0
    bool
    push divvvvv16absNameB3_1
    bool
    or
#(end macro)        boolv16("divvvvv16absNameB" + _sv6)
        if
            push    1
            sbm     divvvvv16_g3
            while
#(begin macro)                supequalvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
#(begin macro)    subvvv16("__tmp16c__", nameA, nameB)
#(js) _sv4++;
#(begin macro)    pushv16(nameA)
    push    write16_AmodB3_c
    push    write16_AmodB3_s
    push    write16_AmodB3_1
    push    write16_AmodB3_0
#(end macro)    pushv16(nameA)
#(begin macro)    popv16(name)    # name = nameA
    pop     __tmp16c___0
    pop     __tmp16c___1
    pop     __tmp16c___s
    pop     __tmp16c___c
#(end macro)    popv16(name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvv16g16_5_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvv16g16_5_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm subvvv16g16_5_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm subvvv16g16_5_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)        pushv16(nameB)
    push    divvvvv16absNameB3_c
    push    divvvvv16absNameB3_s
    push    divvvvv16absNameB3_1
    push    divvvvv16absNameB3_0
#(end macro)        pushv16(nameB)
#(begin macro)        popv16("subvvv16g16_" + _sv4)
    pop     subvvv16g16_5_0
    pop     subvvv16g16_5_1
    pop     subvvv16g16_5_s
    pop     subvvv16g16_5_c
#(end macro)        popv16("subvvv16g16_" + _sv4)
        push 0
#(begin macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
    POP    subvvv16g16_5_s
#(end macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
        
        push    divvvvv16absNameB3_s
        if    # nameB is negative 
            push    1
            sbm subvvv16_loop5
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_5_c
    push    subvvv16g16_5_s
    push    subvvv16g16_5_1
    push    subvvv16g16_5_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_5_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_5_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_5_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_5_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_5_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_5_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_5_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_5_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_5_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_5_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_5_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    incv16(name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push __tmp16c___s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name ) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, 1)
    at __tmp16c___0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, 1)
            fi
        fi
#(begin macro)        fixsv16(name)
    push    __tmp16c___s
    IF    # if name is negative
#(begin macro)        if_equal(name +"_0", 0)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_0", 0)
#(begin macro)            if_equal(name +"_1", 0)
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal(name +"_1", 0)
#(begin macro)                at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
#(end macro)        fixsv16(name)
    fi
#(end macro)                    incv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop5
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvv16_loop5
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_5_c
    push    subvvv16g16_5_s
    push    subvvv16g16_5_1
    push    subvvv16g16_5_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_5_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_5_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_5_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_5_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_5_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_5_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_5_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_5_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_5_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_5_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_5_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    decv16(name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push __tmp16c___s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push __tmp16c___0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push __tmp16c___1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at __tmp16c___c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push __tmp16c___0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at __tmp16c___1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push __tmp16c___1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at __tmp16c___0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop5
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
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
#(end macro)    subvvv16("__tmp16c__", nameA, nameB)
    push __tmp16c___s
    not
#(end macro)                supequalvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
                if
#(begin macro)                    incv16(nameAdivB)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push write16_AdivB3_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB3_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push write16_AdivB3_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB3_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push write16_AdivB3_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name ) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AdivB3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB3_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push write16_AdivB3_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB3_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push write16_AdivB3_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, 1)
    at write16_AdivB3_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, 1)
            fi
        fi
#(begin macro)        fixsv16(name)
    push    write16_AdivB3_s
    IF    # if name is negative
#(begin macro)        if_equal(name +"_0", 0)
    push write16_AdivB3_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_0", 0)
#(begin macro)            if_equal(name +"_1", 0)
    push write16_AdivB3_1
    push 0
    equal
    if
#(end macro)            if_equal(name +"_1", 0)
#(begin macro)                at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AdivB3_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
#(end macro)        fixsv16(name)
    fi
#(end macro)                    incv16(nameAdivB)
#(begin macro)                    subvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
#(begin macro)    subvvv16(name, name, nameA)
#(js) _sv4++;
#(begin macro)    pushv16(nameA)
    push    write16_AmodB3_c
    push    write16_AmodB3_s
    push    write16_AmodB3_1
    push    write16_AmodB3_0
#(end macro)    pushv16(nameA)
#(begin macro)    popv16(name)    # name = nameA
    pop     write16_AmodB3_0
    pop     write16_AmodB3_1
    pop     write16_AmodB3_s
    pop     write16_AmodB3_c
#(end macro)    popv16(name)    # name = nameA
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)    lvar(name + "_c",0)
    push 0
    sbm subvvv16g16_6_c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_c",0)
#(begin macro)    lvar(name + "_s",0)
    push 0
    sbm subvvv16g16_6_s
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_s",0)
#(begin macro)    lvar(name + "_1",0)
    push 0
    sbm subvvv16g16_6_1
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_1",0)
#(begin macro)    lvar(name + "_0",0)
    push 0
    sbm subvvv16g16_6_0
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar(name + "_0",0)
#(end macro)        lvar16("subvvv16g16_" + _sv4)
#(begin macro)        pushv16(nameB)
    push    divvvvv16absNameB3_c
    push    divvvvv16absNameB3_s
    push    divvvvv16absNameB3_1
    push    divvvvv16absNameB3_0
#(end macro)        pushv16(nameB)
#(begin macro)        popv16("subvvv16g16_" + _sv4)
    pop     subvvv16g16_6_0
    pop     subvvv16g16_6_1
    pop     subvvv16g16_6_s
    pop     subvvv16g16_6_c
#(end macro)        popv16("subvvv16g16_" + _sv4)
        push 0
#(begin macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
    POP    subvvv16g16_6_s
#(end macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)
        
        push    divvvvv16absNameB3_s
        if    # nameB is negative 
            push    1
            sbm subvvv16_loop6
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_6_c
    push    subvvv16g16_6_s
    push    subvvv16g16_6_1
    push    subvvv16g16_6_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_6_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_6_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_6_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_6_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_6_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_6_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_6_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_6_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_6_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_6_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_6_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    incv16(name)
#(begin macro)    if_equal(name +"_s",0)  # positive number
    push write16_AmodB3_s
    push 0
    equal
    if
#(end macro)    if_equal(name +"_s",0)  # positive number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB3_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push write16_AmodB3_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB3_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push write16_AmodB3_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name ) ## set carry (overflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AmodB3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name ) ## set carry (overflow)
            fi 
        fi
    else    # negative number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB3_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push write16_AmodB3_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB3_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push write16_AmodB3_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, 1)
    at write16_AmodB3_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 0
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, 1)
            fi
        fi
#(begin macro)        fixsv16(name)
    push    write16_AmodB3_s
    IF    # if name is negative
#(begin macro)        if_equal(name +"_0", 0)
    push write16_AmodB3_0
    push 0
    equal
    if
#(end macro)        if_equal(name +"_0", 0)
#(begin macro)            if_equal(name +"_1", 0)
    push write16_AmodB3_1
    push 0
    equal
    if
#(end macro)            if_equal(name +"_1", 0)
#(begin macro)                at_reset(name + "_s")   # set sign to positive
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB3_s
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                at_reset(name + "_s")   # set sign to positive
            fi
        fi
    fi
#(end macro)        fixsv16(name)
    fi
#(end macro)                    incv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop6
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
                fi
            wend
        else  # nameB is positive
            push    1
            sbm subvvv16_loop6
            while
#(begin macro)                pushv16("subvvv16g16_"+ _sv4)
    push    subvvv16g16_6_c
    push    subvvv16g16_6_s
    push    subvvv16g16_6_1
    push    subvvv16g16_6_0
#(end macro)                pushv16("subvvv16g16_"+ _sv4)
#(begin macro)                bool16()
#(begin macro)    popv16("__tmp16__")
    pop     __tmp16___0
    pop     __tmp16___1
    pop     __tmp16___s
    pop     __tmp16___c
#(end macro)    popv16("__tmp16__")
    push __tmp16___0
    bool
    push __tmp16___1
    bool
    or
#(end macro)                bool16()
                if
#(begin macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push subvvv16g16_6_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_6_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push subvvv16g16_6_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_6_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push subvvv16g16_6_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at subvvv16g16_6_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_6_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push subvvv16g16_6_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16g16_6_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push subvvv16g16_6_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at subvvv16g16_6_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16("subvvv16g16_"+_sv4)
#(begin macro)                    decv16(name)
#(begin macro)    if_equal(name +"_s",1)  # negative number
    push write16_AmodB3_s
    push 1
    equal
    if
#(end macro)    if_equal(name +"_s",1)  # negative number
#(begin macro)        at_inc(name + "_0")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB3_0
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)        at_inc(name + "_0")
#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)
    push write16_AmodB3_0
    push 0
    equal
    if
#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)
#(begin macro)            at_inc(name + "_1")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB3_1
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)            at_inc(name + "_1")
#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
    push write16_AmodB3_1
    push 0
    equal
    if
#(end macro)            if_equal( name + "_1", 0 ) @ reach zero 'roll over
#(begin macro)                setcv16( name )  # set carry (underflow)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AmodB3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)                setcv16( name )  # set carry (underflow)
            fi 
        fi
    else    # positive number
#(begin macro)        at_dec(name + "_0")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB3_0
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)        at_dec(name + "_0")
#(begin macro)        if_equal(name +"_0",255) # reduced
    push write16_AmodB3_0
    push 255
    equal
    if
#(end macro)        if_equal(name +"_0",255) # reduced
#(begin macro)            at_dec(name +"_1")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at write16_AmodB3_1
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)            at_dec(name +"_1")
#(begin macro)            if_equal(name + "_1",255)
    push write16_AmodB3_1
    push 255
    equal
    if
#(end macro)            if_equal(name + "_1",255)
#(begin macro)                setv16(name, -1)
    at write16_AmodB3_0
#(begin macro)        set16(immValue)
    bf  <<<
    reset
    bf  >
    set 1
    bf  >
    set 0
    bf  >
    set 1
#(end macro)        set16(immValue)
    ta
#(end macro)                setv16(name, -1)
            fi
        fi
    fi
#(end macro)                    decv16(name)
                else
#(begin macro)                    at_reset("subvvv16_loop"+_sv4)
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at subvvv16_loop6
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("subvvv16_loop"+_sv4)
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
#(end macro)    subvvv16(name, name, nameA)
#(end macro)                    subvv16(nameAmodB, "divvvvv16absNameB" + _sv6)
                else
#(begin macro)                    at_reset("divvvvv16_g" + _sv6) # break while/wend
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at divvvvv16_g3
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                    at_reset("divvvvv16_g" + _sv6) # break while/wend
                fi
            wend
            
            # treat sign of nameAmodB and nameAdivB
            push    divvvvv16sA3
            pop     write16_AmodB3_s   # sign of nameAmodB is sign of nameA
            push    divvvvv16sA3
            push    divvvvv16sB3
            diff
            if
                push    1
                pop     write16_AdivB3_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
        else
#(begin macro)            setcv16(nameAdivB)
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AdivB3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcv16(nameAdivB)
#(begin macro)            setcv16(nameAmodB)            
#(begin macro)    at_set(name+"_c",1)
#(begin macro)    at_2("set",a,b)
    at write16_AmodB3_c
    set 1
    ta
#(end macro)    at_2("set",a,b)
#(end macro)    at_set(name+"_c",1)
#(end macro)            setcv16(nameAmodB)            
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
#(end macro)            divvvvv16("write16_AdivB" + _sv7, "write16_AmodB" + _sv7, "write16_A" + _sv7, "write16_B" + _sv7)
            push    write16_AmodB3_0
            pop  _stringDecimal_
#(begin macro)            pushv16("write16_AdivB" + _sv7)
    push    write16_AdivB3_c
    push    write16_AdivB3_s
    push    write16_AdivB3_1
    push    write16_AdivB3_0
#(end macro)            pushv16("write16_AdivB" + _sv7)
#(begin macro)            popv16("write16_A" + _sv7)
    pop     write16_A3_0
    pop     write16_A3_1
    pop     write16_A3_s
    pop     write16_A3_c
#(end macro)            popv16("write16_A" + _sv7)
            arotl _stringDecimal_
        endloop
        push 5
        sbm write16cnt3
        loop
            arotr _stringDecimal_
#(begin macro)            if_sup("write16cnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
    push write16cnt3
    push 1
    sup
    if
#(end macro)            if_sup("write16cnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)
#(begin macro)                if_diff("_stringDecimal_",0)
    push _stringDecimal_
    push 0
    diff
    if
#(end macro)                if_diff("_stringDecimal_",0)
                    push _stringDecimal_
#(begin macro)                    popouthexa()
#(js) __idx++;
    sbm _input23
#(begin macro)    if_sup("_input" + __idx,9)
    push _input23
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input23
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input23
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)                    popouthexa()
#(begin macro)                    at_set("write16prefixzero"+_sv7,0)
#(begin macro)    at_2("set",a,b)
    at write16prefixzero3
    set 0
    ta
#(end macro)    at_2("set",a,b)
#(end macro)                    at_set("write16prefixzero"+_sv7,0)
                else    
#(begin macro)                    if_equal("write16prefixzero"+_sv7,0)
    push write16prefixzero3
    push 0
    equal
    if
#(end macro)                    if_equal("write16prefixzero"+_sv7,0)
                        push _stringDecimal_
#(begin macro)                        popouthexa()
#(js) __idx++;
    sbm _input24
#(begin macro)    if_sup("_input" + __idx,9)
    push _input24
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input24
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input24
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
                push _stringDecimal_
#(begin macro)                popouthexa()
#(js) __idx++;
    sbm _input25
#(begin macro)    if_sup("_input" + __idx,9)
    push _input25
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input25
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input25
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
#(end macro)    write16("number1") 
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


