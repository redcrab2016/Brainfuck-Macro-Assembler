# Test 1
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

# basic operation test

#(begin macro)print("Basic operation test.\n\n")
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
    add     1   
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
    sub     17   
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
    add     6   
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
#(js) if (__dist != 0) {
    sub     1   
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
#(end macro)print("Basic operation test.\n\n")
#(begin macro)print("ADD an immediate\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     65    
#(js) }
    out             # 'A'
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
    out             # 'D'
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
    out             # 'D'
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
    sub     8   
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
    sub     1   
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
    sub     8   
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
#(end macro)print("ADD an immediate\n")
push    1
add     3
#(begin macro)print(" push 1; add 3 ; 04 == ")
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     10   
#(js) } else {
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
#(js) if (__move > 0 ) {
    add     3   
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
#(js) if (__dist != 0) {
#(js) }
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
    sub     19   
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
    add     27   
#(js) } else {
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
    add     4   
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
#(end macro)print(" push 1; add 3 ; 04 == ")
#(begin macro)popout8hexa()
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
#(end macro)popout8hexa()
#(begin macro)print("\n") 
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
#(end macro)print("\n") 

#(begin macro)print("ADD two 8 bits in stack\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     65    
#(js) }
    out             # 'A'
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
    out             # 'D'
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
    out             # 'D'
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
    add     3   
#(js) } else {
#(js) } else {
    out             # 'w'
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
    add     24   
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
    add     7   
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
    sub     1   
#(js) }
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     19   
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
    add     8   
#(js) } else {
#(js) } else {
    out             # 'k'
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
#(end macro)print("ADD two 8 bits in stack\n")
push    2
push    5
add
#(begin macro)print(" push 2; push 5 ; add ;  07 == ")
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     9   
#(js) } else {
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     21   
#(js) } else {
#(js) } else {
    out             # '5'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     21   
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
    add     27   
#(js) } else {
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
#(js) if (__move > 0 ) {
    add     3   
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
#(js) if (__dist != 0) {
#(js) }
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
    add     27   
#(js) } else {
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
    add     7   
#(js) } else {
#(js) } else {
    out             # '7'
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
#(end macro)print(" push 2; push 5 ; add ;  07 == ")
#(begin macro)popout8hexa()
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
#(end macro)popout8hexa()
#(begin macro)print("\n") 
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
#(end macro)print("\n") 
push    253
push    5
add
#(begin macro)print(" push 253; push 5 ; add ;  02 == ")
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     3   
#(js) } else {
#(js) } else {
    out             # '5'
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
    out             # '3'
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     21   
#(js) } else {
#(js) } else {
    out             # '5'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     21   
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
    add     27   
#(js) } else {
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
#(js) if (__move > 0 ) {
    add     3   
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
#(js) if (__dist != 0) {
#(js) }
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
    add     27   
#(js) } else {
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
    add     2   
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
    sub     18   
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
#(end macro)print(" push 253; push 5 ; add ;  02 == ")
#(begin macro)popout8hexa()
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
#(end macro)popout8hexa()
#(begin macro)print("\n") 
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
#(end macro)print("\n") 

#(begin macro)print("AND two boolean 8 bits in stack\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     65    
#(js) }
    out             # 'A'
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
    out             # 'N'
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
    out             # 'D'
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
    add     3   
#(js) } else {
#(js) } else {
    out             # 'w'
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
    add     13   
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
#(js) if (__dist != 0) {
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
#(js) if (__dist != 0) {
    sub     3   
#(js) }
#(js) }
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
#(js) if (__dist != 0) {
    sub     4   
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
    add     24   
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
    add     7   
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
    sub     1   
#(js) }
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     19   
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
    add     8   
#(js) } else {
#(js) } else {
    out             # 'k'
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
#(end macro)print("AND two boolean 8 bits in stack\n")
push    2
push    5
and
#(begin macro)print(" push 2; push 5 ; add ;  01 == ")
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     9   
#(js) } else {
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     21   
#(js) } else {
#(js) } else {
    out             # '5'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     21   
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
    add     27   
#(js) } else {
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
#(js) if (__move > 0 ) {
    add     3   
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
#(js) if (__dist != 0) {
#(js) }
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
    add     27   
#(js) } else {
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
#(end macro)print(" push 2; push 5 ; add ;  01 == ")
#(begin macro)popout8hexa()
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
#(end macro)popout8hexa()
#(begin macro)print("\n") 
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
#(end macro)print("\n") 
push    1
push    1
and
#(begin macro)print(" push 1; push 1 ; add ;  01 == ")
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     10   
#(js) } else {
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     27   
#(js) } else {
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
#(js) if (__move > 0 ) {
    add     3   
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
#(js) if (__dist != 0) {
#(js) }
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
    add     27   
#(js) } else {
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
#(end macro)print(" push 1; push 1 ; add ;  01 == ")
#(begin macro)popout8hexa()
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
#(end macro)popout8hexa()
#(begin macro)print("\n") 
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
#(end macro)print("\n") 
push    0
push    1
and
#(begin macro)print(" push 0; push 1 ; add ;  00 == ")
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     11   
#(js) } else {
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     27   
#(js) } else {
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
#(js) if (__move > 0 ) {
    add     3   
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
#(js) if (__dist != 0) {
#(js) }
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
    add     27   
#(js) } else {
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
#(end macro)print(" push 0; push 1 ; add ;  00 == ")
#(begin macro)popout8hexa()
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
#(end macro)popout8hexa()
#(begin macro)print("\n") 
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
#(end macro)print("\n") 
push    1
push    0
and
#(begin macro)print(" push 1; push 0 ; add ;  00 == ")
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     10   
#(js) } else {
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     27   
#(js) } else {
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
#(js) if (__move > 0 ) {
    add     3   
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
#(js) if (__dist != 0) {
#(js) }
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
    add     27   
#(js) } else {
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
#(end macro)print(" push 1; push 0 ; add ;  00 == ")
#(begin macro)popout8hexa()
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
#(end macro)popout8hexa()
#(begin macro)print("\n") 
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
#(end macro)print("\n") 

#(begin macro)print("AROTL rotate array\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     65    
#(js) }
    out             # 'A'
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
    out             # 'R'
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
    out             # 'O'
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
    out             # 'T'
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
    out             # 'L'
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
    add     82   
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
#(js) if (__move > 0 ) {
    add     5   
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
    sub     19   
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
#(js) if (__dist != 0) {
    sub     17   
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
    add     24   
#(js) } else {
#(js) } else {
    out             # 'y'
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
#(end macro)print("AROTL rotate array\n")
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
#(begin macro)print("  01 02 03 == ")
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
    add     2   
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
    sub     18   
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
    add     3   
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
    sub     19   
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
#(end macro)print("  01 02 03 == ")
push 3
loop
    push grot1
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
#(begin macro)    print(" ") 
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
    drop
#(end macro)    print(" ") 
    arotl grot1
endloop
#(begin macro)print("\n")    
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
#(end macro)print("\n")    

#(begin macro)print("AROTR rotate array\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     65    
#(js) }
    out             # 'A'
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
    out             # 'R'
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
    out             # 'O'
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
    out             # 'T'
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
    out             # 'R'
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
    add     82   
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
#(js) if (__move > 0 ) {
    add     5   
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
    sub     19   
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
#(js) if (__dist != 0) {
    sub     17   
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
    add     24   
#(js) } else {
#(js) } else {
    out             # 'y'
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
#(end macro)print("AROTR rotate array\n")
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
#(begin macro)print("  01 02 03 == ")
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
    add     2   
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
    sub     18   
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
    add     3   
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
    sub     19   
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
#(end macro)print("  01 02 03 == ")
push 3
loop
    push grot2
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)    popout8hexa()
#(begin macro)    print(" ") 
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
    drop
#(end macro)    print(" ") 
    arotr grot2
endloop
#(begin macro)print("\n")    
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
#(end macro)print("\n")    

#(begin macro)print("AT / TA at variable action\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     65    
#(js) }
    out             # 'A'
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
    out             # 'T'
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
    add     15   
#(js) } else {
#(js) } else {
    out             # '/'
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
    out             # ' '
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     52   
#(js) } else {
#(js) } else {
    out             # 'T'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     19   
#(js) }
#(js) }
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
    add     86   
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
    sub     21   
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
    sub     9   
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
    sub     8   
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
    add     1   
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
    add     10   
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
    add     17   
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
    add     6   
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
#(js) if (__dist != 0) {
    sub     1   
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
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)print("AT / TA at variable action\n")
var gvar2
at gvar2
    set 9
ta
push gvar2
#(begin macro)print("  09 == ")
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
    add     9   
#(js) } else {
#(js) } else {
    out             # '9'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     25   
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
#(end macro)print("  09 == ")
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")

#(begin macro)print("BF inline BF actions\n")
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
    add     4   
#(js) } else {
#(js) } else {
    out             # 'F'
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
    sub     2   
#(js) }
#(js) }
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
    sub     3   
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
    add     34   
#(js) } else {
#(js) } else {
    out             # 'B'
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
    out             # 'F'
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
    add     17   
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
    add     6   
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
#(js) if (__dist != 0) {
    sub     1   
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
    add     5   
#(js) } else {
#(js) } else {
    out             # 's'
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
#(end macro)print("BF inline BF actions\n")
#(begin macro)print("  09 == ")
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
    add     9   
#(js) } else {
#(js) } else {
    out             # '9'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     25   
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
#(end macro)print("  09 == ")
push    0
bf  +++++++++
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")

#(begin macro)print("BOOL transform stack value to 0 or 1\n")
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
    add     13   
#(js) } else {
#(js) } else {
    out             # 'O'
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
    out             # 'O'
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
    out             # 'L'
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
#(js) if (__dist != 0) {
    sub     17   
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
    add     5   
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
    sub     13   
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
    add     9   
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     5   
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     19   
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
    add     8   
#(js) } else {
#(js) } else {
    out             # 'k'
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
    add     86   
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
    sub     21   
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
    add     9   
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
    sub     5   
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
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)print("BOOL transform stack value to 0 or 1\n")
#(begin macro)print("  10 : 01 == ")
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
#(end macro)print("  10 : 01 == ")
push 10
bool
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")
#(begin macro)print("  0 : 00 == ")
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
#(end macro)print("  0 : 00 == ")
push 0
bool
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input26
#(begin macro)    if_sup("_input" + __idx,9)
    push _input26
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input26
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input26
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")

#(begin macro)print("DEC , decrement head of stack value\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     68    
#(js) }
    out             # 'D'
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
    out             # 'E'
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
    out             # 'C'
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
    sub     13   
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
    add     8   
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
    sub     8   
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
    add     9   
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
    add     72   
#(js) } else {
#(js) } else {
    out             # 'h'
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
    out             # 'e'
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
    out             # 'a'
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
#(js) if (__dist != 0) {
    sub     9   
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     19   
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
    add     8   
#(js) } else {
#(js) } else {
    out             # 'k'
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
    add     86   
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
    sub     21   
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
    add     9   
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
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)print("DEC , decrement head of stack value\n")
#(begin macro)print(" 10 - 1 : 09 == ")
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
    add     13   
#(js) } else {
#(js) } else {
    out             # '-'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     13   
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
    add     9   
#(js) } else {
#(js) } else {
    out             # '9'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     25   
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
#(end macro)print(" 10 - 1 : 09 == ")
push 10
dec
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input27
#(begin macro)    if_sup("_input" + __idx,9)
    push _input27
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input27
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input27
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input28
#(begin macro)    if_sup("_input" + __idx,9)
    push _input28
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input28
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input28
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")

#(begin macro)print("DIFF , 2 value in stack are different\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     68    
#(js) }
    out             # 'D'
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
    out             # 'I'
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
    out             # 'F'
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
    out             # 'F'
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
    sub     18   
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
    add     86   
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
    sub     21   
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
    add     9   
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     19   
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
    add     8   
#(js) } else {
#(js) } else {
    out             # 'k'
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
    sub     13   
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
    sub     13   
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
    add     9   
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
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)print("DIFF , 2 value in stack are different\n")
#(begin macro)print(" 10 <> 10 : 00 == ")
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
    add     28   
#(js) } else {
#(js) } else {
    out             # '<'
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
    out             # '>'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     30   
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
#(end macro)print(" 10 <> 10 : 00 == ")
push 10
push 10
diff
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input29
#(begin macro)    if_sup("_input" + __idx,9)
    push _input29
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input29
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input29
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input30
#(begin macro)    if_sup("_input" + __idx,9)
    push _input30
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input30
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input30
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")
#(begin macro)print(" 10 <> 8 : 01 == ")
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
    add     28   
#(js) } else {
#(js) } else {
    out             # '<'
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
    out             # '>'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     30   
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
    add     24   
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
#(end macro)print(" 10 <> 8 : 01 == ")
push 10
push 8
diff
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input31
#(begin macro)    if_sup("_input" + __idx,9)
    push _input31
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input31
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input31
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input32
#(begin macro)    if_sup("_input" + __idx,9)
    push _input32
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input32
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input32
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")

#(begin macro)print("DIV , div 2 value in stack\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     68    
#(js) }
    out             # 'D'
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
    out             # 'I'
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
    out             # 'V'
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
    sub     18   
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
    add     86   
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
    sub     21   
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
    add     9   
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     19   
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
    add     8   
#(js) } else {
#(js) } else {
    out             # 'k'
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
#(end macro)print("DIV , div 2 value in stack\n")
#(begin macro)print("  5 div 2 = 2 ; 02 == ")
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
    add     21   
#(js) } else {
#(js) } else {
    out             # '5'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     21   
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
    sub     18   
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
    sub     18   
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
    add     27   
#(js) } else {
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
    add     2   
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
    sub     18   
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
#(end macro)print("  5 div 2 = 2 ; 02 == ")
push 5
push 2
div
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input33
#(begin macro)    if_sup("_input" + __idx,9)
    push _input33
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input33
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input33
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input34
#(begin macro)    if_sup("_input" + __idx,9)
    push _input34
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input34
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input34
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")
#(begin macro)print("  5 mod 2 = 1 ; 01 == ")
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
    add     21   
#(js) } else {
#(js) } else {
    out             # '5'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     21   
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
#(js) if (__dist != 0) {
    sub     11   
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
    sub     18   
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
    add     27   
#(js) } else {
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
#(end macro)print("  5 mod 2 = 1 ; 01 == ")
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input35
#(begin macro)    if_sup("_input" + __idx,9)
    push _input35
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input35
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input35
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input36
#(begin macro)    if_sup("_input" + __idx,9)
    push _input36
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input36
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input36
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")

#(begin macro)print("DROP, drop a value in stack\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     68    
#(js) }
    out             # 'D'
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
    out             # 'R'
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
    out             # 'O'
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
    out             # 'P'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     36   
#(js) }
#(js) }
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
    add     14   
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
#(js) if (__move > 0 ) {
    add     1   
#(js) } else {
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
    add     86   
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
    sub     21   
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
    add     9   
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     19   
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
    add     8   
#(js) } else {
#(js) } else {
    out             # 'k'
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
#(end macro)print("DROP, drop a value in stack\n")
push 8
push 5
drop
#(begin macro)print (" push 8; push 5 ; drop  ; 08 == ")
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     24   
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
    add     3   
#(js) } else {
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     21   
#(js) } else {
#(js) } else {
    out             # '5'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     21   
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
    add     27   
#(js) } else {
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
    add     14   
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
#(js) if (__move > 0 ) {
    add     1   
#(js) } else {
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
    add     27   
#(js) } else {
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
    add     8   
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
#(end macro)print (" push 8; push 5 ; drop  ; 08 == ")
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input37
#(begin macro)    if_sup("_input" + __idx,9)
    push _input37
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input37
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input37
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input38
#(begin macro)    if_sup("_input" + __idx,9)
    push _input38
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input38
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input38
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")

#(begin macro)print("DUP,  duplicate head of stack value\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     68    
#(js) }
    out             # 'D'
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
    out             # 'U'
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
    out             # 'P'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     36   
#(js) }
#(js) }
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
    sub     4   
#(js) }
#(js) }
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
    sub     3   
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
    add     72   
#(js) } else {
#(js) } else {
    out             # 'h'
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
    out             # 'e'
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
    out             # 'a'
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
#(js) if (__dist != 0) {
    sub     9   
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     19   
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
    add     8   
#(js) } else {
#(js) } else {
    out             # 'k'
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
    add     86   
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
    sub     21   
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
    add     9   
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
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)print("DUP,  duplicate head of stack value\n")
push 10
dup
#(begin macro)print(" push 10; dup ;  0A == ")
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
    add     5   
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
    sub     2   
#(js) }
#(js) }
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
    sub     11   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    add     11   
#(js) } else {
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
    add     27   
#(js) } else {
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
#(end macro)print(" push 10; dup ;  0A == ")
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input39
#(begin macro)    if_sup("_input" + __idx,9)
    push _input39
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input39
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input39
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input40
#(begin macro)    if_sup("_input" + __idx,9)
    push _input40
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input40
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input40
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")
#(begin macro)print(" then... drop once ; 0A == ")
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
    sub     12   
#(js) }
#(js) }
#(js) } else {
    out             # 'h'
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
    out             # 'e'
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
    out             # 'n'
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
#(js) }
#(js) } else {
    out             # '.'
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
    out             # '.'
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
    add     14   
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
#(js) if (__move > 0 ) {
    add     1   
#(js) } else {
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
#(js) if (__dist != 0) {
    sub     1   
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
    sub     11   
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
    add     2   
#(js) } else {
#(js) } else {
    out             # 'e'
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
    add     27   
#(js) } else {
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
#(end macro)print(" then... drop once ; 0A == ")
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input41
#(begin macro)    if_sup("_input" + __idx,9)
    push _input41
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input41
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input41
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input42
#(begin macro)    if_sup("_input" + __idx,9)
    push _input42
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input42
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input42
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")

#(begin macro)print("EQUAL , 2 value in stack are equal\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     69    
#(js) }
    out             # 'E'
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
    out             # 'Q'
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
    out             # 'U'
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
    out             # 'A'
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
    out             # 'L'
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
    sub     18   
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
    add     86   
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
    sub     21   
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
    add     9   
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
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     19   
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
    add     8   
#(js) } else {
#(js) } else {
    out             # 'k'
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
    sub     13   
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
    set     10    
#(js) }
    out             # 
#(js) __prev  = __ascii;
#(js) }
    drop
#(end macro)print("EQUAL , 2 value in stack are equal\n")
#(begin macro)print(" 10 == 10 : 01 == ")
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
#(end macro)print(" 10 == 10 : 01 == ")
push 10
push 10
equal
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input43
#(begin macro)    if_sup("_input" + __idx,9)
    push _input43
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input43
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input43
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input44
#(begin macro)    if_sup("_input" + __idx,9)
    push _input44
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input44
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input44
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")
#(begin macro)print(" 10 == 8 : 00 == ")
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
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     24   
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
#(end macro)print(" 10 == 8 : 00 == ")
push 10
push 8
equal
#(begin macro)popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input45
#(begin macro)    if_sup("_input" + __idx,9)
    push _input45
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input45
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input45
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input46
#(begin macro)    if_sup("_input" + __idx,9)
    push _input46
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input46
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input46
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
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
#(end macro)print("\n")

#(begin macro)print("IF/FI IF/ELSE/FI ...\n")
    push    0
#(js) var __prev; __prev = 0;
#(js) for (var istr=0; istr < aString.length ; istr++) {
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
    set     73    
#(js) }
    out             # 'I'
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
    out             # 'F'
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
    out             # '/'
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
    out             # 'F'
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
    out             # 'I'
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
    add     41   
#(js) } else {
#(js) } else {
    out             # 'I'
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
    out             # 'F'
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
    out             # '/'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
    add     22   
#(js) } else {
#(js) } else {
    out             # 'E'
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
    out             # 'L'
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
    out             # 'S'
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
    out             # 'E'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     22   
#(js) }
#(js) }
#(js) } else {
    out             # '/'
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
    out             # 'F'
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
    out             # 'I'
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
    add     14   
#(js) } else {
#(js) } else {
    out             # '.'
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
    out             # '.'
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
    drop
#(end macro)print("IF/FI IF/ELSE/FI ...\n")
push 1
if
    push 1
#(begin macro)    print("   01 == ")
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
#(end macro)    print("   01 == ")
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input47
#(begin macro)    if_sup("_input" + __idx,9)
    push _input47
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input47
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input47
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input48
#(begin macro)    if_sup("_input" + __idx,9)
    push _input48
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input48
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input48
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
fi
push 255
if
    push 255
#(begin macro)    print("   FF == ")
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
    add     38   
#(js) } else {
#(js) } else {
    out             # 'F'
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
    out             # 'F'
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
#(end macro)    print("   FF == ")
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input49
#(begin macro)    if_sup("_input" + __idx,9)
    push _input49
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input49
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input49
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input50
#(begin macro)    if_sup("_input" + __idx,9)
    push _input50
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input50
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input50
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
else
#(begin macro)    print("  BUG 255 !!!\n")    
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
    add     34   
#(js) } else {
#(js) } else {
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
    add     3   
#(js) } else {
#(js) } else {
    out             # '5'
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
    out             # '5'
#(js) __prev  = __ascii;
#(js) }
#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);
#(js) var __move; __move = __ascii - __prev;
#(js) var __dist ; __dist = (__move > 0)?__move:-__move;
#(js) if (__dist < __ascii) { // shorter to move
#(js) if (__move > 0 ) {
#(js) if (__dist != 0) {
    sub     21   
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
    add     1   
#(js) } else {
#(js) } else {
    out             # '!'
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
    out             # '!'
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
    out             # '!'
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
#(end macro)    print("  BUG 255 !!!\n")    
fi
push 0
if
#(begin macro)    print("  BUG 0 !!!\n")
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
    add     34   
#(js) } else {
#(js) } else {
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
    add     1   
#(js) } else {
#(js) } else {
    out             # '!'
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
    out             # '!'
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
    out             # '!'
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
#(end macro)    print("  BUG 0 !!!\n")
else
    push 0
#(begin macro)    print("   00 == ")
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
#(end macro)    print("   00 == ")
#(begin macro)    popout8hexa()
    push    16
    div
#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input51
#(begin macro)    if_sup("_input" + __idx,9)
    push _input51
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input51
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input51
    add '0'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'0'")
    fi
    pop out
#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop
#(js) __idx++;
    sbm _input52
#(begin macro)    if_sup("_input" + __idx,9)
    push _input52
    push 9
    sup
    if
#(end macro)    if_sup("_input" + __idx,9)
#(begin macro)        at_add("_input" + __idx, "'7'")
#(begin macro)    at_2("add",a,b)
    at _input52
    add '7'
    ta
#(end macro)    at_2("add",a,b)
#(end macro)        at_add("_input" + __idx, "'7'")
    else
#(begin macro)        at_add("_input" + __idx, "'0'")
#(begin macro)    at_2("add",a,b)
    at _input52
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
fi













