# Test 2
#(begin include)../../samples/include/macro.inc
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
#(end include)../../samples/include/macro.inc

# basic macros test
#(begin macro)print("Basic macro test.\n\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     31   
#(js) } else {
#(js) } else {
    out             # 'a'
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
    add     2   
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
    add     15   
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
    sub     3   
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
    add     84   
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
    set     46    
#(js) }
    out             # '.'
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
#(end macro)print("Basic macro test.\n\n")
#(begin macro)scope_begin()
#(js) __scope.push(0);
#(end macro)scope_begin()
#(begin macro)    lvar("a",10)
    push 10
    sbm a
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar("a",10)
#(begin macro)    lvar("b",20)
    push 20
    sbm b
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar("b",20)
#(begin macro)    lvar("c",30)
    push 30
    sbm c
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar("c",30)
#(begin macro)    lvar("d",40)
    push 40
    sbm d
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar("d",40)
#(begin macro)    lvar("f",20)
    push 20
    sbm f
#(js) __scope[__scope.length-1]++; 
#(end macro)    lvar("f",20)
    
#(begin macro)    print("  a = 10 : 0A == ")
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
    add     65   
#(js) } else {
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
    add     29   
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
#(js) if (__dist != 0) {
    sub     29   
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
    sub     1   
#(js) }
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
    add     17   
#(js) } else {
#(js) } else {
    out             # 'A'
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
    add     29   
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
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # '='
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     29   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("  a = 10 : 0A == ")
    push    a
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
#(begin macro)    print("  b = 20 : 14 == ")
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
    add     29   
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
#(js) if (__dist != 0) {
    sub     29   
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
    add     18   
#(js) } else {
#(js) } else {
    out             # '2'
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
    add     3   
#(js) } else {
#(js) } else {
    out             # '4'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    add     29   
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
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # '='
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     29   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("  b = 20 : 14 == ")
    push    b
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
#(begin macro)    print("  c = 30 : 1E == ")
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
    add     29   
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
#(js) if (__dist != 0) {
    sub     29   
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
    add     19   
#(js) } else {
#(js) } else {
    out             # '3'
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
    add     20   
#(js) } else {
#(js) } else {
    out             # 'E'
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
    add     29   
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
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # '='
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     29   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("  c = 30 : 1E == ")
    push    c
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
#(begin macro)    print("  d = 40 : 28 == ")
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
    add     29   
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
#(js) if (__dist != 0) {
    sub     29   
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
    add     20   
#(js) } else {
#(js) } else {
    out             # '4'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
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
    add     18   
#(js) } else {
#(js) } else {
    out             # '2'
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
    out             # '8'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     24   
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
    add     29   
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
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # '='
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     29   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("  d = 40 : 28 == ")
    push    d
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
#(begin macro)    print("  f = 20 : 14 == ")
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
    add     29   
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
#(js) if (__dist != 0) {
    sub     29   
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
    add     18   
#(js) } else {
#(js) } else {
    out             # '2'
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
    add     3   
#(js) } else {
#(js) } else {
    out             # '4'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    add     29   
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
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # '='
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     29   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("  f = 20 : 14 == ")
    push    f
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
    
# macro if_diff(a,b) : if (a != b) {
#(begin macro)    print("if_diff\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     105    
#(js) }
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
#(js) if (__dist != 0) {
    sub     7   
#(js) }
#(js) }
#(js) } else {
    out             # '_'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     5   
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
    add     5   
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
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # 'f'
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
#(end macro)    print("if_diff\n")
#(begin macro)    print("   a diff b is true; ")
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
    add     65   
#(js) } else {
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
    add     5   
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
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # 'f'
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
    add     73   
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
    add     10   
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
    add     84   
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
    sub     2   
#(js) }
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
    add     3   
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
    sub     16   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   a diff b is true; ")
#(begin macro)    if_diff("a","b")
    push a
    push b
    diff
    if
#(end macro)    if_diff("a","b")
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    else
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    fi
#(begin macro)    print("   b diff f is false; ")
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
    add     5   
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
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # 'f'
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
    add     73   
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
    add     10   
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
#(js) if (__move > 0 ) {
    add     7   
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
    sub     14   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   b diff f is false; ")
#(begin macro)    if_diff("b","f")
    push b
    push f
    diff
    if
#(end macro)    if_diff("b","f")
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    else
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    fi
    
# macro if_equal(a,b) : if (a == b) {
#(begin macro)    print("if_equal\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     105    
#(js) }
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
#(js) if (__dist != 0) {
    sub     7   
#(js) }
#(js) }
#(js) } else {
    out             # '_'
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
    out             # 'e'
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
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("if_equal\n")
#(begin macro)    print("   a equal b is false; ")
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
    add     65   
#(js) } else {
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
    add     69   
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
    add     12   
#(js) } else {
#(js) } else {
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    add     73   
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
    add     10   
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
#(js) if (__move > 0 ) {
    add     7   
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
    sub     14   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   a equal b is false; ")
#(begin macro)    if_equal("a","b")
    push a
    push b
    equal
    if
#(end macro)    if_equal("a","b")
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    else
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    fi
#(begin macro)    print("   b equal f is true; ")
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
    add     69   
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
    add     12   
#(js) } else {
#(js) } else {
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
    add     73   
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
    add     10   
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
    add     84   
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
    sub     2   
#(js) }
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
    add     3   
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
    sub     16   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   b equal f is true; ")
#(begin macro)    if_equal("b","f")
    push b
    push f
    equal
    if
#(end macro)    if_equal("b","f")
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    else
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    fi

# macro if_sup(a,b) : if (a > b) {
#(begin macro)    print("if_sup\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     105    
#(js) }
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
#(js) if (__dist != 0) {
    sub     7   
#(js) }
#(js) }
#(js) } else {
    out             # '_'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     20   
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
    add     2   
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
    sub     5   
#(js) }
#(js) }
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
#(end macro)    print("if_sup\n")
#(begin macro)    print("   a sup b is false; ")
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
    add     65   
#(js) } else {
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
    add     2   
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
    sub     5   
#(js) }
#(js) }
#(js) } else {
    out             # 'p'
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
    add     73   
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
    add     10   
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
#(js) if (__move > 0 ) {
    add     7   
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
    sub     14   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   a sup b is false; ")
#(begin macro)    if_sup("a","b")
    push a
    push b
    sup
    if
#(end macro)    if_sup("a","b")
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    else
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    fi
#(begin macro)    print("   c sup b is true; ")
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
#(js) if (__move > 0 ) {
    add     2   
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
    sub     5   
#(js) }
#(js) }
#(js) } else {
    out             # 'p'
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
    add     73   
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
    add     10   
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
    add     84   
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
    sub     2   
#(js) }
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
    add     3   
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
    sub     16   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   c sup b is true; ")
#(begin macro)    if_sup("c","b")
    push c
    push b
    sup
    if
#(end macro)    if_sup("c","b")
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    else
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    fi
#(begin macro)    print("   f sup b is false; ")
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
    add     2   
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
    sub     5   
#(js) }
#(js) }
#(js) } else {
    out             # 'p'
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
    add     73   
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
    add     10   
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
#(js) if (__move > 0 ) {
    add     7   
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
    sub     14   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   f sup b is false; ")
#(begin macro)    if_sup("f","b")
    push f
    push b
    sup
    if
#(end macro)    if_sup("f","b")
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    else
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    fi
    
# macro if_inf(a,b) : if (a < b) {
#(begin macro)    print("if_inf\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     105    
#(js) }
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
#(js) if (__dist != 0) {
    sub     7   
#(js) }
#(js) }
#(js) } else {
    out             # '_'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     10   
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
    add     5   
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
    sub     8   
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
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("if_inf\n")
#(begin macro)    print("   a inf b is true; ")
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
    add     65   
#(js) } else {
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
    add     73   
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
    add     5   
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
    sub     8   
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
    add     73   
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
    add     10   
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
    add     84   
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
    sub     2   
#(js) }
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
    add     3   
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
    sub     16   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   a inf b is true; ")
#(begin macro)    if_inf("a","b")
    push a
    push b
    inf
    if
#(end macro)    if_inf("a","b")
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    else
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    fi
#(begin macro)    print("   c inf b is false; ")
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
    add     73   
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
    add     5   
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
    sub     8   
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
    add     73   
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
    add     10   
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
#(js) if (__move > 0 ) {
    add     7   
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
    sub     14   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   c inf b is false; ")
#(begin macro)    if_inf("c","b")
    push c
    push b
    inf
    if
#(end macro)    if_inf("c","b")
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    else
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    fi
#(begin macro)    print("   f inf b is false; ")
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
    add     73   
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
    add     5   
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
    sub     8   
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
    add     73   
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
    add     10   
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
#(js) if (__move > 0 ) {
    add     7   
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
    sub     14   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   f inf b is false; ")
#(begin macro)    if_inf("f","b")
    push f
    push b
    inf
    if
#(end macro)    if_inf("f","b")
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    else
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    fi
    
# macro if_supequal(a,b) : if (a >= b) {
#(begin macro)    print("if_supequal\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     105    
#(js) }
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
#(js) if (__dist != 0) {
    sub     7   
#(js) }
#(js) }
#(js) } else {
    out             # '_'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     20   
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
    add     2   
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
    sub     5   
#(js) }
#(js) }
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
    sub     11   
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
    add     12   
#(js) } else {
#(js) } else {
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("if_supequal\n")
#(begin macro)    print("   a supequal b is false; ")
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
    add     65   
#(js) } else {
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
    add     2   
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
    sub     5   
#(js) }
#(js) }
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
    sub     11   
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
    add     12   
#(js) } else {
#(js) } else {
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    add     73   
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
    add     10   
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
#(js) if (__move > 0 ) {
    add     7   
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
    sub     14   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   a supequal b is false; ")
#(begin macro)    if_supequal("a","b")
    push a
    push b
    inf
    not
    if
#(end macro)    if_supequal("a","b")
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    else
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    fi
#(begin macro)    print("   c supequal b is true; ")
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
#(js) if (__move > 0 ) {
    add     2   
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
    sub     5   
#(js) }
#(js) }
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
    sub     11   
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
    add     12   
#(js) } else {
#(js) } else {
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    add     73   
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
    add     10   
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
    add     84   
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
    sub     2   
#(js) }
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
    add     3   
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
    sub     16   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   c supequal b is true; ")
#(begin macro)    if_supequal("c","b")
    push c
    push b
    inf
    not
    if
#(end macro)    if_supequal("c","b")
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    else
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    fi
#(begin macro)    print("   f supequal b is true; ")
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
    add     2   
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
    sub     5   
#(js) }
#(js) }
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
    sub     11   
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
    add     12   
#(js) } else {
#(js) } else {
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    add     73   
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
    add     10   
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
    add     84   
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
    sub     2   
#(js) }
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
    add     3   
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
    sub     16   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   f supequal b is true; ")
#(begin macro)    if_supequal("f","b")
    push f
    push b
    inf
    not
    if
#(end macro)    if_supequal("f","b")
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    else
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    fi

# macro if_infequal(a,b) : if (a <= b) {
#(begin macro)    print("if_infequal\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     105    
#(js) }
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
#(js) if (__dist != 0) {
    sub     7   
#(js) }
#(js) }
#(js) } else {
    out             # '_'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     10   
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
    add     5   
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
    sub     8   
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
#(js) if (__dist != 0) {
    sub     1   
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
    add     12   
#(js) } else {
#(js) } else {
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("if_infequal\n")
#(begin macro)    print("   a infequal b is true; ")
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
    add     65   
#(js) } else {
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
    add     73   
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
    add     5   
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
    sub     8   
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
#(js) if (__dist != 0) {
    sub     1   
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
    add     12   
#(js) } else {
#(js) } else {
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    add     73   
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
    add     10   
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
    add     84   
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
    sub     2   
#(js) }
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
    add     3   
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
    sub     16   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   a infequal b is true; ")
#(begin macro)    if_infequal("a","b")
    push a
    push b
    sup
    not
    if
#(end macro)    if_infequal("a","b")
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    else
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    fi
#(begin macro)    print("   c infequal b is false; ")
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
    add     73   
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
    add     5   
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
    sub     8   
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
#(js) if (__dist != 0) {
    sub     1   
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
    add     12   
#(js) } else {
#(js) } else {
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    add     73   
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
    add     10   
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
#(js) if (__move > 0 ) {
    add     7   
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
    sub     14   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   c infequal b is false; ")
#(begin macro)    if_infequal("c","b")
    push c
    push b
    sup
    not
    if
#(end macro)    if_infequal("c","b")
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    else
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    fi
#(begin macro)    print("   f infequal b is true; ")
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
    add     70   
#(js) } else {
#(js) } else {
    out             # 'f'
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
    add     73   
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
    add     5   
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
    sub     8   
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
#(js) if (__dist != 0) {
    sub     1   
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
    add     12   
#(js) } else {
#(js) } else {
    out             # 'q'
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
    out             # 'u'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     20   
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
    add     73   
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
    add     10   
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
    add     84   
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
    sub     2   
#(js) }
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
    add     3   
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
    sub     16   
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
#(js) if (__dist != 0) {
    sub     42   
#(js) }
#(js) }
#(js) } else {
    out             # ';'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     27   
#(js) }
#(js) }
#(js) } else {
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)    print("   f infequal b is true; ")
#(begin macro)    if_infequal("f","b")
    push f
    push b
    sup
    not
    if
#(end macro)    if_infequal("f","b")
#(begin macro)        print ("OK\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     79    
#(js) }
    out             # 'O'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     4   
#(js) }
#(js) }
#(js) } else {
    out             # 'K'
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
#(end macro)        print ("OK\n")
    else
#(begin macro)        print ("BUG\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     66    
#(js) }
    out             # 'B'
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
    out             # 'U'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     14   
#(js) }
#(js) }
#(js) } else {
    out             # 'G'
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
#(end macro)        print ("BUG\n")
    fi

# macro at_reset(a) : a=0
# macro at_inc(a) : a++
# macro at_dec(a) : a--
# macro at_out(a) : write(a)
# macro at_add(a,b) : a += b (immediate)
# macro at_sub(a,b) : a -= b (immediate)
# macro at_set(a,b) : a = b (immediate)

# macro write(a) : print out  variable/immediate 8 bits 'a'
# macro divide(a,b,d,r) : d = a div b ; r = a mod b : 8 bits var or immediate 'a' and 'b'
# macro left_rewind(array) 
# macro right_rewind(array)
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
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)scope_end()


