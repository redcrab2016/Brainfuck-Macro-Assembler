# Fibonacci in Brainfuck

# C sample used to generate this program
#int Fibonacci(int n) {
#if(n <= 0) return 0;
#if(n > 0 && n < 3) return 1;
#
#int result = 0;
#int preOldResult = 1;
#int oldResult = 1;
#
#for (int i=2;i<n;i++) {
#    result = preOldResult + oldResult;
#    preOldResult = oldResult;
#    oldResult = result;
#}
#
#return result;}

#(begin include)../include/macro.inc
# Common macros
# scope variables


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
#(begin include)../include/signedX32.inc
# 32 bits signed integer ( 4 bytes)

#(begin include)signedX.inc
# X bytes : X*8 bits signed integer :

# macro varX(name) :declare global X * 8 bits

# macro lvarX(X,name) : declare local X * 8 bits

# macro fixsvX(X,name) : be sure that name is positive if equal to zero

# macro fixsX(X) : be sure to have sign to zero if X*8 bits head of stack value is zero


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


# macro boolvX(X,name) : push on stack the bool(name) X*8 bits

# macro boolX(X) : same as 'bool' but with a X*8 bits value on stack


# macro incvX(X,name) : name = name +1 (X*8 bits)

# macro incX(X) : X*8 bits head of stack value incremented

# macro decvX(X,name) : name-- (X*8 bits)

# macro decX(X) : X*8 bits head of stack value decrement

# macro addviX(X,name, immValue) : name += immediate value

# macro addiX(X,immValue) : X*8 bits head of stack value += immediate value

# macro subviX(X,name, immValue) : name -= immediate value

# macro subiX(X,immValue) : X*8 bits head of stack value -= immediate value

#macro addof() : push A, push B , replaced by Carry, A+B

# macro subof() : push A, push B , replaced by Carry, A-B

# macro addvvvX(X,name, nameA, nameB) : name = nameA + nameB


# macro addvvX(X,name, nameA) : name += nameA

# macro addvX(X,nameA) : head stack += nameA

# macro addX(X) : stack-1 = stack-1 + stack ; stack--

# macro subvvvX(X,name, nameA, nameB) : name = nameA - nameB

# macro subvvX(X,name, nameA) : name -= nameA

# macro subvX(X,nameB) : head stack -= nameB

# macro subX(X) : stack-1 = stack-1 - stack ; stack--

# macro mulvvvX(X,name, nameA, nameB) : name = nameA * nameB

# macro mulvvX(X,name, nameB) : name *= nameB

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

# macro sbmX2(X,name,backward,offset) : sbm a X*8 bit head of stack - (backward X*8 bits value+ offset)

# macro sbmX(X,name,backward) : sbm a X*8 bit head of stack - (backward X*8 bits value)


# upcast macro






# downcast macro








# macro writeX(X,name) : print out the decimal value (signed)

# macro printhexaX(X,name) : print the X*8 bit variable in hexadecimal


# declare temporary X*8 bits value used for signedX.inc macros
#(end include)signedX.inc

# macro var32(name) :declare global 32 bits

# macro lvar32(name) : declare local 32 bits

# macro fixsv32(name) : be sure that name is positive if equal to zero

# macro pushv32(name) : push 32 bits name on stack

# macro push32(immValue) : push immediate32 bits value on the stack

# macro dup32() : duplicate 32bits value on stack

# macro pushsv32(name) : push the sign of the 32 bits variable 'name'

# macro pushcv32(name) : push the carry of the 32 bits variable 'name'

# macro popv32(name) : pop the stack to the 32 bits variable 'name'

# macro popsv32(name) : pop the sign(8 bits 0/1) to the 32 bits variable 'name'

# macro popcv32(name) : pop the carry(8 bit 0/1) to the 32 bits variable 'name'

# macro negv32(name) : name = -name

# macro absv32(name) : name = abs(name)

# macro abs32() : 32 bits head of stack = abs(32 bits head of stack)

# macro neg32() : 32 bits head of stack = - (32 bits head of stack)

# macro setc32() : set 1 to 32 bits head of stack carry

# macro setcv32(name) : set 1 to 32 bits variable 'name' carry

# macro clearc32() : set 0 to 32 bits head of stack carry

# macro clearcv32(name) : set 0 to 32 bits variable 'name' carry

# macro drop32() : drop 32 bits value from stack

# macro reset32() : reset 32 bits value of the head of stack

# macro resetv32(name) : reset 32 bits variable 'name'

# macro set32(immValue) : set 32 bits value on the head of stack

# macro setv32(name, immValue) : set 32 bits immediate value to a 32 bits variable 'name'

# macro fixsv32(name) : be sure to have sign to zero if 32 bits variable 'name' is zero

# macro fixs32() : be sure to have sign to zero if 32 bits head of stack value is zero

# macro bool32() : same as 'bool' but with a 32 bits value on stack

# macro boolv32(name) : push on stack the bool(name) 32 bits

# macro incv32(name) : name = name +1 (32 bits)

# macro inc32() : 32 bits head of stack value incremented

# macro decv32(name) : name-- (32 bits)

# macro dec32() : 32 bits head of stack value decrement

# macro addvi32(name, immValue) : name += immediate value

# macro addi32(immValue) : 32 bits head of stack value += immediate value

# macro subvi32(name, immValue) : name -= immediate value

# macro subi32(immValue) : 32 bits head of stack value -= immediate value

# macro addvvv32(name, nameA, nameB) : name = nameA + nameB

# macro addvv32(name, nameA) : name += nameA

# macro addv32(nameA) : head stack += nameA

# macro add32() : stack-1 = stack-1 + stack ; stack--

# macro subvvv32(name, nameA, nameB) : name = nameA - nameB

# macro subvv32(name, nameA) : name -= nameA

# macro subv32(nameA) : head stack -= nameA

# macro sub32() : stack-1 = stack-1 - stack ; stack--

# macro mulvvv32(name, nameA, nameB) : name = nameA * nameB

# macro mulvv32(name, nameA) : name *= nameA

# macro mulv32(name) : head of stack *= name

# macro mul32() : stack-1 = stack-1 * stack : stack--

# macro equalvv32(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise

# macro equal32() : same as "equal" but with 32 bits value in stack

# macro diffvv32(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise

# macro diff32() : same as "diff" but with 32 bits value in stack

# macro supequalvv32(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise

# macro supequal32() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 32 bits value from stack

# macro infvv32(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise

# macro inf32() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 32 bits value from stack

# macro infequalvv32(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise

# macro infequal32() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 32 bits value from stack

# macro supvv32(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise

# macro sup32() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 32 bits value from stack

# macro divvvvv32(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB

# macro divvv32(nameA, nameB) : Push 2 32 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB

# macro div32() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B

# macro write32(name) : print out the decimal value (signed)

# macro printhexa32(name) : print the 32 bit variable in hexadecimal

#(begin macro)declareTmpX(4)
var  _stringDecimal32_*10

#(end macro)declareTmpX(4)

#(end include)../include/signedX32.inc

#(begin macro)print("Brainfuck Fibonacci with 32bits signed integer\n")
push    0
set     66
out             # 'B'
add     48
out             # 'r'
sub     17
out             # 'a'
add     8
out             # 'i'
add     5
out             # 'n'
sub     8
out             # 'f'
add     15
out             # 'u'
sub     18
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     38
out             # 'F'
add     35
out             # 'i'
sub     7
out             # 'b'
add     13
out             # 'o'
sub     1
out             # 'n'
sub     13
out             # 'a'
add     2
out             # 'c'
out             # 'c'
add     6
out             # 'i'
set     32
out             # ' '
add     87
out             # 'w'
sub     14
out             # 'i'
add     11
out             # 't'
sub     12
out             # 'h'
set     32
out             # ' '
add     19
out             # '3'
sub     1
out             # '2'
add     48
out             # 'b'
add     7
out             # 'i'
add     11
out             # 't'
sub     1
out             # 's'
set     32
out             # ' '
add     83
out             # 's'
sub     10
out             # 'i'
sub     2
out             # 'g'
add     7
out             # 'n'
sub     9
out             # 'e'
sub     1
out             # 'd'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
add     6
out             # 't'
sub     15
out             # 'e'
add     2
out             # 'g'
sub     2
out             # 'e'
add     13
out             # 'r'
set     10
out             # 
drop
#(end macro)print("Brainfuck Fibonacci with 32bits signed integer\n")
#(begin macro)print("Slowness is due to the memory to decimal display routine\n")
push    0
set     83
out             # 'S'
add     25
out             # 'l'
add     3
out             # 'o'
add     8
out             # 'w'
sub     9
out             # 'n'
sub     9
out             # 'e'
add     14
out             # 's'
out             # 's'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     68
out             # 'd'
add     17
out             # 'u'
sub     16
out             # 'e'
set     32
out             # ' '
add     84
out             # 't'
sub     5
out             # 'o'
set     32
out             # ' '
add     84
out             # 't'
sub     12
out             # 'h'
sub     3
out             # 'e'
set     32
out             # ' '
add     77
out             # 'm'
sub     8
out             # 'e'
add     8
out             # 'm'
add     2
out             # 'o'
add     3
out             # 'r'
add     7
out             # 'y'
set     32
out             # ' '
add     84
out             # 't'
sub     5
out             # 'o'
set     32
out             # ' '
add     68
out             # 'd'
add     1
out             # 'e'
sub     2
out             # 'c'
add     6
out             # 'i'
add     4
out             # 'm'
sub     12
out             # 'a'
add     11
out             # 'l'
set     32
out             # ' '
add     68
out             # 'd'
add     5
out             # 'i'
add     10
out             # 's'
sub     3
out             # 'p'
sub     4
out             # 'l'
sub     11
out             # 'a'
add     24
out             # 'y'
set     32
out             # ' '
add     82
out             # 'r'
sub     3
out             # 'o'
add     6
out             # 'u'
sub     1
out             # 't'
sub     11
out             # 'i'
add     5
out             # 'n'
sub     9
out             # 'e'
set     10
out             # 
drop
#(end macro)print("Slowness is due to the memory to decimal display routine\n")
#(begin macro)print("Show Fibonacci numbers from 0 to 39\n\n")
push    0
set     83
out             # 'S'
add     21
out             # 'h'
add     7
out             # 'o'
add     8
out             # 'w'
set     32
out             # ' '
add     38
out             # 'F'
add     35
out             # 'i'
sub     7
out             # 'b'
add     13
out             # 'o'
sub     1
out             # 'n'
sub     13
out             # 'a'
add     2
out             # 'c'
out             # 'c'
add     6
out             # 'i'
set     32
out             # ' '
add     78
out             # 'n'
add     7
out             # 'u'
sub     8
out             # 'm'
sub     11
out             # 'b'
add     3
out             # 'e'
add     13
out             # 'r'
add     1
out             # 's'
set     32
out             # ' '
add     70
out             # 'f'
add     12
out             # 'r'
sub     3
out             # 'o'
sub     2
out             # 'm'
set     32
out             # ' '
add     16
out             # '0'
sub     16
out             # ' '
add     84
out             # 't'
sub     5
out             # 'o'
set     32
out             # ' '
add     19
out             # '3'
add     6
out             # '9'
set     10
out             # 
out             # 
drop
#(end macro)print("Show Fibonacci numbers from 0 to 39\n\n")

#(begin macro)var32   fiboN
#(begin macro)varX(4,name)
var fiboN_0    # 0 byte of fiboN
var fiboN_1    # 1 byte of fiboN
var fiboN_2    # 2 byte of fiboN
var fiboN_3    # 3 byte of fiboN
var fiboN_s    # Sign of fiboN
var fiboN_c    # carry of fiboN
#(end macro)varX(4,name)
#(end macro)var32   fiboN
#(begin macro)setv32  fiboN,  0
#(begin macro)setvX(4,name, immValue)
at fiboN_0
  #(begin macro)setX(X,immValue)
  bf <
  bf <
  bf <
  bf <
  bf <
  reset
  bf  >
  set 0
  bf >
  set    0
  bf >
  set    0
  bf >
  set    0
  bf >
  set    0
  #(end macro)setX(X,immValue)
ta
#(end macro)setvX(4,name, immValue)
#(end macro)setv32  fiboN,  0
push    1
sbm     looper
while
  #(begin macro)pushv32 fiboN
  #(begin macro)pushvX(4,name)
  push    fiboN_c
  push    fiboN_s
  push    fiboN_3
  push    fiboN_2
  push    fiboN_1
  push    fiboN_0
  #(end macro)pushvX(4,name)
  #(end macro)pushv32 fiboN
  #(begin macro)push32  40   # from 0 to 39
  #(begin macro)pushX(4, immValue)
  push    0
  push    0
  push    0
  push    0
  push    0
  push    40
  #(end macro)pushX(4, immValue)
  #(end macro)push32  40   # from 0 to 39
  #(begin macro)diff32
  #(begin macro)diffX(4)
  #(begin macro)sbmX(X,"_diffXA" + _diffX, 1)
  #(begin macro)sbmX2(X,name,backward,0)
  sbm _diffXA1_0 - 6
  sbm _diffXA1_1 - 7
  sbm _diffXA1_2 - 8
  sbm _diffXA1_3 - 9
  sbm _diffXA1_s - 10
  sbm _diffXA1_c - 11
  #(end macro)sbmX2(X,name,backward,0)
  #(end macro)sbmX(X,"_diffXA" + _diffX, 1)
  #(begin macro)sbmX(X,"_diffXB" + _diffX, 0)
  #(begin macro)sbmX2(X,name,backward,0)
  sbm _diffXB1_0 - 0
  sbm _diffXB1_1 - 1
  sbm _diffXB1_2 - 2
  sbm _diffXB1_3 - 3
  sbm _diffXB1_s - 4
  sbm _diffXB1_c - 5
  #(end macro)sbmX2(X,name,backward,0)
  #(end macro)sbmX(X,"_diffXB" + _diffX, 0)
  sbm _diffX1 - 11
  #(begin macro)diffvvX(X,"_diffXA" + _diffX, "_diffXB" + _diffX)
  #(begin macro)equalvvX(X,nameA, nameB)
  push _diffXA1_s
  push _diffXB1_s
  equal
  push _diffXA1_0
  push _diffXB1_0
  equal
  push _diffXA1_1
  push _diffXB1_1
  equal
  push _diffXA1_2
  push _diffXB1_2
  equal
  push _diffXA1_3
  push _diffXB1_3
  equal
  and
  and
  and
  and
  #(end macro)equalvvX(X,nameA, nameB)
  not
  #(end macro)diffvvX(X,"_diffXA" + _diffX, "_diffXB" + _diffX)
  pop _diffX1
  drop
  drop
  drop
  drop
  drop
  drop
  drop
  drop
  drop
  drop
  drop
  #(end macro)diffX(4)
  #(end macro)diff32
  if
    #(begin macro)scope_begin
    #(end macro)scope_begin
    #(begin macro)lvar32  N
    #(begin macro)lvarX(4,name)
    #(begin macro)lvar(name + "_c",0)
    push 0
    sbm N_c
    #(end macro)lvar(name + "_c",0)
    #(begin macro)lvar(name + "_s",0)
    push 0
    sbm N_s
    #(end macro)lvar(name + "_s",0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm N_3
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm N_2
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm N_1
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm N_0
    #(end macro)lvar(name + "_"+ xx1,0)
    #(end macro)lvarX(4,name)
    #(end macro)lvar32  N
    #(begin macro)lvar32  cnt
    #(begin macro)lvarX(4,name)
    #(begin macro)lvar(name + "_c",0)
    push 0
    sbm cnt_c
    #(end macro)lvar(name + "_c",0)
    #(begin macro)lvar(name + "_s",0)
    push 0
    sbm cnt_s
    #(end macro)lvar(name + "_s",0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm cnt_3
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm cnt_2
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm cnt_1
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm cnt_0
    #(end macro)lvar(name + "_"+ xx1,0)
    #(end macro)lvarX(4,name)
    #(end macro)lvar32  cnt
    #(begin macro)lvar32  result
    #(begin macro)lvarX(4,name)
    #(begin macro)lvar(name + "_c",0)
    push 0
    sbm result_c
    #(end macro)lvar(name + "_c",0)
    #(begin macro)lvar(name + "_s",0)
    push 0
    sbm result_s
    #(end macro)lvar(name + "_s",0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm result_3
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm result_2
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm result_1
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm result_0
    #(end macro)lvar(name + "_"+ xx1,0)
    #(end macro)lvarX(4,name)
    #(end macro)lvar32  result
    #(begin macro)lvar32  oldResult
    #(begin macro)lvarX(4,name)
    #(begin macro)lvar(name + "_c",0)
    push 0
    sbm oldResult_c
    #(end macro)lvar(name + "_c",0)
    #(begin macro)lvar(name + "_s",0)
    push 0
    sbm oldResult_s
    #(end macro)lvar(name + "_s",0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm oldResult_3
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm oldResult_2
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm oldResult_1
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm oldResult_0
    #(end macro)lvar(name + "_"+ xx1,0)
    #(end macro)lvarX(4,name)
    #(end macro)lvar32  oldResult
    #(begin macro)lvar32  preOldResult
    #(begin macro)lvarX(4,name)
    #(begin macro)lvar(name + "_c",0)
    push 0
    sbm preOldResult_c
    #(end macro)lvar(name + "_c",0)
    #(begin macro)lvar(name + "_s",0)
    push 0
    sbm preOldResult_s
    #(end macro)lvar(name + "_s",0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm preOldResult_3
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm preOldResult_2
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm preOldResult_1
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm preOldResult_0
    #(end macro)lvar(name + "_"+ xx1,0)
    #(end macro)lvarX(4,name)
    #(end macro)lvar32  preOldResult
    
    #(begin macro)pushv32 fiboN
    #(begin macro)pushvX(4,name)
    push    fiboN_c
    push    fiboN_s
    push    fiboN_3
    push    fiboN_2
    push    fiboN_1
    push    fiboN_0
    #(end macro)pushvX(4,name)
    #(end macro)pushv32 fiboN
    #(begin macro)popv32  N
    #(begin macro)popvX(4,name)
    pop     N_0
    pop     N_1
    pop     N_2
    pop     N_3
    pop     N_s
    pop     N_c
    #(end macro)popvX(4,name)
    #(end macro)popv32  N
    
    #(begin macro)pushv32 N
    #(begin macro)pushvX(4,name)
    push    N_c
    push    N_s
    push    N_3
    push    N_2
    push    N_1
    push    N_0
    #(end macro)pushvX(4,name)
    #(end macro)pushv32 N
    #(begin macro)push32  0
    #(begin macro)pushX(4, immValue)
    push    0
    push    0
    push    0
    push    0
    push    0
    push    0
    #(end macro)pushX(4, immValue)
    #(end macro)push32  0
    #(begin macro)infequal32
    #(begin macro)infequalX(4)
    #(begin macro)sbmX(X, "_infequalXA" + _infequalX, 1)
    #(begin macro)sbmX2(X,name,backward,0)
    sbm _infequalXA1_0 - 6
    sbm _infequalXA1_1 - 7
    sbm _infequalXA1_2 - 8
    sbm _infequalXA1_3 - 9
    sbm _infequalXA1_s - 10
    sbm _infequalXA1_c - 11
    #(end macro)sbmX2(X,name,backward,0)
    #(end macro)sbmX(X, "_infequalXA" + _infequalX, 1)
    #(begin macro)sbmX(X, "_infequalXB" + _infequalX, 0)
    #(begin macro)sbmX2(X,name,backward,0)
    sbm _infequalXB1_0 - 0
    sbm _infequalXB1_1 - 1
    sbm _infequalXB1_2 - 2
    sbm _infequalXB1_3 - 3
    sbm _infequalXB1_s - 4
    sbm _infequalXB1_c - 5
    #(end macro)sbmX2(X,name,backward,0)
    #(end macro)sbmX(X, "_infequalXB" + _infequalX, 0)
    sbm _infequalX1 - 11
    #(begin macro)infequalvvX(X, "_infequalXA" + _infequalX, "_infequalXB" + _infequalX)
    #(begin macro)supequalvvX(X,nameB, nameA)
    push 0
    sbm _supequalvvX1
    #(begin macro)scope_begin()
    #(end macro)scope_begin()
    #(begin macro)lvarX(X, "_supequalvvXName" + _supequalvvX)
    #(begin macro)lvar(name + "_c",0)
    push 0
    sbm _supequalvvXName1_c
    #(end macro)lvar(name + "_c",0)
    #(begin macro)lvar(name + "_s",0)
    push 0
    sbm _supequalvvXName1_s
    #(end macro)lvar(name + "_s",0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm _supequalvvXName1_3
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm _supequalvvXName1_2
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm _supequalvvXName1_1
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm _supequalvvXName1_0
    #(end macro)lvar(name + "_"+ xx1,0)
    #(end macro)lvarX(X, "_supequalvvXName" + _supequalvvX)
    #(begin macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
    #(begin macro)scope_begin()
    #(end macro)scope_begin()
    #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
    #(begin macro)lvar(name + "_c",0)
    push 0
    sbm _negNameB1_c
    #(end macro)lvar(name + "_c",0)
    #(begin macro)lvar(name + "_s",0)
    push 0
    sbm _negNameB1_s
    #(end macro)lvar(name + "_s",0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm _negNameB1_3
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm _negNameB1_2
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm _negNameB1_1
    #(end macro)lvar(name + "_"+ xx1,0)
    #(begin macro)lvar(name + "_"+ xx1,0)
    push 0
    sbm _negNameB1_0
    #(end macro)lvar(name + "_"+ xx1,0)
    #(end macro)lvarX(X,"_negNameB" + _subvvvX)
    #(begin macro)pushvX(X,nameB)
    push    _infequalXA1_c
    push    _infequalXA1_s
    push    _infequalXA1_3
    push    _infequalXA1_2
    push    _infequalXA1_1
    push    _infequalXA1_0
    #(end macro)pushvX(X,nameB)
    #(begin macro)popvX(X,"_negNameB" + _subvvvX)
    pop     _negNameB1_0
    pop     _negNameB1_1
    pop     _negNameB1_2
    pop     _negNameB1_3
    pop     _negNameB1_s
    pop     _negNameB1_c
    #(end macro)popvX(X,"_negNameB" + _subvvvX)
    #(begin macro)negvX(X,"_negNameB" + _subvvvX)
    push    _negNameB1_s
    dec
    bool
    dup
    if    # if name is now negative
      #(begin macro)if_equal(name +"_"+xx, 0)
      push _negNameB1_0
      push 0
      equal
      if
        #(end macro)if_equal(name +"_"+xx, 0)
        #(begin macro)if_equal(name +"_"+xx, 0)
        push _negNameB1_1
        push 0
        equal
        if
          #(end macro)if_equal(name +"_"+xx, 0)
          #(begin macro)if_equal(name +"_"+xx, 0)
          push _negNameB1_2
          push 0
          equal
          if
            #(end macro)if_equal(name +"_"+xx, 0)
            #(begin macro)if_equal(name +"_"+xx, 0)
            push _negNameB1_3
            push 0
            equal
            if
              #(end macro)if_equal(name +"_"+xx, 0)
              #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
              #(begin macro)at_1("reset",a)
              #(begin macro)at_2(ope,a,"")
              at _negNameB1_s
                reset 
              ta
              #(end macro)at_2(ope,a,"")
              #(end macro)at_1("reset",a)
              #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
            fi
          fi
        fi
      fi
    fi
    pop     _negNameB1_s
    #(end macro)negvX(X,"_negNameB" + _subvvvX)
    #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
    push    _infequalXB1_s
    push    _negNameB1_s
    or
    not
    push    _infequalXB1_s
    push    _negNameB1_s
    and
    or
    if      # nameA and nameB are both positive or negative
      push    _infequalXB1_s
      pop     _supequalvvXName1_s    # name has same sign of nameA and nameB
      push    0
      push    _infequalXB1_0
      #(begin macro)addof()
      sbm _addofb1
      sbm _addofa1 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc1
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao1
      while
        push _addofa1
        if
          at _addofa1
            dec
          ta
          at _addofb1
            inc
          ta
          push _addofb1
          not
          if
            at _addofc1
              set 1
            ta
          fi
        else
          at _loopao1
            reset
          ta
        fi
      wend
      push _addofc1
      if
        at _addofa1
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      pop     _supequalvvXName1_0
      push    _negNameB1_0
      #(begin macro)addof()
      sbm _addofb2
      sbm _addofa2 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc2
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao2
      while
        push _addofa2
        if
          at _addofa2
            dec
          ta
          at _addofb2
            inc
          ta
          push _addofb2
          not
          if
            at _addofc2
              set 1
            ta
          fi
        else
          at _loopao2
            reset
          ta
        fi
      wend
      push _addofc2
      if
        at _addofa2
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      push    _supequalvvXName1_0
      #(begin macro)addof()
      sbm _addofb3
      sbm _addofa3 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc3
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao3
      while
        push _addofa3
        if
          at _addofa3
            dec
          ta
          at _addofb3
            inc
          ta
          push _addofb3
          not
          if
            at _addofc3
              set 1
            ta
          fi
        else
          at _loopao3
            reset
          ta
        fi
      wend
      push _addofc3
      if
        at _addofa3
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      pop     _supequalvvXName1_0
      add
      push    _infequalXB1_1
      #(begin macro)addof()
      sbm _addofb4
      sbm _addofa4 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc4
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao4
      while
        push _addofa4
        if
          at _addofa4
            dec
          ta
          at _addofb4
            inc
          ta
          push _addofb4
          not
          if
            at _addofc4
              set 1
            ta
          fi
        else
          at _loopao4
            reset
          ta
        fi
      wend
      push _addofc4
      if
        at _addofa4
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      pop     _supequalvvXName1_1
      push    _negNameB1_1
      #(begin macro)addof()
      sbm _addofb5
      sbm _addofa5 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc5
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao5
      while
        push _addofa5
        if
          at _addofa5
            dec
          ta
          at _addofb5
            inc
          ta
          push _addofb5
          not
          if
            at _addofc5
              set 1
            ta
          fi
        else
          at _loopao5
            reset
          ta
        fi
      wend
      push _addofc5
      if
        at _addofa5
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      push    _supequalvvXName1_1
      #(begin macro)addof()
      sbm _addofb6
      sbm _addofa6 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc6
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao6
      while
        push _addofa6
        if
          at _addofa6
            dec
          ta
          at _addofb6
            inc
          ta
          push _addofb6
          not
          if
            at _addofc6
              set 1
            ta
          fi
        else
          at _loopao6
            reset
          ta
        fi
      wend
      push _addofc6
      if
        at _addofa6
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      pop     _supequalvvXName1_1
      add
      push    _infequalXB1_2
      #(begin macro)addof()
      sbm _addofb7
      sbm _addofa7 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc7
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao7
      while
        push _addofa7
        if
          at _addofa7
            dec
          ta
          at _addofb7
            inc
          ta
          push _addofb7
          not
          if
            at _addofc7
              set 1
            ta
          fi
        else
          at _loopao7
            reset
          ta
        fi
      wend
      push _addofc7
      if
        at _addofa7
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      pop     _supequalvvXName1_2
      push    _negNameB1_2
      #(begin macro)addof()
      sbm _addofb8
      sbm _addofa8 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc8
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao8
      while
        push _addofa8
        if
          at _addofa8
            dec
          ta
          at _addofb8
            inc
          ta
          push _addofb8
          not
          if
            at _addofc8
              set 1
            ta
          fi
        else
          at _loopao8
            reset
          ta
        fi
      wend
      push _addofc8
      if
        at _addofa8
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      push    _supequalvvXName1_2
      #(begin macro)addof()
      sbm _addofb9
      sbm _addofa9 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc9
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao9
      while
        push _addofa9
        if
          at _addofa9
            dec
          ta
          at _addofb9
            inc
          ta
          push _addofb9
          not
          if
            at _addofc9
              set 1
            ta
          fi
        else
          at _loopao9
            reset
          ta
        fi
      wend
      push _addofc9
      if
        at _addofa9
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      pop     _supequalvvXName1_2
      add
      push    _infequalXB1_3
      #(begin macro)addof()
      sbm _addofb10
      sbm _addofa10 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc10
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao10
      while
        push _addofa10
        if
          at _addofa10
            dec
          ta
          at _addofb10
            inc
          ta
          push _addofb10
          not
          if
            at _addofc10
              set 1
            ta
          fi
        else
          at _loopao10
            reset
          ta
        fi
      wend
      push _addofc10
      if
        at _addofa10
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      pop     _supequalvvXName1_3
      push    _negNameB1_3
      #(begin macro)addof()
      sbm _addofb11
      sbm _addofa11 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc11
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao11
      while
        push _addofa11
        if
          at _addofa11
            dec
          ta
          at _addofb11
            inc
          ta
          push _addofb11
          not
          if
            at _addofc11
              set 1
            ta
          fi
        else
          at _loopao11
            reset
          ta
        fi
      wend
      push _addofc11
      if
        at _addofa11
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      push    _supequalvvXName1_3
      #(begin macro)addof()
      sbm _addofb12
      sbm _addofa12 - 1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_addofc"+_addof ,0)
      push 0
      sbm _addofc12
      #(end macro)lvar("_addofc"+_addof ,0)
      push 1
      sbm _loopao12
      while
        push _addofa12
        if
          at _addofa12
            dec
          ta
          at _addofb12
            inc
          ta
          push _addofb12
          not
          if
            at _addofc12
              set 1
            ta
          fi
        else
          at _loopao12
            reset
          ta
        fi
      wend
      push _addofc12
      if
        at _addofa12
          set 1
        ta
      fi
      #(begin macro)scope_end()
      drop
      #(end macro)scope_end()
      #(end macro)addof()
      pop     _supequalvvXName1_3
      add
      pop     _supequalvvXName1_c
    else  # nameA has a different sign of nameB
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
      push 0
      sbm _asupb1
      #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
      #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
      push 0
      sbm _aequb1
      #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
      push    _infequalXB1_3
      push    _negNameB1_3
      sup
      if
        at _asupb1
          set 1
        ta
      else
        push    _infequalXB1_3
        push    _negNameB1_3
        diff
        if
          at _asupb1
            reset
          ta
        else
          push    _infequalXB1_2
          push    _negNameB1_2
          sup
          if
            at _asupb1
              set 1
            ta
          else
            push    _infequalXB1_2
            push    _negNameB1_2
            diff
            if
              at _asupb1
                reset
              ta
            else
              push    _infequalXB1_1
              push    _negNameB1_1
              sup
              if
                at _asupb1
                  set 1
                ta
              else
                push    _infequalXB1_1
                push    _negNameB1_1
                diff
                if
                  at _asupb1
                    reset
                  ta
                else
                  push    _infequalXB1_0
                  push    _negNameB1_0
                  sup
                  if
                    at _asupb1
                      set 1
                    ta
                  else
                    push    _infequalXB1_0
                    push    _negNameB1_0
                    diff
                    if
                      at _asupb1
                        reset
                      ta
                    else
                      at _aequb1
                        set 1
                      ta
                    fi
                  fi
                fi
              fi
            fi
          fi
        fi
      fi
      push _asupb1
      if  # absA > absB : do  absA-absB with sign of A
        # print("absA > absB\n")
        push    _infequalXB1_s
        pop     _supequalvvXName1_s    # name has same sign of nameA
        
        push    0
        sbm     _addvvvXCarry1
        push    _infequalXB1_0
        push    _negNameB1_0
        #(begin macro)subof()
        sbm _subofb1
        sbm _subofa1 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_subofc"+_subof ,0)
        push 0
        sbm _subofc1
        #(end macro)lvar("_subofc"+_subof ,0)
        push 1
        sbm _loopso1
        while
          push _subofb1
          if
            at _subofb1
              dec
            ta
            at _subofa1
              dec
            ta
            push _subofa1
            inc
            not
            if
              at _subofc1
                set 1
              ta
            fi
          else
            at _loopso1
              reset
            ta
          fi
        wend
        push _subofc1
        if
          at _subofb1
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        swap
        #(end macro)subof()
        push    _addvvvXCarry1
        #(begin macro)subof()
        sbm _subofb2
        sbm _subofa2 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_subofc"+_subof ,0)
        push 0
        sbm _subofc2
        #(end macro)lvar("_subofc"+_subof ,0)
        push 1
        sbm _loopso2
        while
          push _subofb2
          if
            at _subofb2
              dec
            ta
            at _subofa2
              dec
            ta
            push _subofa2
            inc
            not
            if
              at _subofc2
                set 1
              ta
            fi
          else
            at _loopso2
              reset
            ta
          fi
        wend
        push _subofc2
        if
          at _subofb2
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        swap
        #(end macro)subof()
        pop     _supequalvvXName1_0
        add
        pop     _addvvvXCarry1
        push    _infequalXB1_1
        push    _negNameB1_1
        #(begin macro)subof()
        sbm _subofb3
        sbm _subofa3 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_subofc"+_subof ,0)
        push 0
        sbm _subofc3
        #(end macro)lvar("_subofc"+_subof ,0)
        push 1
        sbm _loopso3
        while
          push _subofb3
          if
            at _subofb3
              dec
            ta
            at _subofa3
              dec
            ta
            push _subofa3
            inc
            not
            if
              at _subofc3
                set 1
              ta
            fi
          else
            at _loopso3
              reset
            ta
          fi
        wend
        push _subofc3
        if
          at _subofb3
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        swap
        #(end macro)subof()
        push    _addvvvXCarry1
        #(begin macro)subof()
        sbm _subofb4
        sbm _subofa4 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_subofc"+_subof ,0)
        push 0
        sbm _subofc4
        #(end macro)lvar("_subofc"+_subof ,0)
        push 1
        sbm _loopso4
        while
          push _subofb4
          if
            at _subofb4
              dec
            ta
            at _subofa4
              dec
            ta
            push _subofa4
            inc
            not
            if
              at _subofc4
                set 1
              ta
            fi
          else
            at _loopso4
              reset
            ta
          fi
        wend
        push _subofc4
        if
          at _subofb4
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        swap
        #(end macro)subof()
        pop     _supequalvvXName1_1
        add
        pop     _addvvvXCarry1
        push    _infequalXB1_2
        push    _negNameB1_2
        #(begin macro)subof()
        sbm _subofb5
        sbm _subofa5 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_subofc"+_subof ,0)
        push 0
        sbm _subofc5
        #(end macro)lvar("_subofc"+_subof ,0)
        push 1
        sbm _loopso5
        while
          push _subofb5
          if
            at _subofb5
              dec
            ta
            at _subofa5
              dec
            ta
            push _subofa5
            inc
            not
            if
              at _subofc5
                set 1
              ta
            fi
          else
            at _loopso5
              reset
            ta
          fi
        wend
        push _subofc5
        if
          at _subofb5
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        swap
        #(end macro)subof()
        push    _addvvvXCarry1
        #(begin macro)subof()
        sbm _subofb6
        sbm _subofa6 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_subofc"+_subof ,0)
        push 0
        sbm _subofc6
        #(end macro)lvar("_subofc"+_subof ,0)
        push 1
        sbm _loopso6
        while
          push _subofb6
          if
            at _subofb6
              dec
            ta
            at _subofa6
              dec
            ta
            push _subofa6
            inc
            not
            if
              at _subofc6
                set 1
              ta
            fi
          else
            at _loopso6
              reset
            ta
          fi
        wend
        push _subofc6
        if
          at _subofb6
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        swap
        #(end macro)subof()
        pop     _supequalvvXName1_2
        add
        pop     _addvvvXCarry1
        push    _infequalXB1_3
        push    _negNameB1_3
        #(begin macro)subof()
        sbm _subofb7
        sbm _subofa7 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_subofc"+_subof ,0)
        push 0
        sbm _subofc7
        #(end macro)lvar("_subofc"+_subof ,0)
        push 1
        sbm _loopso7
        while
          push _subofb7
          if
            at _subofb7
              dec
            ta
            at _subofa7
              dec
            ta
            push _subofa7
            inc
            not
            if
              at _subofc7
                set 1
              ta
            fi
          else
            at _loopso7
              reset
            ta
          fi
        wend
        push _subofc7
        if
          at _subofb7
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        swap
        #(end macro)subof()
        push    _addvvvXCarry1
        #(begin macro)subof()
        sbm _subofb8
        sbm _subofa8 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_subofc"+_subof ,0)
        push 0
        sbm _subofc8
        #(end macro)lvar("_subofc"+_subof ,0)
        push 1
        sbm _loopso8
        while
          push _subofb8
          if
            at _subofb8
              dec
            ta
            at _subofa8
              dec
            ta
            push _subofa8
            inc
            not
            if
              at _subofc8
                set 1
              ta
            fi
          else
            at _loopso8
              reset
            ta
          fi
        wend
        push _subofc8
        if
          at _subofb8
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        swap
        #(end macro)subof()
        pop     _supequalvvXName1_3
        add
        pop     _addvvvXCarry1
        pop     _supequalvvXName1_c
      else # absB >= absA :
        push    _aequb1
        if # absA == absB , then name =0 (opposite sign then sum is zero)
          #print("absA == absB\n")
          #(begin macro)setvX(X,name,0)
          at _supequalvvXName1_0
            #(begin macro)setX(X,immValue)
            bf <
            bf <
            bf <
            bf <
            bf <
            reset
            bf  >
            set 0
            bf >
            set    0
            bf >
            set    0
            bf >
            set    0
            bf >
            set    0
            #(end macro)setX(X,immValue)
          ta
          #(end macro)setvX(X,name,0)
        else # absA < absB : do   absB-absA with sign of B
          #print("absA < absB\n")
          push    _negNameB1_s
          pop     _supequalvvXName1_s    # name has same sign of nameB
          
          push    0
          sbm     _addvvvXCarry1
          push    _negNameB1_0
          push    _infequalXB1_0
          #(begin macro)subof()
          sbm _subofb9
          sbm _subofa9 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc9
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso9
          while
            push _subofb9
            if
              at _subofb9
                dec
              ta
              at _subofa9
                dec
              ta
              push _subofa9
              inc
              not
              if
                at _subofc9
                  set 1
                ta
              fi
            else
              at _loopso9
                reset
              ta
            fi
          wend
          push _subofc9
          if
            at _subofb9
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          push    _addvvvXCarry1
          #(begin macro)subof()
          sbm _subofb10
          sbm _subofa10 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc10
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso10
          while
            push _subofb10
            if
              at _subofb10
                dec
              ta
              at _subofa10
                dec
              ta
              push _subofa10
              inc
              not
              if
                at _subofc10
                  set 1
                ta
              fi
            else
              at _loopso10
                reset
              ta
            fi
          wend
          push _subofc10
          if
            at _subofb10
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          pop     _supequalvvXName1_0
          add
          pop     _addvvvXCarry1
          push    _negNameB1_1
          push    _infequalXB1_1
          #(begin macro)subof()
          sbm _subofb11
          sbm _subofa11 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc11
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso11
          while
            push _subofb11
            if
              at _subofb11
                dec
              ta
              at _subofa11
                dec
              ta
              push _subofa11
              inc
              not
              if
                at _subofc11
                  set 1
                ta
              fi
            else
              at _loopso11
                reset
              ta
            fi
          wend
          push _subofc11
          if
            at _subofb11
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          push    _addvvvXCarry1
          #(begin macro)subof()
          sbm _subofb12
          sbm _subofa12 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc12
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso12
          while
            push _subofb12
            if
              at _subofb12
                dec
              ta
              at _subofa12
                dec
              ta
              push _subofa12
              inc
              not
              if
                at _subofc12
                  set 1
                ta
              fi
            else
              at _loopso12
                reset
              ta
            fi
          wend
          push _subofc12
          if
            at _subofb12
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          pop     _supequalvvXName1_1
          add
          pop     _addvvvXCarry1
          push    _negNameB1_2
          push    _infequalXB1_2
          #(begin macro)subof()
          sbm _subofb13
          sbm _subofa13 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc13
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso13
          while
            push _subofb13
            if
              at _subofb13
                dec
              ta
              at _subofa13
                dec
              ta
              push _subofa13
              inc
              not
              if
                at _subofc13
                  set 1
                ta
              fi
            else
              at _loopso13
                reset
              ta
            fi
          wend
          push _subofc13
          if
            at _subofb13
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          push    _addvvvXCarry1
          #(begin macro)subof()
          sbm _subofb14
          sbm _subofa14 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc14
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso14
          while
            push _subofb14
            if
              at _subofb14
                dec
              ta
              at _subofa14
                dec
              ta
              push _subofa14
              inc
              not
              if
                at _subofc14
                  set 1
                ta
              fi
            else
              at _loopso14
                reset
              ta
            fi
          wend
          push _subofc14
          if
            at _subofb14
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          pop     _supequalvvXName1_2
          add
          pop     _addvvvXCarry1
          push    _negNameB1_3
          push    _infequalXB1_3
          #(begin macro)subof()
          sbm _subofb15
          sbm _subofa15 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc15
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso15
          while
            push _subofb15
            if
              at _subofb15
                dec
              ta
              at _subofa15
                dec
              ta
              push _subofa15
              inc
              not
              if
                at _subofc15
                  set 1
                ta
              fi
            else
              at _loopso15
                reset
              ta
            fi
          wend
          push _subofc15
          if
            at _subofb15
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          push    _addvvvXCarry1
          #(begin macro)subof()
          sbm _subofb16
          sbm _subofa16 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc16
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso16
          while
            push _subofb16
            if
              at _subofb16
                dec
              ta
              at _subofa16
                dec
              ta
              push _subofa16
              inc
              not
              if
                at _subofc16
                  set 1
                ta
              fi
            else
              at _loopso16
                reset
              ta
            fi
          wend
          push _subofc16
          if
            at _subofb16
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          pop     _supequalvvXName1_3
          add
          pop     _addvvvXCarry1
          pop     _supequalvvXName1_c
        fi
      fi
      #(begin macro)scope_end()
      drop
      drop
      #(end macro)scope_end()
    fi
    #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
    #(begin macro)scope_end()
    drop
    drop
    drop
    drop
    drop
    drop
    #(end macro)scope_end()
    #(end macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
    push _supequalvvXName1_s
    not
    pop _supequalvvX1
    #(begin macro)scope_end()
    drop
    drop
    drop
    drop
    drop
    drop
    #(end macro)scope_end()
    #(end macro)supequalvvX(X,nameB, nameA)
    #(end macro)infequalvvX(X, "_infequalXA" + _infequalX, "_infequalXB" + _infequalX)
    pop _infequalX1
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    #(end macro)infequalX(4)
    #(end macro)infequal32
    if
      #(begin macro)print("f[")
      push    0
      set     102
      out             # 'f'
      sub     11
      out             # '['
      drop
      #(end macro)print("f[")
      #(begin macro)write32 N
      #(begin macro)writeX(4,name)
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvar("writeXprefixzero" + _writeX, 1)
      push 1
      sbm writeXprefixzero1
      #(end macro)lvar("writeXprefixzero" + _writeX, 1)
      #(begin macro)lvarX(X,"writeX_A"+_writeX)
      #(begin macro)lvar(name + "_c",0)
      push 0
      sbm writeX_A1_c
      #(end macro)lvar(name + "_c",0)
      #(begin macro)lvar(name + "_s",0)
      push 0
      sbm writeX_A1_s
      #(end macro)lvar(name + "_s",0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_A1_3
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_A1_2
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_A1_1
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_A1_0
      #(end macro)lvar(name + "_"+ xx1,0)
      #(end macro)lvarX(X,"writeX_A"+_writeX)
      #(begin macro)lvarX(X,"writeX_B"+_writeX)
      #(begin macro)lvar(name + "_c",0)
      push 0
      sbm writeX_B1_c
      #(end macro)lvar(name + "_c",0)
      #(begin macro)lvar(name + "_s",0)
      push 0
      sbm writeX_B1_s
      #(end macro)lvar(name + "_s",0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_B1_3
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_B1_2
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_B1_1
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_B1_0
      #(end macro)lvar(name + "_"+ xx1,0)
      #(end macro)lvarX(X,"writeX_B"+_writeX)
      #(begin macro)lvarX(X,"writeX_AmodB"+_writeX)
      #(begin macro)lvar(name + "_c",0)
      push 0
      sbm writeX_AmodB1_c
      #(end macro)lvar(name + "_c",0)
      #(begin macro)lvar(name + "_s",0)
      push 0
      sbm writeX_AmodB1_s
      #(end macro)lvar(name + "_s",0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_AmodB1_3
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_AmodB1_2
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_AmodB1_1
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_AmodB1_0
      #(end macro)lvar(name + "_"+ xx1,0)
      #(end macro)lvarX(X,"writeX_AmodB"+_writeX)
      #(begin macro)lvarX(X,"writeX_AdivB"+_writeX)
      #(begin macro)lvar(name + "_c",0)
      push 0
      sbm writeX_AdivB1_c
      #(end macro)lvar(name + "_c",0)
      #(begin macro)lvar(name + "_s",0)
      push 0
      sbm writeX_AdivB1_s
      #(end macro)lvar(name + "_s",0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_AdivB1_3
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_AdivB1_2
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_AdivB1_1
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm writeX_AdivB1_0
      #(end macro)lvar(name + "_"+ xx1,0)
      #(end macro)lvarX(X,"writeX_AdivB"+_writeX)
      
      #(begin macro)pushvX(X,name)
      push    N_c
      push    N_s
      push    N_3
      push    N_2
      push    N_1
      push    N_0
      #(end macro)pushvX(X,name)
      #(begin macro)popvX(X,"writeX_A"+_writeX)
      pop     writeX_A1_0
      pop     writeX_A1_1
      pop     writeX_A1_2
      pop     writeX_A1_3
      pop     writeX_A1_s
      pop     writeX_A1_c
      #(end macro)popvX(X,"writeX_A"+_writeX)
      
      #pushX(X,10)
      #popvX(X,"writeX_B"+_writeX)
      #(begin macro)setvX(X,"writeX_B"+_writeX, 10)
      at writeX_B1_0
        #(begin macro)setX(X,immValue)
        bf <
        bf <
        bf <
        bf <
        bf <
        reset
        bf  >
        set 0
        bf >
        set    0
        bf >
        set    0
        bf >
        set    0
        bf >
        set    10
        #(end macro)setX(X,immValue)
      ta
      #(end macro)setvX(X,"writeX_B"+_writeX, 10)
      
      push writeX_A1_s
      if
        push    '-'
        pop     out   # write '-' if name < 0
      fi
      
      push _stringDecimal32_.size
      loop
        # output = input mod 10 ; input = input div 10
        #(begin macro)divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm _divvvvvXabsNameA1_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm _divvvvvXabsNameA1_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _divvvvvXabsNameA1_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _divvvvvXabsNameA1_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _divvvvvXabsNameA1_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _divvvvvXabsNameA1_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)
        #(begin macro)pushvX(X,nameA)
        push    writeX_A1_c
        push    writeX_A1_s
        push    writeX_A1_3
        push    writeX_A1_2
        push    writeX_A1_1
        push    writeX_A1_0
        #(end macro)pushvX(X,nameA)
        #(begin macro)popvX(X,"_divvvvvXabsNameA" + _divvvvvX)
        pop     _divvvvvXabsNameA1_0
        pop     _divvvvvXabsNameA1_1
        pop     _divvvvvXabsNameA1_2
        pop     _divvvvvXabsNameA1_3
        pop     _divvvvvXabsNameA1_s
        pop     _divvvvvXabsNameA1_c
        #(end macro)popvX(X,"_divvvvvXabsNameA" + _divvvvvX)
        #(begin macro)lvar("_divvvvvXsA" + _divvvvvX, 0)
        push 0
        sbm _divvvvvXsA1
        #(end macro)lvar("_divvvvvXsA" + _divvvvvX, 0)
        push writeX_A1_s
        pop _divvvvvXsA1
        #(begin macro)absvX(X,"_divvvvvXabsNameA" + _divvvvvX)
        push    0
        pop     _divvvvvXabsNameA1_s
        #(end macro)absvX(X,"_divvvvvXabsNameA" + _divvvvvX)
        
        #(begin macro)lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm _divvvvvXabsNameB1_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm _divvvvvXabsNameB1_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _divvvvvXabsNameB1_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _divvvvvXabsNameB1_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _divvvvvXabsNameB1_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _divvvvvXabsNameB1_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)
        #(begin macro)pushvX(X,nameB)
        push    writeX_B1_c
        push    writeX_B1_s
        push    writeX_B1_3
        push    writeX_B1_2
        push    writeX_B1_1
        push    writeX_B1_0
        #(end macro)pushvX(X,nameB)
        #(begin macro)popvX(X,"_divvvvvXabsNameB" + _divvvvvX)
        pop     _divvvvvXabsNameB1_0
        pop     _divvvvvXabsNameB1_1
        pop     _divvvvvXabsNameB1_2
        pop     _divvvvvXabsNameB1_3
        pop     _divvvvvXabsNameB1_s
        pop     _divvvvvXabsNameB1_c
        #(end macro)popvX(X,"_divvvvvXabsNameB" + _divvvvvX)
        #(begin macro)lvar("_divvvvvXsB" + _divvvvvX, 0)
        push 0
        sbm _divvvvvXsB1
        #(end macro)lvar("_divvvvvXsB" + _divvvvvX, 0)
        push writeX_B1_s
        pop _divvvvvXsB1
        #(begin macro)absvX(X,"_divvvvvXabsNameB" + _divvvvvX)
        push    0
        pop     _divvvvvXabsNameB1_s
        #(end macro)absvX(X,"_divvvvvXabsNameB" + _divvvvvX)
        
        #(begin macro)pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)
        push    _divvvvvXabsNameA1_c
        push    _divvvvvXabsNameA1_s
        push    _divvvvvXabsNameA1_3
        push    _divvvvvXabsNameA1_2
        push    _divvvvvXabsNameA1_1
        push    _divvvvvXabsNameA1_0
        #(end macro)pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)
        #(begin macro)popvX(X,nameAmodB)
        pop     writeX_AmodB1_0
        pop     writeX_AmodB1_1
        pop     writeX_AmodB1_2
        pop     writeX_AmodB1_3
        pop     writeX_AmodB1_s
        pop     writeX_AmodB1_c
        #(end macro)popvX(X,nameAmodB)
        
        #(begin macro)resetvX(X,nameAdivB)
        at writeX_AdivB1_0
          #(begin macro)resetX(X)
          bf <
          bf <
          bf <
          bf <
          bf <
          bf [-]
          bf >[-]
          bf >[-]
          bf >[-]
          bf >[-]
          bf >[-]
          #(end macro)resetX(X)
        ta
        #(end macro)resetvX(X,nameAdivB)
        
        #(begin macro)boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)
        push _divvvvvXabsNameB1_0
        bool
        push _divvvvvXabsNameB1_1
        bool
        push _divvvvvXabsNameB1_2
        bool
        push _divvvvvXabsNameB1_3
        bool
        or
        or
        or
        #(end macro)boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)
        if
          push    1
          sbm     _divvvvvX_g1
          while
            #(begin macro)supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
            push 0
            sbm _supequalvvX2
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvarX(X, "_supequalvvXName" + _supequalvvX)
            #(begin macro)lvar(name + "_c",0)
            push 0
            sbm _supequalvvXName2_c
            #(end macro)lvar(name + "_c",0)
            #(begin macro)lvar(name + "_s",0)
            push 0
            sbm _supequalvvXName2_s
            #(end macro)lvar(name + "_s",0)
            #(begin macro)lvar(name + "_"+ xx1,0)
            push 0
            sbm _supequalvvXName2_3
            #(end macro)lvar(name + "_"+ xx1,0)
            #(begin macro)lvar(name + "_"+ xx1,0)
            push 0
            sbm _supequalvvXName2_2
            #(end macro)lvar(name + "_"+ xx1,0)
            #(begin macro)lvar(name + "_"+ xx1,0)
            push 0
            sbm _supequalvvXName2_1
            #(end macro)lvar(name + "_"+ xx1,0)
            #(begin macro)lvar(name + "_"+ xx1,0)
            push 0
            sbm _supequalvvXName2_0
            #(end macro)lvar(name + "_"+ xx1,0)
            #(end macro)lvarX(X, "_supequalvvXName" + _supequalvvX)
            #(begin macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
            #(begin macro)lvar(name + "_c",0)
            push 0
            sbm _negNameB2_c
            #(end macro)lvar(name + "_c",0)
            #(begin macro)lvar(name + "_s",0)
            push 0
            sbm _negNameB2_s
            #(end macro)lvar(name + "_s",0)
            #(begin macro)lvar(name + "_"+ xx1,0)
            push 0
            sbm _negNameB2_3
            #(end macro)lvar(name + "_"+ xx1,0)
            #(begin macro)lvar(name + "_"+ xx1,0)
            push 0
            sbm _negNameB2_2
            #(end macro)lvar(name + "_"+ xx1,0)
            #(begin macro)lvar(name + "_"+ xx1,0)
            push 0
            sbm _negNameB2_1
            #(end macro)lvar(name + "_"+ xx1,0)
            #(begin macro)lvar(name + "_"+ xx1,0)
            push 0
            sbm _negNameB2_0
            #(end macro)lvar(name + "_"+ xx1,0)
            #(end macro)lvarX(X,"_negNameB" + _subvvvX)
            #(begin macro)pushvX(X,nameB)
            push    _divvvvvXabsNameB1_c
            push    _divvvvvXabsNameB1_s
            push    _divvvvvXabsNameB1_3
            push    _divvvvvXabsNameB1_2
            push    _divvvvvXabsNameB1_1
            push    _divvvvvXabsNameB1_0
            #(end macro)pushvX(X,nameB)
            #(begin macro)popvX(X,"_negNameB" + _subvvvX)
            pop     _negNameB2_0
            pop     _negNameB2_1
            pop     _negNameB2_2
            pop     _negNameB2_3
            pop     _negNameB2_s
            pop     _negNameB2_c
            #(end macro)popvX(X,"_negNameB" + _subvvvX)
            #(begin macro)negvX(X,"_negNameB" + _subvvvX)
            push    _negNameB2_s
            dec
            bool
            dup
            if    # if name is now negative
              #(begin macro)if_equal(name +"_"+xx, 0)
              push _negNameB2_0
              push 0
              equal
              if
                #(end macro)if_equal(name +"_"+xx, 0)
                #(begin macro)if_equal(name +"_"+xx, 0)
                push _negNameB2_1
                push 0
                equal
                if
                  #(end macro)if_equal(name +"_"+xx, 0)
                  #(begin macro)if_equal(name +"_"+xx, 0)
                  push _negNameB2_2
                  push 0
                  equal
                  if
                    #(end macro)if_equal(name +"_"+xx, 0)
                    #(begin macro)if_equal(name +"_"+xx, 0)
                    push _negNameB2_3
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_"+xx, 0)
                      #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
                      #(begin macro)at_1("reset",a)
                      #(begin macro)at_2(ope,a,"")
                      at _negNameB2_s
                        reset 
                      ta
                      #(end macro)at_2(ope,a,"")
                      #(end macro)at_1("reset",a)
                      #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
                    fi
                  fi
                fi
              fi
            fi
            pop     _negNameB2_s
            #(end macro)negvX(X,"_negNameB" + _subvvvX)
            #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
            push    writeX_AmodB1_s
            push    _negNameB2_s
            or
            not
            push    writeX_AmodB1_s
            push    _negNameB2_s
            and
            or
            if      # nameA and nameB are both positive or negative
              push    writeX_AmodB1_s
              pop     _supequalvvXName2_s    # name has same sign of nameA and nameB
              push    0
              push    writeX_AmodB1_0
              #(begin macro)addof()
              sbm _addofb13
              sbm _addofa13 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc13
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao13
              while
                push _addofa13
                if
                  at _addofa13
                    dec
                  ta
                  at _addofb13
                    inc
                  ta
                  push _addofb13
                  not
                  if
                    at _addofc13
                      set 1
                    ta
                  fi
                else
                  at _loopao13
                    reset
                  ta
                fi
              wend
              push _addofc13
              if
                at _addofa13
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     _supequalvvXName2_0
              push    _negNameB2_0
              #(begin macro)addof()
              sbm _addofb14
              sbm _addofa14 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc14
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao14
              while
                push _addofa14
                if
                  at _addofa14
                    dec
                  ta
                  at _addofb14
                    inc
                  ta
                  push _addofb14
                  not
                  if
                    at _addofc14
                      set 1
                    ta
                  fi
                else
                  at _loopao14
                    reset
                  ta
                fi
              wend
              push _addofc14
              if
                at _addofa14
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              push    _supequalvvXName2_0
              #(begin macro)addof()
              sbm _addofb15
              sbm _addofa15 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc15
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao15
              while
                push _addofa15
                if
                  at _addofa15
                    dec
                  ta
                  at _addofb15
                    inc
                  ta
                  push _addofb15
                  not
                  if
                    at _addofc15
                      set 1
                    ta
                  fi
                else
                  at _loopao15
                    reset
                  ta
                fi
              wend
              push _addofc15
              if
                at _addofa15
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     _supequalvvXName2_0
              add
              push    writeX_AmodB1_1
              #(begin macro)addof()
              sbm _addofb16
              sbm _addofa16 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc16
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao16
              while
                push _addofa16
                if
                  at _addofa16
                    dec
                  ta
                  at _addofb16
                    inc
                  ta
                  push _addofb16
                  not
                  if
                    at _addofc16
                      set 1
                    ta
                  fi
                else
                  at _loopao16
                    reset
                  ta
                fi
              wend
              push _addofc16
              if
                at _addofa16
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     _supequalvvXName2_1
              push    _negNameB2_1
              #(begin macro)addof()
              sbm _addofb17
              sbm _addofa17 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc17
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao17
              while
                push _addofa17
                if
                  at _addofa17
                    dec
                  ta
                  at _addofb17
                    inc
                  ta
                  push _addofb17
                  not
                  if
                    at _addofc17
                      set 1
                    ta
                  fi
                else
                  at _loopao17
                    reset
                  ta
                fi
              wend
              push _addofc17
              if
                at _addofa17
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              push    _supequalvvXName2_1
              #(begin macro)addof()
              sbm _addofb18
              sbm _addofa18 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc18
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao18
              while
                push _addofa18
                if
                  at _addofa18
                    dec
                  ta
                  at _addofb18
                    inc
                  ta
                  push _addofb18
                  not
                  if
                    at _addofc18
                      set 1
                    ta
                  fi
                else
                  at _loopao18
                    reset
                  ta
                fi
              wend
              push _addofc18
              if
                at _addofa18
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     _supequalvvXName2_1
              add
              push    writeX_AmodB1_2
              #(begin macro)addof()
              sbm _addofb19
              sbm _addofa19 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc19
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao19
              while
                push _addofa19
                if
                  at _addofa19
                    dec
                  ta
                  at _addofb19
                    inc
                  ta
                  push _addofb19
                  not
                  if
                    at _addofc19
                      set 1
                    ta
                  fi
                else
                  at _loopao19
                    reset
                  ta
                fi
              wend
              push _addofc19
              if
                at _addofa19
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     _supequalvvXName2_2
              push    _negNameB2_2
              #(begin macro)addof()
              sbm _addofb20
              sbm _addofa20 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc20
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao20
              while
                push _addofa20
                if
                  at _addofa20
                    dec
                  ta
                  at _addofb20
                    inc
                  ta
                  push _addofb20
                  not
                  if
                    at _addofc20
                      set 1
                    ta
                  fi
                else
                  at _loopao20
                    reset
                  ta
                fi
              wend
              push _addofc20
              if
                at _addofa20
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              push    _supequalvvXName2_2
              #(begin macro)addof()
              sbm _addofb21
              sbm _addofa21 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc21
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao21
              while
                push _addofa21
                if
                  at _addofa21
                    dec
                  ta
                  at _addofb21
                    inc
                  ta
                  push _addofb21
                  not
                  if
                    at _addofc21
                      set 1
                    ta
                  fi
                else
                  at _loopao21
                    reset
                  ta
                fi
              wend
              push _addofc21
              if
                at _addofa21
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     _supequalvvXName2_2
              add
              push    writeX_AmodB1_3
              #(begin macro)addof()
              sbm _addofb22
              sbm _addofa22 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc22
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao22
              while
                push _addofa22
                if
                  at _addofa22
                    dec
                  ta
                  at _addofb22
                    inc
                  ta
                  push _addofb22
                  not
                  if
                    at _addofc22
                      set 1
                    ta
                  fi
                else
                  at _loopao22
                    reset
                  ta
                fi
              wend
              push _addofc22
              if
                at _addofa22
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     _supequalvvXName2_3
              push    _negNameB2_3
              #(begin macro)addof()
              sbm _addofb23
              sbm _addofa23 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc23
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao23
              while
                push _addofa23
                if
                  at _addofa23
                    dec
                  ta
                  at _addofb23
                    inc
                  ta
                  push _addofb23
                  not
                  if
                    at _addofc23
                      set 1
                    ta
                  fi
                else
                  at _loopao23
                    reset
                  ta
                fi
              wend
              push _addofc23
              if
                at _addofa23
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              push    _supequalvvXName2_3
              #(begin macro)addof()
              sbm _addofb24
              sbm _addofa24 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc24
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao24
              while
                push _addofa24
                if
                  at _addofa24
                    dec
                  ta
                  at _addofb24
                    inc
                  ta
                  push _addofb24
                  not
                  if
                    at _addofc24
                      set 1
                    ta
                  fi
                else
                  at _loopao24
                    reset
                  ta
                fi
              wend
              push _addofc24
              if
                at _addofa24
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     _supequalvvXName2_3
              add
              pop     _supequalvvXName2_c
            else  # nameA has a different sign of nameB
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
              push 0
              sbm _asupb2
              #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
              #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
              push 0
              sbm _aequb2
              #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
              push    writeX_AmodB1_3
              push    _negNameB2_3
              sup
              if
                at _asupb2
                  set 1
                ta
              else
                push    writeX_AmodB1_3
                push    _negNameB2_3
                diff
                if
                  at _asupb2
                    reset
                  ta
                else
                  push    writeX_AmodB1_2
                  push    _negNameB2_2
                  sup
                  if
                    at _asupb2
                      set 1
                    ta
                  else
                    push    writeX_AmodB1_2
                    push    _negNameB2_2
                    diff
                    if
                      at _asupb2
                        reset
                      ta
                    else
                      push    writeX_AmodB1_1
                      push    _negNameB2_1
                      sup
                      if
                        at _asupb2
                          set 1
                        ta
                      else
                        push    writeX_AmodB1_1
                        push    _negNameB2_1
                        diff
                        if
                          at _asupb2
                            reset
                          ta
                        else
                          push    writeX_AmodB1_0
                          push    _negNameB2_0
                          sup
                          if
                            at _asupb2
                              set 1
                            ta
                          else
                            push    writeX_AmodB1_0
                            push    _negNameB2_0
                            diff
                            if
                              at _asupb2
                                reset
                              ta
                            else
                              at _aequb2
                                set 1
                              ta
                            fi
                          fi
                        fi
                      fi
                    fi
                  fi
                fi
              fi
              push _asupb2
              if  # absA > absB : do  absA-absB with sign of A
                # print("absA > absB\n")
                push    writeX_AmodB1_s
                pop     _supequalvvXName2_s    # name has same sign of nameA
                
                push    0
                sbm     _addvvvXCarry2
                push    writeX_AmodB1_0
                push    _negNameB2_0
                #(begin macro)subof()
                sbm _subofb17
                sbm _subofa17 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc17
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso17
                while
                  push _subofb17
                  if
                    at _subofb17
                      dec
                    ta
                    at _subofa17
                      dec
                    ta
                    push _subofa17
                    inc
                    not
                    if
                      at _subofc17
                        set 1
                      ta
                    fi
                  else
                    at _loopso17
                      reset
                    ta
                  fi
                wend
                push _subofc17
                if
                  at _subofb17
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                push    _addvvvXCarry2
                #(begin macro)subof()
                sbm _subofb18
                sbm _subofa18 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc18
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso18
                while
                  push _subofb18
                  if
                    at _subofb18
                      dec
                    ta
                    at _subofa18
                      dec
                    ta
                    push _subofa18
                    inc
                    not
                    if
                      at _subofc18
                        set 1
                      ta
                    fi
                  else
                    at _loopso18
                      reset
                    ta
                  fi
                wend
                push _subofc18
                if
                  at _subofb18
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                pop     _supequalvvXName2_0
                add
                pop     _addvvvXCarry2
                push    writeX_AmodB1_1
                push    _negNameB2_1
                #(begin macro)subof()
                sbm _subofb19
                sbm _subofa19 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc19
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso19
                while
                  push _subofb19
                  if
                    at _subofb19
                      dec
                    ta
                    at _subofa19
                      dec
                    ta
                    push _subofa19
                    inc
                    not
                    if
                      at _subofc19
                        set 1
                      ta
                    fi
                  else
                    at _loopso19
                      reset
                    ta
                  fi
                wend
                push _subofc19
                if
                  at _subofb19
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                push    _addvvvXCarry2
                #(begin macro)subof()
                sbm _subofb20
                sbm _subofa20 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc20
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso20
                while
                  push _subofb20
                  if
                    at _subofb20
                      dec
                    ta
                    at _subofa20
                      dec
                    ta
                    push _subofa20
                    inc
                    not
                    if
                      at _subofc20
                        set 1
                      ta
                    fi
                  else
                    at _loopso20
                      reset
                    ta
                  fi
                wend
                push _subofc20
                if
                  at _subofb20
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                pop     _supequalvvXName2_1
                add
                pop     _addvvvXCarry2
                push    writeX_AmodB1_2
                push    _negNameB2_2
                #(begin macro)subof()
                sbm _subofb21
                sbm _subofa21 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc21
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso21
                while
                  push _subofb21
                  if
                    at _subofb21
                      dec
                    ta
                    at _subofa21
                      dec
                    ta
                    push _subofa21
                    inc
                    not
                    if
                      at _subofc21
                        set 1
                      ta
                    fi
                  else
                    at _loopso21
                      reset
                    ta
                  fi
                wend
                push _subofc21
                if
                  at _subofb21
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                push    _addvvvXCarry2
                #(begin macro)subof()
                sbm _subofb22
                sbm _subofa22 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc22
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso22
                while
                  push _subofb22
                  if
                    at _subofb22
                      dec
                    ta
                    at _subofa22
                      dec
                    ta
                    push _subofa22
                    inc
                    not
                    if
                      at _subofc22
                        set 1
                      ta
                    fi
                  else
                    at _loopso22
                      reset
                    ta
                  fi
                wend
                push _subofc22
                if
                  at _subofb22
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                pop     _supequalvvXName2_2
                add
                pop     _addvvvXCarry2
                push    writeX_AmodB1_3
                push    _negNameB2_3
                #(begin macro)subof()
                sbm _subofb23
                sbm _subofa23 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc23
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso23
                while
                  push _subofb23
                  if
                    at _subofb23
                      dec
                    ta
                    at _subofa23
                      dec
                    ta
                    push _subofa23
                    inc
                    not
                    if
                      at _subofc23
                        set 1
                      ta
                    fi
                  else
                    at _loopso23
                      reset
                    ta
                  fi
                wend
                push _subofc23
                if
                  at _subofb23
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                push    _addvvvXCarry2
                #(begin macro)subof()
                sbm _subofb24
                sbm _subofa24 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc24
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso24
                while
                  push _subofb24
                  if
                    at _subofb24
                      dec
                    ta
                    at _subofa24
                      dec
                    ta
                    push _subofa24
                    inc
                    not
                    if
                      at _subofc24
                        set 1
                      ta
                    fi
                  else
                    at _loopso24
                      reset
                    ta
                  fi
                wend
                push _subofc24
                if
                  at _subofb24
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                pop     _supequalvvXName2_3
                add
                pop     _addvvvXCarry2
                pop     _supequalvvXName2_c
              else # absB >= absA :
                push    _aequb2
                if # absA == absB , then name =0 (opposite sign then sum is zero)
                  #print("absA == absB\n")
                  #(begin macro)setvX(X,name,0)
                  at _supequalvvXName2_0
                    #(begin macro)setX(X,immValue)
                    bf <
                    bf <
                    bf <
                    bf <
                    bf <
                    reset
                    bf  >
                    set 0
                    bf >
                    set    0
                    bf >
                    set    0
                    bf >
                    set    0
                    bf >
                    set    0
                    #(end macro)setX(X,immValue)
                  ta
                  #(end macro)setvX(X,name,0)
                else # absA < absB : do   absB-absA with sign of B
                  #print("absA < absB\n")
                  push    _negNameB2_s
                  pop     _supequalvvXName2_s    # name has same sign of nameB
                  
                  push    0
                  sbm     _addvvvXCarry2
                  push    _negNameB2_0
                  push    writeX_AmodB1_0
                  #(begin macro)subof()
                  sbm _subofb25
                  sbm _subofa25 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc25
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso25
                  while
                    push _subofb25
                    if
                      at _subofb25
                        dec
                      ta
                      at _subofa25
                        dec
                      ta
                      push _subofa25
                      inc
                      not
                      if
                        at _subofc25
                          set 1
                        ta
                      fi
                    else
                      at _loopso25
                        reset
                      ta
                    fi
                  wend
                  push _subofc25
                  if
                    at _subofb25
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry2
                  #(begin macro)subof()
                  sbm _subofb26
                  sbm _subofa26 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc26
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso26
                  while
                    push _subofb26
                    if
                      at _subofb26
                        dec
                      ta
                      at _subofa26
                        dec
                      ta
                      push _subofa26
                      inc
                      not
                      if
                        at _subofc26
                          set 1
                        ta
                      fi
                    else
                      at _loopso26
                        reset
                      ta
                    fi
                  wend
                  push _subofc26
                  if
                    at _subofb26
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName2_0
                  add
                  pop     _addvvvXCarry2
                  push    _negNameB2_1
                  push    writeX_AmodB1_1
                  #(begin macro)subof()
                  sbm _subofb27
                  sbm _subofa27 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc27
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso27
                  while
                    push _subofb27
                    if
                      at _subofb27
                        dec
                      ta
                      at _subofa27
                        dec
                      ta
                      push _subofa27
                      inc
                      not
                      if
                        at _subofc27
                          set 1
                        ta
                      fi
                    else
                      at _loopso27
                        reset
                      ta
                    fi
                  wend
                  push _subofc27
                  if
                    at _subofb27
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry2
                  #(begin macro)subof()
                  sbm _subofb28
                  sbm _subofa28 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc28
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso28
                  while
                    push _subofb28
                    if
                      at _subofb28
                        dec
                      ta
                      at _subofa28
                        dec
                      ta
                      push _subofa28
                      inc
                      not
                      if
                        at _subofc28
                          set 1
                        ta
                      fi
                    else
                      at _loopso28
                        reset
                      ta
                    fi
                  wend
                  push _subofc28
                  if
                    at _subofb28
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName2_1
                  add
                  pop     _addvvvXCarry2
                  push    _negNameB2_2
                  push    writeX_AmodB1_2
                  #(begin macro)subof()
                  sbm _subofb29
                  sbm _subofa29 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc29
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso29
                  while
                    push _subofb29
                    if
                      at _subofb29
                        dec
                      ta
                      at _subofa29
                        dec
                      ta
                      push _subofa29
                      inc
                      not
                      if
                        at _subofc29
                          set 1
                        ta
                      fi
                    else
                      at _loopso29
                        reset
                      ta
                    fi
                  wend
                  push _subofc29
                  if
                    at _subofb29
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry2
                  #(begin macro)subof()
                  sbm _subofb30
                  sbm _subofa30 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc30
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso30
                  while
                    push _subofb30
                    if
                      at _subofb30
                        dec
                      ta
                      at _subofa30
                        dec
                      ta
                      push _subofa30
                      inc
                      not
                      if
                        at _subofc30
                          set 1
                        ta
                      fi
                    else
                      at _loopso30
                        reset
                      ta
                    fi
                  wend
                  push _subofc30
                  if
                    at _subofb30
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName2_2
                  add
                  pop     _addvvvXCarry2
                  push    _negNameB2_3
                  push    writeX_AmodB1_3
                  #(begin macro)subof()
                  sbm _subofb31
                  sbm _subofa31 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc31
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso31
                  while
                    push _subofb31
                    if
                      at _subofb31
                        dec
                      ta
                      at _subofa31
                        dec
                      ta
                      push _subofa31
                      inc
                      not
                      if
                        at _subofc31
                          set 1
                        ta
                      fi
                    else
                      at _loopso31
                        reset
                      ta
                    fi
                  wend
                  push _subofc31
                  if
                    at _subofb31
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry2
                  #(begin macro)subof()
                  sbm _subofb32
                  sbm _subofa32 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc32
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso32
                  while
                    push _subofb32
                    if
                      at _subofb32
                        dec
                      ta
                      at _subofa32
                        dec
                      ta
                      push _subofa32
                      inc
                      not
                      if
                        at _subofc32
                          set 1
                        ta
                      fi
                    else
                      at _loopso32
                        reset
                      ta
                    fi
                  wend
                  push _subofc32
                  if
                    at _subofb32
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName2_3
                  add
                  pop     _addvvvXCarry2
                  pop     _supequalvvXName2_c
                fi
              fi
              #(begin macro)scope_end()
              drop
              drop
              #(end macro)scope_end()
            fi
            #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
            #(begin macro)scope_end()
            drop
            drop
            drop
            drop
            drop
            drop
            #(end macro)scope_end()
            #(end macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
            push _supequalvvXName2_s
            not
            pop _supequalvvX2
            #(begin macro)scope_end()
            drop
            drop
            drop
            drop
            drop
            drop
            #(end macro)scope_end()
            #(end macro)supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
            if
              #(begin macro)incvX(X,nameAdivB)
              #(begin macro)if_equal(name +"_s",0)  # positive number
              push writeX_AdivB1_s
              push 0
              equal
              if
                #(end macro)if_equal(name +"_s",0)  # positive number
                #(begin macro)at_inc(name + "_" + xx)
                #(begin macro)at_1("inc",a)
                #(begin macro)at_2(ope,a,"")
                at writeX_AdivB1_0
                  inc 
                ta
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("inc",a)
                #(end macro)at_inc(name + "_" + xx)
                #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                push writeX_AdivB1_0
                push 0
                equal
                if
                  #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                  #(begin macro)at_inc(name + "_" + xx)
                  #(begin macro)at_1("inc",a)
                  #(begin macro)at_2(ope,a,"")
                  at writeX_AdivB1_1
                    inc 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("inc",a)
                  #(end macro)at_inc(name + "_" + xx)
                  #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                  push writeX_AdivB1_1
                  push 0
                  equal
                  if
                    #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                    #(begin macro)at_inc(name + "_" + xx)
                    #(begin macro)at_1("inc",a)
                    #(begin macro)at_2(ope,a,"")
                    at writeX_AdivB1_2
                      inc 
                    ta
                    #(end macro)at_2(ope,a,"")
                    #(end macro)at_1("inc",a)
                    #(end macro)at_inc(name + "_" + xx)
                    #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                    push writeX_AdivB1_2
                    push 0
                    equal
                    if
                      #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                      #(begin macro)at_inc(name + "_" + xx)
                      #(begin macro)at_1("inc",a)
                      #(begin macro)at_2(ope,a,"")
                      at writeX_AdivB1_3
                        inc 
                      ta
                      #(end macro)at_2(ope,a,"")
                      #(end macro)at_1("inc",a)
                      #(end macro)at_inc(name + "_" + xx)
                      #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                      push writeX_AdivB1_3
                      push 0
                      equal
                      if
                        #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                        #(begin macro)setcvX(X, name) ## set carry (overflow)
                        #(begin macro)at_set(name+"_c",1)
                        #(begin macro)at_2("set",a,b)
                        at writeX_AdivB1_c
                          set 1
                        ta
                        #(end macro)at_2("set",a,b)
                        #(end macro)at_set(name+"_c",1)
                        #(end macro)setcvX(X, name) ## set carry (overflow)
                      fi
                    fi
                  fi
                fi
              else    # negative number
                #(begin macro)at_dec(name + "_" + xx)
                #(begin macro)at_1("dec",a)
                #(begin macro)at_2(ope,a,"")
                at writeX_AdivB1_0
                  dec 
                ta
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("dec",a)
                #(end macro)at_dec(name + "_" + xx)
                #(begin macro)if_equal(name +"_" + xx,255) # reduced
                push writeX_AdivB1_0
                push 255
                equal
                if
                  #(end macro)if_equal(name +"_" + xx,255) # reduced
                  #(begin macro)at_dec(name + "_" + xx)
                  #(begin macro)at_1("dec",a)
                  #(begin macro)at_2(ope,a,"")
                  at writeX_AdivB1_1
                    dec 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("dec",a)
                  #(end macro)at_dec(name + "_" + xx)
                  #(begin macro)if_equal(name +"_" + xx,255) # reduced
                  push writeX_AdivB1_1
                  push 255
                  equal
                  if
                    #(end macro)if_equal(name +"_" + xx,255) # reduced
                    #(begin macro)at_dec(name + "_" + xx)
                    #(begin macro)at_1("dec",a)
                    #(begin macro)at_2(ope,a,"")
                    at writeX_AdivB1_2
                      dec 
                    ta
                    #(end macro)at_2(ope,a,"")
                    #(end macro)at_1("dec",a)
                    #(end macro)at_dec(name + "_" + xx)
                    #(begin macro)if_equal(name +"_" + xx,255) # reduced
                    push writeX_AdivB1_2
                    push 255
                    equal
                    if
                      #(end macro)if_equal(name +"_" + xx,255) # reduced
                      #(begin macro)at_dec(name + "_" + xx)
                      #(begin macro)at_1("dec",a)
                      #(begin macro)at_2(ope,a,"")
                      at writeX_AdivB1_3
                        dec 
                      ta
                      #(end macro)at_2(ope,a,"")
                      #(end macro)at_1("dec",a)
                      #(end macro)at_dec(name + "_" + xx)
                      #(begin macro)if_equal(name +"_" + xx,255) # reduced
                      push writeX_AdivB1_3
                      push 255
                      equal
                      if
                        #(end macro)if_equal(name +"_" + xx,255) # reduced
                        #(begin macro)setvX(X,name,1)
                        at writeX_AdivB1_0
                          #(begin macro)setX(X,immValue)
                          bf <
                          bf <
                          bf <
                          bf <
                          bf <
                          reset
                          bf  >
                          set 0
                          bf >
                          set    0
                          bf >
                          set    0
                          bf >
                          set    0
                          bf >
                          set    1
                          #(end macro)setX(X,immValue)
                        ta
                        #(end macro)setvX(X,name,1)
                      fi
                    fi
                  fi
                fi
                #(begin macro)fixsvX(X,name)
                push    writeX_AdivB1_s
                if    # if name is negative
                  #(begin macro)if_equal(name +"_" + xx, 0)
                  push writeX_AdivB1_0
                  push 0
                  equal
                  if
                    #(end macro)if_equal(name +"_" + xx, 0)
                    #(begin macro)if_equal(name +"_" + xx, 0)
                    push writeX_AdivB1_1
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_" + xx, 0)
                      #(begin macro)if_equal(name +"_" + xx, 0)
                      push writeX_AdivB1_2
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_" + xx, 0)
                        #(begin macro)if_equal(name +"_" + xx, 0)
                        push writeX_AdivB1_3
                        push 0
                        equal
                        if
                          #(end macro)if_equal(name +"_" + xx, 0)
                          #(begin macro)at_reset(name + "_s")   # set sign to positive
                          #(begin macro)at_1("reset",a)
                          #(begin macro)at_2(ope,a,"")
                          at writeX_AdivB1_s
                            reset 
                          ta
                          #(end macro)at_2(ope,a,"")
                          #(end macro)at_1("reset",a)
                          #(end macro)at_reset(name + "_s")   # set sign to positive
                        fi
                      fi
                    fi
                  fi
                fi
                #(end macro)fixsvX(X,name)
              fi
              #(end macro)incvX(X,nameAdivB)
              #(begin macro)subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvarX(X, "_subvvXNameB" + _subvvX)
              #(begin macro)lvar(name + "_c",0)
              push 0
              sbm _subvvXNameB1_c
              #(end macro)lvar(name + "_c",0)
              #(begin macro)lvar(name + "_s",0)
              push 0
              sbm _subvvXNameB1_s
              #(end macro)lvar(name + "_s",0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _subvvXNameB1_3
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _subvvXNameB1_2
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _subvvXNameB1_1
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _subvvXNameB1_0
              #(end macro)lvar(name + "_"+ xx1,0)
              #(end macro)lvarX(X, "_subvvXNameB" + _subvvX)
              #(begin macro)pushvX(X, name)
              push    writeX_AmodB1_c
              push    writeX_AmodB1_s
              push    writeX_AmodB1_3
              push    writeX_AmodB1_2
              push    writeX_AmodB1_1
              push    writeX_AmodB1_0
              #(end macro)pushvX(X, name)
              #(begin macro)popvX(X, "_subvvXNameB" + _subvvX)
              pop     _subvvXNameB1_0
              pop     _subvvXNameB1_1
              pop     _subvvXNameB1_2
              pop     _subvvXNameB1_3
              pop     _subvvXNameB1_s
              pop     _subvvXNameB1_c
              #(end macro)popvX(X, "_subvvXNameB" + _subvvX)
              #(begin macro)subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
              #(begin macro)lvar(name + "_c",0)
              push 0
              sbm _negNameB3_c
              #(end macro)lvar(name + "_c",0)
              #(begin macro)lvar(name + "_s",0)
              push 0
              sbm _negNameB3_s
              #(end macro)lvar(name + "_s",0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB3_3
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB3_2
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB3_1
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB3_0
              #(end macro)lvar(name + "_"+ xx1,0)
              #(end macro)lvarX(X,"_negNameB" + _subvvvX)
              #(begin macro)pushvX(X,nameB)
              push    _divvvvvXabsNameB1_c
              push    _divvvvvXabsNameB1_s
              push    _divvvvvXabsNameB1_3
              push    _divvvvvXabsNameB1_2
              push    _divvvvvXabsNameB1_1
              push    _divvvvvXabsNameB1_0
              #(end macro)pushvX(X,nameB)
              #(begin macro)popvX(X,"_negNameB" + _subvvvX)
              pop     _negNameB3_0
              pop     _negNameB3_1
              pop     _negNameB3_2
              pop     _negNameB3_3
              pop     _negNameB3_s
              pop     _negNameB3_c
              #(end macro)popvX(X,"_negNameB" + _subvvvX)
              #(begin macro)negvX(X,"_negNameB" + _subvvvX)
              push    _negNameB3_s
              dec
              bool
              dup
              if    # if name is now negative
                #(begin macro)if_equal(name +"_"+xx, 0)
                push _negNameB3_0
                push 0
                equal
                if
                  #(end macro)if_equal(name +"_"+xx, 0)
                  #(begin macro)if_equal(name +"_"+xx, 0)
                  push _negNameB3_1
                  push 0
                  equal
                  if
                    #(end macro)if_equal(name +"_"+xx, 0)
                    #(begin macro)if_equal(name +"_"+xx, 0)
                    push _negNameB3_2
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_"+xx, 0)
                      #(begin macro)if_equal(name +"_"+xx, 0)
                      push _negNameB3_3
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_"+xx, 0)
                        #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
                        #(begin macro)at_1("reset",a)
                        #(begin macro)at_2(ope,a,"")
                        at _negNameB3_s
                          reset 
                        ta
                        #(end macro)at_2(ope,a,"")
                        #(end macro)at_1("reset",a)
                        #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
                      fi
                    fi
                  fi
                fi
              fi
              pop     _negNameB3_s
              #(end macro)negvX(X,"_negNameB" + _subvvvX)
              #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
              push    _subvvXNameB1_s
              push    _negNameB3_s
              or
              not
              push    _subvvXNameB1_s
              push    _negNameB3_s
              and
              or
              if      # nameA and nameB are both positive or negative
                push    _subvvXNameB1_s
                pop     writeX_AmodB1_s    # name has same sign of nameA and nameB
                push    0
                push    _subvvXNameB1_0
                #(begin macro)addof()
                sbm _addofb25
                sbm _addofa25 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc25
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao25
                while
                  push _addofa25
                  if
                    at _addofa25
                      dec
                    ta
                    at _addofb25
                      inc
                    ta
                    push _addofb25
                    not
                    if
                      at _addofc25
                        set 1
                      ta
                    fi
                  else
                    at _loopao25
                      reset
                    ta
                  fi
                wend
                push _addofc25
                if
                  at _addofa25
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     writeX_AmodB1_0
                push    _negNameB3_0
                #(begin macro)addof()
                sbm _addofb26
                sbm _addofa26 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc26
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao26
                while
                  push _addofa26
                  if
                    at _addofa26
                      dec
                    ta
                    at _addofb26
                      inc
                    ta
                    push _addofb26
                    not
                    if
                      at _addofc26
                        set 1
                      ta
                    fi
                  else
                    at _loopao26
                      reset
                    ta
                  fi
                wend
                push _addofc26
                if
                  at _addofa26
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    writeX_AmodB1_0
                #(begin macro)addof()
                sbm _addofb27
                sbm _addofa27 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc27
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao27
                while
                  push _addofa27
                  if
                    at _addofa27
                      dec
                    ta
                    at _addofb27
                      inc
                    ta
                    push _addofb27
                    not
                    if
                      at _addofc27
                        set 1
                      ta
                    fi
                  else
                    at _loopao27
                      reset
                    ta
                  fi
                wend
                push _addofc27
                if
                  at _addofa27
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     writeX_AmodB1_0
                add
                push    _subvvXNameB1_1
                #(begin macro)addof()
                sbm _addofb28
                sbm _addofa28 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc28
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao28
                while
                  push _addofa28
                  if
                    at _addofa28
                      dec
                    ta
                    at _addofb28
                      inc
                    ta
                    push _addofb28
                    not
                    if
                      at _addofc28
                        set 1
                      ta
                    fi
                  else
                    at _loopao28
                      reset
                    ta
                  fi
                wend
                push _addofc28
                if
                  at _addofa28
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     writeX_AmodB1_1
                push    _negNameB3_1
                #(begin macro)addof()
                sbm _addofb29
                sbm _addofa29 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc29
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao29
                while
                  push _addofa29
                  if
                    at _addofa29
                      dec
                    ta
                    at _addofb29
                      inc
                    ta
                    push _addofb29
                    not
                    if
                      at _addofc29
                        set 1
                      ta
                    fi
                  else
                    at _loopao29
                      reset
                    ta
                  fi
                wend
                push _addofc29
                if
                  at _addofa29
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    writeX_AmodB1_1
                #(begin macro)addof()
                sbm _addofb30
                sbm _addofa30 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc30
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao30
                while
                  push _addofa30
                  if
                    at _addofa30
                      dec
                    ta
                    at _addofb30
                      inc
                    ta
                    push _addofb30
                    not
                    if
                      at _addofc30
                        set 1
                      ta
                    fi
                  else
                    at _loopao30
                      reset
                    ta
                  fi
                wend
                push _addofc30
                if
                  at _addofa30
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     writeX_AmodB1_1
                add
                push    _subvvXNameB1_2
                #(begin macro)addof()
                sbm _addofb31
                sbm _addofa31 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc31
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao31
                while
                  push _addofa31
                  if
                    at _addofa31
                      dec
                    ta
                    at _addofb31
                      inc
                    ta
                    push _addofb31
                    not
                    if
                      at _addofc31
                        set 1
                      ta
                    fi
                  else
                    at _loopao31
                      reset
                    ta
                  fi
                wend
                push _addofc31
                if
                  at _addofa31
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     writeX_AmodB1_2
                push    _negNameB3_2
                #(begin macro)addof()
                sbm _addofb32
                sbm _addofa32 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc32
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao32
                while
                  push _addofa32
                  if
                    at _addofa32
                      dec
                    ta
                    at _addofb32
                      inc
                    ta
                    push _addofb32
                    not
                    if
                      at _addofc32
                        set 1
                      ta
                    fi
                  else
                    at _loopao32
                      reset
                    ta
                  fi
                wend
                push _addofc32
                if
                  at _addofa32
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    writeX_AmodB1_2
                #(begin macro)addof()
                sbm _addofb33
                sbm _addofa33 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc33
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao33
                while
                  push _addofa33
                  if
                    at _addofa33
                      dec
                    ta
                    at _addofb33
                      inc
                    ta
                    push _addofb33
                    not
                    if
                      at _addofc33
                        set 1
                      ta
                    fi
                  else
                    at _loopao33
                      reset
                    ta
                  fi
                wend
                push _addofc33
                if
                  at _addofa33
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     writeX_AmodB1_2
                add
                push    _subvvXNameB1_3
                #(begin macro)addof()
                sbm _addofb34
                sbm _addofa34 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc34
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao34
                while
                  push _addofa34
                  if
                    at _addofa34
                      dec
                    ta
                    at _addofb34
                      inc
                    ta
                    push _addofb34
                    not
                    if
                      at _addofc34
                        set 1
                      ta
                    fi
                  else
                    at _loopao34
                      reset
                    ta
                  fi
                wend
                push _addofc34
                if
                  at _addofa34
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     writeX_AmodB1_3
                push    _negNameB3_3
                #(begin macro)addof()
                sbm _addofb35
                sbm _addofa35 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc35
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao35
                while
                  push _addofa35
                  if
                    at _addofa35
                      dec
                    ta
                    at _addofb35
                      inc
                    ta
                    push _addofb35
                    not
                    if
                      at _addofc35
                        set 1
                      ta
                    fi
                  else
                    at _loopao35
                      reset
                    ta
                  fi
                wend
                push _addofc35
                if
                  at _addofa35
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    writeX_AmodB1_3
                #(begin macro)addof()
                sbm _addofb36
                sbm _addofa36 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc36
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao36
                while
                  push _addofa36
                  if
                    at _addofa36
                      dec
                    ta
                    at _addofb36
                      inc
                    ta
                    push _addofb36
                    not
                    if
                      at _addofc36
                        set 1
                      ta
                    fi
                  else
                    at _loopao36
                      reset
                    ta
                  fi
                wend
                push _addofc36
                if
                  at _addofa36
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     writeX_AmodB1_3
                add
                pop     writeX_AmodB1_c
              else  # nameA has a different sign of nameB
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                push 0
                sbm _asupb3
                #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                push 0
                sbm _aequb3
                #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                push    _subvvXNameB1_3
                push    _negNameB3_3
                sup
                if
                  at _asupb3
                    set 1
                  ta
                else
                  push    _subvvXNameB1_3
                  push    _negNameB3_3
                  diff
                  if
                    at _asupb3
                      reset
                    ta
                  else
                    push    _subvvXNameB1_2
                    push    _negNameB3_2
                    sup
                    if
                      at _asupb3
                        set 1
                      ta
                    else
                      push    _subvvXNameB1_2
                      push    _negNameB3_2
                      diff
                      if
                        at _asupb3
                          reset
                        ta
                      else
                        push    _subvvXNameB1_1
                        push    _negNameB3_1
                        sup
                        if
                          at _asupb3
                            set 1
                          ta
                        else
                          push    _subvvXNameB1_1
                          push    _negNameB3_1
                          diff
                          if
                            at _asupb3
                              reset
                            ta
                          else
                            push    _subvvXNameB1_0
                            push    _negNameB3_0
                            sup
                            if
                              at _asupb3
                                set 1
                              ta
                            else
                              push    _subvvXNameB1_0
                              push    _negNameB3_0
                              diff
                              if
                                at _asupb3
                                  reset
                                ta
                              else
                                at _aequb3
                                  set 1
                                ta
                              fi
                            fi
                          fi
                        fi
                      fi
                    fi
                  fi
                fi
                push _asupb3
                if  # absA > absB : do  absA-absB with sign of A
                  # print("absA > absB\n")
                  push    _subvvXNameB1_s
                  pop     writeX_AmodB1_s    # name has same sign of nameA
                  
                  push    0
                  sbm     _addvvvXCarry3
                  push    _subvvXNameB1_0
                  push    _negNameB3_0
                  #(begin macro)subof()
                  sbm _subofb33
                  sbm _subofa33 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc33
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso33
                  while
                    push _subofb33
                    if
                      at _subofb33
                        dec
                      ta
                      at _subofa33
                        dec
                      ta
                      push _subofa33
                      inc
                      not
                      if
                        at _subofc33
                          set 1
                        ta
                      fi
                    else
                      at _loopso33
                        reset
                      ta
                    fi
                  wend
                  push _subofc33
                  if
                    at _subofb33
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry3
                  #(begin macro)subof()
                  sbm _subofb34
                  sbm _subofa34 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc34
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso34
                  while
                    push _subofb34
                    if
                      at _subofb34
                        dec
                      ta
                      at _subofa34
                        dec
                      ta
                      push _subofa34
                      inc
                      not
                      if
                        at _subofc34
                          set 1
                        ta
                      fi
                    else
                      at _loopso34
                        reset
                      ta
                    fi
                  wend
                  push _subofc34
                  if
                    at _subofb34
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     writeX_AmodB1_0
                  add
                  pop     _addvvvXCarry3
                  push    _subvvXNameB1_1
                  push    _negNameB3_1
                  #(begin macro)subof()
                  sbm _subofb35
                  sbm _subofa35 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc35
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso35
                  while
                    push _subofb35
                    if
                      at _subofb35
                        dec
                      ta
                      at _subofa35
                        dec
                      ta
                      push _subofa35
                      inc
                      not
                      if
                        at _subofc35
                          set 1
                        ta
                      fi
                    else
                      at _loopso35
                        reset
                      ta
                    fi
                  wend
                  push _subofc35
                  if
                    at _subofb35
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry3
                  #(begin macro)subof()
                  sbm _subofb36
                  sbm _subofa36 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc36
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso36
                  while
                    push _subofb36
                    if
                      at _subofb36
                        dec
                      ta
                      at _subofa36
                        dec
                      ta
                      push _subofa36
                      inc
                      not
                      if
                        at _subofc36
                          set 1
                        ta
                      fi
                    else
                      at _loopso36
                        reset
                      ta
                    fi
                  wend
                  push _subofc36
                  if
                    at _subofb36
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     writeX_AmodB1_1
                  add
                  pop     _addvvvXCarry3
                  push    _subvvXNameB1_2
                  push    _negNameB3_2
                  #(begin macro)subof()
                  sbm _subofb37
                  sbm _subofa37 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc37
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso37
                  while
                    push _subofb37
                    if
                      at _subofb37
                        dec
                      ta
                      at _subofa37
                        dec
                      ta
                      push _subofa37
                      inc
                      not
                      if
                        at _subofc37
                          set 1
                        ta
                      fi
                    else
                      at _loopso37
                        reset
                      ta
                    fi
                  wend
                  push _subofc37
                  if
                    at _subofb37
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry3
                  #(begin macro)subof()
                  sbm _subofb38
                  sbm _subofa38 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc38
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso38
                  while
                    push _subofb38
                    if
                      at _subofb38
                        dec
                      ta
                      at _subofa38
                        dec
                      ta
                      push _subofa38
                      inc
                      not
                      if
                        at _subofc38
                          set 1
                        ta
                      fi
                    else
                      at _loopso38
                        reset
                      ta
                    fi
                  wend
                  push _subofc38
                  if
                    at _subofb38
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     writeX_AmodB1_2
                  add
                  pop     _addvvvXCarry3
                  push    _subvvXNameB1_3
                  push    _negNameB3_3
                  #(begin macro)subof()
                  sbm _subofb39
                  sbm _subofa39 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc39
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso39
                  while
                    push _subofb39
                    if
                      at _subofb39
                        dec
                      ta
                      at _subofa39
                        dec
                      ta
                      push _subofa39
                      inc
                      not
                      if
                        at _subofc39
                          set 1
                        ta
                      fi
                    else
                      at _loopso39
                        reset
                      ta
                    fi
                  wend
                  push _subofc39
                  if
                    at _subofb39
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry3
                  #(begin macro)subof()
                  sbm _subofb40
                  sbm _subofa40 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc40
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso40
                  while
                    push _subofb40
                    if
                      at _subofb40
                        dec
                      ta
                      at _subofa40
                        dec
                      ta
                      push _subofa40
                      inc
                      not
                      if
                        at _subofc40
                          set 1
                        ta
                      fi
                    else
                      at _loopso40
                        reset
                      ta
                    fi
                  wend
                  push _subofc40
                  if
                    at _subofb40
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     writeX_AmodB1_3
                  add
                  pop     _addvvvXCarry3
                  pop     writeX_AmodB1_c
                else # absB >= absA :
                  push    _aequb3
                  if # absA == absB , then name =0 (opposite sign then sum is zero)
                    #print("absA == absB\n")
                    #(begin macro)setvX(X,name,0)
                    at writeX_AmodB1_0
                      #(begin macro)setX(X,immValue)
                      bf <
                      bf <
                      bf <
                      bf <
                      bf <
                      reset
                      bf  >
                      set 0
                      bf >
                      set    0
                      bf >
                      set    0
                      bf >
                      set    0
                      bf >
                      set    0
                      #(end macro)setX(X,immValue)
                    ta
                    #(end macro)setvX(X,name,0)
                  else # absA < absB : do   absB-absA with sign of B
                    #print("absA < absB\n")
                    push    _negNameB3_s
                    pop     writeX_AmodB1_s    # name has same sign of nameB
                    
                    push    0
                    sbm     _addvvvXCarry3
                    push    _negNameB3_0
                    push    _subvvXNameB1_0
                    #(begin macro)subof()
                    sbm _subofb41
                    sbm _subofa41 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc41
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso41
                    while
                      push _subofb41
                      if
                        at _subofb41
                          dec
                        ta
                        at _subofa41
                          dec
                        ta
                        push _subofa41
                        inc
                        not
                        if
                          at _subofc41
                            set 1
                          ta
                        fi
                      else
                        at _loopso41
                          reset
                        ta
                      fi
                    wend
                    push _subofc41
                    if
                      at _subofb41
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry3
                    #(begin macro)subof()
                    sbm _subofb42
                    sbm _subofa42 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc42
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso42
                    while
                      push _subofb42
                      if
                        at _subofb42
                          dec
                        ta
                        at _subofa42
                          dec
                        ta
                        push _subofa42
                        inc
                        not
                        if
                          at _subofc42
                            set 1
                          ta
                        fi
                      else
                        at _loopso42
                          reset
                        ta
                      fi
                    wend
                    push _subofc42
                    if
                      at _subofb42
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB1_0
                    add
                    pop     _addvvvXCarry3
                    push    _negNameB3_1
                    push    _subvvXNameB1_1
                    #(begin macro)subof()
                    sbm _subofb43
                    sbm _subofa43 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc43
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso43
                    while
                      push _subofb43
                      if
                        at _subofb43
                          dec
                        ta
                        at _subofa43
                          dec
                        ta
                        push _subofa43
                        inc
                        not
                        if
                          at _subofc43
                            set 1
                          ta
                        fi
                      else
                        at _loopso43
                          reset
                        ta
                      fi
                    wend
                    push _subofc43
                    if
                      at _subofb43
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry3
                    #(begin macro)subof()
                    sbm _subofb44
                    sbm _subofa44 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc44
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso44
                    while
                      push _subofb44
                      if
                        at _subofb44
                          dec
                        ta
                        at _subofa44
                          dec
                        ta
                        push _subofa44
                        inc
                        not
                        if
                          at _subofc44
                            set 1
                          ta
                        fi
                      else
                        at _loopso44
                          reset
                        ta
                      fi
                    wend
                    push _subofc44
                    if
                      at _subofb44
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB1_1
                    add
                    pop     _addvvvXCarry3
                    push    _negNameB3_2
                    push    _subvvXNameB1_2
                    #(begin macro)subof()
                    sbm _subofb45
                    sbm _subofa45 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc45
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso45
                    while
                      push _subofb45
                      if
                        at _subofb45
                          dec
                        ta
                        at _subofa45
                          dec
                        ta
                        push _subofa45
                        inc
                        not
                        if
                          at _subofc45
                            set 1
                          ta
                        fi
                      else
                        at _loopso45
                          reset
                        ta
                      fi
                    wend
                    push _subofc45
                    if
                      at _subofb45
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry3
                    #(begin macro)subof()
                    sbm _subofb46
                    sbm _subofa46 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc46
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso46
                    while
                      push _subofb46
                      if
                        at _subofb46
                          dec
                        ta
                        at _subofa46
                          dec
                        ta
                        push _subofa46
                        inc
                        not
                        if
                          at _subofc46
                            set 1
                          ta
                        fi
                      else
                        at _loopso46
                          reset
                        ta
                      fi
                    wend
                    push _subofc46
                    if
                      at _subofb46
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB1_2
                    add
                    pop     _addvvvXCarry3
                    push    _negNameB3_3
                    push    _subvvXNameB1_3
                    #(begin macro)subof()
                    sbm _subofb47
                    sbm _subofa47 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc47
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso47
                    while
                      push _subofb47
                      if
                        at _subofb47
                          dec
                        ta
                        at _subofa47
                          dec
                        ta
                        push _subofa47
                        inc
                        not
                        if
                          at _subofc47
                            set 1
                          ta
                        fi
                      else
                        at _loopso47
                          reset
                        ta
                      fi
                    wend
                    push _subofc47
                    if
                      at _subofb47
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry3
                    #(begin macro)subof()
                    sbm _subofb48
                    sbm _subofa48 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc48
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso48
                    while
                      push _subofb48
                      if
                        at _subofb48
                          dec
                        ta
                        at _subofa48
                          dec
                        ta
                        push _subofa48
                        inc
                        not
                        if
                          at _subofc48
                            set 1
                          ta
                        fi
                      else
                        at _loopso48
                          reset
                        ta
                      fi
                    wend
                    push _subofc48
                    if
                      at _subofb48
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB1_3
                    add
                    pop     _addvvvXCarry3
                    pop     writeX_AmodB1_c
                  fi
                fi
                #(begin macro)scope_end()
                drop
                drop
                #(end macro)scope_end()
              fi
              #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
              #(begin macro)scope_end()
              drop
              drop
              drop
              drop
              drop
              drop
              #(end macro)scope_end()
              #(end macro)subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)
              #(begin macro)scope_end()
              drop
              drop
              drop
              drop
              drop
              drop
              #(end macro)scope_end()
              #(end macro)subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
            else
              #(begin macro)at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend
              #(begin macro)at_1("reset",a)
              #(begin macro)at_2(ope,a,"")
              at _divvvvvX_g1
                reset 
              ta
              #(end macro)at_2(ope,a,"")
              #(end macro)at_1("reset",a)
              #(end macro)at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend
            fi
          wend
          # treat sign of nameAmodB and nameAdivB
          push    _divvvvvXsA1
          pop     writeX_AmodB1_s   # sign of nameAmodB is sign of nameA
          push    _divvvvvXsA1
          push    _divvvvvXsB1
          diff
          if
            push    1
            pop     writeX_AdivB1_s # nameAdivB is negative if sign NameA <> sign nameB
          fi
        else
          #(begin macro)setcvX(X,nameAdivB)
          #(begin macro)at_set(name+"_c",1)
          #(begin macro)at_2("set",a,b)
          at writeX_AdivB1_c
            set 1
          ta
          #(end macro)at_2("set",a,b)
          #(end macro)at_set(name+"_c",1)
          #(end macro)setcvX(X,nameAdivB)
          #(begin macro)setcvX(X,nameAmodB)
          #(begin macro)at_set(name+"_c",1)
          #(begin macro)at_2("set",a,b)
          at writeX_AmodB1_c
            set 1
          ta
          #(end macro)at_2("set",a,b)
          #(end macro)at_set(name+"_c",1)
          #(end macro)setcvX(X,nameAmodB)
        fi
        #(begin macro)scope_end()
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        #(end macro)scope_end()
        #(end macro)divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)
        push    writeX_AmodB1_0
        pop  _stringDecimal32_
        #(begin macro)pushvX(X,"writeX_AdivB" + _writeX)
        push    writeX_AdivB1_c
        push    writeX_AdivB1_s
        push    writeX_AdivB1_3
        push    writeX_AdivB1_2
        push    writeX_AdivB1_1
        push    writeX_AdivB1_0
        #(end macro)pushvX(X,"writeX_AdivB" + _writeX)
        #(begin macro)popvX(X,"writeX_A" + _writeX)
        pop     writeX_A1_0
        pop     writeX_A1_1
        pop     writeX_A1_2
        pop     writeX_A1_3
        pop     writeX_A1_s
        pop     writeX_A1_c
        #(end macro)popvX(X,"writeX_A" + _writeX)
        arotl _stringDecimal32_
      endloop
      
      push _stringDecimal32_.size
      sbm writeXcnt1
      loop
        arotr _stringDecimal32_
        #(begin macro)if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)
        push writeXcnt1
        push 1
        sup
        if
          #(end macro)if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)
          #(begin macro)if_diff("_stringDecimal" + _xbits +"_", 0)
          push _stringDecimal32_
          push 0
          diff
          if
            #(end macro)if_diff("_stringDecimal" + _xbits +"_", 0)
            push _stringDecimal32_
            #(begin macro)popouthexa()
            sbm _input1
            #(begin macro)if_sup("_input" + __idx,9)
            push _input1
            push 9
            sup
            if
              #(end macro)if_sup("_input" + __idx,9)
              #(begin macro)at_add("_input" + __idx, "'7'")
              #(begin macro)at_2("add",a,b)
              at _input1
                add '7'
              ta
              #(end macro)at_2("add",a,b)
              #(end macro)at_add("_input" + __idx, "'7'")
            else
              #(begin macro)at_add("_input" + __idx, "'0'")
              #(begin macro)at_2("add",a,b)
              at _input1
                add '0'
              ta
              #(end macro)at_2("add",a,b)
              #(end macro)at_add("_input" + __idx, "'0'")
            fi
            pop out
            #(end macro)popouthexa()
            #(begin macro)at_set("writeXprefixzero"+_writeX, 0)
            #(begin macro)at_2("set",a,b)
            at writeXprefixzero1
              set 0
            ta
            #(end macro)at_2("set",a,b)
            #(end macro)at_set("writeXprefixzero"+_writeX, 0)
          else
            #(begin macro)if_equal("writeXprefixzero"+_writeX, 0)
            push writeXprefixzero1
            push 0
            equal
            if
              #(end macro)if_equal("writeXprefixzero"+_writeX, 0)
              push _stringDecimal32_
              #(begin macro)popouthexa()
              sbm _input2
              #(begin macro)if_sup("_input" + __idx,9)
              push _input2
              push 9
              sup
              if
                #(end macro)if_sup("_input" + __idx,9)
                #(begin macro)at_add("_input" + __idx, "'7'")
                #(begin macro)at_2("add",a,b)
                at _input2
                  add '7'
                ta
                #(end macro)at_2("add",a,b)
                #(end macro)at_add("_input" + __idx, "'7'")
              else
                #(begin macro)at_add("_input" + __idx, "'0'")
                #(begin macro)at_2("add",a,b)
                at _input2
                  add '0'
                ta
                #(end macro)at_2("add",a,b)
                #(end macro)at_add("_input" + __idx, "'0'")
              fi
              pop out
              #(end macro)popouthexa()
            fi
          fi
        else
          push _stringDecimal32_
          #(begin macro)popouthexa()
          sbm _input3
          #(begin macro)if_sup("_input" + __idx,9)
          push _input3
          push 9
          sup
          if
            #(end macro)if_sup("_input" + __idx,9)
            #(begin macro)at_add("_input" + __idx, "'7'")
            #(begin macro)at_2("add",a,b)
            at _input3
              add '7'
            ta
            #(end macro)at_2("add",a,b)
            #(end macro)at_add("_input" + __idx, "'7'")
          else
            #(begin macro)at_add("_input" + __idx, "'0'")
            #(begin macro)at_2("add",a,b)
            at _input3
              add '0'
            ta
            #(end macro)at_2("add",a,b)
            #(end macro)at_add("_input" + __idx, "'0'")
          fi
          pop out
          #(end macro)popouthexa()
        fi
      endloop
      #(begin macro)scope_end()
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      #(end macro)scope_end()
      #(end macro)writeX(4,name)
      #(end macro)write32 N
      #(begin macro)print("]=0\n")
      push    0
      set     93
      out             # ']'
      sub     32
      out             # '='
      sub     13
      out             # '0'
      set     10
      out             # 
      drop
      #(end macro)print("]=0\n")
    else
      #(begin macro)pushv32 N
      #(begin macro)pushvX(4,name)
      push    N_c
      push    N_s
      push    N_3
      push    N_2
      push    N_1
      push    N_0
      #(end macro)pushvX(4,name)
      #(end macro)pushv32 N
      #(begin macro)push32  3
      #(begin macro)pushX(4, immValue)
      push    0
      push    0
      push    0
      push    0
      push    0
      push    3
      #(end macro)pushX(4, immValue)
      #(end macro)push32  3
      #(begin macro)inf32
      #(begin macro)infX(4)
      #(begin macro)sbmX(X, "_infXA" + _infX, 1)
      #(begin macro)sbmX2(X,name,backward,0)
      sbm _infXA1_0 - 6
      sbm _infXA1_1 - 7
      sbm _infXA1_2 - 8
      sbm _infXA1_3 - 9
      sbm _infXA1_s - 10
      sbm _infXA1_c - 11
      #(end macro)sbmX2(X,name,backward,0)
      #(end macro)sbmX(X, "_infXA" + _infX, 1)
      #(begin macro)sbmX(X, "_infXB" + _infX, 0)
      #(begin macro)sbmX2(X,name,backward,0)
      sbm _infXB1_0 - 0
      sbm _infXB1_1 - 1
      sbm _infXB1_2 - 2
      sbm _infXB1_3 - 3
      sbm _infXB1_s - 4
      sbm _infXB1_c - 5
      #(end macro)sbmX2(X,name,backward,0)
      #(end macro)sbmX(X, "_infXB" + _infX, 0)
      sbm _infX1 - 11
      #(begin macro)infvvX(X, "_infXA" + _infX, "_infXB" + _infX)
      push 0
      sbm _infvvX1
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvarX(X, "_infvvXName" + _infvvX)
      #(begin macro)lvar(name + "_c",0)
      push 0
      sbm _infvvXName1_c
      #(end macro)lvar(name + "_c",0)
      #(begin macro)lvar(name + "_s",0)
      push 0
      sbm _infvvXName1_s
      #(end macro)lvar(name + "_s",0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm _infvvXName1_3
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm _infvvXName1_2
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm _infvvXName1_1
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm _infvvXName1_0
      #(end macro)lvar(name + "_"+ xx1,0)
      #(end macro)lvarX(X, "_infvvXName" + _infvvX)
      #(begin macro)subvvvX(X,  "_infvvXName" + _infvvX, nameA, nameB)
      #(begin macro)scope_begin()
      #(end macro)scope_begin()
      #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
      #(begin macro)lvar(name + "_c",0)
      push 0
      sbm _negNameB4_c
      #(end macro)lvar(name + "_c",0)
      #(begin macro)lvar(name + "_s",0)
      push 0
      sbm _negNameB4_s
      #(end macro)lvar(name + "_s",0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm _negNameB4_3
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm _negNameB4_2
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm _negNameB4_1
      #(end macro)lvar(name + "_"+ xx1,0)
      #(begin macro)lvar(name + "_"+ xx1,0)
      push 0
      sbm _negNameB4_0
      #(end macro)lvar(name + "_"+ xx1,0)
      #(end macro)lvarX(X,"_negNameB" + _subvvvX)
      #(begin macro)pushvX(X,nameB)
      push    _infXB1_c
      push    _infXB1_s
      push    _infXB1_3
      push    _infXB1_2
      push    _infXB1_1
      push    _infXB1_0
      #(end macro)pushvX(X,nameB)
      #(begin macro)popvX(X,"_negNameB" + _subvvvX)
      pop     _negNameB4_0
      pop     _negNameB4_1
      pop     _negNameB4_2
      pop     _negNameB4_3
      pop     _negNameB4_s
      pop     _negNameB4_c
      #(end macro)popvX(X,"_negNameB" + _subvvvX)
      #(begin macro)negvX(X,"_negNameB" + _subvvvX)
      push    _negNameB4_s
      dec
      bool
      dup
      if    # if name is now negative
        #(begin macro)if_equal(name +"_"+xx, 0)
        push _negNameB4_0
        push 0
        equal
        if
          #(end macro)if_equal(name +"_"+xx, 0)
          #(begin macro)if_equal(name +"_"+xx, 0)
          push _negNameB4_1
          push 0
          equal
          if
            #(end macro)if_equal(name +"_"+xx, 0)
            #(begin macro)if_equal(name +"_"+xx, 0)
            push _negNameB4_2
            push 0
            equal
            if
              #(end macro)if_equal(name +"_"+xx, 0)
              #(begin macro)if_equal(name +"_"+xx, 0)
              push _negNameB4_3
              push 0
              equal
              if
                #(end macro)if_equal(name +"_"+xx, 0)
                #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
                #(begin macro)at_1("reset",a)
                #(begin macro)at_2(ope,a,"")
                at _negNameB4_s
                  reset 
                ta
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("reset",a)
                #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
              fi
            fi
          fi
        fi
      fi
      pop     _negNameB4_s
      #(end macro)negvX(X,"_negNameB" + _subvvvX)
      #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
      push    _infXA1_s
      push    _negNameB4_s
      or
      not
      push    _infXA1_s
      push    _negNameB4_s
      and
      or
      if      # nameA and nameB are both positive or negative
        push    _infXA1_s
        pop     _infvvXName1_s    # name has same sign of nameA and nameB
        push    0
        push    _infXA1_0
        #(begin macro)addof()
        sbm _addofb37
        sbm _addofa37 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc37
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao37
        while
          push _addofa37
          if
            at _addofa37
              dec
            ta
            at _addofb37
              inc
            ta
            push _addofb37
            not
            if
              at _addofc37
                set 1
              ta
            fi
          else
            at _loopao37
              reset
            ta
          fi
        wend
        push _addofc37
        if
          at _addofa37
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        pop     _infvvXName1_0
        push    _negNameB4_0
        #(begin macro)addof()
        sbm _addofb38
        sbm _addofa38 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc38
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao38
        while
          push _addofa38
          if
            at _addofa38
              dec
            ta
            at _addofb38
              inc
            ta
            push _addofb38
            not
            if
              at _addofc38
                set 1
              ta
            fi
          else
            at _loopao38
              reset
            ta
          fi
        wend
        push _addofc38
        if
          at _addofa38
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        push    _infvvXName1_0
        #(begin macro)addof()
        sbm _addofb39
        sbm _addofa39 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc39
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao39
        while
          push _addofa39
          if
            at _addofa39
              dec
            ta
            at _addofb39
              inc
            ta
            push _addofb39
            not
            if
              at _addofc39
                set 1
              ta
            fi
          else
            at _loopao39
              reset
            ta
          fi
        wend
        push _addofc39
        if
          at _addofa39
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        pop     _infvvXName1_0
        add
        push    _infXA1_1
        #(begin macro)addof()
        sbm _addofb40
        sbm _addofa40 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc40
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao40
        while
          push _addofa40
          if
            at _addofa40
              dec
            ta
            at _addofb40
              inc
            ta
            push _addofb40
            not
            if
              at _addofc40
                set 1
              ta
            fi
          else
            at _loopao40
              reset
            ta
          fi
        wend
        push _addofc40
        if
          at _addofa40
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        pop     _infvvXName1_1
        push    _negNameB4_1
        #(begin macro)addof()
        sbm _addofb41
        sbm _addofa41 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc41
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao41
        while
          push _addofa41
          if
            at _addofa41
              dec
            ta
            at _addofb41
              inc
            ta
            push _addofb41
            not
            if
              at _addofc41
                set 1
              ta
            fi
          else
            at _loopao41
              reset
            ta
          fi
        wend
        push _addofc41
        if
          at _addofa41
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        push    _infvvXName1_1
        #(begin macro)addof()
        sbm _addofb42
        sbm _addofa42 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc42
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao42
        while
          push _addofa42
          if
            at _addofa42
              dec
            ta
            at _addofb42
              inc
            ta
            push _addofb42
            not
            if
              at _addofc42
                set 1
              ta
            fi
          else
            at _loopao42
              reset
            ta
          fi
        wend
        push _addofc42
        if
          at _addofa42
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        pop     _infvvXName1_1
        add
        push    _infXA1_2
        #(begin macro)addof()
        sbm _addofb43
        sbm _addofa43 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc43
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao43
        while
          push _addofa43
          if
            at _addofa43
              dec
            ta
            at _addofb43
              inc
            ta
            push _addofb43
            not
            if
              at _addofc43
                set 1
              ta
            fi
          else
            at _loopao43
              reset
            ta
          fi
        wend
        push _addofc43
        if
          at _addofa43
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        pop     _infvvXName1_2
        push    _negNameB4_2
        #(begin macro)addof()
        sbm _addofb44
        sbm _addofa44 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc44
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao44
        while
          push _addofa44
          if
            at _addofa44
              dec
            ta
            at _addofb44
              inc
            ta
            push _addofb44
            not
            if
              at _addofc44
                set 1
              ta
            fi
          else
            at _loopao44
              reset
            ta
          fi
        wend
        push _addofc44
        if
          at _addofa44
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        push    _infvvXName1_2
        #(begin macro)addof()
        sbm _addofb45
        sbm _addofa45 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc45
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao45
        while
          push _addofa45
          if
            at _addofa45
              dec
            ta
            at _addofb45
              inc
            ta
            push _addofb45
            not
            if
              at _addofc45
                set 1
              ta
            fi
          else
            at _loopao45
              reset
            ta
          fi
        wend
        push _addofc45
        if
          at _addofa45
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        pop     _infvvXName1_2
        add
        push    _infXA1_3
        #(begin macro)addof()
        sbm _addofb46
        sbm _addofa46 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc46
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao46
        while
          push _addofa46
          if
            at _addofa46
              dec
            ta
            at _addofb46
              inc
            ta
            push _addofb46
            not
            if
              at _addofc46
                set 1
              ta
            fi
          else
            at _loopao46
              reset
            ta
          fi
        wend
        push _addofc46
        if
          at _addofa46
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        pop     _infvvXName1_3
        push    _negNameB4_3
        #(begin macro)addof()
        sbm _addofb47
        sbm _addofa47 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc47
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao47
        while
          push _addofa47
          if
            at _addofa47
              dec
            ta
            at _addofb47
              inc
            ta
            push _addofb47
            not
            if
              at _addofc47
                set 1
              ta
            fi
          else
            at _loopao47
              reset
            ta
          fi
        wend
        push _addofc47
        if
          at _addofa47
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        push    _infvvXName1_3
        #(begin macro)addof()
        sbm _addofb48
        sbm _addofa48 - 1
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_addofc"+_addof ,0)
        push 0
        sbm _addofc48
        #(end macro)lvar("_addofc"+_addof ,0)
        push 1
        sbm _loopao48
        while
          push _addofa48
          if
            at _addofa48
              dec
            ta
            at _addofb48
              inc
            ta
            push _addofb48
            not
            if
              at _addofc48
                set 1
              ta
            fi
          else
            at _loopao48
              reset
            ta
          fi
        wend
        push _addofc48
        if
          at _addofa48
            set 1
          ta
        fi
        #(begin macro)scope_end()
        drop
        #(end macro)scope_end()
        #(end macro)addof()
        pop     _infvvXName1_3
        add
        pop     _infvvXName1_c
      else  # nameA has a different sign of nameB
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
        push 0
        sbm _asupb4
        #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
        #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
        push 0
        sbm _aequb4
        #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
        push    _infXA1_3
        push    _negNameB4_3
        sup
        if
          at _asupb4
            set 1
          ta
        else
          push    _infXA1_3
          push    _negNameB4_3
          diff
          if
            at _asupb4
              reset
            ta
          else
            push    _infXA1_2
            push    _negNameB4_2
            sup
            if
              at _asupb4
                set 1
              ta
            else
              push    _infXA1_2
              push    _negNameB4_2
              diff
              if
                at _asupb4
                  reset
                ta
              else
                push    _infXA1_1
                push    _negNameB4_1
                sup
                if
                  at _asupb4
                    set 1
                  ta
                else
                  push    _infXA1_1
                  push    _negNameB4_1
                  diff
                  if
                    at _asupb4
                      reset
                    ta
                  else
                    push    _infXA1_0
                    push    _negNameB4_0
                    sup
                    if
                      at _asupb4
                        set 1
                      ta
                    else
                      push    _infXA1_0
                      push    _negNameB4_0
                      diff
                      if
                        at _asupb4
                          reset
                        ta
                      else
                        at _aequb4
                          set 1
                        ta
                      fi
                    fi
                  fi
                fi
              fi
            fi
          fi
        fi
        push _asupb4
        if  # absA > absB : do  absA-absB with sign of A
          # print("absA > absB\n")
          push    _infXA1_s
          pop     _infvvXName1_s    # name has same sign of nameA
          
          push    0
          sbm     _addvvvXCarry4
          push    _infXA1_0
          push    _negNameB4_0
          #(begin macro)subof()
          sbm _subofb49
          sbm _subofa49 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc49
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso49
          while
            push _subofb49
            if
              at _subofb49
                dec
              ta
              at _subofa49
                dec
              ta
              push _subofa49
              inc
              not
              if
                at _subofc49
                  set 1
                ta
              fi
            else
              at _loopso49
                reset
              ta
            fi
          wend
          push _subofc49
          if
            at _subofb49
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          push    _addvvvXCarry4
          #(begin macro)subof()
          sbm _subofb50
          sbm _subofa50 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc50
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso50
          while
            push _subofb50
            if
              at _subofb50
                dec
              ta
              at _subofa50
                dec
              ta
              push _subofa50
              inc
              not
              if
                at _subofc50
                  set 1
                ta
              fi
            else
              at _loopso50
                reset
              ta
            fi
          wend
          push _subofc50
          if
            at _subofb50
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          pop     _infvvXName1_0
          add
          pop     _addvvvXCarry4
          push    _infXA1_1
          push    _negNameB4_1
          #(begin macro)subof()
          sbm _subofb51
          sbm _subofa51 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc51
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso51
          while
            push _subofb51
            if
              at _subofb51
                dec
              ta
              at _subofa51
                dec
              ta
              push _subofa51
              inc
              not
              if
                at _subofc51
                  set 1
                ta
              fi
            else
              at _loopso51
                reset
              ta
            fi
          wend
          push _subofc51
          if
            at _subofb51
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          push    _addvvvXCarry4
          #(begin macro)subof()
          sbm _subofb52
          sbm _subofa52 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc52
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso52
          while
            push _subofb52
            if
              at _subofb52
                dec
              ta
              at _subofa52
                dec
              ta
              push _subofa52
              inc
              not
              if
                at _subofc52
                  set 1
                ta
              fi
            else
              at _loopso52
                reset
              ta
            fi
          wend
          push _subofc52
          if
            at _subofb52
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          pop     _infvvXName1_1
          add
          pop     _addvvvXCarry4
          push    _infXA1_2
          push    _negNameB4_2
          #(begin macro)subof()
          sbm _subofb53
          sbm _subofa53 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc53
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso53
          while
            push _subofb53
            if
              at _subofb53
                dec
              ta
              at _subofa53
                dec
              ta
              push _subofa53
              inc
              not
              if
                at _subofc53
                  set 1
                ta
              fi
            else
              at _loopso53
                reset
              ta
            fi
          wend
          push _subofc53
          if
            at _subofb53
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          push    _addvvvXCarry4
          #(begin macro)subof()
          sbm _subofb54
          sbm _subofa54 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc54
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso54
          while
            push _subofb54
            if
              at _subofb54
                dec
              ta
              at _subofa54
                dec
              ta
              push _subofa54
              inc
              not
              if
                at _subofc54
                  set 1
                ta
              fi
            else
              at _loopso54
                reset
              ta
            fi
          wend
          push _subofc54
          if
            at _subofb54
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          pop     _infvvXName1_2
          add
          pop     _addvvvXCarry4
          push    _infXA1_3
          push    _negNameB4_3
          #(begin macro)subof()
          sbm _subofb55
          sbm _subofa55 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc55
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso55
          while
            push _subofb55
            if
              at _subofb55
                dec
              ta
              at _subofa55
                dec
              ta
              push _subofa55
              inc
              not
              if
                at _subofc55
                  set 1
                ta
              fi
            else
              at _loopso55
                reset
              ta
            fi
          wend
          push _subofc55
          if
            at _subofb55
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          push    _addvvvXCarry4
          #(begin macro)subof()
          sbm _subofb56
          sbm _subofa56 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_subofc"+_subof ,0)
          push 0
          sbm _subofc56
          #(end macro)lvar("_subofc"+_subof ,0)
          push 1
          sbm _loopso56
          while
            push _subofb56
            if
              at _subofb56
                dec
              ta
              at _subofa56
                dec
              ta
              push _subofa56
              inc
              not
              if
                at _subofc56
                  set 1
                ta
              fi
            else
              at _loopso56
                reset
              ta
            fi
          wend
          push _subofc56
          if
            at _subofb56
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          swap
          #(end macro)subof()
          pop     _infvvXName1_3
          add
          pop     _addvvvXCarry4
          pop     _infvvXName1_c
        else # absB >= absA :
          push    _aequb4
          if # absA == absB , then name =0 (opposite sign then sum is zero)
            #print("absA == absB\n")
            #(begin macro)setvX(X,name,0)
            at _infvvXName1_0
              #(begin macro)setX(X,immValue)
              bf <
              bf <
              bf <
              bf <
              bf <
              reset
              bf  >
              set 0
              bf >
              set    0
              bf >
              set    0
              bf >
              set    0
              bf >
              set    0
              #(end macro)setX(X,immValue)
            ta
            #(end macro)setvX(X,name,0)
          else # absA < absB : do   absB-absA with sign of B
            #print("absA < absB\n")
            push    _negNameB4_s
            pop     _infvvXName1_s    # name has same sign of nameB
            
            push    0
            sbm     _addvvvXCarry4
            push    _negNameB4_0
            push    _infXA1_0
            #(begin macro)subof()
            sbm _subofb57
            sbm _subofa57 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc57
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso57
            while
              push _subofb57
              if
                at _subofb57
                  dec
                ta
                at _subofa57
                  dec
                ta
                push _subofa57
                inc
                not
                if
                  at _subofc57
                    set 1
                  ta
                fi
              else
                at _loopso57
                  reset
                ta
              fi
            wend
            push _subofc57
            if
              at _subofb57
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            push    _addvvvXCarry4
            #(begin macro)subof()
            sbm _subofb58
            sbm _subofa58 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc58
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso58
            while
              push _subofb58
              if
                at _subofb58
                  dec
                ta
                at _subofa58
                  dec
                ta
                push _subofa58
                inc
                not
                if
                  at _subofc58
                    set 1
                  ta
                fi
              else
                at _loopso58
                  reset
                ta
              fi
            wend
            push _subofc58
            if
              at _subofb58
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            pop     _infvvXName1_0
            add
            pop     _addvvvXCarry4
            push    _negNameB4_1
            push    _infXA1_1
            #(begin macro)subof()
            sbm _subofb59
            sbm _subofa59 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc59
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso59
            while
              push _subofb59
              if
                at _subofb59
                  dec
                ta
                at _subofa59
                  dec
                ta
                push _subofa59
                inc
                not
                if
                  at _subofc59
                    set 1
                  ta
                fi
              else
                at _loopso59
                  reset
                ta
              fi
            wend
            push _subofc59
            if
              at _subofb59
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            push    _addvvvXCarry4
            #(begin macro)subof()
            sbm _subofb60
            sbm _subofa60 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc60
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso60
            while
              push _subofb60
              if
                at _subofb60
                  dec
                ta
                at _subofa60
                  dec
                ta
                push _subofa60
                inc
                not
                if
                  at _subofc60
                    set 1
                  ta
                fi
              else
                at _loopso60
                  reset
                ta
              fi
            wend
            push _subofc60
            if
              at _subofb60
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            pop     _infvvXName1_1
            add
            pop     _addvvvXCarry4
            push    _negNameB4_2
            push    _infXA1_2
            #(begin macro)subof()
            sbm _subofb61
            sbm _subofa61 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc61
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso61
            while
              push _subofb61
              if
                at _subofb61
                  dec
                ta
                at _subofa61
                  dec
                ta
                push _subofa61
                inc
                not
                if
                  at _subofc61
                    set 1
                  ta
                fi
              else
                at _loopso61
                  reset
                ta
              fi
            wend
            push _subofc61
            if
              at _subofb61
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            push    _addvvvXCarry4
            #(begin macro)subof()
            sbm _subofb62
            sbm _subofa62 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc62
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso62
            while
              push _subofb62
              if
                at _subofb62
                  dec
                ta
                at _subofa62
                  dec
                ta
                push _subofa62
                inc
                not
                if
                  at _subofc62
                    set 1
                  ta
                fi
              else
                at _loopso62
                  reset
                ta
              fi
            wend
            push _subofc62
            if
              at _subofb62
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            pop     _infvvXName1_2
            add
            pop     _addvvvXCarry4
            push    _negNameB4_3
            push    _infXA1_3
            #(begin macro)subof()
            sbm _subofb63
            sbm _subofa63 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc63
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso63
            while
              push _subofb63
              if
                at _subofb63
                  dec
                ta
                at _subofa63
                  dec
                ta
                push _subofa63
                inc
                not
                if
                  at _subofc63
                    set 1
                  ta
                fi
              else
                at _loopso63
                  reset
                ta
              fi
            wend
            push _subofc63
            if
              at _subofb63
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            push    _addvvvXCarry4
            #(begin macro)subof()
            sbm _subofb64
            sbm _subofa64 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc64
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso64
            while
              push _subofb64
              if
                at _subofb64
                  dec
                ta
                at _subofa64
                  dec
                ta
                push _subofa64
                inc
                not
                if
                  at _subofc64
                    set 1
                  ta
                fi
              else
                at _loopso64
                  reset
                ta
              fi
            wend
            push _subofc64
            if
              at _subofb64
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            pop     _infvvXName1_3
            add
            pop     _addvvvXCarry4
            pop     _infvvXName1_c
          fi
        fi
        #(begin macro)scope_end()
        drop
        drop
        #(end macro)scope_end()
      fi
      #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
      #(begin macro)scope_end()
      drop
      drop
      drop
      drop
      drop
      drop
      #(end macro)scope_end()
      #(end macro)subvvvX(X,  "_infvvXName" + _infvvX, nameA, nameB)
      push _infvvXName1_s
      pop _infvvX1
      #(begin macro)scope_end()
      drop
      drop
      drop
      drop
      drop
      drop
      #(end macro)scope_end()
      #(end macro)infvvX(X, "_infXA" + _infX, "_infXB" + _infX)
      pop _infX1
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      drop
      #(end macro)infX(4)
      #(end macro)inf32
      if
        #(begin macro)print("f[")
        push    0
        set     102
        out             # 'f'
        sub     11
        out             # '['
        drop
        #(end macro)print("f[")
        #(begin macro)write32 N
        #(begin macro)writeX(4,name)
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("writeXprefixzero" + _writeX, 1)
        push 1
        sbm writeXprefixzero2
        #(end macro)lvar("writeXprefixzero" + _writeX, 1)
        #(begin macro)lvarX(X,"writeX_A"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_A2_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_A2_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A2_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A2_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A2_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A2_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_A"+_writeX)
        #(begin macro)lvarX(X,"writeX_B"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_B2_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_B2_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B2_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B2_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B2_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B2_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_B"+_writeX)
        #(begin macro)lvarX(X,"writeX_AmodB"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_AmodB2_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_AmodB2_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB2_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB2_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB2_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB2_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_AmodB"+_writeX)
        #(begin macro)lvarX(X,"writeX_AdivB"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_AdivB2_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_AdivB2_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB2_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB2_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB2_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB2_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_AdivB"+_writeX)
        
        #(begin macro)pushvX(X,name)
        push    N_c
        push    N_s
        push    N_3
        push    N_2
        push    N_1
        push    N_0
        #(end macro)pushvX(X,name)
        #(begin macro)popvX(X,"writeX_A"+_writeX)
        pop     writeX_A2_0
        pop     writeX_A2_1
        pop     writeX_A2_2
        pop     writeX_A2_3
        pop     writeX_A2_s
        pop     writeX_A2_c
        #(end macro)popvX(X,"writeX_A"+_writeX)
        
        #pushX(X,10)
        #popvX(X,"writeX_B"+_writeX)
        #(begin macro)setvX(X,"writeX_B"+_writeX, 10)
        at writeX_B2_0
          #(begin macro)setX(X,immValue)
          bf <
          bf <
          bf <
          bf <
          bf <
          reset
          bf  >
          set 0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    10
          #(end macro)setX(X,immValue)
        ta
        #(end macro)setvX(X,"writeX_B"+_writeX, 10)
        
        push writeX_A2_s
        if
          push    '-'
          pop     out   # write '-' if name < 0
        fi
        
        push _stringDecimal32_.size
        loop
          # output = input mod 10 ; input = input div 10
          #(begin macro)divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)lvar(name + "_c",0)
          push 0
          sbm _divvvvvXabsNameA2_c
          #(end macro)lvar(name + "_c",0)
          #(begin macro)lvar(name + "_s",0)
          push 0
          sbm _divvvvvXabsNameA2_s
          #(end macro)lvar(name + "_s",0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA2_3
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA2_2
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA2_1
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA2_0
          #(end macro)lvar(name + "_"+ xx1,0)
          #(end macro)lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)pushvX(X,nameA)
          push    writeX_A2_c
          push    writeX_A2_s
          push    writeX_A2_3
          push    writeX_A2_2
          push    writeX_A2_1
          push    writeX_A2_0
          #(end macro)pushvX(X,nameA)
          #(begin macro)popvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          pop     _divvvvvXabsNameA2_0
          pop     _divvvvvXabsNameA2_1
          pop     _divvvvvXabsNameA2_2
          pop     _divvvvvXabsNameA2_3
          pop     _divvvvvXabsNameA2_s
          pop     _divvvvvXabsNameA2_c
          #(end macro)popvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)lvar("_divvvvvXsA" + _divvvvvX, 0)
          push 0
          sbm _divvvvvXsA2
          #(end macro)lvar("_divvvvvXsA" + _divvvvvX, 0)
          push writeX_A2_s
          pop _divvvvvXsA2
          #(begin macro)absvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          push    0
          pop     _divvvvvXabsNameA2_s
          #(end macro)absvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          
          #(begin macro)lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)
          #(begin macro)lvar(name + "_c",0)
          push 0
          sbm _divvvvvXabsNameB2_c
          #(end macro)lvar(name + "_c",0)
          #(begin macro)lvar(name + "_s",0)
          push 0
          sbm _divvvvvXabsNameB2_s
          #(end macro)lvar(name + "_s",0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB2_3
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB2_2
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB2_1
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB2_0
          #(end macro)lvar(name + "_"+ xx1,0)
          #(end macro)lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)
          #(begin macro)pushvX(X,nameB)
          push    writeX_B2_c
          push    writeX_B2_s
          push    writeX_B2_3
          push    writeX_B2_2
          push    writeX_B2_1
          push    writeX_B2_0
          #(end macro)pushvX(X,nameB)
          #(begin macro)popvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          pop     _divvvvvXabsNameB2_0
          pop     _divvvvvXabsNameB2_1
          pop     _divvvvvXabsNameB2_2
          pop     _divvvvvXabsNameB2_3
          pop     _divvvvvXabsNameB2_s
          pop     _divvvvvXabsNameB2_c
          #(end macro)popvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          #(begin macro)lvar("_divvvvvXsB" + _divvvvvX, 0)
          push 0
          sbm _divvvvvXsB2
          #(end macro)lvar("_divvvvvXsB" + _divvvvvX, 0)
          push writeX_B2_s
          pop _divvvvvXsB2
          #(begin macro)absvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          push    0
          pop     _divvvvvXabsNameB2_s
          #(end macro)absvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          
          #(begin macro)pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          push    _divvvvvXabsNameA2_c
          push    _divvvvvXabsNameA2_s
          push    _divvvvvXabsNameA2_3
          push    _divvvvvXabsNameA2_2
          push    _divvvvvXabsNameA2_1
          push    _divvvvvXabsNameA2_0
          #(end macro)pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)popvX(X,nameAmodB)
          pop     writeX_AmodB2_0
          pop     writeX_AmodB2_1
          pop     writeX_AmodB2_2
          pop     writeX_AmodB2_3
          pop     writeX_AmodB2_s
          pop     writeX_AmodB2_c
          #(end macro)popvX(X,nameAmodB)
          
          #(begin macro)resetvX(X,nameAdivB)
          at writeX_AdivB2_0
            #(begin macro)resetX(X)
            bf <
            bf <
            bf <
            bf <
            bf <
            bf [-]
            bf >[-]
            bf >[-]
            bf >[-]
            bf >[-]
            bf >[-]
            #(end macro)resetX(X)
          ta
          #(end macro)resetvX(X,nameAdivB)
          
          #(begin macro)boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          push _divvvvvXabsNameB2_0
          bool
          push _divvvvvXabsNameB2_1
          bool
          push _divvvvvXabsNameB2_2
          bool
          push _divvvvvXabsNameB2_3
          bool
          or
          or
          or
          #(end macro)boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          if
            push    1
            sbm     _divvvvvX_g2
            while
              #(begin macro)supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
              push 0
              sbm _supequalvvX3
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvarX(X, "_supequalvvXName" + _supequalvvX)
              #(begin macro)lvar(name + "_c",0)
              push 0
              sbm _supequalvvXName3_c
              #(end macro)lvar(name + "_c",0)
              #(begin macro)lvar(name + "_s",0)
              push 0
              sbm _supequalvvXName3_s
              #(end macro)lvar(name + "_s",0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName3_3
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName3_2
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName3_1
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName3_0
              #(end macro)lvar(name + "_"+ xx1,0)
              #(end macro)lvarX(X, "_supequalvvXName" + _supequalvvX)
              #(begin macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
              #(begin macro)lvar(name + "_c",0)
              push 0
              sbm _negNameB5_c
              #(end macro)lvar(name + "_c",0)
              #(begin macro)lvar(name + "_s",0)
              push 0
              sbm _negNameB5_s
              #(end macro)lvar(name + "_s",0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB5_3
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB5_2
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB5_1
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB5_0
              #(end macro)lvar(name + "_"+ xx1,0)
              #(end macro)lvarX(X,"_negNameB" + _subvvvX)
              #(begin macro)pushvX(X,nameB)
              push    _divvvvvXabsNameB2_c
              push    _divvvvvXabsNameB2_s
              push    _divvvvvXabsNameB2_3
              push    _divvvvvXabsNameB2_2
              push    _divvvvvXabsNameB2_1
              push    _divvvvvXabsNameB2_0
              #(end macro)pushvX(X,nameB)
              #(begin macro)popvX(X,"_negNameB" + _subvvvX)
              pop     _negNameB5_0
              pop     _negNameB5_1
              pop     _negNameB5_2
              pop     _negNameB5_3
              pop     _negNameB5_s
              pop     _negNameB5_c
              #(end macro)popvX(X,"_negNameB" + _subvvvX)
              #(begin macro)negvX(X,"_negNameB" + _subvvvX)
              push    _negNameB5_s
              dec
              bool
              dup
              if    # if name is now negative
                #(begin macro)if_equal(name +"_"+xx, 0)
                push _negNameB5_0
                push 0
                equal
                if
                  #(end macro)if_equal(name +"_"+xx, 0)
                  #(begin macro)if_equal(name +"_"+xx, 0)
                  push _negNameB5_1
                  push 0
                  equal
                  if
                    #(end macro)if_equal(name +"_"+xx, 0)
                    #(begin macro)if_equal(name +"_"+xx, 0)
                    push _negNameB5_2
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_"+xx, 0)
                      #(begin macro)if_equal(name +"_"+xx, 0)
                      push _negNameB5_3
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_"+xx, 0)
                        #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
                        #(begin macro)at_1("reset",a)
                        #(begin macro)at_2(ope,a,"")
                        at _negNameB5_s
                          reset 
                        ta
                        #(end macro)at_2(ope,a,"")
                        #(end macro)at_1("reset",a)
                        #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
                      fi
                    fi
                  fi
                fi
              fi
              pop     _negNameB5_s
              #(end macro)negvX(X,"_negNameB" + _subvvvX)
              #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
              push    writeX_AmodB2_s
              push    _negNameB5_s
              or
              not
              push    writeX_AmodB2_s
              push    _negNameB5_s
              and
              or
              if      # nameA and nameB are both positive or negative
                push    writeX_AmodB2_s
                pop     _supequalvvXName3_s    # name has same sign of nameA and nameB
                push    0
                push    writeX_AmodB2_0
                #(begin macro)addof()
                sbm _addofb49
                sbm _addofa49 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc49
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao49
                while
                  push _addofa49
                  if
                    at _addofa49
                      dec
                    ta
                    at _addofb49
                      inc
                    ta
                    push _addofb49
                    not
                    if
                      at _addofc49
                        set 1
                      ta
                    fi
                  else
                    at _loopao49
                      reset
                    ta
                  fi
                wend
                push _addofc49
                if
                  at _addofa49
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName3_0
                push    _negNameB5_0
                #(begin macro)addof()
                sbm _addofb50
                sbm _addofa50 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc50
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao50
                while
                  push _addofa50
                  if
                    at _addofa50
                      dec
                    ta
                    at _addofb50
                      inc
                    ta
                    push _addofb50
                    not
                    if
                      at _addofc50
                        set 1
                      ta
                    fi
                  else
                    at _loopao50
                      reset
                    ta
                  fi
                wend
                push _addofc50
                if
                  at _addofa50
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName3_0
                #(begin macro)addof()
                sbm _addofb51
                sbm _addofa51 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc51
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao51
                while
                  push _addofa51
                  if
                    at _addofa51
                      dec
                    ta
                    at _addofb51
                      inc
                    ta
                    push _addofb51
                    not
                    if
                      at _addofc51
                        set 1
                      ta
                    fi
                  else
                    at _loopao51
                      reset
                    ta
                  fi
                wend
                push _addofc51
                if
                  at _addofa51
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName3_0
                add
                push    writeX_AmodB2_1
                #(begin macro)addof()
                sbm _addofb52
                sbm _addofa52 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc52
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao52
                while
                  push _addofa52
                  if
                    at _addofa52
                      dec
                    ta
                    at _addofb52
                      inc
                    ta
                    push _addofb52
                    not
                    if
                      at _addofc52
                        set 1
                      ta
                    fi
                  else
                    at _loopao52
                      reset
                    ta
                  fi
                wend
                push _addofc52
                if
                  at _addofa52
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName3_1
                push    _negNameB5_1
                #(begin macro)addof()
                sbm _addofb53
                sbm _addofa53 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc53
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao53
                while
                  push _addofa53
                  if
                    at _addofa53
                      dec
                    ta
                    at _addofb53
                      inc
                    ta
                    push _addofb53
                    not
                    if
                      at _addofc53
                        set 1
                      ta
                    fi
                  else
                    at _loopao53
                      reset
                    ta
                  fi
                wend
                push _addofc53
                if
                  at _addofa53
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName3_1
                #(begin macro)addof()
                sbm _addofb54
                sbm _addofa54 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc54
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao54
                while
                  push _addofa54
                  if
                    at _addofa54
                      dec
                    ta
                    at _addofb54
                      inc
                    ta
                    push _addofb54
                    not
                    if
                      at _addofc54
                        set 1
                      ta
                    fi
                  else
                    at _loopao54
                      reset
                    ta
                  fi
                wend
                push _addofc54
                if
                  at _addofa54
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName3_1
                add
                push    writeX_AmodB2_2
                #(begin macro)addof()
                sbm _addofb55
                sbm _addofa55 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc55
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao55
                while
                  push _addofa55
                  if
                    at _addofa55
                      dec
                    ta
                    at _addofb55
                      inc
                    ta
                    push _addofb55
                    not
                    if
                      at _addofc55
                        set 1
                      ta
                    fi
                  else
                    at _loopao55
                      reset
                    ta
                  fi
                wend
                push _addofc55
                if
                  at _addofa55
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName3_2
                push    _negNameB5_2
                #(begin macro)addof()
                sbm _addofb56
                sbm _addofa56 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc56
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao56
                while
                  push _addofa56
                  if
                    at _addofa56
                      dec
                    ta
                    at _addofb56
                      inc
                    ta
                    push _addofb56
                    not
                    if
                      at _addofc56
                        set 1
                      ta
                    fi
                  else
                    at _loopao56
                      reset
                    ta
                  fi
                wend
                push _addofc56
                if
                  at _addofa56
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName3_2
                #(begin macro)addof()
                sbm _addofb57
                sbm _addofa57 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc57
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao57
                while
                  push _addofa57
                  if
                    at _addofa57
                      dec
                    ta
                    at _addofb57
                      inc
                    ta
                    push _addofb57
                    not
                    if
                      at _addofc57
                        set 1
                      ta
                    fi
                  else
                    at _loopao57
                      reset
                    ta
                  fi
                wend
                push _addofc57
                if
                  at _addofa57
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName3_2
                add
                push    writeX_AmodB2_3
                #(begin macro)addof()
                sbm _addofb58
                sbm _addofa58 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc58
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao58
                while
                  push _addofa58
                  if
                    at _addofa58
                      dec
                    ta
                    at _addofb58
                      inc
                    ta
                    push _addofb58
                    not
                    if
                      at _addofc58
                        set 1
                      ta
                    fi
                  else
                    at _loopao58
                      reset
                    ta
                  fi
                wend
                push _addofc58
                if
                  at _addofa58
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName3_3
                push    _negNameB5_3
                #(begin macro)addof()
                sbm _addofb59
                sbm _addofa59 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc59
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao59
                while
                  push _addofa59
                  if
                    at _addofa59
                      dec
                    ta
                    at _addofb59
                      inc
                    ta
                    push _addofb59
                    not
                    if
                      at _addofc59
                        set 1
                      ta
                    fi
                  else
                    at _loopao59
                      reset
                    ta
                  fi
                wend
                push _addofc59
                if
                  at _addofa59
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName3_3
                #(begin macro)addof()
                sbm _addofb60
                sbm _addofa60 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc60
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao60
                while
                  push _addofa60
                  if
                    at _addofa60
                      dec
                    ta
                    at _addofb60
                      inc
                    ta
                    push _addofb60
                    not
                    if
                      at _addofc60
                        set 1
                      ta
                    fi
                  else
                    at _loopao60
                      reset
                    ta
                  fi
                wend
                push _addofc60
                if
                  at _addofa60
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName3_3
                add
                pop     _supequalvvXName3_c
              else  # nameA has a different sign of nameB
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                push 0
                sbm _asupb5
                #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                push 0
                sbm _aequb5
                #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                push    writeX_AmodB2_3
                push    _negNameB5_3
                sup
                if
                  at _asupb5
                    set 1
                  ta
                else
                  push    writeX_AmodB2_3
                  push    _negNameB5_3
                  diff
                  if
                    at _asupb5
                      reset
                    ta
                  else
                    push    writeX_AmodB2_2
                    push    _negNameB5_2
                    sup
                    if
                      at _asupb5
                        set 1
                      ta
                    else
                      push    writeX_AmodB2_2
                      push    _negNameB5_2
                      diff
                      if
                        at _asupb5
                          reset
                        ta
                      else
                        push    writeX_AmodB2_1
                        push    _negNameB5_1
                        sup
                        if
                          at _asupb5
                            set 1
                          ta
                        else
                          push    writeX_AmodB2_1
                          push    _negNameB5_1
                          diff
                          if
                            at _asupb5
                              reset
                            ta
                          else
                            push    writeX_AmodB2_0
                            push    _negNameB5_0
                            sup
                            if
                              at _asupb5
                                set 1
                              ta
                            else
                              push    writeX_AmodB2_0
                              push    _negNameB5_0
                              diff
                              if
                                at _asupb5
                                  reset
                                ta
                              else
                                at _aequb5
                                  set 1
                                ta
                              fi
                            fi
                          fi
                        fi
                      fi
                    fi
                  fi
                fi
                push _asupb5
                if  # absA > absB : do  absA-absB with sign of A
                  # print("absA > absB\n")
                  push    writeX_AmodB2_s
                  pop     _supequalvvXName3_s    # name has same sign of nameA
                  
                  push    0
                  sbm     _addvvvXCarry5
                  push    writeX_AmodB2_0
                  push    _negNameB5_0
                  #(begin macro)subof()
                  sbm _subofb65
                  sbm _subofa65 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc65
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso65
                  while
                    push _subofb65
                    if
                      at _subofb65
                        dec
                      ta
                      at _subofa65
                        dec
                      ta
                      push _subofa65
                      inc
                      not
                      if
                        at _subofc65
                          set 1
                        ta
                      fi
                    else
                      at _loopso65
                        reset
                      ta
                    fi
                  wend
                  push _subofc65
                  if
                    at _subofb65
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry5
                  #(begin macro)subof()
                  sbm _subofb66
                  sbm _subofa66 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc66
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso66
                  while
                    push _subofb66
                    if
                      at _subofb66
                        dec
                      ta
                      at _subofa66
                        dec
                      ta
                      push _subofa66
                      inc
                      not
                      if
                        at _subofc66
                          set 1
                        ta
                      fi
                    else
                      at _loopso66
                        reset
                      ta
                    fi
                  wend
                  push _subofc66
                  if
                    at _subofb66
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName3_0
                  add
                  pop     _addvvvXCarry5
                  push    writeX_AmodB2_1
                  push    _negNameB5_1
                  #(begin macro)subof()
                  sbm _subofb67
                  sbm _subofa67 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc67
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso67
                  while
                    push _subofb67
                    if
                      at _subofb67
                        dec
                      ta
                      at _subofa67
                        dec
                      ta
                      push _subofa67
                      inc
                      not
                      if
                        at _subofc67
                          set 1
                        ta
                      fi
                    else
                      at _loopso67
                        reset
                      ta
                    fi
                  wend
                  push _subofc67
                  if
                    at _subofb67
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry5
                  #(begin macro)subof()
                  sbm _subofb68
                  sbm _subofa68 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc68
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso68
                  while
                    push _subofb68
                    if
                      at _subofb68
                        dec
                      ta
                      at _subofa68
                        dec
                      ta
                      push _subofa68
                      inc
                      not
                      if
                        at _subofc68
                          set 1
                        ta
                      fi
                    else
                      at _loopso68
                        reset
                      ta
                    fi
                  wend
                  push _subofc68
                  if
                    at _subofb68
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName3_1
                  add
                  pop     _addvvvXCarry5
                  push    writeX_AmodB2_2
                  push    _negNameB5_2
                  #(begin macro)subof()
                  sbm _subofb69
                  sbm _subofa69 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc69
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso69
                  while
                    push _subofb69
                    if
                      at _subofb69
                        dec
                      ta
                      at _subofa69
                        dec
                      ta
                      push _subofa69
                      inc
                      not
                      if
                        at _subofc69
                          set 1
                        ta
                      fi
                    else
                      at _loopso69
                        reset
                      ta
                    fi
                  wend
                  push _subofc69
                  if
                    at _subofb69
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry5
                  #(begin macro)subof()
                  sbm _subofb70
                  sbm _subofa70 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc70
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso70
                  while
                    push _subofb70
                    if
                      at _subofb70
                        dec
                      ta
                      at _subofa70
                        dec
                      ta
                      push _subofa70
                      inc
                      not
                      if
                        at _subofc70
                          set 1
                        ta
                      fi
                    else
                      at _loopso70
                        reset
                      ta
                    fi
                  wend
                  push _subofc70
                  if
                    at _subofb70
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName3_2
                  add
                  pop     _addvvvXCarry5
                  push    writeX_AmodB2_3
                  push    _negNameB5_3
                  #(begin macro)subof()
                  sbm _subofb71
                  sbm _subofa71 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc71
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso71
                  while
                    push _subofb71
                    if
                      at _subofb71
                        dec
                      ta
                      at _subofa71
                        dec
                      ta
                      push _subofa71
                      inc
                      not
                      if
                        at _subofc71
                          set 1
                        ta
                      fi
                    else
                      at _loopso71
                        reset
                      ta
                    fi
                  wend
                  push _subofc71
                  if
                    at _subofb71
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry5
                  #(begin macro)subof()
                  sbm _subofb72
                  sbm _subofa72 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc72
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso72
                  while
                    push _subofb72
                    if
                      at _subofb72
                        dec
                      ta
                      at _subofa72
                        dec
                      ta
                      push _subofa72
                      inc
                      not
                      if
                        at _subofc72
                          set 1
                        ta
                      fi
                    else
                      at _loopso72
                        reset
                      ta
                    fi
                  wend
                  push _subofc72
                  if
                    at _subofb72
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName3_3
                  add
                  pop     _addvvvXCarry5
                  pop     _supequalvvXName3_c
                else # absB >= absA :
                  push    _aequb5
                  if # absA == absB , then name =0 (opposite sign then sum is zero)
                    #print("absA == absB\n")
                    #(begin macro)setvX(X,name,0)
                    at _supequalvvXName3_0
                      #(begin macro)setX(X,immValue)
                      bf <
                      bf <
                      bf <
                      bf <
                      bf <
                      reset
                      bf  >
                      set 0
                      bf >
                      set    0
                      bf >
                      set    0
                      bf >
                      set    0
                      bf >
                      set    0
                      #(end macro)setX(X,immValue)
                    ta
                    #(end macro)setvX(X,name,0)
                  else # absA < absB : do   absB-absA with sign of B
                    #print("absA < absB\n")
                    push    _negNameB5_s
                    pop     _supequalvvXName3_s    # name has same sign of nameB
                    
                    push    0
                    sbm     _addvvvXCarry5
                    push    _negNameB5_0
                    push    writeX_AmodB2_0
                    #(begin macro)subof()
                    sbm _subofb73
                    sbm _subofa73 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc73
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso73
                    while
                      push _subofb73
                      if
                        at _subofb73
                          dec
                        ta
                        at _subofa73
                          dec
                        ta
                        push _subofa73
                        inc
                        not
                        if
                          at _subofc73
                            set 1
                          ta
                        fi
                      else
                        at _loopso73
                          reset
                        ta
                      fi
                    wend
                    push _subofc73
                    if
                      at _subofb73
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry5
                    #(begin macro)subof()
                    sbm _subofb74
                    sbm _subofa74 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc74
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso74
                    while
                      push _subofb74
                      if
                        at _subofb74
                          dec
                        ta
                        at _subofa74
                          dec
                        ta
                        push _subofa74
                        inc
                        not
                        if
                          at _subofc74
                            set 1
                          ta
                        fi
                      else
                        at _loopso74
                          reset
                        ta
                      fi
                    wend
                    push _subofc74
                    if
                      at _subofb74
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName3_0
                    add
                    pop     _addvvvXCarry5
                    push    _negNameB5_1
                    push    writeX_AmodB2_1
                    #(begin macro)subof()
                    sbm _subofb75
                    sbm _subofa75 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc75
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso75
                    while
                      push _subofb75
                      if
                        at _subofb75
                          dec
                        ta
                        at _subofa75
                          dec
                        ta
                        push _subofa75
                        inc
                        not
                        if
                          at _subofc75
                            set 1
                          ta
                        fi
                      else
                        at _loopso75
                          reset
                        ta
                      fi
                    wend
                    push _subofc75
                    if
                      at _subofb75
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry5
                    #(begin macro)subof()
                    sbm _subofb76
                    sbm _subofa76 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc76
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso76
                    while
                      push _subofb76
                      if
                        at _subofb76
                          dec
                        ta
                        at _subofa76
                          dec
                        ta
                        push _subofa76
                        inc
                        not
                        if
                          at _subofc76
                            set 1
                          ta
                        fi
                      else
                        at _loopso76
                          reset
                        ta
                      fi
                    wend
                    push _subofc76
                    if
                      at _subofb76
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName3_1
                    add
                    pop     _addvvvXCarry5
                    push    _negNameB5_2
                    push    writeX_AmodB2_2
                    #(begin macro)subof()
                    sbm _subofb77
                    sbm _subofa77 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc77
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso77
                    while
                      push _subofb77
                      if
                        at _subofb77
                          dec
                        ta
                        at _subofa77
                          dec
                        ta
                        push _subofa77
                        inc
                        not
                        if
                          at _subofc77
                            set 1
                          ta
                        fi
                      else
                        at _loopso77
                          reset
                        ta
                      fi
                    wend
                    push _subofc77
                    if
                      at _subofb77
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry5
                    #(begin macro)subof()
                    sbm _subofb78
                    sbm _subofa78 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc78
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso78
                    while
                      push _subofb78
                      if
                        at _subofb78
                          dec
                        ta
                        at _subofa78
                          dec
                        ta
                        push _subofa78
                        inc
                        not
                        if
                          at _subofc78
                            set 1
                          ta
                        fi
                      else
                        at _loopso78
                          reset
                        ta
                      fi
                    wend
                    push _subofc78
                    if
                      at _subofb78
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName3_2
                    add
                    pop     _addvvvXCarry5
                    push    _negNameB5_3
                    push    writeX_AmodB2_3
                    #(begin macro)subof()
                    sbm _subofb79
                    sbm _subofa79 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc79
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso79
                    while
                      push _subofb79
                      if
                        at _subofb79
                          dec
                        ta
                        at _subofa79
                          dec
                        ta
                        push _subofa79
                        inc
                        not
                        if
                          at _subofc79
                            set 1
                          ta
                        fi
                      else
                        at _loopso79
                          reset
                        ta
                      fi
                    wend
                    push _subofc79
                    if
                      at _subofb79
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry5
                    #(begin macro)subof()
                    sbm _subofb80
                    sbm _subofa80 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc80
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso80
                    while
                      push _subofb80
                      if
                        at _subofb80
                          dec
                        ta
                        at _subofa80
                          dec
                        ta
                        push _subofa80
                        inc
                        not
                        if
                          at _subofc80
                            set 1
                          ta
                        fi
                      else
                        at _loopso80
                          reset
                        ta
                      fi
                    wend
                    push _subofc80
                    if
                      at _subofb80
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName3_3
                    add
                    pop     _addvvvXCarry5
                    pop     _supequalvvXName3_c
                  fi
                fi
                #(begin macro)scope_end()
                drop
                drop
                #(end macro)scope_end()
              fi
              #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
              #(begin macro)scope_end()
              drop
              drop
              drop
              drop
              drop
              drop
              #(end macro)scope_end()
              #(end macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
              push _supequalvvXName3_s
              not
              pop _supequalvvX3
              #(begin macro)scope_end()
              drop
              drop
              drop
              drop
              drop
              drop
              #(end macro)scope_end()
              #(end macro)supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
              if
                #(begin macro)incvX(X,nameAdivB)
                #(begin macro)if_equal(name +"_s",0)  # positive number
                push writeX_AdivB2_s
                push 0
                equal
                if
                  #(end macro)if_equal(name +"_s",0)  # positive number
                  #(begin macro)at_inc(name + "_" + xx)
                  #(begin macro)at_1("inc",a)
                  #(begin macro)at_2(ope,a,"")
                  at writeX_AdivB2_0
                    inc 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("inc",a)
                  #(end macro)at_inc(name + "_" + xx)
                  #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                  push writeX_AdivB2_0
                  push 0
                  equal
                  if
                    #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                    #(begin macro)at_inc(name + "_" + xx)
                    #(begin macro)at_1("inc",a)
                    #(begin macro)at_2(ope,a,"")
                    at writeX_AdivB2_1
                      inc 
                    ta
                    #(end macro)at_2(ope,a,"")
                    #(end macro)at_1("inc",a)
                    #(end macro)at_inc(name + "_" + xx)
                    #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                    push writeX_AdivB2_1
                    push 0
                    equal
                    if
                      #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                      #(begin macro)at_inc(name + "_" + xx)
                      #(begin macro)at_1("inc",a)
                      #(begin macro)at_2(ope,a,"")
                      at writeX_AdivB2_2
                        inc 
                      ta
                      #(end macro)at_2(ope,a,"")
                      #(end macro)at_1("inc",a)
                      #(end macro)at_inc(name + "_" + xx)
                      #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                      push writeX_AdivB2_2
                      push 0
                      equal
                      if
                        #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                        #(begin macro)at_inc(name + "_" + xx)
                        #(begin macro)at_1("inc",a)
                        #(begin macro)at_2(ope,a,"")
                        at writeX_AdivB2_3
                          inc 
                        ta
                        #(end macro)at_2(ope,a,"")
                        #(end macro)at_1("inc",a)
                        #(end macro)at_inc(name + "_" + xx)
                        #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                        push writeX_AdivB2_3
                        push 0
                        equal
                        if
                          #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                          #(begin macro)setcvX(X, name) ## set carry (overflow)
                          #(begin macro)at_set(name+"_c",1)
                          #(begin macro)at_2("set",a,b)
                          at writeX_AdivB2_c
                            set 1
                          ta
                          #(end macro)at_2("set",a,b)
                          #(end macro)at_set(name+"_c",1)
                          #(end macro)setcvX(X, name) ## set carry (overflow)
                        fi
                      fi
                    fi
                  fi
                else    # negative number
                  #(begin macro)at_dec(name + "_" + xx)
                  #(begin macro)at_1("dec",a)
                  #(begin macro)at_2(ope,a,"")
                  at writeX_AdivB2_0
                    dec 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("dec",a)
                  #(end macro)at_dec(name + "_" + xx)
                  #(begin macro)if_equal(name +"_" + xx,255) # reduced
                  push writeX_AdivB2_0
                  push 255
                  equal
                  if
                    #(end macro)if_equal(name +"_" + xx,255) # reduced
                    #(begin macro)at_dec(name + "_" + xx)
                    #(begin macro)at_1("dec",a)
                    #(begin macro)at_2(ope,a,"")
                    at writeX_AdivB2_1
                      dec 
                    ta
                    #(end macro)at_2(ope,a,"")
                    #(end macro)at_1("dec",a)
                    #(end macro)at_dec(name + "_" + xx)
                    #(begin macro)if_equal(name +"_" + xx,255) # reduced
                    push writeX_AdivB2_1
                    push 255
                    equal
                    if
                      #(end macro)if_equal(name +"_" + xx,255) # reduced
                      #(begin macro)at_dec(name + "_" + xx)
                      #(begin macro)at_1("dec",a)
                      #(begin macro)at_2(ope,a,"")
                      at writeX_AdivB2_2
                        dec 
                      ta
                      #(end macro)at_2(ope,a,"")
                      #(end macro)at_1("dec",a)
                      #(end macro)at_dec(name + "_" + xx)
                      #(begin macro)if_equal(name +"_" + xx,255) # reduced
                      push writeX_AdivB2_2
                      push 255
                      equal
                      if
                        #(end macro)if_equal(name +"_" + xx,255) # reduced
                        #(begin macro)at_dec(name + "_" + xx)
                        #(begin macro)at_1("dec",a)
                        #(begin macro)at_2(ope,a,"")
                        at writeX_AdivB2_3
                          dec 
                        ta
                        #(end macro)at_2(ope,a,"")
                        #(end macro)at_1("dec",a)
                        #(end macro)at_dec(name + "_" + xx)
                        #(begin macro)if_equal(name +"_" + xx,255) # reduced
                        push writeX_AdivB2_3
                        push 255
                        equal
                        if
                          #(end macro)if_equal(name +"_" + xx,255) # reduced
                          #(begin macro)setvX(X,name,1)
                          at writeX_AdivB2_0
                            #(begin macro)setX(X,immValue)
                            bf <
                            bf <
                            bf <
                            bf <
                            bf <
                            reset
                            bf  >
                            set 0
                            bf >
                            set    0
                            bf >
                            set    0
                            bf >
                            set    0
                            bf >
                            set    1
                            #(end macro)setX(X,immValue)
                          ta
                          #(end macro)setvX(X,name,1)
                        fi
                      fi
                    fi
                  fi
                  #(begin macro)fixsvX(X,name)
                  push    writeX_AdivB2_s
                  if    # if name is negative
                    #(begin macro)if_equal(name +"_" + xx, 0)
                    push writeX_AdivB2_0
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_" + xx, 0)
                      #(begin macro)if_equal(name +"_" + xx, 0)
                      push writeX_AdivB2_1
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_" + xx, 0)
                        #(begin macro)if_equal(name +"_" + xx, 0)
                        push writeX_AdivB2_2
                        push 0
                        equal
                        if
                          #(end macro)if_equal(name +"_" + xx, 0)
                          #(begin macro)if_equal(name +"_" + xx, 0)
                          push writeX_AdivB2_3
                          push 0
                          equal
                          if
                            #(end macro)if_equal(name +"_" + xx, 0)
                            #(begin macro)at_reset(name + "_s")   # set sign to positive
                            #(begin macro)at_1("reset",a)
                            #(begin macro)at_2(ope,a,"")
                            at writeX_AdivB2_s
                              reset 
                            ta
                            #(end macro)at_2(ope,a,"")
                            #(end macro)at_1("reset",a)
                            #(end macro)at_reset(name + "_s")   # set sign to positive
                          fi
                        fi
                      fi
                    fi
                  fi
                  #(end macro)fixsvX(X,name)
                fi
                #(end macro)incvX(X,nameAdivB)
                #(begin macro)subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvarX(X, "_subvvXNameB" + _subvvX)
                #(begin macro)lvar(name + "_c",0)
                push 0
                sbm _subvvXNameB2_c
                #(end macro)lvar(name + "_c",0)
                #(begin macro)lvar(name + "_s",0)
                push 0
                sbm _subvvXNameB2_s
                #(end macro)lvar(name + "_s",0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB2_3
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB2_2
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB2_1
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB2_0
                #(end macro)lvar(name + "_"+ xx1,0)
                #(end macro)lvarX(X, "_subvvXNameB" + _subvvX)
                #(begin macro)pushvX(X, name)
                push    writeX_AmodB2_c
                push    writeX_AmodB2_s
                push    writeX_AmodB2_3
                push    writeX_AmodB2_2
                push    writeX_AmodB2_1
                push    writeX_AmodB2_0
                #(end macro)pushvX(X, name)
                #(begin macro)popvX(X, "_subvvXNameB" + _subvvX)
                pop     _subvvXNameB2_0
                pop     _subvvXNameB2_1
                pop     _subvvXNameB2_2
                pop     _subvvXNameB2_3
                pop     _subvvXNameB2_s
                pop     _subvvXNameB2_c
                #(end macro)popvX(X, "_subvvXNameB" + _subvvX)
                #(begin macro)subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
                #(begin macro)lvar(name + "_c",0)
                push 0
                sbm _negNameB6_c
                #(end macro)lvar(name + "_c",0)
                #(begin macro)lvar(name + "_s",0)
                push 0
                sbm _negNameB6_s
                #(end macro)lvar(name + "_s",0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB6_3
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB6_2
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB6_1
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB6_0
                #(end macro)lvar(name + "_"+ xx1,0)
                #(end macro)lvarX(X,"_negNameB" + _subvvvX)
                #(begin macro)pushvX(X,nameB)
                push    _divvvvvXabsNameB2_c
                push    _divvvvvXabsNameB2_s
                push    _divvvvvXabsNameB2_3
                push    _divvvvvXabsNameB2_2
                push    _divvvvvXabsNameB2_1
                push    _divvvvvXabsNameB2_0
                #(end macro)pushvX(X,nameB)
                #(begin macro)popvX(X,"_negNameB" + _subvvvX)
                pop     _negNameB6_0
                pop     _negNameB6_1
                pop     _negNameB6_2
                pop     _negNameB6_3
                pop     _negNameB6_s
                pop     _negNameB6_c
                #(end macro)popvX(X,"_negNameB" + _subvvvX)
                #(begin macro)negvX(X,"_negNameB" + _subvvvX)
                push    _negNameB6_s
                dec
                bool
                dup
                if    # if name is now negative
                  #(begin macro)if_equal(name +"_"+xx, 0)
                  push _negNameB6_0
                  push 0
                  equal
                  if
                    #(end macro)if_equal(name +"_"+xx, 0)
                    #(begin macro)if_equal(name +"_"+xx, 0)
                    push _negNameB6_1
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_"+xx, 0)
                      #(begin macro)if_equal(name +"_"+xx, 0)
                      push _negNameB6_2
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_"+xx, 0)
                        #(begin macro)if_equal(name +"_"+xx, 0)
                        push _negNameB6_3
                        push 0
                        equal
                        if
                          #(end macro)if_equal(name +"_"+xx, 0)
                          #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
                          #(begin macro)at_1("reset",a)
                          #(begin macro)at_2(ope,a,"")
                          at _negNameB6_s
                            reset 
                          ta
                          #(end macro)at_2(ope,a,"")
                          #(end macro)at_1("reset",a)
                          #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
                        fi
                      fi
                    fi
                  fi
                fi
                pop     _negNameB6_s
                #(end macro)negvX(X,"_negNameB" + _subvvvX)
                #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
                push    _subvvXNameB2_s
                push    _negNameB6_s
                or
                not
                push    _subvvXNameB2_s
                push    _negNameB6_s
                and
                or
                if      # nameA and nameB are both positive or negative
                  push    _subvvXNameB2_s
                  pop     writeX_AmodB2_s    # name has same sign of nameA and nameB
                  push    0
                  push    _subvvXNameB2_0
                  #(begin macro)addof()
                  sbm _addofb61
                  sbm _addofa61 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc61
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao61
                  while
                    push _addofa61
                    if
                      at _addofa61
                        dec
                      ta
                      at _addofb61
                        inc
                      ta
                      push _addofb61
                      not
                      if
                        at _addofc61
                          set 1
                        ta
                      fi
                    else
                      at _loopao61
                        reset
                      ta
                    fi
                  wend
                  push _addofc61
                  if
                    at _addofa61
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB2_0
                  push    _negNameB6_0
                  #(begin macro)addof()
                  sbm _addofb62
                  sbm _addofa62 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc62
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao62
                  while
                    push _addofa62
                    if
                      at _addofa62
                        dec
                      ta
                      at _addofb62
                        inc
                      ta
                      push _addofb62
                      not
                      if
                        at _addofc62
                          set 1
                        ta
                      fi
                    else
                      at _loopao62
                        reset
                      ta
                    fi
                  wend
                  push _addofc62
                  if
                    at _addofa62
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB2_0
                  #(begin macro)addof()
                  sbm _addofb63
                  sbm _addofa63 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc63
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao63
                  while
                    push _addofa63
                    if
                      at _addofa63
                        dec
                      ta
                      at _addofb63
                        inc
                      ta
                      push _addofb63
                      not
                      if
                        at _addofc63
                          set 1
                        ta
                      fi
                    else
                      at _loopao63
                        reset
                      ta
                    fi
                  wend
                  push _addofc63
                  if
                    at _addofa63
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB2_0
                  add
                  push    _subvvXNameB2_1
                  #(begin macro)addof()
                  sbm _addofb64
                  sbm _addofa64 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc64
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao64
                  while
                    push _addofa64
                    if
                      at _addofa64
                        dec
                      ta
                      at _addofb64
                        inc
                      ta
                      push _addofb64
                      not
                      if
                        at _addofc64
                          set 1
                        ta
                      fi
                    else
                      at _loopao64
                        reset
                      ta
                    fi
                  wend
                  push _addofc64
                  if
                    at _addofa64
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB2_1
                  push    _negNameB6_1
                  #(begin macro)addof()
                  sbm _addofb65
                  sbm _addofa65 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc65
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao65
                  while
                    push _addofa65
                    if
                      at _addofa65
                        dec
                      ta
                      at _addofb65
                        inc
                      ta
                      push _addofb65
                      not
                      if
                        at _addofc65
                          set 1
                        ta
                      fi
                    else
                      at _loopao65
                        reset
                      ta
                    fi
                  wend
                  push _addofc65
                  if
                    at _addofa65
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB2_1
                  #(begin macro)addof()
                  sbm _addofb66
                  sbm _addofa66 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc66
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao66
                  while
                    push _addofa66
                    if
                      at _addofa66
                        dec
                      ta
                      at _addofb66
                        inc
                      ta
                      push _addofb66
                      not
                      if
                        at _addofc66
                          set 1
                        ta
                      fi
                    else
                      at _loopao66
                        reset
                      ta
                    fi
                  wend
                  push _addofc66
                  if
                    at _addofa66
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB2_1
                  add
                  push    _subvvXNameB2_2
                  #(begin macro)addof()
                  sbm _addofb67
                  sbm _addofa67 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc67
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao67
                  while
                    push _addofa67
                    if
                      at _addofa67
                        dec
                      ta
                      at _addofb67
                        inc
                      ta
                      push _addofb67
                      not
                      if
                        at _addofc67
                          set 1
                        ta
                      fi
                    else
                      at _loopao67
                        reset
                      ta
                    fi
                  wend
                  push _addofc67
                  if
                    at _addofa67
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB2_2
                  push    _negNameB6_2
                  #(begin macro)addof()
                  sbm _addofb68
                  sbm _addofa68 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc68
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao68
                  while
                    push _addofa68
                    if
                      at _addofa68
                        dec
                      ta
                      at _addofb68
                        inc
                      ta
                      push _addofb68
                      not
                      if
                        at _addofc68
                          set 1
                        ta
                      fi
                    else
                      at _loopao68
                        reset
                      ta
                    fi
                  wend
                  push _addofc68
                  if
                    at _addofa68
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB2_2
                  #(begin macro)addof()
                  sbm _addofb69
                  sbm _addofa69 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc69
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao69
                  while
                    push _addofa69
                    if
                      at _addofa69
                        dec
                      ta
                      at _addofb69
                        inc
                      ta
                      push _addofb69
                      not
                      if
                        at _addofc69
                          set 1
                        ta
                      fi
                    else
                      at _loopao69
                        reset
                      ta
                    fi
                  wend
                  push _addofc69
                  if
                    at _addofa69
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB2_2
                  add
                  push    _subvvXNameB2_3
                  #(begin macro)addof()
                  sbm _addofb70
                  sbm _addofa70 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc70
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao70
                  while
                    push _addofa70
                    if
                      at _addofa70
                        dec
                      ta
                      at _addofb70
                        inc
                      ta
                      push _addofb70
                      not
                      if
                        at _addofc70
                          set 1
                        ta
                      fi
                    else
                      at _loopao70
                        reset
                      ta
                    fi
                  wend
                  push _addofc70
                  if
                    at _addofa70
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB2_3
                  push    _negNameB6_3
                  #(begin macro)addof()
                  sbm _addofb71
                  sbm _addofa71 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc71
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao71
                  while
                    push _addofa71
                    if
                      at _addofa71
                        dec
                      ta
                      at _addofb71
                        inc
                      ta
                      push _addofb71
                      not
                      if
                        at _addofc71
                          set 1
                        ta
                      fi
                    else
                      at _loopao71
                        reset
                      ta
                    fi
                  wend
                  push _addofc71
                  if
                    at _addofa71
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB2_3
                  #(begin macro)addof()
                  sbm _addofb72
                  sbm _addofa72 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc72
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao72
                  while
                    push _addofa72
                    if
                      at _addofa72
                        dec
                      ta
                      at _addofb72
                        inc
                      ta
                      push _addofb72
                      not
                      if
                        at _addofc72
                          set 1
                        ta
                      fi
                    else
                      at _loopao72
                        reset
                      ta
                    fi
                  wend
                  push _addofc72
                  if
                    at _addofa72
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB2_3
                  add
                  pop     writeX_AmodB2_c
                else  # nameA has a different sign of nameB
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                  push 0
                  sbm _asupb6
                  #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                  #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                  push 0
                  sbm _aequb6
                  #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                  push    _subvvXNameB2_3
                  push    _negNameB6_3
                  sup
                  if
                    at _asupb6
                      set 1
                    ta
                  else
                    push    _subvvXNameB2_3
                    push    _negNameB6_3
                    diff
                    if
                      at _asupb6
                        reset
                      ta
                    else
                      push    _subvvXNameB2_2
                      push    _negNameB6_2
                      sup
                      if
                        at _asupb6
                          set 1
                        ta
                      else
                        push    _subvvXNameB2_2
                        push    _negNameB6_2
                        diff
                        if
                          at _asupb6
                            reset
                          ta
                        else
                          push    _subvvXNameB2_1
                          push    _negNameB6_1
                          sup
                          if
                            at _asupb6
                              set 1
                            ta
                          else
                            push    _subvvXNameB2_1
                            push    _negNameB6_1
                            diff
                            if
                              at _asupb6
                                reset
                              ta
                            else
                              push    _subvvXNameB2_0
                              push    _negNameB6_0
                              sup
                              if
                                at _asupb6
                                  set 1
                                ta
                              else
                                push    _subvvXNameB2_0
                                push    _negNameB6_0
                                diff
                                if
                                  at _asupb6
                                    reset
                                  ta
                                else
                                  at _aequb6
                                    set 1
                                  ta
                                fi
                              fi
                            fi
                          fi
                        fi
                      fi
                    fi
                  fi
                  push _asupb6
                  if  # absA > absB : do  absA-absB with sign of A
                    # print("absA > absB\n")
                    push    _subvvXNameB2_s
                    pop     writeX_AmodB2_s    # name has same sign of nameA
                    
                    push    0
                    sbm     _addvvvXCarry6
                    push    _subvvXNameB2_0
                    push    _negNameB6_0
                    #(begin macro)subof()
                    sbm _subofb81
                    sbm _subofa81 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc81
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso81
                    while
                      push _subofb81
                      if
                        at _subofb81
                          dec
                        ta
                        at _subofa81
                          dec
                        ta
                        push _subofa81
                        inc
                        not
                        if
                          at _subofc81
                            set 1
                          ta
                        fi
                      else
                        at _loopso81
                          reset
                        ta
                      fi
                    wend
                    push _subofc81
                    if
                      at _subofb81
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry6
                    #(begin macro)subof()
                    sbm _subofb82
                    sbm _subofa82 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc82
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso82
                    while
                      push _subofb82
                      if
                        at _subofb82
                          dec
                        ta
                        at _subofa82
                          dec
                        ta
                        push _subofa82
                        inc
                        not
                        if
                          at _subofc82
                            set 1
                          ta
                        fi
                      else
                        at _loopso82
                          reset
                        ta
                      fi
                    wend
                    push _subofc82
                    if
                      at _subofb82
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB2_0
                    add
                    pop     _addvvvXCarry6
                    push    _subvvXNameB2_1
                    push    _negNameB6_1
                    #(begin macro)subof()
                    sbm _subofb83
                    sbm _subofa83 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc83
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso83
                    while
                      push _subofb83
                      if
                        at _subofb83
                          dec
                        ta
                        at _subofa83
                          dec
                        ta
                        push _subofa83
                        inc
                        not
                        if
                          at _subofc83
                            set 1
                          ta
                        fi
                      else
                        at _loopso83
                          reset
                        ta
                      fi
                    wend
                    push _subofc83
                    if
                      at _subofb83
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry6
                    #(begin macro)subof()
                    sbm _subofb84
                    sbm _subofa84 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc84
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso84
                    while
                      push _subofb84
                      if
                        at _subofb84
                          dec
                        ta
                        at _subofa84
                          dec
                        ta
                        push _subofa84
                        inc
                        not
                        if
                          at _subofc84
                            set 1
                          ta
                        fi
                      else
                        at _loopso84
                          reset
                        ta
                      fi
                    wend
                    push _subofc84
                    if
                      at _subofb84
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB2_1
                    add
                    pop     _addvvvXCarry6
                    push    _subvvXNameB2_2
                    push    _negNameB6_2
                    #(begin macro)subof()
                    sbm _subofb85
                    sbm _subofa85 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc85
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso85
                    while
                      push _subofb85
                      if
                        at _subofb85
                          dec
                        ta
                        at _subofa85
                          dec
                        ta
                        push _subofa85
                        inc
                        not
                        if
                          at _subofc85
                            set 1
                          ta
                        fi
                      else
                        at _loopso85
                          reset
                        ta
                      fi
                    wend
                    push _subofc85
                    if
                      at _subofb85
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry6
                    #(begin macro)subof()
                    sbm _subofb86
                    sbm _subofa86 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc86
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso86
                    while
                      push _subofb86
                      if
                        at _subofb86
                          dec
                        ta
                        at _subofa86
                          dec
                        ta
                        push _subofa86
                        inc
                        not
                        if
                          at _subofc86
                            set 1
                          ta
                        fi
                      else
                        at _loopso86
                          reset
                        ta
                      fi
                    wend
                    push _subofc86
                    if
                      at _subofb86
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB2_2
                    add
                    pop     _addvvvXCarry6
                    push    _subvvXNameB2_3
                    push    _negNameB6_3
                    #(begin macro)subof()
                    sbm _subofb87
                    sbm _subofa87 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc87
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso87
                    while
                      push _subofb87
                      if
                        at _subofb87
                          dec
                        ta
                        at _subofa87
                          dec
                        ta
                        push _subofa87
                        inc
                        not
                        if
                          at _subofc87
                            set 1
                          ta
                        fi
                      else
                        at _loopso87
                          reset
                        ta
                      fi
                    wend
                    push _subofc87
                    if
                      at _subofb87
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry6
                    #(begin macro)subof()
                    sbm _subofb88
                    sbm _subofa88 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc88
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso88
                    while
                      push _subofb88
                      if
                        at _subofb88
                          dec
                        ta
                        at _subofa88
                          dec
                        ta
                        push _subofa88
                        inc
                        not
                        if
                          at _subofc88
                            set 1
                          ta
                        fi
                      else
                        at _loopso88
                          reset
                        ta
                      fi
                    wend
                    push _subofc88
                    if
                      at _subofb88
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB2_3
                    add
                    pop     _addvvvXCarry6
                    pop     writeX_AmodB2_c
                  else # absB >= absA :
                    push    _aequb6
                    if # absA == absB , then name =0 (opposite sign then sum is zero)
                      #print("absA == absB\n")
                      #(begin macro)setvX(X,name,0)
                      at writeX_AmodB2_0
                        #(begin macro)setX(X,immValue)
                        bf <
                        bf <
                        bf <
                        bf <
                        bf <
                        reset
                        bf  >
                        set 0
                        bf >
                        set    0
                        bf >
                        set    0
                        bf >
                        set    0
                        bf >
                        set    0
                        #(end macro)setX(X,immValue)
                      ta
                      #(end macro)setvX(X,name,0)
                    else # absA < absB : do   absB-absA with sign of B
                      #print("absA < absB\n")
                      push    _negNameB6_s
                      pop     writeX_AmodB2_s    # name has same sign of nameB
                      
                      push    0
                      sbm     _addvvvXCarry6
                      push    _negNameB6_0
                      push    _subvvXNameB2_0
                      #(begin macro)subof()
                      sbm _subofb89
                      sbm _subofa89 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc89
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso89
                      while
                        push _subofb89
                        if
                          at _subofb89
                            dec
                          ta
                          at _subofa89
                            dec
                          ta
                          push _subofa89
                          inc
                          not
                          if
                            at _subofc89
                              set 1
                            ta
                          fi
                        else
                          at _loopso89
                            reset
                          ta
                        fi
                      wend
                      push _subofc89
                      if
                        at _subofb89
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry6
                      #(begin macro)subof()
                      sbm _subofb90
                      sbm _subofa90 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc90
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso90
                      while
                        push _subofb90
                        if
                          at _subofb90
                            dec
                          ta
                          at _subofa90
                            dec
                          ta
                          push _subofa90
                          inc
                          not
                          if
                            at _subofc90
                              set 1
                            ta
                          fi
                        else
                          at _loopso90
                            reset
                          ta
                        fi
                      wend
                      push _subofc90
                      if
                        at _subofb90
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB2_0
                      add
                      pop     _addvvvXCarry6
                      push    _negNameB6_1
                      push    _subvvXNameB2_1
                      #(begin macro)subof()
                      sbm _subofb91
                      sbm _subofa91 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc91
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso91
                      while
                        push _subofb91
                        if
                          at _subofb91
                            dec
                          ta
                          at _subofa91
                            dec
                          ta
                          push _subofa91
                          inc
                          not
                          if
                            at _subofc91
                              set 1
                            ta
                          fi
                        else
                          at _loopso91
                            reset
                          ta
                        fi
                      wend
                      push _subofc91
                      if
                        at _subofb91
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry6
                      #(begin macro)subof()
                      sbm _subofb92
                      sbm _subofa92 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc92
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso92
                      while
                        push _subofb92
                        if
                          at _subofb92
                            dec
                          ta
                          at _subofa92
                            dec
                          ta
                          push _subofa92
                          inc
                          not
                          if
                            at _subofc92
                              set 1
                            ta
                          fi
                        else
                          at _loopso92
                            reset
                          ta
                        fi
                      wend
                      push _subofc92
                      if
                        at _subofb92
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB2_1
                      add
                      pop     _addvvvXCarry6
                      push    _negNameB6_2
                      push    _subvvXNameB2_2
                      #(begin macro)subof()
                      sbm _subofb93
                      sbm _subofa93 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc93
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso93
                      while
                        push _subofb93
                        if
                          at _subofb93
                            dec
                          ta
                          at _subofa93
                            dec
                          ta
                          push _subofa93
                          inc
                          not
                          if
                            at _subofc93
                              set 1
                            ta
                          fi
                        else
                          at _loopso93
                            reset
                          ta
                        fi
                      wend
                      push _subofc93
                      if
                        at _subofb93
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry6
                      #(begin macro)subof()
                      sbm _subofb94
                      sbm _subofa94 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc94
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso94
                      while
                        push _subofb94
                        if
                          at _subofb94
                            dec
                          ta
                          at _subofa94
                            dec
                          ta
                          push _subofa94
                          inc
                          not
                          if
                            at _subofc94
                              set 1
                            ta
                          fi
                        else
                          at _loopso94
                            reset
                          ta
                        fi
                      wend
                      push _subofc94
                      if
                        at _subofb94
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB2_2
                      add
                      pop     _addvvvXCarry6
                      push    _negNameB6_3
                      push    _subvvXNameB2_3
                      #(begin macro)subof()
                      sbm _subofb95
                      sbm _subofa95 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc95
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso95
                      while
                        push _subofb95
                        if
                          at _subofb95
                            dec
                          ta
                          at _subofa95
                            dec
                          ta
                          push _subofa95
                          inc
                          not
                          if
                            at _subofc95
                              set 1
                            ta
                          fi
                        else
                          at _loopso95
                            reset
                          ta
                        fi
                      wend
                      push _subofc95
                      if
                        at _subofb95
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry6
                      #(begin macro)subof()
                      sbm _subofb96
                      sbm _subofa96 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc96
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso96
                      while
                        push _subofb96
                        if
                          at _subofb96
                            dec
                          ta
                          at _subofa96
                            dec
                          ta
                          push _subofa96
                          inc
                          not
                          if
                            at _subofc96
                              set 1
                            ta
                          fi
                        else
                          at _loopso96
                            reset
                          ta
                        fi
                      wend
                      push _subofc96
                      if
                        at _subofb96
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB2_3
                      add
                      pop     _addvvvXCarry6
                      pop     writeX_AmodB2_c
                    fi
                  fi
                  #(begin macro)scope_end()
                  drop
                  drop
                  #(end macro)scope_end()
                fi
                #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
                #(begin macro)scope_end()
                drop
                drop
                drop
                drop
                drop
                drop
                #(end macro)scope_end()
                #(end macro)subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)
                #(begin macro)scope_end()
                drop
                drop
                drop
                drop
                drop
                drop
                #(end macro)scope_end()
                #(end macro)subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
              else
                #(begin macro)at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend
                #(begin macro)at_1("reset",a)
                #(begin macro)at_2(ope,a,"")
                at _divvvvvX_g2
                  reset 
                ta
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("reset",a)
                #(end macro)at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend
              fi
            wend
            # treat sign of nameAmodB and nameAdivB
            push    _divvvvvXsA2
            pop     writeX_AmodB2_s   # sign of nameAmodB is sign of nameA
            push    _divvvvvXsA2
            push    _divvvvvXsB2
            diff
            if
              push    1
              pop     writeX_AdivB2_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
          else
            #(begin macro)setcvX(X,nameAdivB)
            #(begin macro)at_set(name+"_c",1)
            #(begin macro)at_2("set",a,b)
            at writeX_AdivB2_c
              set 1
            ta
            #(end macro)at_2("set",a,b)
            #(end macro)at_set(name+"_c",1)
            #(end macro)setcvX(X,nameAdivB)
            #(begin macro)setcvX(X,nameAmodB)
            #(begin macro)at_set(name+"_c",1)
            #(begin macro)at_2("set",a,b)
            at writeX_AmodB2_c
              set 1
            ta
            #(end macro)at_2("set",a,b)
            #(end macro)at_set(name+"_c",1)
            #(end macro)setcvX(X,nameAmodB)
          fi
          #(begin macro)scope_end()
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          #(end macro)scope_end()
          #(end macro)divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)
          push    writeX_AmodB2_0
          pop  _stringDecimal32_
          #(begin macro)pushvX(X,"writeX_AdivB" + _writeX)
          push    writeX_AdivB2_c
          push    writeX_AdivB2_s
          push    writeX_AdivB2_3
          push    writeX_AdivB2_2
          push    writeX_AdivB2_1
          push    writeX_AdivB2_0
          #(end macro)pushvX(X,"writeX_AdivB" + _writeX)
          #(begin macro)popvX(X,"writeX_A" + _writeX)
          pop     writeX_A2_0
          pop     writeX_A2_1
          pop     writeX_A2_2
          pop     writeX_A2_3
          pop     writeX_A2_s
          pop     writeX_A2_c
          #(end macro)popvX(X,"writeX_A" + _writeX)
          arotl _stringDecimal32_
        endloop
        
        push _stringDecimal32_.size
        sbm writeXcnt2
        loop
          arotr _stringDecimal32_
          #(begin macro)if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)
          push writeXcnt2
          push 1
          sup
          if
            #(end macro)if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)
            #(begin macro)if_diff("_stringDecimal" + _xbits +"_", 0)
            push _stringDecimal32_
            push 0
            diff
            if
              #(end macro)if_diff("_stringDecimal" + _xbits +"_", 0)
              push _stringDecimal32_
              #(begin macro)popouthexa()
              sbm _input4
              #(begin macro)if_sup("_input" + __idx,9)
              push _input4
              push 9
              sup
              if
                #(end macro)if_sup("_input" + __idx,9)
                #(begin macro)at_add("_input" + __idx, "'7'")
                #(begin macro)at_2("add",a,b)
                at _input4
                  add '7'
                ta
                #(end macro)at_2("add",a,b)
                #(end macro)at_add("_input" + __idx, "'7'")
              else
                #(begin macro)at_add("_input" + __idx, "'0'")
                #(begin macro)at_2("add",a,b)
                at _input4
                  add '0'
                ta
                #(end macro)at_2("add",a,b)
                #(end macro)at_add("_input" + __idx, "'0'")
              fi
              pop out
              #(end macro)popouthexa()
              #(begin macro)at_set("writeXprefixzero"+_writeX, 0)
              #(begin macro)at_2("set",a,b)
              at writeXprefixzero2
                set 0
              ta
              #(end macro)at_2("set",a,b)
              #(end macro)at_set("writeXprefixzero"+_writeX, 0)
            else
              #(begin macro)if_equal("writeXprefixzero"+_writeX, 0)
              push writeXprefixzero2
              push 0
              equal
              if
                #(end macro)if_equal("writeXprefixzero"+_writeX, 0)
                push _stringDecimal32_
                #(begin macro)popouthexa()
                sbm _input5
                #(begin macro)if_sup("_input" + __idx,9)
                push _input5
                push 9
                sup
                if
                  #(end macro)if_sup("_input" + __idx,9)
                  #(begin macro)at_add("_input" + __idx, "'7'")
                  #(begin macro)at_2("add",a,b)
                  at _input5
                    add '7'
                  ta
                  #(end macro)at_2("add",a,b)
                  #(end macro)at_add("_input" + __idx, "'7'")
                else
                  #(begin macro)at_add("_input" + __idx, "'0'")
                  #(begin macro)at_2("add",a,b)
                  at _input5
                    add '0'
                  ta
                  #(end macro)at_2("add",a,b)
                  #(end macro)at_add("_input" + __idx, "'0'")
                fi
                pop out
                #(end macro)popouthexa()
              fi
            fi
          else
            push _stringDecimal32_
            #(begin macro)popouthexa()
            sbm _input6
            #(begin macro)if_sup("_input" + __idx,9)
            push _input6
            push 9
            sup
            if
              #(end macro)if_sup("_input" + __idx,9)
              #(begin macro)at_add("_input" + __idx, "'7'")
              #(begin macro)at_2("add",a,b)
              at _input6
                add '7'
              ta
              #(end macro)at_2("add",a,b)
              #(end macro)at_add("_input" + __idx, "'7'")
            else
              #(begin macro)at_add("_input" + __idx, "'0'")
              #(begin macro)at_2("add",a,b)
              at _input6
                add '0'
              ta
              #(end macro)at_2("add",a,b)
              #(end macro)at_add("_input" + __idx, "'0'")
            fi
            pop out
            #(end macro)popouthexa()
          fi
        endloop
        #(begin macro)scope_end()
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        #(end macro)scope_end()
        #(end macro)writeX(4,name)
        #(end macro)write32 N
        #(begin macro)print("]=1\n")
        push    0
        set     93
        out             # ']'
        sub     32
        out             # '='
        sub     12
        out             # '1'
        set     10
        out             # 
        drop
        #(end macro)print("]=1\n")
      else
        #(begin macro)setv32  result, 0
        #(begin macro)setvX(4,name, immValue)
        at result_0
          #(begin macro)setX(X,immValue)
          bf <
          bf <
          bf <
          bf <
          bf <
          reset
          bf  >
          set 0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    0
          #(end macro)setX(X,immValue)
        ta
        #(end macro)setvX(4,name, immValue)
        #(end macro)setv32  result, 0
        #(begin macro)setv32  oldResult, 1
        #(begin macro)setvX(4,name, immValue)
        at oldResult_0
          #(begin macro)setX(X,immValue)
          bf <
          bf <
          bf <
          bf <
          bf <
          reset
          bf  >
          set 0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    1
          #(end macro)setX(X,immValue)
        ta
        #(end macro)setvX(4,name, immValue)
        #(end macro)setv32  oldResult, 1
        #(begin macro)setv32  preOldResult,   1
        #(begin macro)setvX(4,name, immValue)
        at preOldResult_0
          #(begin macro)setX(X,immValue)
          bf <
          bf <
          bf <
          bf <
          bf <
          reset
          bf  >
          set 0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    1
          #(end macro)setX(X,immValue)
        ta
        #(end macro)setvX(4,name, immValue)
        #(end macro)setv32  preOldResult,   1
        
        #(begin macro)pushv32 N
        #(begin macro)pushvX(4,name)
        push    N_c
        push    N_s
        push    N_3
        push    N_2
        push    N_1
        push    N_0
        #(end macro)pushvX(4,name)
        #(end macro)pushv32 N
        #(begin macro)push32  2
        #(begin macro)pushX(4, immValue)
        push    0
        push    0
        push    0
        push    0
        push    0
        push    2
        #(end macro)pushX(4, immValue)
        #(end macro)push32  2
        #(begin macro)sub32
        #(begin macro)subX(4)
        #(begin macro)sbmX(X, "_subXName" + _subX, 1)
        #(begin macro)sbmX2(X,name,backward,0)
        sbm _subXName1_0 - 6
        sbm _subXName1_1 - 7
        sbm _subXName1_2 - 8
        sbm _subXName1_3 - 9
        sbm _subXName1_s - 10
        sbm _subXName1_c - 11
        #(end macro)sbmX2(X,name,backward,0)
        #(end macro)sbmX(X, "_subXName" + _subX, 1)
        #(begin macro)sbmX(X,"_subXNameB" + _subX, 0)
        #(begin macro)sbmX2(X,name,backward,0)
        sbm _subXNameB1_0 - 0
        sbm _subXNameB1_1 - 1
        sbm _subXNameB1_2 - 2
        sbm _subXNameB1_3 - 3
        sbm _subXNameB1_s - 4
        sbm _subXNameB1_c - 5
        #(end macro)sbmX2(X,name,backward,0)
        #(end macro)sbmX(X,"_subXNameB" + _subX, 0)
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvarX(X,"_subXNameA" + _subX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm _subXNameA1_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm _subXNameA1_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _subXNameA1_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _subXNameA1_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _subXNameA1_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _subXNameA1_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"_subXNameA" + _subX)
        #(begin macro)pushvX(X,"_subXName" + _subX)
        push    _subXName1_c
        push    _subXName1_s
        push    _subXName1_3
        push    _subXName1_2
        push    _subXName1_1
        push    _subXName1_0
        #(end macro)pushvX(X,"_subXName" + _subX)
        #(begin macro)popvX(X,"_subXNameA" + _subX)
        pop     _subXNameA1_0
        pop     _subXNameA1_1
        pop     _subXNameA1_2
        pop     _subXNameA1_3
        pop     _subXNameA1_s
        pop     _subXNameA1_c
        #(end macro)popvX(X,"_subXNameA" + _subX)
        #(begin macro)subvvvX(X,"_subXName" + _subX, "_subXNameA" + _subX, "_subXNameB" + _subX)
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm _negNameB7_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm _negNameB7_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _negNameB7_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _negNameB7_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _negNameB7_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm _negNameB7_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"_negNameB" + _subvvvX)
        #(begin macro)pushvX(X,nameB)
        push    _subXNameB1_c
        push    _subXNameB1_s
        push    _subXNameB1_3
        push    _subXNameB1_2
        push    _subXNameB1_1
        push    _subXNameB1_0
        #(end macro)pushvX(X,nameB)
        #(begin macro)popvX(X,"_negNameB" + _subvvvX)
        pop     _negNameB7_0
        pop     _negNameB7_1
        pop     _negNameB7_2
        pop     _negNameB7_3
        pop     _negNameB7_s
        pop     _negNameB7_c
        #(end macro)popvX(X,"_negNameB" + _subvvvX)
        #(begin macro)negvX(X,"_negNameB" + _subvvvX)
        push    _negNameB7_s
        dec
        bool
        dup
        if    # if name is now negative
          #(begin macro)if_equal(name +"_"+xx, 0)
          push _negNameB7_0
          push 0
          equal
          if
            #(end macro)if_equal(name +"_"+xx, 0)
            #(begin macro)if_equal(name +"_"+xx, 0)
            push _negNameB7_1
            push 0
            equal
            if
              #(end macro)if_equal(name +"_"+xx, 0)
              #(begin macro)if_equal(name +"_"+xx, 0)
              push _negNameB7_2
              push 0
              equal
              if
                #(end macro)if_equal(name +"_"+xx, 0)
                #(begin macro)if_equal(name +"_"+xx, 0)
                push _negNameB7_3
                push 0
                equal
                if
                  #(end macro)if_equal(name +"_"+xx, 0)
                  #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
                  #(begin macro)at_1("reset",a)
                  #(begin macro)at_2(ope,a,"")
                  at _negNameB7_s
                    reset 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("reset",a)
                  #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
                fi
              fi
            fi
          fi
        fi
        pop     _negNameB7_s
        #(end macro)negvX(X,"_negNameB" + _subvvvX)
        #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
        push    _subXNameA1_s
        push    _negNameB7_s
        or
        not
        push    _subXNameA1_s
        push    _negNameB7_s
        and
        or
        if      # nameA and nameB are both positive or negative
          push    _subXNameA1_s
          pop     _subXName1_s    # name has same sign of nameA and nameB
          push    0
          push    _subXNameA1_0
          #(begin macro)addof()
          sbm _addofb73
          sbm _addofa73 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc73
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao73
          while
            push _addofa73
            if
              at _addofa73
                dec
              ta
              at _addofb73
                inc
              ta
              push _addofb73
              not
              if
                at _addofc73
                  set 1
                ta
              fi
            else
              at _loopao73
                reset
              ta
            fi
          wend
          push _addofc73
          if
            at _addofa73
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          pop     _subXName1_0
          push    _negNameB7_0
          #(begin macro)addof()
          sbm _addofb74
          sbm _addofa74 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc74
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao74
          while
            push _addofa74
            if
              at _addofa74
                dec
              ta
              at _addofb74
                inc
              ta
              push _addofb74
              not
              if
                at _addofc74
                  set 1
                ta
              fi
            else
              at _loopao74
                reset
              ta
            fi
          wend
          push _addofc74
          if
            at _addofa74
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          push    _subXName1_0
          #(begin macro)addof()
          sbm _addofb75
          sbm _addofa75 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc75
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao75
          while
            push _addofa75
            if
              at _addofa75
                dec
              ta
              at _addofb75
                inc
              ta
              push _addofb75
              not
              if
                at _addofc75
                  set 1
                ta
              fi
            else
              at _loopao75
                reset
              ta
            fi
          wend
          push _addofc75
          if
            at _addofa75
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          pop     _subXName1_0
          add
          push    _subXNameA1_1
          #(begin macro)addof()
          sbm _addofb76
          sbm _addofa76 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc76
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao76
          while
            push _addofa76
            if
              at _addofa76
                dec
              ta
              at _addofb76
                inc
              ta
              push _addofb76
              not
              if
                at _addofc76
                  set 1
                ta
              fi
            else
              at _loopao76
                reset
              ta
            fi
          wend
          push _addofc76
          if
            at _addofa76
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          pop     _subXName1_1
          push    _negNameB7_1
          #(begin macro)addof()
          sbm _addofb77
          sbm _addofa77 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc77
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao77
          while
            push _addofa77
            if
              at _addofa77
                dec
              ta
              at _addofb77
                inc
              ta
              push _addofb77
              not
              if
                at _addofc77
                  set 1
                ta
              fi
            else
              at _loopao77
                reset
              ta
            fi
          wend
          push _addofc77
          if
            at _addofa77
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          push    _subXName1_1
          #(begin macro)addof()
          sbm _addofb78
          sbm _addofa78 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc78
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao78
          while
            push _addofa78
            if
              at _addofa78
                dec
              ta
              at _addofb78
                inc
              ta
              push _addofb78
              not
              if
                at _addofc78
                  set 1
                ta
              fi
            else
              at _loopao78
                reset
              ta
            fi
          wend
          push _addofc78
          if
            at _addofa78
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          pop     _subXName1_1
          add
          push    _subXNameA1_2
          #(begin macro)addof()
          sbm _addofb79
          sbm _addofa79 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc79
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao79
          while
            push _addofa79
            if
              at _addofa79
                dec
              ta
              at _addofb79
                inc
              ta
              push _addofb79
              not
              if
                at _addofc79
                  set 1
                ta
              fi
            else
              at _loopao79
                reset
              ta
            fi
          wend
          push _addofc79
          if
            at _addofa79
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          pop     _subXName1_2
          push    _negNameB7_2
          #(begin macro)addof()
          sbm _addofb80
          sbm _addofa80 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc80
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao80
          while
            push _addofa80
            if
              at _addofa80
                dec
              ta
              at _addofb80
                inc
              ta
              push _addofb80
              not
              if
                at _addofc80
                  set 1
                ta
              fi
            else
              at _loopao80
                reset
              ta
            fi
          wend
          push _addofc80
          if
            at _addofa80
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          push    _subXName1_2
          #(begin macro)addof()
          sbm _addofb81
          sbm _addofa81 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc81
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao81
          while
            push _addofa81
            if
              at _addofa81
                dec
              ta
              at _addofb81
                inc
              ta
              push _addofb81
              not
              if
                at _addofc81
                  set 1
                ta
              fi
            else
              at _loopao81
                reset
              ta
            fi
          wend
          push _addofc81
          if
            at _addofa81
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          pop     _subXName1_2
          add
          push    _subXNameA1_3
          #(begin macro)addof()
          sbm _addofb82
          sbm _addofa82 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc82
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao82
          while
            push _addofa82
            if
              at _addofa82
                dec
              ta
              at _addofb82
                inc
              ta
              push _addofb82
              not
              if
                at _addofc82
                  set 1
                ta
              fi
            else
              at _loopao82
                reset
              ta
            fi
          wend
          push _addofc82
          if
            at _addofa82
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          pop     _subXName1_3
          push    _negNameB7_3
          #(begin macro)addof()
          sbm _addofb83
          sbm _addofa83 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc83
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao83
          while
            push _addofa83
            if
              at _addofa83
                dec
              ta
              at _addofb83
                inc
              ta
              push _addofb83
              not
              if
                at _addofc83
                  set 1
                ta
              fi
            else
              at _loopao83
                reset
              ta
            fi
          wend
          push _addofc83
          if
            at _addofa83
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          push    _subXName1_3
          #(begin macro)addof()
          sbm _addofb84
          sbm _addofa84 - 1
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_addofc"+_addof ,0)
          push 0
          sbm _addofc84
          #(end macro)lvar("_addofc"+_addof ,0)
          push 1
          sbm _loopao84
          while
            push _addofa84
            if
              at _addofa84
                dec
              ta
              at _addofb84
                inc
              ta
              push _addofb84
              not
              if
                at _addofc84
                  set 1
                ta
              fi
            else
              at _loopao84
                reset
              ta
            fi
          wend
          push _addofc84
          if
            at _addofa84
              set 1
            ta
          fi
          #(begin macro)scope_end()
          drop
          #(end macro)scope_end()
          #(end macro)addof()
          pop     _subXName1_3
          add
          pop     _subXName1_c
        else  # nameA has a different sign of nameB
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
          push 0
          sbm _asupb7
          #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
          #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
          push 0
          sbm _aequb7
          #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
          push    _subXNameA1_3
          push    _negNameB7_3
          sup
          if
            at _asupb7
              set 1
            ta
          else
            push    _subXNameA1_3
            push    _negNameB7_3
            diff
            if
              at _asupb7
                reset
              ta
            else
              push    _subXNameA1_2
              push    _negNameB7_2
              sup
              if
                at _asupb7
                  set 1
                ta
              else
                push    _subXNameA1_2
                push    _negNameB7_2
                diff
                if
                  at _asupb7
                    reset
                  ta
                else
                  push    _subXNameA1_1
                  push    _negNameB7_1
                  sup
                  if
                    at _asupb7
                      set 1
                    ta
                  else
                    push    _subXNameA1_1
                    push    _negNameB7_1
                    diff
                    if
                      at _asupb7
                        reset
                      ta
                    else
                      push    _subXNameA1_0
                      push    _negNameB7_0
                      sup
                      if
                        at _asupb7
                          set 1
                        ta
                      else
                        push    _subXNameA1_0
                        push    _negNameB7_0
                        diff
                        if
                          at _asupb7
                            reset
                          ta
                        else
                          at _aequb7
                            set 1
                          ta
                        fi
                      fi
                    fi
                  fi
                fi
              fi
            fi
          fi
          push _asupb7
          if  # absA > absB : do  absA-absB with sign of A
            # print("absA > absB\n")
            push    _subXNameA1_s
            pop     _subXName1_s    # name has same sign of nameA
            
            push    0
            sbm     _addvvvXCarry7
            push    _subXNameA1_0
            push    _negNameB7_0
            #(begin macro)subof()
            sbm _subofb97
            sbm _subofa97 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc97
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso97
            while
              push _subofb97
              if
                at _subofb97
                  dec
                ta
                at _subofa97
                  dec
                ta
                push _subofa97
                inc
                not
                if
                  at _subofc97
                    set 1
                  ta
                fi
              else
                at _loopso97
                  reset
                ta
              fi
            wend
            push _subofc97
            if
              at _subofb97
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            push    _addvvvXCarry7
            #(begin macro)subof()
            sbm _subofb98
            sbm _subofa98 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc98
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso98
            while
              push _subofb98
              if
                at _subofb98
                  dec
                ta
                at _subofa98
                  dec
                ta
                push _subofa98
                inc
                not
                if
                  at _subofc98
                    set 1
                  ta
                fi
              else
                at _loopso98
                  reset
                ta
              fi
            wend
            push _subofc98
            if
              at _subofb98
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            pop     _subXName1_0
            add
            pop     _addvvvXCarry7
            push    _subXNameA1_1
            push    _negNameB7_1
            #(begin macro)subof()
            sbm _subofb99
            sbm _subofa99 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc99
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso99
            while
              push _subofb99
              if
                at _subofb99
                  dec
                ta
                at _subofa99
                  dec
                ta
                push _subofa99
                inc
                not
                if
                  at _subofc99
                    set 1
                  ta
                fi
              else
                at _loopso99
                  reset
                ta
              fi
            wend
            push _subofc99
            if
              at _subofb99
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            push    _addvvvXCarry7
            #(begin macro)subof()
            sbm _subofb100
            sbm _subofa100 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc100
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso100
            while
              push _subofb100
              if
                at _subofb100
                  dec
                ta
                at _subofa100
                  dec
                ta
                push _subofa100
                inc
                not
                if
                  at _subofc100
                    set 1
                  ta
                fi
              else
                at _loopso100
                  reset
                ta
              fi
            wend
            push _subofc100
            if
              at _subofb100
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            pop     _subXName1_1
            add
            pop     _addvvvXCarry7
            push    _subXNameA1_2
            push    _negNameB7_2
            #(begin macro)subof()
            sbm _subofb101
            sbm _subofa101 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc101
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso101
            while
              push _subofb101
              if
                at _subofb101
                  dec
                ta
                at _subofa101
                  dec
                ta
                push _subofa101
                inc
                not
                if
                  at _subofc101
                    set 1
                  ta
                fi
              else
                at _loopso101
                  reset
                ta
              fi
            wend
            push _subofc101
            if
              at _subofb101
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            push    _addvvvXCarry7
            #(begin macro)subof()
            sbm _subofb102
            sbm _subofa102 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc102
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso102
            while
              push _subofb102
              if
                at _subofb102
                  dec
                ta
                at _subofa102
                  dec
                ta
                push _subofa102
                inc
                not
                if
                  at _subofc102
                    set 1
                  ta
                fi
              else
                at _loopso102
                  reset
                ta
              fi
            wend
            push _subofc102
            if
              at _subofb102
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            pop     _subXName1_2
            add
            pop     _addvvvXCarry7
            push    _subXNameA1_3
            push    _negNameB7_3
            #(begin macro)subof()
            sbm _subofb103
            sbm _subofa103 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc103
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso103
            while
              push _subofb103
              if
                at _subofb103
                  dec
                ta
                at _subofa103
                  dec
                ta
                push _subofa103
                inc
                not
                if
                  at _subofc103
                    set 1
                  ta
                fi
              else
                at _loopso103
                  reset
                ta
              fi
            wend
            push _subofc103
            if
              at _subofb103
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            push    _addvvvXCarry7
            #(begin macro)subof()
            sbm _subofb104
            sbm _subofa104 - 1
            #(begin macro)scope_begin()
            #(end macro)scope_begin()
            #(begin macro)lvar("_subofc"+_subof ,0)
            push 0
            sbm _subofc104
            #(end macro)lvar("_subofc"+_subof ,0)
            push 1
            sbm _loopso104
            while
              push _subofb104
              if
                at _subofb104
                  dec
                ta
                at _subofa104
                  dec
                ta
                push _subofa104
                inc
                not
                if
                  at _subofc104
                    set 1
                  ta
                fi
              else
                at _loopso104
                  reset
                ta
              fi
            wend
            push _subofc104
            if
              at _subofb104
                set 1
              ta
            fi
            #(begin macro)scope_end()
            drop
            #(end macro)scope_end()
            swap
            #(end macro)subof()
            pop     _subXName1_3
            add
            pop     _addvvvXCarry7
            pop     _subXName1_c
          else # absB >= absA :
            push    _aequb7
            if # absA == absB , then name =0 (opposite sign then sum is zero)
              #print("absA == absB\n")
              #(begin macro)setvX(X,name,0)
              at _subXName1_0
                #(begin macro)setX(X,immValue)
                bf <
                bf <
                bf <
                bf <
                bf <
                reset
                bf  >
                set 0
                bf >
                set    0
                bf >
                set    0
                bf >
                set    0
                bf >
                set    0
                #(end macro)setX(X,immValue)
              ta
              #(end macro)setvX(X,name,0)
            else # absA < absB : do   absB-absA with sign of B
              #print("absA < absB\n")
              push    _negNameB7_s
              pop     _subXName1_s    # name has same sign of nameB
              
              push    0
              sbm     _addvvvXCarry7
              push    _negNameB7_0
              push    _subXNameA1_0
              #(begin macro)subof()
              sbm _subofb105
              sbm _subofa105 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_subofc"+_subof ,0)
              push 0
              sbm _subofc105
              #(end macro)lvar("_subofc"+_subof ,0)
              push 1
              sbm _loopso105
              while
                push _subofb105
                if
                  at _subofb105
                    dec
                  ta
                  at _subofa105
                    dec
                  ta
                  push _subofa105
                  inc
                  not
                  if
                    at _subofc105
                      set 1
                    ta
                  fi
                else
                  at _loopso105
                    reset
                  ta
                fi
              wend
              push _subofc105
              if
                at _subofb105
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              swap
              #(end macro)subof()
              push    _addvvvXCarry7
              #(begin macro)subof()
              sbm _subofb106
              sbm _subofa106 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_subofc"+_subof ,0)
              push 0
              sbm _subofc106
              #(end macro)lvar("_subofc"+_subof ,0)
              push 1
              sbm _loopso106
              while
                push _subofb106
                if
                  at _subofb106
                    dec
                  ta
                  at _subofa106
                    dec
                  ta
                  push _subofa106
                  inc
                  not
                  if
                    at _subofc106
                      set 1
                    ta
                  fi
                else
                  at _loopso106
                    reset
                  ta
                fi
              wend
              push _subofc106
              if
                at _subofb106
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              swap
              #(end macro)subof()
              pop     _subXName1_0
              add
              pop     _addvvvXCarry7
              push    _negNameB7_1
              push    _subXNameA1_1
              #(begin macro)subof()
              sbm _subofb107
              sbm _subofa107 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_subofc"+_subof ,0)
              push 0
              sbm _subofc107
              #(end macro)lvar("_subofc"+_subof ,0)
              push 1
              sbm _loopso107
              while
                push _subofb107
                if
                  at _subofb107
                    dec
                  ta
                  at _subofa107
                    dec
                  ta
                  push _subofa107
                  inc
                  not
                  if
                    at _subofc107
                      set 1
                    ta
                  fi
                else
                  at _loopso107
                    reset
                  ta
                fi
              wend
              push _subofc107
              if
                at _subofb107
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              swap
              #(end macro)subof()
              push    _addvvvXCarry7
              #(begin macro)subof()
              sbm _subofb108
              sbm _subofa108 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_subofc"+_subof ,0)
              push 0
              sbm _subofc108
              #(end macro)lvar("_subofc"+_subof ,0)
              push 1
              sbm _loopso108
              while
                push _subofb108
                if
                  at _subofb108
                    dec
                  ta
                  at _subofa108
                    dec
                  ta
                  push _subofa108
                  inc
                  not
                  if
                    at _subofc108
                      set 1
                    ta
                  fi
                else
                  at _loopso108
                    reset
                  ta
                fi
              wend
              push _subofc108
              if
                at _subofb108
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              swap
              #(end macro)subof()
              pop     _subXName1_1
              add
              pop     _addvvvXCarry7
              push    _negNameB7_2
              push    _subXNameA1_2
              #(begin macro)subof()
              sbm _subofb109
              sbm _subofa109 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_subofc"+_subof ,0)
              push 0
              sbm _subofc109
              #(end macro)lvar("_subofc"+_subof ,0)
              push 1
              sbm _loopso109
              while
                push _subofb109
                if
                  at _subofb109
                    dec
                  ta
                  at _subofa109
                    dec
                  ta
                  push _subofa109
                  inc
                  not
                  if
                    at _subofc109
                      set 1
                    ta
                  fi
                else
                  at _loopso109
                    reset
                  ta
                fi
              wend
              push _subofc109
              if
                at _subofb109
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              swap
              #(end macro)subof()
              push    _addvvvXCarry7
              #(begin macro)subof()
              sbm _subofb110
              sbm _subofa110 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_subofc"+_subof ,0)
              push 0
              sbm _subofc110
              #(end macro)lvar("_subofc"+_subof ,0)
              push 1
              sbm _loopso110
              while
                push _subofb110
                if
                  at _subofb110
                    dec
                  ta
                  at _subofa110
                    dec
                  ta
                  push _subofa110
                  inc
                  not
                  if
                    at _subofc110
                      set 1
                    ta
                  fi
                else
                  at _loopso110
                    reset
                  ta
                fi
              wend
              push _subofc110
              if
                at _subofb110
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              swap
              #(end macro)subof()
              pop     _subXName1_2
              add
              pop     _addvvvXCarry7
              push    _negNameB7_3
              push    _subXNameA1_3
              #(begin macro)subof()
              sbm _subofb111
              sbm _subofa111 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_subofc"+_subof ,0)
              push 0
              sbm _subofc111
              #(end macro)lvar("_subofc"+_subof ,0)
              push 1
              sbm _loopso111
              while
                push _subofb111
                if
                  at _subofb111
                    dec
                  ta
                  at _subofa111
                    dec
                  ta
                  push _subofa111
                  inc
                  not
                  if
                    at _subofc111
                      set 1
                    ta
                  fi
                else
                  at _loopso111
                    reset
                  ta
                fi
              wend
              push _subofc111
              if
                at _subofb111
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              swap
              #(end macro)subof()
              push    _addvvvXCarry7
              #(begin macro)subof()
              sbm _subofb112
              sbm _subofa112 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_subofc"+_subof ,0)
              push 0
              sbm _subofc112
              #(end macro)lvar("_subofc"+_subof ,0)
              push 1
              sbm _loopso112
              while
                push _subofb112
                if
                  at _subofb112
                    dec
                  ta
                  at _subofa112
                    dec
                  ta
                  push _subofa112
                  inc
                  not
                  if
                    at _subofc112
                      set 1
                    ta
                  fi
                else
                  at _loopso112
                    reset
                  ta
                fi
              wend
              push _subofc112
              if
                at _subofb112
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              swap
              #(end macro)subof()
              pop     _subXName1_3
              add
              pop     _addvvvXCarry7
              pop     _subXName1_c
            fi
          fi
          #(begin macro)scope_end()
          drop
          drop
          #(end macro)scope_end()
        fi
        #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
        #(begin macro)scope_end()
        drop
        drop
        drop
        drop
        drop
        drop
        #(end macro)scope_end()
        #(end macro)subvvvX(X,"_subXName" + _subX, "_subXNameA" + _subX, "_subXNameB" + _subX)
        #(begin macro)scope_end()
        drop
        drop
        drop
        drop
        drop
        drop
        #(end macro)scope_end()
        #(begin macro)dropX(X)
        drop
        drop
        drop
        drop
        drop
        drop
        #(end macro)dropX(X)
        #(end macro)subX(4)
        #(end macro)sub32
        #(begin macro)popv32  cnt
        #(begin macro)popvX(4,name)
        pop     cnt_0
        pop     cnt_1
        pop     cnt_2
        pop     cnt_3
        pop     cnt_s
        pop     cnt_c
        #(end macro)popvX(4,name)
        #(end macro)popv32  cnt
        push    1
        sbm     looper2
        while
          #(begin macro)pushv32 cnt
          #(begin macro)pushvX(4,name)
          push    cnt_c
          push    cnt_s
          push    cnt_3
          push    cnt_2
          push    cnt_1
          push    cnt_0
          #(end macro)pushvX(4,name)
          #(end macro)pushv32 cnt
          #(begin macro)push32  0
          #(begin macro)pushX(4, immValue)
          push    0
          push    0
          push    0
          push    0
          push    0
          push    0
          #(end macro)pushX(4, immValue)
          #(end macro)push32  0
          #(begin macro)equal32
          #(begin macro)equalX(4)
          #(begin macro)sbmX(X,"_equalXA" + _equalX, 1)
          #(begin macro)sbmX2(X,name,backward,0)
          sbm _equalXA1_0 - 6
          sbm _equalXA1_1 - 7
          sbm _equalXA1_2 - 8
          sbm _equalXA1_3 - 9
          sbm _equalXA1_s - 10
          sbm _equalXA1_c - 11
          #(end macro)sbmX2(X,name,backward,0)
          #(end macro)sbmX(X,"_equalXA" + _equalX, 1)
          #(begin macro)sbmX(X,"_equalXB" + _equalX, 0)
          #(begin macro)sbmX2(X,name,backward,0)
          sbm _equalXB1_0 - 0
          sbm _equalXB1_1 - 1
          sbm _equalXB1_2 - 2
          sbm _equalXB1_3 - 3
          sbm _equalXB1_s - 4
          sbm _equalXB1_c - 5
          #(end macro)sbmX2(X,name,backward,0)
          #(end macro)sbmX(X,"_equalXB" + _equalX, 0)
          sbm _equalX1 - 11
          #(begin macro)equalvvX(X,"_equalXA" + _equalX, "_equalXB" + _equalX)
          push _equalXA1_s
          push _equalXB1_s
          equal
          push _equalXA1_0
          push _equalXB1_0
          equal
          push _equalXA1_1
          push _equalXB1_1
          equal
          push _equalXA1_2
          push _equalXB1_2
          equal
          push _equalXA1_3
          push _equalXB1_3
          equal
          and
          and
          and
          and
          #(end macro)equalvvX(X,"_equalXA" + _equalX, "_equalXB" + _equalX)
          pop _equalX1
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          #(end macro)equalX(4)
          #(end macro)equal32
          if
            #(begin macro)at_reset    looper2
            #(begin macro)at_1("reset",a)
            #(begin macro)at_2(ope,a,"")
            at looper2
              reset 
            ta
            #(end macro)at_2(ope,a,"")
            #(end macro)at_1("reset",a)
            #(end macro)at_reset    looper2
          else
            #(begin macro)addvvv32    result, preOldResult,   oldResult
            #(begin macro)addvvvX(4,name,nameA,nameB)
            push    preOldResult_s
            push    oldResult_s
            or
            not
            push    preOldResult_s
            push    oldResult_s
            and
            or
            if      # nameA and nameB are both positive or negative
              push    preOldResult_s
              pop     result_s    # name has same sign of nameA and nameB
              push    0
              push    preOldResult_0
              #(begin macro)addof()
              sbm _addofb85
              sbm _addofa85 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc85
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao85
              while
                push _addofa85
                if
                  at _addofa85
                    dec
                  ta
                  at _addofb85
                    inc
                  ta
                  push _addofb85
                  not
                  if
                    at _addofc85
                      set 1
                    ta
                  fi
                else
                  at _loopao85
                    reset
                  ta
                fi
              wend
              push _addofc85
              if
                at _addofa85
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     result_0
              push    oldResult_0
              #(begin macro)addof()
              sbm _addofb86
              sbm _addofa86 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc86
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao86
              while
                push _addofa86
                if
                  at _addofa86
                    dec
                  ta
                  at _addofb86
                    inc
                  ta
                  push _addofb86
                  not
                  if
                    at _addofc86
                      set 1
                    ta
                  fi
                else
                  at _loopao86
                    reset
                  ta
                fi
              wend
              push _addofc86
              if
                at _addofa86
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              push    result_0
              #(begin macro)addof()
              sbm _addofb87
              sbm _addofa87 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc87
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao87
              while
                push _addofa87
                if
                  at _addofa87
                    dec
                  ta
                  at _addofb87
                    inc
                  ta
                  push _addofb87
                  not
                  if
                    at _addofc87
                      set 1
                    ta
                  fi
                else
                  at _loopao87
                    reset
                  ta
                fi
              wend
              push _addofc87
              if
                at _addofa87
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     result_0
              add
              push    preOldResult_1
              #(begin macro)addof()
              sbm _addofb88
              sbm _addofa88 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc88
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao88
              while
                push _addofa88
                if
                  at _addofa88
                    dec
                  ta
                  at _addofb88
                    inc
                  ta
                  push _addofb88
                  not
                  if
                    at _addofc88
                      set 1
                    ta
                  fi
                else
                  at _loopao88
                    reset
                  ta
                fi
              wend
              push _addofc88
              if
                at _addofa88
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     result_1
              push    oldResult_1
              #(begin macro)addof()
              sbm _addofb89
              sbm _addofa89 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc89
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao89
              while
                push _addofa89
                if
                  at _addofa89
                    dec
                  ta
                  at _addofb89
                    inc
                  ta
                  push _addofb89
                  not
                  if
                    at _addofc89
                      set 1
                    ta
                  fi
                else
                  at _loopao89
                    reset
                  ta
                fi
              wend
              push _addofc89
              if
                at _addofa89
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              push    result_1
              #(begin macro)addof()
              sbm _addofb90
              sbm _addofa90 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc90
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao90
              while
                push _addofa90
                if
                  at _addofa90
                    dec
                  ta
                  at _addofb90
                    inc
                  ta
                  push _addofb90
                  not
                  if
                    at _addofc90
                      set 1
                    ta
                  fi
                else
                  at _loopao90
                    reset
                  ta
                fi
              wend
              push _addofc90
              if
                at _addofa90
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     result_1
              add
              push    preOldResult_2
              #(begin macro)addof()
              sbm _addofb91
              sbm _addofa91 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc91
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao91
              while
                push _addofa91
                if
                  at _addofa91
                    dec
                  ta
                  at _addofb91
                    inc
                  ta
                  push _addofb91
                  not
                  if
                    at _addofc91
                      set 1
                    ta
                  fi
                else
                  at _loopao91
                    reset
                  ta
                fi
              wend
              push _addofc91
              if
                at _addofa91
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     result_2
              push    oldResult_2
              #(begin macro)addof()
              sbm _addofb92
              sbm _addofa92 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc92
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao92
              while
                push _addofa92
                if
                  at _addofa92
                    dec
                  ta
                  at _addofb92
                    inc
                  ta
                  push _addofb92
                  not
                  if
                    at _addofc92
                      set 1
                    ta
                  fi
                else
                  at _loopao92
                    reset
                  ta
                fi
              wend
              push _addofc92
              if
                at _addofa92
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              push    result_2
              #(begin macro)addof()
              sbm _addofb93
              sbm _addofa93 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc93
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao93
              while
                push _addofa93
                if
                  at _addofa93
                    dec
                  ta
                  at _addofb93
                    inc
                  ta
                  push _addofb93
                  not
                  if
                    at _addofc93
                      set 1
                    ta
                  fi
                else
                  at _loopao93
                    reset
                  ta
                fi
              wend
              push _addofc93
              if
                at _addofa93
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     result_2
              add
              push    preOldResult_3
              #(begin macro)addof()
              sbm _addofb94
              sbm _addofa94 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc94
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao94
              while
                push _addofa94
                if
                  at _addofa94
                    dec
                  ta
                  at _addofb94
                    inc
                  ta
                  push _addofb94
                  not
                  if
                    at _addofc94
                      set 1
                    ta
                  fi
                else
                  at _loopao94
                    reset
                  ta
                fi
              wend
              push _addofc94
              if
                at _addofa94
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     result_3
              push    oldResult_3
              #(begin macro)addof()
              sbm _addofb95
              sbm _addofa95 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc95
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao95
              while
                push _addofa95
                if
                  at _addofa95
                    dec
                  ta
                  at _addofb95
                    inc
                  ta
                  push _addofb95
                  not
                  if
                    at _addofc95
                      set 1
                    ta
                  fi
                else
                  at _loopao95
                    reset
                  ta
                fi
              wend
              push _addofc95
              if
                at _addofa95
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              push    result_3
              #(begin macro)addof()
              sbm _addofb96
              sbm _addofa96 - 1
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_addofc"+_addof ,0)
              push 0
              sbm _addofc96
              #(end macro)lvar("_addofc"+_addof ,0)
              push 1
              sbm _loopao96
              while
                push _addofa96
                if
                  at _addofa96
                    dec
                  ta
                  at _addofb96
                    inc
                  ta
                  push _addofb96
                  not
                  if
                    at _addofc96
                      set 1
                    ta
                  fi
                else
                  at _loopao96
                    reset
                  ta
                fi
              wend
              push _addofc96
              if
                at _addofa96
                  set 1
                ta
              fi
              #(begin macro)scope_end()
              drop
              #(end macro)scope_end()
              #(end macro)addof()
              pop     result_3
              add
              pop     result_c
            else  # nameA has a different sign of nameB
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
              push 0
              sbm _asupb8
              #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
              #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
              push 0
              sbm _aequb8
              #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
              push    preOldResult_3
              push    oldResult_3
              sup
              if
                at _asupb8
                  set 1
                ta
              else
                push    preOldResult_3
                push    oldResult_3
                diff
                if
                  at _asupb8
                    reset
                  ta
                else
                  push    preOldResult_2
                  push    oldResult_2
                  sup
                  if
                    at _asupb8
                      set 1
                    ta
                  else
                    push    preOldResult_2
                    push    oldResult_2
                    diff
                    if
                      at _asupb8
                        reset
                      ta
                    else
                      push    preOldResult_1
                      push    oldResult_1
                      sup
                      if
                        at _asupb8
                          set 1
                        ta
                      else
                        push    preOldResult_1
                        push    oldResult_1
                        diff
                        if
                          at _asupb8
                            reset
                          ta
                        else
                          push    preOldResult_0
                          push    oldResult_0
                          sup
                          if
                            at _asupb8
                              set 1
                            ta
                          else
                            push    preOldResult_0
                            push    oldResult_0
                            diff
                            if
                              at _asupb8
                                reset
                              ta
                            else
                              at _aequb8
                                set 1
                              ta
                            fi
                          fi
                        fi
                      fi
                    fi
                  fi
                fi
              fi
              push _asupb8
              if  # absA > absB : do  absA-absB with sign of A
                # print("absA > absB\n")
                push    preOldResult_s
                pop     result_s    # name has same sign of nameA
                
                push    0
                sbm     _addvvvXCarry8
                push    preOldResult_0
                push    oldResult_0
                #(begin macro)subof()
                sbm _subofb113
                sbm _subofa113 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc113
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso113
                while
                  push _subofb113
                  if
                    at _subofb113
                      dec
                    ta
                    at _subofa113
                      dec
                    ta
                    push _subofa113
                    inc
                    not
                    if
                      at _subofc113
                        set 1
                      ta
                    fi
                  else
                    at _loopso113
                      reset
                    ta
                  fi
                wend
                push _subofc113
                if
                  at _subofb113
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                push    _addvvvXCarry8
                #(begin macro)subof()
                sbm _subofb114
                sbm _subofa114 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc114
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso114
                while
                  push _subofb114
                  if
                    at _subofb114
                      dec
                    ta
                    at _subofa114
                      dec
                    ta
                    push _subofa114
                    inc
                    not
                    if
                      at _subofc114
                        set 1
                      ta
                    fi
                  else
                    at _loopso114
                      reset
                    ta
                  fi
                wend
                push _subofc114
                if
                  at _subofb114
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                pop     result_0
                add
                pop     _addvvvXCarry8
                push    preOldResult_1
                push    oldResult_1
                #(begin macro)subof()
                sbm _subofb115
                sbm _subofa115 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc115
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso115
                while
                  push _subofb115
                  if
                    at _subofb115
                      dec
                    ta
                    at _subofa115
                      dec
                    ta
                    push _subofa115
                    inc
                    not
                    if
                      at _subofc115
                        set 1
                      ta
                    fi
                  else
                    at _loopso115
                      reset
                    ta
                  fi
                wend
                push _subofc115
                if
                  at _subofb115
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                push    _addvvvXCarry8
                #(begin macro)subof()
                sbm _subofb116
                sbm _subofa116 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc116
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso116
                while
                  push _subofb116
                  if
                    at _subofb116
                      dec
                    ta
                    at _subofa116
                      dec
                    ta
                    push _subofa116
                    inc
                    not
                    if
                      at _subofc116
                        set 1
                      ta
                    fi
                  else
                    at _loopso116
                      reset
                    ta
                  fi
                wend
                push _subofc116
                if
                  at _subofb116
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                pop     result_1
                add
                pop     _addvvvXCarry8
                push    preOldResult_2
                push    oldResult_2
                #(begin macro)subof()
                sbm _subofb117
                sbm _subofa117 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc117
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso117
                while
                  push _subofb117
                  if
                    at _subofb117
                      dec
                    ta
                    at _subofa117
                      dec
                    ta
                    push _subofa117
                    inc
                    not
                    if
                      at _subofc117
                        set 1
                      ta
                    fi
                  else
                    at _loopso117
                      reset
                    ta
                  fi
                wend
                push _subofc117
                if
                  at _subofb117
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                push    _addvvvXCarry8
                #(begin macro)subof()
                sbm _subofb118
                sbm _subofa118 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc118
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso118
                while
                  push _subofb118
                  if
                    at _subofb118
                      dec
                    ta
                    at _subofa118
                      dec
                    ta
                    push _subofa118
                    inc
                    not
                    if
                      at _subofc118
                        set 1
                      ta
                    fi
                  else
                    at _loopso118
                      reset
                    ta
                  fi
                wend
                push _subofc118
                if
                  at _subofb118
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                pop     result_2
                add
                pop     _addvvvXCarry8
                push    preOldResult_3
                push    oldResult_3
                #(begin macro)subof()
                sbm _subofb119
                sbm _subofa119 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc119
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso119
                while
                  push _subofb119
                  if
                    at _subofb119
                      dec
                    ta
                    at _subofa119
                      dec
                    ta
                    push _subofa119
                    inc
                    not
                    if
                      at _subofc119
                        set 1
                      ta
                    fi
                  else
                    at _loopso119
                      reset
                    ta
                  fi
                wend
                push _subofc119
                if
                  at _subofb119
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                push    _addvvvXCarry8
                #(begin macro)subof()
                sbm _subofb120
                sbm _subofa120 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_subofc"+_subof ,0)
                push 0
                sbm _subofc120
                #(end macro)lvar("_subofc"+_subof ,0)
                push 1
                sbm _loopso120
                while
                  push _subofb120
                  if
                    at _subofb120
                      dec
                    ta
                    at _subofa120
                      dec
                    ta
                    push _subofa120
                    inc
                    not
                    if
                      at _subofc120
                        set 1
                      ta
                    fi
                  else
                    at _loopso120
                      reset
                    ta
                  fi
                wend
                push _subofc120
                if
                  at _subofb120
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                swap
                #(end macro)subof()
                pop     result_3
                add
                pop     _addvvvXCarry8
                pop     result_c
              else # absB >= absA :
                push    _aequb8
                if # absA == absB , then name =0 (opposite sign then sum is zero)
                  #print("absA == absB\n")
                  #(begin macro)setvX(X,name,0)
                  at result_0
                    #(begin macro)setX(X,immValue)
                    bf <
                    bf <
                    bf <
                    bf <
                    bf <
                    reset
                    bf  >
                    set 0
                    bf >
                    set    0
                    bf >
                    set    0
                    bf >
                    set    0
                    bf >
                    set    0
                    #(end macro)setX(X,immValue)
                  ta
                  #(end macro)setvX(X,name,0)
                else # absA < absB : do   absB-absA with sign of B
                  #print("absA < absB\n")
                  push    oldResult_s
                  pop     result_s    # name has same sign of nameB
                  
                  push    0
                  sbm     _addvvvXCarry8
                  push    oldResult_0
                  push    preOldResult_0
                  #(begin macro)subof()
                  sbm _subofb121
                  sbm _subofa121 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc121
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso121
                  while
                    push _subofb121
                    if
                      at _subofb121
                        dec
                      ta
                      at _subofa121
                        dec
                      ta
                      push _subofa121
                      inc
                      not
                      if
                        at _subofc121
                          set 1
                        ta
                      fi
                    else
                      at _loopso121
                        reset
                      ta
                    fi
                  wend
                  push _subofc121
                  if
                    at _subofb121
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry8
                  #(begin macro)subof()
                  sbm _subofb122
                  sbm _subofa122 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc122
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso122
                  while
                    push _subofb122
                    if
                      at _subofb122
                        dec
                      ta
                      at _subofa122
                        dec
                      ta
                      push _subofa122
                      inc
                      not
                      if
                        at _subofc122
                          set 1
                        ta
                      fi
                    else
                      at _loopso122
                        reset
                      ta
                    fi
                  wend
                  push _subofc122
                  if
                    at _subofb122
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     result_0
                  add
                  pop     _addvvvXCarry8
                  push    oldResult_1
                  push    preOldResult_1
                  #(begin macro)subof()
                  sbm _subofb123
                  sbm _subofa123 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc123
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso123
                  while
                    push _subofb123
                    if
                      at _subofb123
                        dec
                      ta
                      at _subofa123
                        dec
                      ta
                      push _subofa123
                      inc
                      not
                      if
                        at _subofc123
                          set 1
                        ta
                      fi
                    else
                      at _loopso123
                        reset
                      ta
                    fi
                  wend
                  push _subofc123
                  if
                    at _subofb123
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry8
                  #(begin macro)subof()
                  sbm _subofb124
                  sbm _subofa124 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc124
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso124
                  while
                    push _subofb124
                    if
                      at _subofb124
                        dec
                      ta
                      at _subofa124
                        dec
                      ta
                      push _subofa124
                      inc
                      not
                      if
                        at _subofc124
                          set 1
                        ta
                      fi
                    else
                      at _loopso124
                        reset
                      ta
                    fi
                  wend
                  push _subofc124
                  if
                    at _subofb124
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     result_1
                  add
                  pop     _addvvvXCarry8
                  push    oldResult_2
                  push    preOldResult_2
                  #(begin macro)subof()
                  sbm _subofb125
                  sbm _subofa125 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc125
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso125
                  while
                    push _subofb125
                    if
                      at _subofb125
                        dec
                      ta
                      at _subofa125
                        dec
                      ta
                      push _subofa125
                      inc
                      not
                      if
                        at _subofc125
                          set 1
                        ta
                      fi
                    else
                      at _loopso125
                        reset
                      ta
                    fi
                  wend
                  push _subofc125
                  if
                    at _subofb125
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry8
                  #(begin macro)subof()
                  sbm _subofb126
                  sbm _subofa126 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc126
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso126
                  while
                    push _subofb126
                    if
                      at _subofb126
                        dec
                      ta
                      at _subofa126
                        dec
                      ta
                      push _subofa126
                      inc
                      not
                      if
                        at _subofc126
                          set 1
                        ta
                      fi
                    else
                      at _loopso126
                        reset
                      ta
                    fi
                  wend
                  push _subofc126
                  if
                    at _subofb126
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     result_2
                  add
                  pop     _addvvvXCarry8
                  push    oldResult_3
                  push    preOldResult_3
                  #(begin macro)subof()
                  sbm _subofb127
                  sbm _subofa127 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc127
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso127
                  while
                    push _subofb127
                    if
                      at _subofb127
                        dec
                      ta
                      at _subofa127
                        dec
                      ta
                      push _subofa127
                      inc
                      not
                      if
                        at _subofc127
                          set 1
                        ta
                      fi
                    else
                      at _loopso127
                        reset
                      ta
                    fi
                  wend
                  push _subofc127
                  if
                    at _subofb127
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry8
                  #(begin macro)subof()
                  sbm _subofb128
                  sbm _subofa128 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc128
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso128
                  while
                    push _subofb128
                    if
                      at _subofb128
                        dec
                      ta
                      at _subofa128
                        dec
                      ta
                      push _subofa128
                      inc
                      not
                      if
                        at _subofc128
                          set 1
                        ta
                      fi
                    else
                      at _loopso128
                        reset
                      ta
                    fi
                  wend
                  push _subofc128
                  if
                    at _subofb128
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     result_3
                  add
                  pop     _addvvvXCarry8
                  pop     result_c
                fi
              fi
              #(begin macro)scope_end()
              drop
              drop
              #(end macro)scope_end()
            fi
            #(end macro)addvvvX(4,name,nameA,nameB)
            #(end macro)addvvv32    result, preOldResult,   oldResult
            #(begin macro)pushv32     oldResult
            #(begin macro)pushvX(4,name)
            push    oldResult_c
            push    oldResult_s
            push    oldResult_3
            push    oldResult_2
            push    oldResult_1
            push    oldResult_0
            #(end macro)pushvX(4,name)
            #(end macro)pushv32     oldResult
            #(begin macro)popv32      preOldResult
            #(begin macro)popvX(4,name)
            pop     preOldResult_0
            pop     preOldResult_1
            pop     preOldResult_2
            pop     preOldResult_3
            pop     preOldResult_s
            pop     preOldResult_c
            #(end macro)popvX(4,name)
            #(end macro)popv32      preOldResult
            #(begin macro)pushv32     result
            #(begin macro)pushvX(4,name)
            push    result_c
            push    result_s
            push    result_3
            push    result_2
            push    result_1
            push    result_0
            #(end macro)pushvX(4,name)
            #(end macro)pushv32     result
            #(begin macro)popv32      oldResult
            #(begin macro)popvX(4,name)
            pop     oldResult_0
            pop     oldResult_1
            pop     oldResult_2
            pop     oldResult_3
            pop     oldResult_s
            pop     oldResult_c
            #(end macro)popvX(4,name)
            #(end macro)popv32      oldResult
            #(begin macro)decv32      cnt
            #(begin macro)decvX(4,name)
            #(begin macro)if_equal(name +"_s",1)  # negative number
            push cnt_s
            push 1
            equal
            if
              #(end macro)if_equal(name +"_s",1)  # negative number
              #(begin macro)at_inc(name + "_" + xx)
              #(begin macro)at_1("inc",a)
              #(begin macro)at_2(ope,a,"")
              at cnt_0
                inc 
              ta
              #(end macro)at_2(ope,a,"")
              #(end macro)at_1("inc",a)
              #(end macro)at_inc(name + "_" + xx)
              #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
              push cnt_0
              push 0
              equal
              if
                #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                #(begin macro)at_inc(name + "_" + xx)
                #(begin macro)at_1("inc",a)
                #(begin macro)at_2(ope,a,"")
                at cnt_1
                  inc 
                ta
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("inc",a)
                #(end macro)at_inc(name + "_" + xx)
                #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                push cnt_1
                push 0
                equal
                if
                  #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                  #(begin macro)at_inc(name + "_" + xx)
                  #(begin macro)at_1("inc",a)
                  #(begin macro)at_2(ope,a,"")
                  at cnt_2
                    inc 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("inc",a)
                  #(end macro)at_inc(name + "_" + xx)
                  #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                  push cnt_2
                  push 0
                  equal
                  if
                    #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                    #(begin macro)at_inc(name + "_" + xx)
                    #(begin macro)at_1("inc",a)
                    #(begin macro)at_2(ope,a,"")
                    at cnt_3
                      inc 
                    ta
                    #(end macro)at_2(ope,a,"")
                    #(end macro)at_1("inc",a)
                    #(end macro)at_inc(name + "_" + xx)
                    #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                    push cnt_3
                    push 0
                    equal
                    if
                      #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                      #(begin macro)setcvX(X, name) ## set carry (overflow)
                      #(begin macro)at_set(name+"_c",1)
                      #(begin macro)at_2("set",a,b)
                      at cnt_c
                        set 1
                      ta
                      #(end macro)at_2("set",a,b)
                      #(end macro)at_set(name+"_c",1)
                      #(end macro)setcvX(X, name) ## set carry (overflow)
                    fi
                  fi
                fi
              fi
            else    # positive number
              #(begin macro)at_dec(name + "_" + xx)
              #(begin macro)at_1("dec",a)
              #(begin macro)at_2(ope,a,"")
              at cnt_0
                dec 
              ta
              #(end macro)at_2(ope,a,"")
              #(end macro)at_1("dec",a)
              #(end macro)at_dec(name + "_" + xx)
              #(begin macro)if_equal(name +"_" + xx,255) # reduced
              push cnt_0
              push 255
              equal
              if
                #(end macro)if_equal(name +"_" + xx,255) # reduced
                #(begin macro)at_dec(name + "_" + xx)
                #(begin macro)at_1("dec",a)
                #(begin macro)at_2(ope,a,"")
                at cnt_1
                  dec 
                ta
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("dec",a)
                #(end macro)at_dec(name + "_" + xx)
                #(begin macro)if_equal(name +"_" + xx,255) # reduced
                push cnt_1
                push 255
                equal
                if
                  #(end macro)if_equal(name +"_" + xx,255) # reduced
                  #(begin macro)at_dec(name + "_" + xx)
                  #(begin macro)at_1("dec",a)
                  #(begin macro)at_2(ope,a,"")
                  at cnt_2
                    dec 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("dec",a)
                  #(end macro)at_dec(name + "_" + xx)
                  #(begin macro)if_equal(name +"_" + xx,255) # reduced
                  push cnt_2
                  push 255
                  equal
                  if
                    #(end macro)if_equal(name +"_" + xx,255) # reduced
                    #(begin macro)at_dec(name + "_" + xx)
                    #(begin macro)at_1("dec",a)
                    #(begin macro)at_2(ope,a,"")
                    at cnt_3
                      dec 
                    ta
                    #(end macro)at_2(ope,a,"")
                    #(end macro)at_1("dec",a)
                    #(end macro)at_dec(name + "_" + xx)
                    #(begin macro)if_equal(name +"_" + xx,255) # reduced
                    push cnt_3
                    push 255
                    equal
                    if
                      #(end macro)if_equal(name +"_" + xx,255) # reduced
                      #(begin macro)setvX(X,name,-1)
                      at cnt_0
                        #(begin macro)setX(X,immValue)
                        bf <
                        bf <
                        bf <
                        bf <
                        bf <
                        reset
                        bf  >
                        set 1
                        bf >
                        set    0
                        bf >
                        set    0
                        bf >
                        set    0
                        bf >
                        set    1
                        #(end macro)setX(X,immValue)
                      ta
                      #(end macro)setvX(X,name,-1)
                    fi
                  fi
                fi
              fi
            fi
            #(end macro)decvX(4,name)
            #(end macro)decv32      cnt
          fi
        wend
        #(begin macro)print("f[")
        push    0
        set     102
        out             # 'f'
        sub     11
        out             # '['
        drop
        #(end macro)print("f[")
        #(begin macro)write32 N
        #(begin macro)writeX(4,name)
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("writeXprefixzero" + _writeX, 1)
        push 1
        sbm writeXprefixzero3
        #(end macro)lvar("writeXprefixzero" + _writeX, 1)
        #(begin macro)lvarX(X,"writeX_A"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_A3_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_A3_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A3_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A3_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A3_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A3_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_A"+_writeX)
        #(begin macro)lvarX(X,"writeX_B"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_B3_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_B3_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B3_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B3_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B3_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B3_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_B"+_writeX)
        #(begin macro)lvarX(X,"writeX_AmodB"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_AmodB3_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_AmodB3_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB3_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB3_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB3_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB3_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_AmodB"+_writeX)
        #(begin macro)lvarX(X,"writeX_AdivB"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_AdivB3_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_AdivB3_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB3_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB3_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB3_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB3_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_AdivB"+_writeX)
        
        #(begin macro)pushvX(X,name)
        push    N_c
        push    N_s
        push    N_3
        push    N_2
        push    N_1
        push    N_0
        #(end macro)pushvX(X,name)
        #(begin macro)popvX(X,"writeX_A"+_writeX)
        pop     writeX_A3_0
        pop     writeX_A3_1
        pop     writeX_A3_2
        pop     writeX_A3_3
        pop     writeX_A3_s
        pop     writeX_A3_c
        #(end macro)popvX(X,"writeX_A"+_writeX)
        
        #pushX(X,10)
        #popvX(X,"writeX_B"+_writeX)
        #(begin macro)setvX(X,"writeX_B"+_writeX, 10)
        at writeX_B3_0
          #(begin macro)setX(X,immValue)
          bf <
          bf <
          bf <
          bf <
          bf <
          reset
          bf  >
          set 0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    10
          #(end macro)setX(X,immValue)
        ta
        #(end macro)setvX(X,"writeX_B"+_writeX, 10)
        
        push writeX_A3_s
        if
          push    '-'
          pop     out   # write '-' if name < 0
        fi
        
        push _stringDecimal32_.size
        loop
          # output = input mod 10 ; input = input div 10
          #(begin macro)divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)lvar(name + "_c",0)
          push 0
          sbm _divvvvvXabsNameA3_c
          #(end macro)lvar(name + "_c",0)
          #(begin macro)lvar(name + "_s",0)
          push 0
          sbm _divvvvvXabsNameA3_s
          #(end macro)lvar(name + "_s",0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA3_3
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA3_2
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA3_1
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA3_0
          #(end macro)lvar(name + "_"+ xx1,0)
          #(end macro)lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)pushvX(X,nameA)
          push    writeX_A3_c
          push    writeX_A3_s
          push    writeX_A3_3
          push    writeX_A3_2
          push    writeX_A3_1
          push    writeX_A3_0
          #(end macro)pushvX(X,nameA)
          #(begin macro)popvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          pop     _divvvvvXabsNameA3_0
          pop     _divvvvvXabsNameA3_1
          pop     _divvvvvXabsNameA3_2
          pop     _divvvvvXabsNameA3_3
          pop     _divvvvvXabsNameA3_s
          pop     _divvvvvXabsNameA3_c
          #(end macro)popvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)lvar("_divvvvvXsA" + _divvvvvX, 0)
          push 0
          sbm _divvvvvXsA3
          #(end macro)lvar("_divvvvvXsA" + _divvvvvX, 0)
          push writeX_A3_s
          pop _divvvvvXsA3
          #(begin macro)absvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          push    0
          pop     _divvvvvXabsNameA3_s
          #(end macro)absvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          
          #(begin macro)lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)
          #(begin macro)lvar(name + "_c",0)
          push 0
          sbm _divvvvvXabsNameB3_c
          #(end macro)lvar(name + "_c",0)
          #(begin macro)lvar(name + "_s",0)
          push 0
          sbm _divvvvvXabsNameB3_s
          #(end macro)lvar(name + "_s",0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB3_3
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB3_2
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB3_1
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB3_0
          #(end macro)lvar(name + "_"+ xx1,0)
          #(end macro)lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)
          #(begin macro)pushvX(X,nameB)
          push    writeX_B3_c
          push    writeX_B3_s
          push    writeX_B3_3
          push    writeX_B3_2
          push    writeX_B3_1
          push    writeX_B3_0
          #(end macro)pushvX(X,nameB)
          #(begin macro)popvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          pop     _divvvvvXabsNameB3_0
          pop     _divvvvvXabsNameB3_1
          pop     _divvvvvXabsNameB3_2
          pop     _divvvvvXabsNameB3_3
          pop     _divvvvvXabsNameB3_s
          pop     _divvvvvXabsNameB3_c
          #(end macro)popvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          #(begin macro)lvar("_divvvvvXsB" + _divvvvvX, 0)
          push 0
          sbm _divvvvvXsB3
          #(end macro)lvar("_divvvvvXsB" + _divvvvvX, 0)
          push writeX_B3_s
          pop _divvvvvXsB3
          #(begin macro)absvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          push    0
          pop     _divvvvvXabsNameB3_s
          #(end macro)absvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          
          #(begin macro)pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          push    _divvvvvXabsNameA3_c
          push    _divvvvvXabsNameA3_s
          push    _divvvvvXabsNameA3_3
          push    _divvvvvXabsNameA3_2
          push    _divvvvvXabsNameA3_1
          push    _divvvvvXabsNameA3_0
          #(end macro)pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)popvX(X,nameAmodB)
          pop     writeX_AmodB3_0
          pop     writeX_AmodB3_1
          pop     writeX_AmodB3_2
          pop     writeX_AmodB3_3
          pop     writeX_AmodB3_s
          pop     writeX_AmodB3_c
          #(end macro)popvX(X,nameAmodB)
          
          #(begin macro)resetvX(X,nameAdivB)
          at writeX_AdivB3_0
            #(begin macro)resetX(X)
            bf <
            bf <
            bf <
            bf <
            bf <
            bf [-]
            bf >[-]
            bf >[-]
            bf >[-]
            bf >[-]
            bf >[-]
            #(end macro)resetX(X)
          ta
          #(end macro)resetvX(X,nameAdivB)
          
          #(begin macro)boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          push _divvvvvXabsNameB3_0
          bool
          push _divvvvvXabsNameB3_1
          bool
          push _divvvvvXabsNameB3_2
          bool
          push _divvvvvXabsNameB3_3
          bool
          or
          or
          or
          #(end macro)boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          if
            push    1
            sbm     _divvvvvX_g3
            while
              #(begin macro)supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
              push 0
              sbm _supequalvvX4
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvarX(X, "_supequalvvXName" + _supequalvvX)
              #(begin macro)lvar(name + "_c",0)
              push 0
              sbm _supequalvvXName4_c
              #(end macro)lvar(name + "_c",0)
              #(begin macro)lvar(name + "_s",0)
              push 0
              sbm _supequalvvXName4_s
              #(end macro)lvar(name + "_s",0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName4_3
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName4_2
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName4_1
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName4_0
              #(end macro)lvar(name + "_"+ xx1,0)
              #(end macro)lvarX(X, "_supequalvvXName" + _supequalvvX)
              #(begin macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
              #(begin macro)lvar(name + "_c",0)
              push 0
              sbm _negNameB8_c
              #(end macro)lvar(name + "_c",0)
              #(begin macro)lvar(name + "_s",0)
              push 0
              sbm _negNameB8_s
              #(end macro)lvar(name + "_s",0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB8_3
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB8_2
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB8_1
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB8_0
              #(end macro)lvar(name + "_"+ xx1,0)
              #(end macro)lvarX(X,"_negNameB" + _subvvvX)
              #(begin macro)pushvX(X,nameB)
              push    _divvvvvXabsNameB3_c
              push    _divvvvvXabsNameB3_s
              push    _divvvvvXabsNameB3_3
              push    _divvvvvXabsNameB3_2
              push    _divvvvvXabsNameB3_1
              push    _divvvvvXabsNameB3_0
              #(end macro)pushvX(X,nameB)
              #(begin macro)popvX(X,"_negNameB" + _subvvvX)
              pop     _negNameB8_0
              pop     _negNameB8_1
              pop     _negNameB8_2
              pop     _negNameB8_3
              pop     _negNameB8_s
              pop     _negNameB8_c
              #(end macro)popvX(X,"_negNameB" + _subvvvX)
              #(begin macro)negvX(X,"_negNameB" + _subvvvX)
              push    _negNameB8_s
              dec
              bool
              dup
              if    # if name is now negative
                #(begin macro)if_equal(name +"_"+xx, 0)
                push _negNameB8_0
                push 0
                equal
                if
                  #(end macro)if_equal(name +"_"+xx, 0)
                  #(begin macro)if_equal(name +"_"+xx, 0)
                  push _negNameB8_1
                  push 0
                  equal
                  if
                    #(end macro)if_equal(name +"_"+xx, 0)
                    #(begin macro)if_equal(name +"_"+xx, 0)
                    push _negNameB8_2
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_"+xx, 0)
                      #(begin macro)if_equal(name +"_"+xx, 0)
                      push _negNameB8_3
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_"+xx, 0)
                        #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
                        #(begin macro)at_1("reset",a)
                        #(begin macro)at_2(ope,a,"")
                        at _negNameB8_s
                          reset 
                        ta
                        #(end macro)at_2(ope,a,"")
                        #(end macro)at_1("reset",a)
                        #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
                      fi
                    fi
                  fi
                fi
              fi
              pop     _negNameB8_s
              #(end macro)negvX(X,"_negNameB" + _subvvvX)
              #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
              push    writeX_AmodB3_s
              push    _negNameB8_s
              or
              not
              push    writeX_AmodB3_s
              push    _negNameB8_s
              and
              or
              if      # nameA and nameB are both positive or negative
                push    writeX_AmodB3_s
                pop     _supequalvvXName4_s    # name has same sign of nameA and nameB
                push    0
                push    writeX_AmodB3_0
                #(begin macro)addof()
                sbm _addofb97
                sbm _addofa97 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc97
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao97
                while
                  push _addofa97
                  if
                    at _addofa97
                      dec
                    ta
                    at _addofb97
                      inc
                    ta
                    push _addofb97
                    not
                    if
                      at _addofc97
                        set 1
                      ta
                    fi
                  else
                    at _loopao97
                      reset
                    ta
                  fi
                wend
                push _addofc97
                if
                  at _addofa97
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName4_0
                push    _negNameB8_0
                #(begin macro)addof()
                sbm _addofb98
                sbm _addofa98 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc98
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao98
                while
                  push _addofa98
                  if
                    at _addofa98
                      dec
                    ta
                    at _addofb98
                      inc
                    ta
                    push _addofb98
                    not
                    if
                      at _addofc98
                        set 1
                      ta
                    fi
                  else
                    at _loopao98
                      reset
                    ta
                  fi
                wend
                push _addofc98
                if
                  at _addofa98
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName4_0
                #(begin macro)addof()
                sbm _addofb99
                sbm _addofa99 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc99
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao99
                while
                  push _addofa99
                  if
                    at _addofa99
                      dec
                    ta
                    at _addofb99
                      inc
                    ta
                    push _addofb99
                    not
                    if
                      at _addofc99
                        set 1
                      ta
                    fi
                  else
                    at _loopao99
                      reset
                    ta
                  fi
                wend
                push _addofc99
                if
                  at _addofa99
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName4_0
                add
                push    writeX_AmodB3_1
                #(begin macro)addof()
                sbm _addofb100
                sbm _addofa100 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc100
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao100
                while
                  push _addofa100
                  if
                    at _addofa100
                      dec
                    ta
                    at _addofb100
                      inc
                    ta
                    push _addofb100
                    not
                    if
                      at _addofc100
                        set 1
                      ta
                    fi
                  else
                    at _loopao100
                      reset
                    ta
                  fi
                wend
                push _addofc100
                if
                  at _addofa100
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName4_1
                push    _negNameB8_1
                #(begin macro)addof()
                sbm _addofb101
                sbm _addofa101 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc101
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao101
                while
                  push _addofa101
                  if
                    at _addofa101
                      dec
                    ta
                    at _addofb101
                      inc
                    ta
                    push _addofb101
                    not
                    if
                      at _addofc101
                        set 1
                      ta
                    fi
                  else
                    at _loopao101
                      reset
                    ta
                  fi
                wend
                push _addofc101
                if
                  at _addofa101
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName4_1
                #(begin macro)addof()
                sbm _addofb102
                sbm _addofa102 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc102
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao102
                while
                  push _addofa102
                  if
                    at _addofa102
                      dec
                    ta
                    at _addofb102
                      inc
                    ta
                    push _addofb102
                    not
                    if
                      at _addofc102
                        set 1
                      ta
                    fi
                  else
                    at _loopao102
                      reset
                    ta
                  fi
                wend
                push _addofc102
                if
                  at _addofa102
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName4_1
                add
                push    writeX_AmodB3_2
                #(begin macro)addof()
                sbm _addofb103
                sbm _addofa103 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc103
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao103
                while
                  push _addofa103
                  if
                    at _addofa103
                      dec
                    ta
                    at _addofb103
                      inc
                    ta
                    push _addofb103
                    not
                    if
                      at _addofc103
                        set 1
                      ta
                    fi
                  else
                    at _loopao103
                      reset
                    ta
                  fi
                wend
                push _addofc103
                if
                  at _addofa103
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName4_2
                push    _negNameB8_2
                #(begin macro)addof()
                sbm _addofb104
                sbm _addofa104 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc104
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao104
                while
                  push _addofa104
                  if
                    at _addofa104
                      dec
                    ta
                    at _addofb104
                      inc
                    ta
                    push _addofb104
                    not
                    if
                      at _addofc104
                        set 1
                      ta
                    fi
                  else
                    at _loopao104
                      reset
                    ta
                  fi
                wend
                push _addofc104
                if
                  at _addofa104
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName4_2
                #(begin macro)addof()
                sbm _addofb105
                sbm _addofa105 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc105
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao105
                while
                  push _addofa105
                  if
                    at _addofa105
                      dec
                    ta
                    at _addofb105
                      inc
                    ta
                    push _addofb105
                    not
                    if
                      at _addofc105
                        set 1
                      ta
                    fi
                  else
                    at _loopao105
                      reset
                    ta
                  fi
                wend
                push _addofc105
                if
                  at _addofa105
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName4_2
                add
                push    writeX_AmodB3_3
                #(begin macro)addof()
                sbm _addofb106
                sbm _addofa106 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc106
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao106
                while
                  push _addofa106
                  if
                    at _addofa106
                      dec
                    ta
                    at _addofb106
                      inc
                    ta
                    push _addofb106
                    not
                    if
                      at _addofc106
                        set 1
                      ta
                    fi
                  else
                    at _loopao106
                      reset
                    ta
                  fi
                wend
                push _addofc106
                if
                  at _addofa106
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName4_3
                push    _negNameB8_3
                #(begin macro)addof()
                sbm _addofb107
                sbm _addofa107 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc107
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao107
                while
                  push _addofa107
                  if
                    at _addofa107
                      dec
                    ta
                    at _addofb107
                      inc
                    ta
                    push _addofb107
                    not
                    if
                      at _addofc107
                        set 1
                      ta
                    fi
                  else
                    at _loopao107
                      reset
                    ta
                  fi
                wend
                push _addofc107
                if
                  at _addofa107
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName4_3
                #(begin macro)addof()
                sbm _addofb108
                sbm _addofa108 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc108
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao108
                while
                  push _addofa108
                  if
                    at _addofa108
                      dec
                    ta
                    at _addofb108
                      inc
                    ta
                    push _addofb108
                    not
                    if
                      at _addofc108
                        set 1
                      ta
                    fi
                  else
                    at _loopao108
                      reset
                    ta
                  fi
                wend
                push _addofc108
                if
                  at _addofa108
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName4_3
                add
                pop     _supequalvvXName4_c
              else  # nameA has a different sign of nameB
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                push 0
                sbm _asupb9
                #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                push 0
                sbm _aequb9
                #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                push    writeX_AmodB3_3
                push    _negNameB8_3
                sup
                if
                  at _asupb9
                    set 1
                  ta
                else
                  push    writeX_AmodB3_3
                  push    _negNameB8_3
                  diff
                  if
                    at _asupb9
                      reset
                    ta
                  else
                    push    writeX_AmodB3_2
                    push    _negNameB8_2
                    sup
                    if
                      at _asupb9
                        set 1
                      ta
                    else
                      push    writeX_AmodB3_2
                      push    _negNameB8_2
                      diff
                      if
                        at _asupb9
                          reset
                        ta
                      else
                        push    writeX_AmodB3_1
                        push    _negNameB8_1
                        sup
                        if
                          at _asupb9
                            set 1
                          ta
                        else
                          push    writeX_AmodB3_1
                          push    _negNameB8_1
                          diff
                          if
                            at _asupb9
                              reset
                            ta
                          else
                            push    writeX_AmodB3_0
                            push    _negNameB8_0
                            sup
                            if
                              at _asupb9
                                set 1
                              ta
                            else
                              push    writeX_AmodB3_0
                              push    _negNameB8_0
                              diff
                              if
                                at _asupb9
                                  reset
                                ta
                              else
                                at _aequb9
                                  set 1
                                ta
                              fi
                            fi
                          fi
                        fi
                      fi
                    fi
                  fi
                fi
                push _asupb9
                if  # absA > absB : do  absA-absB with sign of A
                  # print("absA > absB\n")
                  push    writeX_AmodB3_s
                  pop     _supequalvvXName4_s    # name has same sign of nameA
                  
                  push    0
                  sbm     _addvvvXCarry9
                  push    writeX_AmodB3_0
                  push    _negNameB8_0
                  #(begin macro)subof()
                  sbm _subofb129
                  sbm _subofa129 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc129
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso129
                  while
                    push _subofb129
                    if
                      at _subofb129
                        dec
                      ta
                      at _subofa129
                        dec
                      ta
                      push _subofa129
                      inc
                      not
                      if
                        at _subofc129
                          set 1
                        ta
                      fi
                    else
                      at _loopso129
                        reset
                      ta
                    fi
                  wend
                  push _subofc129
                  if
                    at _subofb129
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry9
                  #(begin macro)subof()
                  sbm _subofb130
                  sbm _subofa130 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc130
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso130
                  while
                    push _subofb130
                    if
                      at _subofb130
                        dec
                      ta
                      at _subofa130
                        dec
                      ta
                      push _subofa130
                      inc
                      not
                      if
                        at _subofc130
                          set 1
                        ta
                      fi
                    else
                      at _loopso130
                        reset
                      ta
                    fi
                  wend
                  push _subofc130
                  if
                    at _subofb130
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName4_0
                  add
                  pop     _addvvvXCarry9
                  push    writeX_AmodB3_1
                  push    _negNameB8_1
                  #(begin macro)subof()
                  sbm _subofb131
                  sbm _subofa131 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc131
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso131
                  while
                    push _subofb131
                    if
                      at _subofb131
                        dec
                      ta
                      at _subofa131
                        dec
                      ta
                      push _subofa131
                      inc
                      not
                      if
                        at _subofc131
                          set 1
                        ta
                      fi
                    else
                      at _loopso131
                        reset
                      ta
                    fi
                  wend
                  push _subofc131
                  if
                    at _subofb131
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry9
                  #(begin macro)subof()
                  sbm _subofb132
                  sbm _subofa132 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc132
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso132
                  while
                    push _subofb132
                    if
                      at _subofb132
                        dec
                      ta
                      at _subofa132
                        dec
                      ta
                      push _subofa132
                      inc
                      not
                      if
                        at _subofc132
                          set 1
                        ta
                      fi
                    else
                      at _loopso132
                        reset
                      ta
                    fi
                  wend
                  push _subofc132
                  if
                    at _subofb132
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName4_1
                  add
                  pop     _addvvvXCarry9
                  push    writeX_AmodB3_2
                  push    _negNameB8_2
                  #(begin macro)subof()
                  sbm _subofb133
                  sbm _subofa133 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc133
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso133
                  while
                    push _subofb133
                    if
                      at _subofb133
                        dec
                      ta
                      at _subofa133
                        dec
                      ta
                      push _subofa133
                      inc
                      not
                      if
                        at _subofc133
                          set 1
                        ta
                      fi
                    else
                      at _loopso133
                        reset
                      ta
                    fi
                  wend
                  push _subofc133
                  if
                    at _subofb133
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry9
                  #(begin macro)subof()
                  sbm _subofb134
                  sbm _subofa134 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc134
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso134
                  while
                    push _subofb134
                    if
                      at _subofb134
                        dec
                      ta
                      at _subofa134
                        dec
                      ta
                      push _subofa134
                      inc
                      not
                      if
                        at _subofc134
                          set 1
                        ta
                      fi
                    else
                      at _loopso134
                        reset
                      ta
                    fi
                  wend
                  push _subofc134
                  if
                    at _subofb134
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName4_2
                  add
                  pop     _addvvvXCarry9
                  push    writeX_AmodB3_3
                  push    _negNameB8_3
                  #(begin macro)subof()
                  sbm _subofb135
                  sbm _subofa135 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc135
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso135
                  while
                    push _subofb135
                    if
                      at _subofb135
                        dec
                      ta
                      at _subofa135
                        dec
                      ta
                      push _subofa135
                      inc
                      not
                      if
                        at _subofc135
                          set 1
                        ta
                      fi
                    else
                      at _loopso135
                        reset
                      ta
                    fi
                  wend
                  push _subofc135
                  if
                    at _subofb135
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry9
                  #(begin macro)subof()
                  sbm _subofb136
                  sbm _subofa136 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc136
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso136
                  while
                    push _subofb136
                    if
                      at _subofb136
                        dec
                      ta
                      at _subofa136
                        dec
                      ta
                      push _subofa136
                      inc
                      not
                      if
                        at _subofc136
                          set 1
                        ta
                      fi
                    else
                      at _loopso136
                        reset
                      ta
                    fi
                  wend
                  push _subofc136
                  if
                    at _subofb136
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName4_3
                  add
                  pop     _addvvvXCarry9
                  pop     _supequalvvXName4_c
                else # absB >= absA :
                  push    _aequb9
                  if # absA == absB , then name =0 (opposite sign then sum is zero)
                    #print("absA == absB\n")
                    #(begin macro)setvX(X,name,0)
                    at _supequalvvXName4_0
                      #(begin macro)setX(X,immValue)
                      bf <
                      bf <
                      bf <
                      bf <
                      bf <
                      reset
                      bf  >
                      set 0
                      bf >
                      set    0
                      bf >
                      set    0
                      bf >
                      set    0
                      bf >
                      set    0
                      #(end macro)setX(X,immValue)
                    ta
                    #(end macro)setvX(X,name,0)
                  else # absA < absB : do   absB-absA with sign of B
                    #print("absA < absB\n")
                    push    _negNameB8_s
                    pop     _supequalvvXName4_s    # name has same sign of nameB
                    
                    push    0
                    sbm     _addvvvXCarry9
                    push    _negNameB8_0
                    push    writeX_AmodB3_0
                    #(begin macro)subof()
                    sbm _subofb137
                    sbm _subofa137 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc137
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso137
                    while
                      push _subofb137
                      if
                        at _subofb137
                          dec
                        ta
                        at _subofa137
                          dec
                        ta
                        push _subofa137
                        inc
                        not
                        if
                          at _subofc137
                            set 1
                          ta
                        fi
                      else
                        at _loopso137
                          reset
                        ta
                      fi
                    wend
                    push _subofc137
                    if
                      at _subofb137
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry9
                    #(begin macro)subof()
                    sbm _subofb138
                    sbm _subofa138 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc138
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso138
                    while
                      push _subofb138
                      if
                        at _subofb138
                          dec
                        ta
                        at _subofa138
                          dec
                        ta
                        push _subofa138
                        inc
                        not
                        if
                          at _subofc138
                            set 1
                          ta
                        fi
                      else
                        at _loopso138
                          reset
                        ta
                      fi
                    wend
                    push _subofc138
                    if
                      at _subofb138
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName4_0
                    add
                    pop     _addvvvXCarry9
                    push    _negNameB8_1
                    push    writeX_AmodB3_1
                    #(begin macro)subof()
                    sbm _subofb139
                    sbm _subofa139 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc139
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso139
                    while
                      push _subofb139
                      if
                        at _subofb139
                          dec
                        ta
                        at _subofa139
                          dec
                        ta
                        push _subofa139
                        inc
                        not
                        if
                          at _subofc139
                            set 1
                          ta
                        fi
                      else
                        at _loopso139
                          reset
                        ta
                      fi
                    wend
                    push _subofc139
                    if
                      at _subofb139
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry9
                    #(begin macro)subof()
                    sbm _subofb140
                    sbm _subofa140 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc140
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso140
                    while
                      push _subofb140
                      if
                        at _subofb140
                          dec
                        ta
                        at _subofa140
                          dec
                        ta
                        push _subofa140
                        inc
                        not
                        if
                          at _subofc140
                            set 1
                          ta
                        fi
                      else
                        at _loopso140
                          reset
                        ta
                      fi
                    wend
                    push _subofc140
                    if
                      at _subofb140
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName4_1
                    add
                    pop     _addvvvXCarry9
                    push    _negNameB8_2
                    push    writeX_AmodB3_2
                    #(begin macro)subof()
                    sbm _subofb141
                    sbm _subofa141 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc141
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso141
                    while
                      push _subofb141
                      if
                        at _subofb141
                          dec
                        ta
                        at _subofa141
                          dec
                        ta
                        push _subofa141
                        inc
                        not
                        if
                          at _subofc141
                            set 1
                          ta
                        fi
                      else
                        at _loopso141
                          reset
                        ta
                      fi
                    wend
                    push _subofc141
                    if
                      at _subofb141
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry9
                    #(begin macro)subof()
                    sbm _subofb142
                    sbm _subofa142 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc142
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso142
                    while
                      push _subofb142
                      if
                        at _subofb142
                          dec
                        ta
                        at _subofa142
                          dec
                        ta
                        push _subofa142
                        inc
                        not
                        if
                          at _subofc142
                            set 1
                          ta
                        fi
                      else
                        at _loopso142
                          reset
                        ta
                      fi
                    wend
                    push _subofc142
                    if
                      at _subofb142
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName4_2
                    add
                    pop     _addvvvXCarry9
                    push    _negNameB8_3
                    push    writeX_AmodB3_3
                    #(begin macro)subof()
                    sbm _subofb143
                    sbm _subofa143 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc143
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso143
                    while
                      push _subofb143
                      if
                        at _subofb143
                          dec
                        ta
                        at _subofa143
                          dec
                        ta
                        push _subofa143
                        inc
                        not
                        if
                          at _subofc143
                            set 1
                          ta
                        fi
                      else
                        at _loopso143
                          reset
                        ta
                      fi
                    wend
                    push _subofc143
                    if
                      at _subofb143
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry9
                    #(begin macro)subof()
                    sbm _subofb144
                    sbm _subofa144 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc144
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso144
                    while
                      push _subofb144
                      if
                        at _subofb144
                          dec
                        ta
                        at _subofa144
                          dec
                        ta
                        push _subofa144
                        inc
                        not
                        if
                          at _subofc144
                            set 1
                          ta
                        fi
                      else
                        at _loopso144
                          reset
                        ta
                      fi
                    wend
                    push _subofc144
                    if
                      at _subofb144
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName4_3
                    add
                    pop     _addvvvXCarry9
                    pop     _supequalvvXName4_c
                  fi
                fi
                #(begin macro)scope_end()
                drop
                drop
                #(end macro)scope_end()
              fi
              #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
              #(begin macro)scope_end()
              drop
              drop
              drop
              drop
              drop
              drop
              #(end macro)scope_end()
              #(end macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
              push _supequalvvXName4_s
              not
              pop _supequalvvX4
              #(begin macro)scope_end()
              drop
              drop
              drop
              drop
              drop
              drop
              #(end macro)scope_end()
              #(end macro)supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
              if
                #(begin macro)incvX(X,nameAdivB)
                #(begin macro)if_equal(name +"_s",0)  # positive number
                push writeX_AdivB3_s
                push 0
                equal
                if
                  #(end macro)if_equal(name +"_s",0)  # positive number
                  #(begin macro)at_inc(name + "_" + xx)
                  #(begin macro)at_1("inc",a)
                  #(begin macro)at_2(ope,a,"")
                  at writeX_AdivB3_0
                    inc 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("inc",a)
                  #(end macro)at_inc(name + "_" + xx)
                  #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                  push writeX_AdivB3_0
                  push 0
                  equal
                  if
                    #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                    #(begin macro)at_inc(name + "_" + xx)
                    #(begin macro)at_1("inc",a)
                    #(begin macro)at_2(ope,a,"")
                    at writeX_AdivB3_1
                      inc 
                    ta
                    #(end macro)at_2(ope,a,"")
                    #(end macro)at_1("inc",a)
                    #(end macro)at_inc(name + "_" + xx)
                    #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                    push writeX_AdivB3_1
                    push 0
                    equal
                    if
                      #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                      #(begin macro)at_inc(name + "_" + xx)
                      #(begin macro)at_1("inc",a)
                      #(begin macro)at_2(ope,a,"")
                      at writeX_AdivB3_2
                        inc 
                      ta
                      #(end macro)at_2(ope,a,"")
                      #(end macro)at_1("inc",a)
                      #(end macro)at_inc(name + "_" + xx)
                      #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                      push writeX_AdivB3_2
                      push 0
                      equal
                      if
                        #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                        #(begin macro)at_inc(name + "_" + xx)
                        #(begin macro)at_1("inc",a)
                        #(begin macro)at_2(ope,a,"")
                        at writeX_AdivB3_3
                          inc 
                        ta
                        #(end macro)at_2(ope,a,"")
                        #(end macro)at_1("inc",a)
                        #(end macro)at_inc(name + "_" + xx)
                        #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                        push writeX_AdivB3_3
                        push 0
                        equal
                        if
                          #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                          #(begin macro)setcvX(X, name) ## set carry (overflow)
                          #(begin macro)at_set(name+"_c",1)
                          #(begin macro)at_2("set",a,b)
                          at writeX_AdivB3_c
                            set 1
                          ta
                          #(end macro)at_2("set",a,b)
                          #(end macro)at_set(name+"_c",1)
                          #(end macro)setcvX(X, name) ## set carry (overflow)
                        fi
                      fi
                    fi
                  fi
                else    # negative number
                  #(begin macro)at_dec(name + "_" + xx)
                  #(begin macro)at_1("dec",a)
                  #(begin macro)at_2(ope,a,"")
                  at writeX_AdivB3_0
                    dec 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("dec",a)
                  #(end macro)at_dec(name + "_" + xx)
                  #(begin macro)if_equal(name +"_" + xx,255) # reduced
                  push writeX_AdivB3_0
                  push 255
                  equal
                  if
                    #(end macro)if_equal(name +"_" + xx,255) # reduced
                    #(begin macro)at_dec(name + "_" + xx)
                    #(begin macro)at_1("dec",a)
                    #(begin macro)at_2(ope,a,"")
                    at writeX_AdivB3_1
                      dec 
                    ta
                    #(end macro)at_2(ope,a,"")
                    #(end macro)at_1("dec",a)
                    #(end macro)at_dec(name + "_" + xx)
                    #(begin macro)if_equal(name +"_" + xx,255) # reduced
                    push writeX_AdivB3_1
                    push 255
                    equal
                    if
                      #(end macro)if_equal(name +"_" + xx,255) # reduced
                      #(begin macro)at_dec(name + "_" + xx)
                      #(begin macro)at_1("dec",a)
                      #(begin macro)at_2(ope,a,"")
                      at writeX_AdivB3_2
                        dec 
                      ta
                      #(end macro)at_2(ope,a,"")
                      #(end macro)at_1("dec",a)
                      #(end macro)at_dec(name + "_" + xx)
                      #(begin macro)if_equal(name +"_" + xx,255) # reduced
                      push writeX_AdivB3_2
                      push 255
                      equal
                      if
                        #(end macro)if_equal(name +"_" + xx,255) # reduced
                        #(begin macro)at_dec(name + "_" + xx)
                        #(begin macro)at_1("dec",a)
                        #(begin macro)at_2(ope,a,"")
                        at writeX_AdivB3_3
                          dec 
                        ta
                        #(end macro)at_2(ope,a,"")
                        #(end macro)at_1("dec",a)
                        #(end macro)at_dec(name + "_" + xx)
                        #(begin macro)if_equal(name +"_" + xx,255) # reduced
                        push writeX_AdivB3_3
                        push 255
                        equal
                        if
                          #(end macro)if_equal(name +"_" + xx,255) # reduced
                          #(begin macro)setvX(X,name,1)
                          at writeX_AdivB3_0
                            #(begin macro)setX(X,immValue)
                            bf <
                            bf <
                            bf <
                            bf <
                            bf <
                            reset
                            bf  >
                            set 0
                            bf >
                            set    0
                            bf >
                            set    0
                            bf >
                            set    0
                            bf >
                            set    1
                            #(end macro)setX(X,immValue)
                          ta
                          #(end macro)setvX(X,name,1)
                        fi
                      fi
                    fi
                  fi
                  #(begin macro)fixsvX(X,name)
                  push    writeX_AdivB3_s
                  if    # if name is negative
                    #(begin macro)if_equal(name +"_" + xx, 0)
                    push writeX_AdivB3_0
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_" + xx, 0)
                      #(begin macro)if_equal(name +"_" + xx, 0)
                      push writeX_AdivB3_1
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_" + xx, 0)
                        #(begin macro)if_equal(name +"_" + xx, 0)
                        push writeX_AdivB3_2
                        push 0
                        equal
                        if
                          #(end macro)if_equal(name +"_" + xx, 0)
                          #(begin macro)if_equal(name +"_" + xx, 0)
                          push writeX_AdivB3_3
                          push 0
                          equal
                          if
                            #(end macro)if_equal(name +"_" + xx, 0)
                            #(begin macro)at_reset(name + "_s")   # set sign to positive
                            #(begin macro)at_1("reset",a)
                            #(begin macro)at_2(ope,a,"")
                            at writeX_AdivB3_s
                              reset 
                            ta
                            #(end macro)at_2(ope,a,"")
                            #(end macro)at_1("reset",a)
                            #(end macro)at_reset(name + "_s")   # set sign to positive
                          fi
                        fi
                      fi
                    fi
                  fi
                  #(end macro)fixsvX(X,name)
                fi
                #(end macro)incvX(X,nameAdivB)
                #(begin macro)subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvarX(X, "_subvvXNameB" + _subvvX)
                #(begin macro)lvar(name + "_c",0)
                push 0
                sbm _subvvXNameB3_c
                #(end macro)lvar(name + "_c",0)
                #(begin macro)lvar(name + "_s",0)
                push 0
                sbm _subvvXNameB3_s
                #(end macro)lvar(name + "_s",0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB3_3
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB3_2
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB3_1
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB3_0
                #(end macro)lvar(name + "_"+ xx1,0)
                #(end macro)lvarX(X, "_subvvXNameB" + _subvvX)
                #(begin macro)pushvX(X, name)
                push    writeX_AmodB3_c
                push    writeX_AmodB3_s
                push    writeX_AmodB3_3
                push    writeX_AmodB3_2
                push    writeX_AmodB3_1
                push    writeX_AmodB3_0
                #(end macro)pushvX(X, name)
                #(begin macro)popvX(X, "_subvvXNameB" + _subvvX)
                pop     _subvvXNameB3_0
                pop     _subvvXNameB3_1
                pop     _subvvXNameB3_2
                pop     _subvvXNameB3_3
                pop     _subvvXNameB3_s
                pop     _subvvXNameB3_c
                #(end macro)popvX(X, "_subvvXNameB" + _subvvX)
                #(begin macro)subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
                #(begin macro)lvar(name + "_c",0)
                push 0
                sbm _negNameB9_c
                #(end macro)lvar(name + "_c",0)
                #(begin macro)lvar(name + "_s",0)
                push 0
                sbm _negNameB9_s
                #(end macro)lvar(name + "_s",0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB9_3
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB9_2
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB9_1
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB9_0
                #(end macro)lvar(name + "_"+ xx1,0)
                #(end macro)lvarX(X,"_negNameB" + _subvvvX)
                #(begin macro)pushvX(X,nameB)
                push    _divvvvvXabsNameB3_c
                push    _divvvvvXabsNameB3_s
                push    _divvvvvXabsNameB3_3
                push    _divvvvvXabsNameB3_2
                push    _divvvvvXabsNameB3_1
                push    _divvvvvXabsNameB3_0
                #(end macro)pushvX(X,nameB)
                #(begin macro)popvX(X,"_negNameB" + _subvvvX)
                pop     _negNameB9_0
                pop     _negNameB9_1
                pop     _negNameB9_2
                pop     _negNameB9_3
                pop     _negNameB9_s
                pop     _negNameB9_c
                #(end macro)popvX(X,"_negNameB" + _subvvvX)
                #(begin macro)negvX(X,"_negNameB" + _subvvvX)
                push    _negNameB9_s
                dec
                bool
                dup
                if    # if name is now negative
                  #(begin macro)if_equal(name +"_"+xx, 0)
                  push _negNameB9_0
                  push 0
                  equal
                  if
                    #(end macro)if_equal(name +"_"+xx, 0)
                    #(begin macro)if_equal(name +"_"+xx, 0)
                    push _negNameB9_1
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_"+xx, 0)
                      #(begin macro)if_equal(name +"_"+xx, 0)
                      push _negNameB9_2
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_"+xx, 0)
                        #(begin macro)if_equal(name +"_"+xx, 0)
                        push _negNameB9_3
                        push 0
                        equal
                        if
                          #(end macro)if_equal(name +"_"+xx, 0)
                          #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
                          #(begin macro)at_1("reset",a)
                          #(begin macro)at_2(ope,a,"")
                          at _negNameB9_s
                            reset 
                          ta
                          #(end macro)at_2(ope,a,"")
                          #(end macro)at_1("reset",a)
                          #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
                        fi
                      fi
                    fi
                  fi
                fi
                pop     _negNameB9_s
                #(end macro)negvX(X,"_negNameB" + _subvvvX)
                #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
                push    _subvvXNameB3_s
                push    _negNameB9_s
                or
                not
                push    _subvvXNameB3_s
                push    _negNameB9_s
                and
                or
                if      # nameA and nameB are both positive or negative
                  push    _subvvXNameB3_s
                  pop     writeX_AmodB3_s    # name has same sign of nameA and nameB
                  push    0
                  push    _subvvXNameB3_0
                  #(begin macro)addof()
                  sbm _addofb109
                  sbm _addofa109 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc109
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao109
                  while
                    push _addofa109
                    if
                      at _addofa109
                        dec
                      ta
                      at _addofb109
                        inc
                      ta
                      push _addofb109
                      not
                      if
                        at _addofc109
                          set 1
                        ta
                      fi
                    else
                      at _loopao109
                        reset
                      ta
                    fi
                  wend
                  push _addofc109
                  if
                    at _addofa109
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB3_0
                  push    _negNameB9_0
                  #(begin macro)addof()
                  sbm _addofb110
                  sbm _addofa110 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc110
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao110
                  while
                    push _addofa110
                    if
                      at _addofa110
                        dec
                      ta
                      at _addofb110
                        inc
                      ta
                      push _addofb110
                      not
                      if
                        at _addofc110
                          set 1
                        ta
                      fi
                    else
                      at _loopao110
                        reset
                      ta
                    fi
                  wend
                  push _addofc110
                  if
                    at _addofa110
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB3_0
                  #(begin macro)addof()
                  sbm _addofb111
                  sbm _addofa111 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc111
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao111
                  while
                    push _addofa111
                    if
                      at _addofa111
                        dec
                      ta
                      at _addofb111
                        inc
                      ta
                      push _addofb111
                      not
                      if
                        at _addofc111
                          set 1
                        ta
                      fi
                    else
                      at _loopao111
                        reset
                      ta
                    fi
                  wend
                  push _addofc111
                  if
                    at _addofa111
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB3_0
                  add
                  push    _subvvXNameB3_1
                  #(begin macro)addof()
                  sbm _addofb112
                  sbm _addofa112 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc112
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao112
                  while
                    push _addofa112
                    if
                      at _addofa112
                        dec
                      ta
                      at _addofb112
                        inc
                      ta
                      push _addofb112
                      not
                      if
                        at _addofc112
                          set 1
                        ta
                      fi
                    else
                      at _loopao112
                        reset
                      ta
                    fi
                  wend
                  push _addofc112
                  if
                    at _addofa112
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB3_1
                  push    _negNameB9_1
                  #(begin macro)addof()
                  sbm _addofb113
                  sbm _addofa113 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc113
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao113
                  while
                    push _addofa113
                    if
                      at _addofa113
                        dec
                      ta
                      at _addofb113
                        inc
                      ta
                      push _addofb113
                      not
                      if
                        at _addofc113
                          set 1
                        ta
                      fi
                    else
                      at _loopao113
                        reset
                      ta
                    fi
                  wend
                  push _addofc113
                  if
                    at _addofa113
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB3_1
                  #(begin macro)addof()
                  sbm _addofb114
                  sbm _addofa114 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc114
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao114
                  while
                    push _addofa114
                    if
                      at _addofa114
                        dec
                      ta
                      at _addofb114
                        inc
                      ta
                      push _addofb114
                      not
                      if
                        at _addofc114
                          set 1
                        ta
                      fi
                    else
                      at _loopao114
                        reset
                      ta
                    fi
                  wend
                  push _addofc114
                  if
                    at _addofa114
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB3_1
                  add
                  push    _subvvXNameB3_2
                  #(begin macro)addof()
                  sbm _addofb115
                  sbm _addofa115 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc115
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao115
                  while
                    push _addofa115
                    if
                      at _addofa115
                        dec
                      ta
                      at _addofb115
                        inc
                      ta
                      push _addofb115
                      not
                      if
                        at _addofc115
                          set 1
                        ta
                      fi
                    else
                      at _loopao115
                        reset
                      ta
                    fi
                  wend
                  push _addofc115
                  if
                    at _addofa115
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB3_2
                  push    _negNameB9_2
                  #(begin macro)addof()
                  sbm _addofb116
                  sbm _addofa116 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc116
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao116
                  while
                    push _addofa116
                    if
                      at _addofa116
                        dec
                      ta
                      at _addofb116
                        inc
                      ta
                      push _addofb116
                      not
                      if
                        at _addofc116
                          set 1
                        ta
                      fi
                    else
                      at _loopao116
                        reset
                      ta
                    fi
                  wend
                  push _addofc116
                  if
                    at _addofa116
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB3_2
                  #(begin macro)addof()
                  sbm _addofb117
                  sbm _addofa117 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc117
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao117
                  while
                    push _addofa117
                    if
                      at _addofa117
                        dec
                      ta
                      at _addofb117
                        inc
                      ta
                      push _addofb117
                      not
                      if
                        at _addofc117
                          set 1
                        ta
                      fi
                    else
                      at _loopao117
                        reset
                      ta
                    fi
                  wend
                  push _addofc117
                  if
                    at _addofa117
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB3_2
                  add
                  push    _subvvXNameB3_3
                  #(begin macro)addof()
                  sbm _addofb118
                  sbm _addofa118 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc118
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao118
                  while
                    push _addofa118
                    if
                      at _addofa118
                        dec
                      ta
                      at _addofb118
                        inc
                      ta
                      push _addofb118
                      not
                      if
                        at _addofc118
                          set 1
                        ta
                      fi
                    else
                      at _loopao118
                        reset
                      ta
                    fi
                  wend
                  push _addofc118
                  if
                    at _addofa118
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB3_3
                  push    _negNameB9_3
                  #(begin macro)addof()
                  sbm _addofb119
                  sbm _addofa119 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc119
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao119
                  while
                    push _addofa119
                    if
                      at _addofa119
                        dec
                      ta
                      at _addofb119
                        inc
                      ta
                      push _addofb119
                      not
                      if
                        at _addofc119
                          set 1
                        ta
                      fi
                    else
                      at _loopao119
                        reset
                      ta
                    fi
                  wend
                  push _addofc119
                  if
                    at _addofa119
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB3_3
                  #(begin macro)addof()
                  sbm _addofb120
                  sbm _addofa120 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc120
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao120
                  while
                    push _addofa120
                    if
                      at _addofa120
                        dec
                      ta
                      at _addofb120
                        inc
                      ta
                      push _addofb120
                      not
                      if
                        at _addofc120
                          set 1
                        ta
                      fi
                    else
                      at _loopao120
                        reset
                      ta
                    fi
                  wend
                  push _addofc120
                  if
                    at _addofa120
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB3_3
                  add
                  pop     writeX_AmodB3_c
                else  # nameA has a different sign of nameB
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                  push 0
                  sbm _asupb10
                  #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                  #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                  push 0
                  sbm _aequb10
                  #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                  push    _subvvXNameB3_3
                  push    _negNameB9_3
                  sup
                  if
                    at _asupb10
                      set 1
                    ta
                  else
                    push    _subvvXNameB3_3
                    push    _negNameB9_3
                    diff
                    if
                      at _asupb10
                        reset
                      ta
                    else
                      push    _subvvXNameB3_2
                      push    _negNameB9_2
                      sup
                      if
                        at _asupb10
                          set 1
                        ta
                      else
                        push    _subvvXNameB3_2
                        push    _negNameB9_2
                        diff
                        if
                          at _asupb10
                            reset
                          ta
                        else
                          push    _subvvXNameB3_1
                          push    _negNameB9_1
                          sup
                          if
                            at _asupb10
                              set 1
                            ta
                          else
                            push    _subvvXNameB3_1
                            push    _negNameB9_1
                            diff
                            if
                              at _asupb10
                                reset
                              ta
                            else
                              push    _subvvXNameB3_0
                              push    _negNameB9_0
                              sup
                              if
                                at _asupb10
                                  set 1
                                ta
                              else
                                push    _subvvXNameB3_0
                                push    _negNameB9_0
                                diff
                                if
                                  at _asupb10
                                    reset
                                  ta
                                else
                                  at _aequb10
                                    set 1
                                  ta
                                fi
                              fi
                            fi
                          fi
                        fi
                      fi
                    fi
                  fi
                  push _asupb10
                  if  # absA > absB : do  absA-absB with sign of A
                    # print("absA > absB\n")
                    push    _subvvXNameB3_s
                    pop     writeX_AmodB3_s    # name has same sign of nameA
                    
                    push    0
                    sbm     _addvvvXCarry10
                    push    _subvvXNameB3_0
                    push    _negNameB9_0
                    #(begin macro)subof()
                    sbm _subofb145
                    sbm _subofa145 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc145
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso145
                    while
                      push _subofb145
                      if
                        at _subofb145
                          dec
                        ta
                        at _subofa145
                          dec
                        ta
                        push _subofa145
                        inc
                        not
                        if
                          at _subofc145
                            set 1
                          ta
                        fi
                      else
                        at _loopso145
                          reset
                        ta
                      fi
                    wend
                    push _subofc145
                    if
                      at _subofb145
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry10
                    #(begin macro)subof()
                    sbm _subofb146
                    sbm _subofa146 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc146
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso146
                    while
                      push _subofb146
                      if
                        at _subofb146
                          dec
                        ta
                        at _subofa146
                          dec
                        ta
                        push _subofa146
                        inc
                        not
                        if
                          at _subofc146
                            set 1
                          ta
                        fi
                      else
                        at _loopso146
                          reset
                        ta
                      fi
                    wend
                    push _subofc146
                    if
                      at _subofb146
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB3_0
                    add
                    pop     _addvvvXCarry10
                    push    _subvvXNameB3_1
                    push    _negNameB9_1
                    #(begin macro)subof()
                    sbm _subofb147
                    sbm _subofa147 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc147
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso147
                    while
                      push _subofb147
                      if
                        at _subofb147
                          dec
                        ta
                        at _subofa147
                          dec
                        ta
                        push _subofa147
                        inc
                        not
                        if
                          at _subofc147
                            set 1
                          ta
                        fi
                      else
                        at _loopso147
                          reset
                        ta
                      fi
                    wend
                    push _subofc147
                    if
                      at _subofb147
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry10
                    #(begin macro)subof()
                    sbm _subofb148
                    sbm _subofa148 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc148
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso148
                    while
                      push _subofb148
                      if
                        at _subofb148
                          dec
                        ta
                        at _subofa148
                          dec
                        ta
                        push _subofa148
                        inc
                        not
                        if
                          at _subofc148
                            set 1
                          ta
                        fi
                      else
                        at _loopso148
                          reset
                        ta
                      fi
                    wend
                    push _subofc148
                    if
                      at _subofb148
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB3_1
                    add
                    pop     _addvvvXCarry10
                    push    _subvvXNameB3_2
                    push    _negNameB9_2
                    #(begin macro)subof()
                    sbm _subofb149
                    sbm _subofa149 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc149
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso149
                    while
                      push _subofb149
                      if
                        at _subofb149
                          dec
                        ta
                        at _subofa149
                          dec
                        ta
                        push _subofa149
                        inc
                        not
                        if
                          at _subofc149
                            set 1
                          ta
                        fi
                      else
                        at _loopso149
                          reset
                        ta
                      fi
                    wend
                    push _subofc149
                    if
                      at _subofb149
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry10
                    #(begin macro)subof()
                    sbm _subofb150
                    sbm _subofa150 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc150
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso150
                    while
                      push _subofb150
                      if
                        at _subofb150
                          dec
                        ta
                        at _subofa150
                          dec
                        ta
                        push _subofa150
                        inc
                        not
                        if
                          at _subofc150
                            set 1
                          ta
                        fi
                      else
                        at _loopso150
                          reset
                        ta
                      fi
                    wend
                    push _subofc150
                    if
                      at _subofb150
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB3_2
                    add
                    pop     _addvvvXCarry10
                    push    _subvvXNameB3_3
                    push    _negNameB9_3
                    #(begin macro)subof()
                    sbm _subofb151
                    sbm _subofa151 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc151
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso151
                    while
                      push _subofb151
                      if
                        at _subofb151
                          dec
                        ta
                        at _subofa151
                          dec
                        ta
                        push _subofa151
                        inc
                        not
                        if
                          at _subofc151
                            set 1
                          ta
                        fi
                      else
                        at _loopso151
                          reset
                        ta
                      fi
                    wend
                    push _subofc151
                    if
                      at _subofb151
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry10
                    #(begin macro)subof()
                    sbm _subofb152
                    sbm _subofa152 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc152
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso152
                    while
                      push _subofb152
                      if
                        at _subofb152
                          dec
                        ta
                        at _subofa152
                          dec
                        ta
                        push _subofa152
                        inc
                        not
                        if
                          at _subofc152
                            set 1
                          ta
                        fi
                      else
                        at _loopso152
                          reset
                        ta
                      fi
                    wend
                    push _subofc152
                    if
                      at _subofb152
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB3_3
                    add
                    pop     _addvvvXCarry10
                    pop     writeX_AmodB3_c
                  else # absB >= absA :
                    push    _aequb10
                    if # absA == absB , then name =0 (opposite sign then sum is zero)
                      #print("absA == absB\n")
                      #(begin macro)setvX(X,name,0)
                      at writeX_AmodB3_0
                        #(begin macro)setX(X,immValue)
                        bf <
                        bf <
                        bf <
                        bf <
                        bf <
                        reset
                        bf  >
                        set 0
                        bf >
                        set    0
                        bf >
                        set    0
                        bf >
                        set    0
                        bf >
                        set    0
                        #(end macro)setX(X,immValue)
                      ta
                      #(end macro)setvX(X,name,0)
                    else # absA < absB : do   absB-absA with sign of B
                      #print("absA < absB\n")
                      push    _negNameB9_s
                      pop     writeX_AmodB3_s    # name has same sign of nameB
                      
                      push    0
                      sbm     _addvvvXCarry10
                      push    _negNameB9_0
                      push    _subvvXNameB3_0
                      #(begin macro)subof()
                      sbm _subofb153
                      sbm _subofa153 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc153
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso153
                      while
                        push _subofb153
                        if
                          at _subofb153
                            dec
                          ta
                          at _subofa153
                            dec
                          ta
                          push _subofa153
                          inc
                          not
                          if
                            at _subofc153
                              set 1
                            ta
                          fi
                        else
                          at _loopso153
                            reset
                          ta
                        fi
                      wend
                      push _subofc153
                      if
                        at _subofb153
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry10
                      #(begin macro)subof()
                      sbm _subofb154
                      sbm _subofa154 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc154
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso154
                      while
                        push _subofb154
                        if
                          at _subofb154
                            dec
                          ta
                          at _subofa154
                            dec
                          ta
                          push _subofa154
                          inc
                          not
                          if
                            at _subofc154
                              set 1
                            ta
                          fi
                        else
                          at _loopso154
                            reset
                          ta
                        fi
                      wend
                      push _subofc154
                      if
                        at _subofb154
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB3_0
                      add
                      pop     _addvvvXCarry10
                      push    _negNameB9_1
                      push    _subvvXNameB3_1
                      #(begin macro)subof()
                      sbm _subofb155
                      sbm _subofa155 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc155
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso155
                      while
                        push _subofb155
                        if
                          at _subofb155
                            dec
                          ta
                          at _subofa155
                            dec
                          ta
                          push _subofa155
                          inc
                          not
                          if
                            at _subofc155
                              set 1
                            ta
                          fi
                        else
                          at _loopso155
                            reset
                          ta
                        fi
                      wend
                      push _subofc155
                      if
                        at _subofb155
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry10
                      #(begin macro)subof()
                      sbm _subofb156
                      sbm _subofa156 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc156
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso156
                      while
                        push _subofb156
                        if
                          at _subofb156
                            dec
                          ta
                          at _subofa156
                            dec
                          ta
                          push _subofa156
                          inc
                          not
                          if
                            at _subofc156
                              set 1
                            ta
                          fi
                        else
                          at _loopso156
                            reset
                          ta
                        fi
                      wend
                      push _subofc156
                      if
                        at _subofb156
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB3_1
                      add
                      pop     _addvvvXCarry10
                      push    _negNameB9_2
                      push    _subvvXNameB3_2
                      #(begin macro)subof()
                      sbm _subofb157
                      sbm _subofa157 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc157
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso157
                      while
                        push _subofb157
                        if
                          at _subofb157
                            dec
                          ta
                          at _subofa157
                            dec
                          ta
                          push _subofa157
                          inc
                          not
                          if
                            at _subofc157
                              set 1
                            ta
                          fi
                        else
                          at _loopso157
                            reset
                          ta
                        fi
                      wend
                      push _subofc157
                      if
                        at _subofb157
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry10
                      #(begin macro)subof()
                      sbm _subofb158
                      sbm _subofa158 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc158
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso158
                      while
                        push _subofb158
                        if
                          at _subofb158
                            dec
                          ta
                          at _subofa158
                            dec
                          ta
                          push _subofa158
                          inc
                          not
                          if
                            at _subofc158
                              set 1
                            ta
                          fi
                        else
                          at _loopso158
                            reset
                          ta
                        fi
                      wend
                      push _subofc158
                      if
                        at _subofb158
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB3_2
                      add
                      pop     _addvvvXCarry10
                      push    _negNameB9_3
                      push    _subvvXNameB3_3
                      #(begin macro)subof()
                      sbm _subofb159
                      sbm _subofa159 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc159
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso159
                      while
                        push _subofb159
                        if
                          at _subofb159
                            dec
                          ta
                          at _subofa159
                            dec
                          ta
                          push _subofa159
                          inc
                          not
                          if
                            at _subofc159
                              set 1
                            ta
                          fi
                        else
                          at _loopso159
                            reset
                          ta
                        fi
                      wend
                      push _subofc159
                      if
                        at _subofb159
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry10
                      #(begin macro)subof()
                      sbm _subofb160
                      sbm _subofa160 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc160
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso160
                      while
                        push _subofb160
                        if
                          at _subofb160
                            dec
                          ta
                          at _subofa160
                            dec
                          ta
                          push _subofa160
                          inc
                          not
                          if
                            at _subofc160
                              set 1
                            ta
                          fi
                        else
                          at _loopso160
                            reset
                          ta
                        fi
                      wend
                      push _subofc160
                      if
                        at _subofb160
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB3_3
                      add
                      pop     _addvvvXCarry10
                      pop     writeX_AmodB3_c
                    fi
                  fi
                  #(begin macro)scope_end()
                  drop
                  drop
                  #(end macro)scope_end()
                fi
                #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
                #(begin macro)scope_end()
                drop
                drop
                drop
                drop
                drop
                drop
                #(end macro)scope_end()
                #(end macro)subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)
                #(begin macro)scope_end()
                drop
                drop
                drop
                drop
                drop
                drop
                #(end macro)scope_end()
                #(end macro)subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
              else
                #(begin macro)at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend
                #(begin macro)at_1("reset",a)
                #(begin macro)at_2(ope,a,"")
                at _divvvvvX_g3
                  reset 
                ta
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("reset",a)
                #(end macro)at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend
              fi
            wend
            # treat sign of nameAmodB and nameAdivB
            push    _divvvvvXsA3
            pop     writeX_AmodB3_s   # sign of nameAmodB is sign of nameA
            push    _divvvvvXsA3
            push    _divvvvvXsB3
            diff
            if
              push    1
              pop     writeX_AdivB3_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
          else
            #(begin macro)setcvX(X,nameAdivB)
            #(begin macro)at_set(name+"_c",1)
            #(begin macro)at_2("set",a,b)
            at writeX_AdivB3_c
              set 1
            ta
            #(end macro)at_2("set",a,b)
            #(end macro)at_set(name+"_c",1)
            #(end macro)setcvX(X,nameAdivB)
            #(begin macro)setcvX(X,nameAmodB)
            #(begin macro)at_set(name+"_c",1)
            #(begin macro)at_2("set",a,b)
            at writeX_AmodB3_c
              set 1
            ta
            #(end macro)at_2("set",a,b)
            #(end macro)at_set(name+"_c",1)
            #(end macro)setcvX(X,nameAmodB)
          fi
          #(begin macro)scope_end()
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          #(end macro)scope_end()
          #(end macro)divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)
          push    writeX_AmodB3_0
          pop  _stringDecimal32_
          #(begin macro)pushvX(X,"writeX_AdivB" + _writeX)
          push    writeX_AdivB3_c
          push    writeX_AdivB3_s
          push    writeX_AdivB3_3
          push    writeX_AdivB3_2
          push    writeX_AdivB3_1
          push    writeX_AdivB3_0
          #(end macro)pushvX(X,"writeX_AdivB" + _writeX)
          #(begin macro)popvX(X,"writeX_A" + _writeX)
          pop     writeX_A3_0
          pop     writeX_A3_1
          pop     writeX_A3_2
          pop     writeX_A3_3
          pop     writeX_A3_s
          pop     writeX_A3_c
          #(end macro)popvX(X,"writeX_A" + _writeX)
          arotl _stringDecimal32_
        endloop
        
        push _stringDecimal32_.size
        sbm writeXcnt3
        loop
          arotr _stringDecimal32_
          #(begin macro)if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)
          push writeXcnt3
          push 1
          sup
          if
            #(end macro)if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)
            #(begin macro)if_diff("_stringDecimal" + _xbits +"_", 0)
            push _stringDecimal32_
            push 0
            diff
            if
              #(end macro)if_diff("_stringDecimal" + _xbits +"_", 0)
              push _stringDecimal32_
              #(begin macro)popouthexa()
              sbm _input7
              #(begin macro)if_sup("_input" + __idx,9)
              push _input7
              push 9
              sup
              if
                #(end macro)if_sup("_input" + __idx,9)
                #(begin macro)at_add("_input" + __idx, "'7'")
                #(begin macro)at_2("add",a,b)
                at _input7
                  add '7'
                ta
                #(end macro)at_2("add",a,b)
                #(end macro)at_add("_input" + __idx, "'7'")
              else
                #(begin macro)at_add("_input" + __idx, "'0'")
                #(begin macro)at_2("add",a,b)
                at _input7
                  add '0'
                ta
                #(end macro)at_2("add",a,b)
                #(end macro)at_add("_input" + __idx, "'0'")
              fi
              pop out
              #(end macro)popouthexa()
              #(begin macro)at_set("writeXprefixzero"+_writeX, 0)
              #(begin macro)at_2("set",a,b)
              at writeXprefixzero3
                set 0
              ta
              #(end macro)at_2("set",a,b)
              #(end macro)at_set("writeXprefixzero"+_writeX, 0)
            else
              #(begin macro)if_equal("writeXprefixzero"+_writeX, 0)
              push writeXprefixzero3
              push 0
              equal
              if
                #(end macro)if_equal("writeXprefixzero"+_writeX, 0)
                push _stringDecimal32_
                #(begin macro)popouthexa()
                sbm _input8
                #(begin macro)if_sup("_input" + __idx,9)
                push _input8
                push 9
                sup
                if
                  #(end macro)if_sup("_input" + __idx,9)
                  #(begin macro)at_add("_input" + __idx, "'7'")
                  #(begin macro)at_2("add",a,b)
                  at _input8
                    add '7'
                  ta
                  #(end macro)at_2("add",a,b)
                  #(end macro)at_add("_input" + __idx, "'7'")
                else
                  #(begin macro)at_add("_input" + __idx, "'0'")
                  #(begin macro)at_2("add",a,b)
                  at _input8
                    add '0'
                  ta
                  #(end macro)at_2("add",a,b)
                  #(end macro)at_add("_input" + __idx, "'0'")
                fi
                pop out
                #(end macro)popouthexa()
              fi
            fi
          else
            push _stringDecimal32_
            #(begin macro)popouthexa()
            sbm _input9
            #(begin macro)if_sup("_input" + __idx,9)
            push _input9
            push 9
            sup
            if
              #(end macro)if_sup("_input" + __idx,9)
              #(begin macro)at_add("_input" + __idx, "'7'")
              #(begin macro)at_2("add",a,b)
              at _input9
                add '7'
              ta
              #(end macro)at_2("add",a,b)
              #(end macro)at_add("_input" + __idx, "'7'")
            else
              #(begin macro)at_add("_input" + __idx, "'0'")
              #(begin macro)at_2("add",a,b)
              at _input9
                add '0'
              ta
              #(end macro)at_2("add",a,b)
              #(end macro)at_add("_input" + __idx, "'0'")
            fi
            pop out
            #(end macro)popouthexa()
          fi
        endloop
        #(begin macro)scope_end()
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        #(end macro)scope_end()
        #(end macro)writeX(4,name)
        #(end macro)write32 N
        #(begin macro)print("]=")
        push    0
        set     93
        out             # ']'
        sub     32
        out             # '='
        drop
        #(end macro)print("]=")
        #(begin macro)write32 result
        #(begin macro)writeX(4,name)
        #(begin macro)scope_begin()
        #(end macro)scope_begin()
        #(begin macro)lvar("writeXprefixzero" + _writeX, 1)
        push 1
        sbm writeXprefixzero4
        #(end macro)lvar("writeXprefixzero" + _writeX, 1)
        #(begin macro)lvarX(X,"writeX_A"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_A4_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_A4_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A4_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A4_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A4_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_A4_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_A"+_writeX)
        #(begin macro)lvarX(X,"writeX_B"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_B4_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_B4_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B4_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B4_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B4_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_B4_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_B"+_writeX)
        #(begin macro)lvarX(X,"writeX_AmodB"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_AmodB4_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_AmodB4_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB4_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB4_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB4_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AmodB4_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_AmodB"+_writeX)
        #(begin macro)lvarX(X,"writeX_AdivB"+_writeX)
        #(begin macro)lvar(name + "_c",0)
        push 0
        sbm writeX_AdivB4_c
        #(end macro)lvar(name + "_c",0)
        #(begin macro)lvar(name + "_s",0)
        push 0
        sbm writeX_AdivB4_s
        #(end macro)lvar(name + "_s",0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB4_3
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB4_2
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB4_1
        #(end macro)lvar(name + "_"+ xx1,0)
        #(begin macro)lvar(name + "_"+ xx1,0)
        push 0
        sbm writeX_AdivB4_0
        #(end macro)lvar(name + "_"+ xx1,0)
        #(end macro)lvarX(X,"writeX_AdivB"+_writeX)
        
        #(begin macro)pushvX(X,name)
        push    result_c
        push    result_s
        push    result_3
        push    result_2
        push    result_1
        push    result_0
        #(end macro)pushvX(X,name)
        #(begin macro)popvX(X,"writeX_A"+_writeX)
        pop     writeX_A4_0
        pop     writeX_A4_1
        pop     writeX_A4_2
        pop     writeX_A4_3
        pop     writeX_A4_s
        pop     writeX_A4_c
        #(end macro)popvX(X,"writeX_A"+_writeX)
        
        #pushX(X,10)
        #popvX(X,"writeX_B"+_writeX)
        #(begin macro)setvX(X,"writeX_B"+_writeX, 10)
        at writeX_B4_0
          #(begin macro)setX(X,immValue)
          bf <
          bf <
          bf <
          bf <
          bf <
          reset
          bf  >
          set 0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    0
          bf >
          set    10
          #(end macro)setX(X,immValue)
        ta
        #(end macro)setvX(X,"writeX_B"+_writeX, 10)
        
        push writeX_A4_s
        if
          push    '-'
          pop     out   # write '-' if name < 0
        fi
        
        push _stringDecimal32_.size
        loop
          # output = input mod 10 ; input = input div 10
          #(begin macro)divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)
          #(begin macro)scope_begin()
          #(end macro)scope_begin()
          #(begin macro)lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)lvar(name + "_c",0)
          push 0
          sbm _divvvvvXabsNameA4_c
          #(end macro)lvar(name + "_c",0)
          #(begin macro)lvar(name + "_s",0)
          push 0
          sbm _divvvvvXabsNameA4_s
          #(end macro)lvar(name + "_s",0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA4_3
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA4_2
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA4_1
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameA4_0
          #(end macro)lvar(name + "_"+ xx1,0)
          #(end macro)lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)pushvX(X,nameA)
          push    writeX_A4_c
          push    writeX_A4_s
          push    writeX_A4_3
          push    writeX_A4_2
          push    writeX_A4_1
          push    writeX_A4_0
          #(end macro)pushvX(X,nameA)
          #(begin macro)popvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          pop     _divvvvvXabsNameA4_0
          pop     _divvvvvXabsNameA4_1
          pop     _divvvvvXabsNameA4_2
          pop     _divvvvvXabsNameA4_3
          pop     _divvvvvXabsNameA4_s
          pop     _divvvvvXabsNameA4_c
          #(end macro)popvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)lvar("_divvvvvXsA" + _divvvvvX, 0)
          push 0
          sbm _divvvvvXsA4
          #(end macro)lvar("_divvvvvXsA" + _divvvvvX, 0)
          push writeX_A4_s
          pop _divvvvvXsA4
          #(begin macro)absvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          push    0
          pop     _divvvvvXabsNameA4_s
          #(end macro)absvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          
          #(begin macro)lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)
          #(begin macro)lvar(name + "_c",0)
          push 0
          sbm _divvvvvXabsNameB4_c
          #(end macro)lvar(name + "_c",0)
          #(begin macro)lvar(name + "_s",0)
          push 0
          sbm _divvvvvXabsNameB4_s
          #(end macro)lvar(name + "_s",0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB4_3
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB4_2
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB4_1
          #(end macro)lvar(name + "_"+ xx1,0)
          #(begin macro)lvar(name + "_"+ xx1,0)
          push 0
          sbm _divvvvvXabsNameB4_0
          #(end macro)lvar(name + "_"+ xx1,0)
          #(end macro)lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)
          #(begin macro)pushvX(X,nameB)
          push    writeX_B4_c
          push    writeX_B4_s
          push    writeX_B4_3
          push    writeX_B4_2
          push    writeX_B4_1
          push    writeX_B4_0
          #(end macro)pushvX(X,nameB)
          #(begin macro)popvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          pop     _divvvvvXabsNameB4_0
          pop     _divvvvvXabsNameB4_1
          pop     _divvvvvXabsNameB4_2
          pop     _divvvvvXabsNameB4_3
          pop     _divvvvvXabsNameB4_s
          pop     _divvvvvXabsNameB4_c
          #(end macro)popvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          #(begin macro)lvar("_divvvvvXsB" + _divvvvvX, 0)
          push 0
          sbm _divvvvvXsB4
          #(end macro)lvar("_divvvvvXsB" + _divvvvvX, 0)
          push writeX_B4_s
          pop _divvvvvXsB4
          #(begin macro)absvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          push    0
          pop     _divvvvvXabsNameB4_s
          #(end macro)absvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          
          #(begin macro)pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          push    _divvvvvXabsNameA4_c
          push    _divvvvvXabsNameA4_s
          push    _divvvvvXabsNameA4_3
          push    _divvvvvXabsNameA4_2
          push    _divvvvvXabsNameA4_1
          push    _divvvvvXabsNameA4_0
          #(end macro)pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)
          #(begin macro)popvX(X,nameAmodB)
          pop     writeX_AmodB4_0
          pop     writeX_AmodB4_1
          pop     writeX_AmodB4_2
          pop     writeX_AmodB4_3
          pop     writeX_AmodB4_s
          pop     writeX_AmodB4_c
          #(end macro)popvX(X,nameAmodB)
          
          #(begin macro)resetvX(X,nameAdivB)
          at writeX_AdivB4_0
            #(begin macro)resetX(X)
            bf <
            bf <
            bf <
            bf <
            bf <
            bf [-]
            bf >[-]
            bf >[-]
            bf >[-]
            bf >[-]
            bf >[-]
            #(end macro)resetX(X)
          ta
          #(end macro)resetvX(X,nameAdivB)
          
          #(begin macro)boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          push _divvvvvXabsNameB4_0
          bool
          push _divvvvvXabsNameB4_1
          bool
          push _divvvvvXabsNameB4_2
          bool
          push _divvvvvXabsNameB4_3
          bool
          or
          or
          or
          #(end macro)boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)
          if
            push    1
            sbm     _divvvvvX_g4
            while
              #(begin macro)supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
              push 0
              sbm _supequalvvX5
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvarX(X, "_supequalvvXName" + _supequalvvX)
              #(begin macro)lvar(name + "_c",0)
              push 0
              sbm _supequalvvXName5_c
              #(end macro)lvar(name + "_c",0)
              #(begin macro)lvar(name + "_s",0)
              push 0
              sbm _supequalvvXName5_s
              #(end macro)lvar(name + "_s",0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName5_3
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName5_2
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName5_1
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _supequalvvXName5_0
              #(end macro)lvar(name + "_"+ xx1,0)
              #(end macro)lvarX(X, "_supequalvvXName" + _supequalvvX)
              #(begin macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
              #(begin macro)scope_begin()
              #(end macro)scope_begin()
              #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
              #(begin macro)lvar(name + "_c",0)
              push 0
              sbm _negNameB10_c
              #(end macro)lvar(name + "_c",0)
              #(begin macro)lvar(name + "_s",0)
              push 0
              sbm _negNameB10_s
              #(end macro)lvar(name + "_s",0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB10_3
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB10_2
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB10_1
              #(end macro)lvar(name + "_"+ xx1,0)
              #(begin macro)lvar(name + "_"+ xx1,0)
              push 0
              sbm _negNameB10_0
              #(end macro)lvar(name + "_"+ xx1,0)
              #(end macro)lvarX(X,"_negNameB" + _subvvvX)
              #(begin macro)pushvX(X,nameB)
              push    _divvvvvXabsNameB4_c
              push    _divvvvvXabsNameB4_s
              push    _divvvvvXabsNameB4_3
              push    _divvvvvXabsNameB4_2
              push    _divvvvvXabsNameB4_1
              push    _divvvvvXabsNameB4_0
              #(end macro)pushvX(X,nameB)
              #(begin macro)popvX(X,"_negNameB" + _subvvvX)
              pop     _negNameB10_0
              pop     _negNameB10_1
              pop     _negNameB10_2
              pop     _negNameB10_3
              pop     _negNameB10_s
              pop     _negNameB10_c
              #(end macro)popvX(X,"_negNameB" + _subvvvX)
              #(begin macro)negvX(X,"_negNameB" + _subvvvX)
              push    _negNameB10_s
              dec
              bool
              dup
              if    # if name is now negative
                #(begin macro)if_equal(name +"_"+xx, 0)
                push _negNameB10_0
                push 0
                equal
                if
                  #(end macro)if_equal(name +"_"+xx, 0)
                  #(begin macro)if_equal(name +"_"+xx, 0)
                  push _negNameB10_1
                  push 0
                  equal
                  if
                    #(end macro)if_equal(name +"_"+xx, 0)
                    #(begin macro)if_equal(name +"_"+xx, 0)
                    push _negNameB10_2
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_"+xx, 0)
                      #(begin macro)if_equal(name +"_"+xx, 0)
                      push _negNameB10_3
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_"+xx, 0)
                        #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
                        #(begin macro)at_1("reset",a)
                        #(begin macro)at_2(ope,a,"")
                        at _negNameB10_s
                          reset 
                        ta
                        #(end macro)at_2(ope,a,"")
                        #(end macro)at_1("reset",a)
                        #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
                      fi
                    fi
                  fi
                fi
              fi
              pop     _negNameB10_s
              #(end macro)negvX(X,"_negNameB" + _subvvvX)
              #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
              push    writeX_AmodB4_s
              push    _negNameB10_s
              or
              not
              push    writeX_AmodB4_s
              push    _negNameB10_s
              and
              or
              if      # nameA and nameB are both positive or negative
                push    writeX_AmodB4_s
                pop     _supequalvvXName5_s    # name has same sign of nameA and nameB
                push    0
                push    writeX_AmodB4_0
                #(begin macro)addof()
                sbm _addofb121
                sbm _addofa121 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc121
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao121
                while
                  push _addofa121
                  if
                    at _addofa121
                      dec
                    ta
                    at _addofb121
                      inc
                    ta
                    push _addofb121
                    not
                    if
                      at _addofc121
                        set 1
                      ta
                    fi
                  else
                    at _loopao121
                      reset
                    ta
                  fi
                wend
                push _addofc121
                if
                  at _addofa121
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName5_0
                push    _negNameB10_0
                #(begin macro)addof()
                sbm _addofb122
                sbm _addofa122 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc122
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao122
                while
                  push _addofa122
                  if
                    at _addofa122
                      dec
                    ta
                    at _addofb122
                      inc
                    ta
                    push _addofb122
                    not
                    if
                      at _addofc122
                        set 1
                      ta
                    fi
                  else
                    at _loopao122
                      reset
                    ta
                  fi
                wend
                push _addofc122
                if
                  at _addofa122
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName5_0
                #(begin macro)addof()
                sbm _addofb123
                sbm _addofa123 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc123
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao123
                while
                  push _addofa123
                  if
                    at _addofa123
                      dec
                    ta
                    at _addofb123
                      inc
                    ta
                    push _addofb123
                    not
                    if
                      at _addofc123
                        set 1
                      ta
                    fi
                  else
                    at _loopao123
                      reset
                    ta
                  fi
                wend
                push _addofc123
                if
                  at _addofa123
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName5_0
                add
                push    writeX_AmodB4_1
                #(begin macro)addof()
                sbm _addofb124
                sbm _addofa124 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc124
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao124
                while
                  push _addofa124
                  if
                    at _addofa124
                      dec
                    ta
                    at _addofb124
                      inc
                    ta
                    push _addofb124
                    not
                    if
                      at _addofc124
                        set 1
                      ta
                    fi
                  else
                    at _loopao124
                      reset
                    ta
                  fi
                wend
                push _addofc124
                if
                  at _addofa124
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName5_1
                push    _negNameB10_1
                #(begin macro)addof()
                sbm _addofb125
                sbm _addofa125 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc125
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao125
                while
                  push _addofa125
                  if
                    at _addofa125
                      dec
                    ta
                    at _addofb125
                      inc
                    ta
                    push _addofb125
                    not
                    if
                      at _addofc125
                        set 1
                      ta
                    fi
                  else
                    at _loopao125
                      reset
                    ta
                  fi
                wend
                push _addofc125
                if
                  at _addofa125
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName5_1
                #(begin macro)addof()
                sbm _addofb126
                sbm _addofa126 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc126
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao126
                while
                  push _addofa126
                  if
                    at _addofa126
                      dec
                    ta
                    at _addofb126
                      inc
                    ta
                    push _addofb126
                    not
                    if
                      at _addofc126
                        set 1
                      ta
                    fi
                  else
                    at _loopao126
                      reset
                    ta
                  fi
                wend
                push _addofc126
                if
                  at _addofa126
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName5_1
                add
                push    writeX_AmodB4_2
                #(begin macro)addof()
                sbm _addofb127
                sbm _addofa127 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc127
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao127
                while
                  push _addofa127
                  if
                    at _addofa127
                      dec
                    ta
                    at _addofb127
                      inc
                    ta
                    push _addofb127
                    not
                    if
                      at _addofc127
                        set 1
                      ta
                    fi
                  else
                    at _loopao127
                      reset
                    ta
                  fi
                wend
                push _addofc127
                if
                  at _addofa127
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName5_2
                push    _negNameB10_2
                #(begin macro)addof()
                sbm _addofb128
                sbm _addofa128 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc128
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao128
                while
                  push _addofa128
                  if
                    at _addofa128
                      dec
                    ta
                    at _addofb128
                      inc
                    ta
                    push _addofb128
                    not
                    if
                      at _addofc128
                        set 1
                      ta
                    fi
                  else
                    at _loopao128
                      reset
                    ta
                  fi
                wend
                push _addofc128
                if
                  at _addofa128
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName5_2
                #(begin macro)addof()
                sbm _addofb129
                sbm _addofa129 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc129
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao129
                while
                  push _addofa129
                  if
                    at _addofa129
                      dec
                    ta
                    at _addofb129
                      inc
                    ta
                    push _addofb129
                    not
                    if
                      at _addofc129
                        set 1
                      ta
                    fi
                  else
                    at _loopao129
                      reset
                    ta
                  fi
                wend
                push _addofc129
                if
                  at _addofa129
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName5_2
                add
                push    writeX_AmodB4_3
                #(begin macro)addof()
                sbm _addofb130
                sbm _addofa130 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc130
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao130
                while
                  push _addofa130
                  if
                    at _addofa130
                      dec
                    ta
                    at _addofb130
                      inc
                    ta
                    push _addofb130
                    not
                    if
                      at _addofc130
                        set 1
                      ta
                    fi
                  else
                    at _loopao130
                      reset
                    ta
                  fi
                wend
                push _addofc130
                if
                  at _addofa130
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName5_3
                push    _negNameB10_3
                #(begin macro)addof()
                sbm _addofb131
                sbm _addofa131 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc131
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao131
                while
                  push _addofa131
                  if
                    at _addofa131
                      dec
                    ta
                    at _addofb131
                      inc
                    ta
                    push _addofb131
                    not
                    if
                      at _addofc131
                        set 1
                      ta
                    fi
                  else
                    at _loopao131
                      reset
                    ta
                  fi
                wend
                push _addofc131
                if
                  at _addofa131
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                push    _supequalvvXName5_3
                #(begin macro)addof()
                sbm _addofb132
                sbm _addofa132 - 1
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_addofc"+_addof ,0)
                push 0
                sbm _addofc132
                #(end macro)lvar("_addofc"+_addof ,0)
                push 1
                sbm _loopao132
                while
                  push _addofa132
                  if
                    at _addofa132
                      dec
                    ta
                    at _addofb132
                      inc
                    ta
                    push _addofb132
                    not
                    if
                      at _addofc132
                        set 1
                      ta
                    fi
                  else
                    at _loopao132
                      reset
                    ta
                  fi
                wend
                push _addofc132
                if
                  at _addofa132
                    set 1
                  ta
                fi
                #(begin macro)scope_end()
                drop
                #(end macro)scope_end()
                #(end macro)addof()
                pop     _supequalvvXName5_3
                add
                pop     _supequalvvXName5_c
              else  # nameA has a different sign of nameB
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                push 0
                sbm _asupb11
                #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                push 0
                sbm _aequb11
                #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                push    writeX_AmodB4_3
                push    _negNameB10_3
                sup
                if
                  at _asupb11
                    set 1
                  ta
                else
                  push    writeX_AmodB4_3
                  push    _negNameB10_3
                  diff
                  if
                    at _asupb11
                      reset
                    ta
                  else
                    push    writeX_AmodB4_2
                    push    _negNameB10_2
                    sup
                    if
                      at _asupb11
                        set 1
                      ta
                    else
                      push    writeX_AmodB4_2
                      push    _negNameB10_2
                      diff
                      if
                        at _asupb11
                          reset
                        ta
                      else
                        push    writeX_AmodB4_1
                        push    _negNameB10_1
                        sup
                        if
                          at _asupb11
                            set 1
                          ta
                        else
                          push    writeX_AmodB4_1
                          push    _negNameB10_1
                          diff
                          if
                            at _asupb11
                              reset
                            ta
                          else
                            push    writeX_AmodB4_0
                            push    _negNameB10_0
                            sup
                            if
                              at _asupb11
                                set 1
                              ta
                            else
                              push    writeX_AmodB4_0
                              push    _negNameB10_0
                              diff
                              if
                                at _asupb11
                                  reset
                                ta
                              else
                                at _aequb11
                                  set 1
                                ta
                              fi
                            fi
                          fi
                        fi
                      fi
                    fi
                  fi
                fi
                push _asupb11
                if  # absA > absB : do  absA-absB with sign of A
                  # print("absA > absB\n")
                  push    writeX_AmodB4_s
                  pop     _supequalvvXName5_s    # name has same sign of nameA
                  
                  push    0
                  sbm     _addvvvXCarry11
                  push    writeX_AmodB4_0
                  push    _negNameB10_0
                  #(begin macro)subof()
                  sbm _subofb161
                  sbm _subofa161 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc161
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso161
                  while
                    push _subofb161
                    if
                      at _subofb161
                        dec
                      ta
                      at _subofa161
                        dec
                      ta
                      push _subofa161
                      inc
                      not
                      if
                        at _subofc161
                          set 1
                        ta
                      fi
                    else
                      at _loopso161
                        reset
                      ta
                    fi
                  wend
                  push _subofc161
                  if
                    at _subofb161
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry11
                  #(begin macro)subof()
                  sbm _subofb162
                  sbm _subofa162 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc162
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso162
                  while
                    push _subofb162
                    if
                      at _subofb162
                        dec
                      ta
                      at _subofa162
                        dec
                      ta
                      push _subofa162
                      inc
                      not
                      if
                        at _subofc162
                          set 1
                        ta
                      fi
                    else
                      at _loopso162
                        reset
                      ta
                    fi
                  wend
                  push _subofc162
                  if
                    at _subofb162
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName5_0
                  add
                  pop     _addvvvXCarry11
                  push    writeX_AmodB4_1
                  push    _negNameB10_1
                  #(begin macro)subof()
                  sbm _subofb163
                  sbm _subofa163 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc163
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso163
                  while
                    push _subofb163
                    if
                      at _subofb163
                        dec
                      ta
                      at _subofa163
                        dec
                      ta
                      push _subofa163
                      inc
                      not
                      if
                        at _subofc163
                          set 1
                        ta
                      fi
                    else
                      at _loopso163
                        reset
                      ta
                    fi
                  wend
                  push _subofc163
                  if
                    at _subofb163
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry11
                  #(begin macro)subof()
                  sbm _subofb164
                  sbm _subofa164 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc164
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso164
                  while
                    push _subofb164
                    if
                      at _subofb164
                        dec
                      ta
                      at _subofa164
                        dec
                      ta
                      push _subofa164
                      inc
                      not
                      if
                        at _subofc164
                          set 1
                        ta
                      fi
                    else
                      at _loopso164
                        reset
                      ta
                    fi
                  wend
                  push _subofc164
                  if
                    at _subofb164
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName5_1
                  add
                  pop     _addvvvXCarry11
                  push    writeX_AmodB4_2
                  push    _negNameB10_2
                  #(begin macro)subof()
                  sbm _subofb165
                  sbm _subofa165 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc165
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso165
                  while
                    push _subofb165
                    if
                      at _subofb165
                        dec
                      ta
                      at _subofa165
                        dec
                      ta
                      push _subofa165
                      inc
                      not
                      if
                        at _subofc165
                          set 1
                        ta
                      fi
                    else
                      at _loopso165
                        reset
                      ta
                    fi
                  wend
                  push _subofc165
                  if
                    at _subofb165
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry11
                  #(begin macro)subof()
                  sbm _subofb166
                  sbm _subofa166 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc166
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso166
                  while
                    push _subofb166
                    if
                      at _subofb166
                        dec
                      ta
                      at _subofa166
                        dec
                      ta
                      push _subofa166
                      inc
                      not
                      if
                        at _subofc166
                          set 1
                        ta
                      fi
                    else
                      at _loopso166
                        reset
                      ta
                    fi
                  wend
                  push _subofc166
                  if
                    at _subofb166
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName5_2
                  add
                  pop     _addvvvXCarry11
                  push    writeX_AmodB4_3
                  push    _negNameB10_3
                  #(begin macro)subof()
                  sbm _subofb167
                  sbm _subofa167 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc167
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso167
                  while
                    push _subofb167
                    if
                      at _subofb167
                        dec
                      ta
                      at _subofa167
                        dec
                      ta
                      push _subofa167
                      inc
                      not
                      if
                        at _subofc167
                          set 1
                        ta
                      fi
                    else
                      at _loopso167
                        reset
                      ta
                    fi
                  wend
                  push _subofc167
                  if
                    at _subofb167
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  push    _addvvvXCarry11
                  #(begin macro)subof()
                  sbm _subofb168
                  sbm _subofa168 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_subofc"+_subof ,0)
                  push 0
                  sbm _subofc168
                  #(end macro)lvar("_subofc"+_subof ,0)
                  push 1
                  sbm _loopso168
                  while
                    push _subofb168
                    if
                      at _subofb168
                        dec
                      ta
                      at _subofa168
                        dec
                      ta
                      push _subofa168
                      inc
                      not
                      if
                        at _subofc168
                          set 1
                        ta
                      fi
                    else
                      at _loopso168
                        reset
                      ta
                    fi
                  wend
                  push _subofc168
                  if
                    at _subofb168
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  swap
                  #(end macro)subof()
                  pop     _supequalvvXName5_3
                  add
                  pop     _addvvvXCarry11
                  pop     _supequalvvXName5_c
                else # absB >= absA :
                  push    _aequb11
                  if # absA == absB , then name =0 (opposite sign then sum is zero)
                    #print("absA == absB\n")
                    #(begin macro)setvX(X,name,0)
                    at _supequalvvXName5_0
                      #(begin macro)setX(X,immValue)
                      bf <
                      bf <
                      bf <
                      bf <
                      bf <
                      reset
                      bf  >
                      set 0
                      bf >
                      set    0
                      bf >
                      set    0
                      bf >
                      set    0
                      bf >
                      set    0
                      #(end macro)setX(X,immValue)
                    ta
                    #(end macro)setvX(X,name,0)
                  else # absA < absB : do   absB-absA with sign of B
                    #print("absA < absB\n")
                    push    _negNameB10_s
                    pop     _supequalvvXName5_s    # name has same sign of nameB
                    
                    push    0
                    sbm     _addvvvXCarry11
                    push    _negNameB10_0
                    push    writeX_AmodB4_0
                    #(begin macro)subof()
                    sbm _subofb169
                    sbm _subofa169 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc169
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso169
                    while
                      push _subofb169
                      if
                        at _subofb169
                          dec
                        ta
                        at _subofa169
                          dec
                        ta
                        push _subofa169
                        inc
                        not
                        if
                          at _subofc169
                            set 1
                          ta
                        fi
                      else
                        at _loopso169
                          reset
                        ta
                      fi
                    wend
                    push _subofc169
                    if
                      at _subofb169
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry11
                    #(begin macro)subof()
                    sbm _subofb170
                    sbm _subofa170 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc170
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso170
                    while
                      push _subofb170
                      if
                        at _subofb170
                          dec
                        ta
                        at _subofa170
                          dec
                        ta
                        push _subofa170
                        inc
                        not
                        if
                          at _subofc170
                            set 1
                          ta
                        fi
                      else
                        at _loopso170
                          reset
                        ta
                      fi
                    wend
                    push _subofc170
                    if
                      at _subofb170
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName5_0
                    add
                    pop     _addvvvXCarry11
                    push    _negNameB10_1
                    push    writeX_AmodB4_1
                    #(begin macro)subof()
                    sbm _subofb171
                    sbm _subofa171 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc171
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso171
                    while
                      push _subofb171
                      if
                        at _subofb171
                          dec
                        ta
                        at _subofa171
                          dec
                        ta
                        push _subofa171
                        inc
                        not
                        if
                          at _subofc171
                            set 1
                          ta
                        fi
                      else
                        at _loopso171
                          reset
                        ta
                      fi
                    wend
                    push _subofc171
                    if
                      at _subofb171
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry11
                    #(begin macro)subof()
                    sbm _subofb172
                    sbm _subofa172 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc172
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso172
                    while
                      push _subofb172
                      if
                        at _subofb172
                          dec
                        ta
                        at _subofa172
                          dec
                        ta
                        push _subofa172
                        inc
                        not
                        if
                          at _subofc172
                            set 1
                          ta
                        fi
                      else
                        at _loopso172
                          reset
                        ta
                      fi
                    wend
                    push _subofc172
                    if
                      at _subofb172
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName5_1
                    add
                    pop     _addvvvXCarry11
                    push    _negNameB10_2
                    push    writeX_AmodB4_2
                    #(begin macro)subof()
                    sbm _subofb173
                    sbm _subofa173 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc173
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso173
                    while
                      push _subofb173
                      if
                        at _subofb173
                          dec
                        ta
                        at _subofa173
                          dec
                        ta
                        push _subofa173
                        inc
                        not
                        if
                          at _subofc173
                            set 1
                          ta
                        fi
                      else
                        at _loopso173
                          reset
                        ta
                      fi
                    wend
                    push _subofc173
                    if
                      at _subofb173
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry11
                    #(begin macro)subof()
                    sbm _subofb174
                    sbm _subofa174 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc174
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso174
                    while
                      push _subofb174
                      if
                        at _subofb174
                          dec
                        ta
                        at _subofa174
                          dec
                        ta
                        push _subofa174
                        inc
                        not
                        if
                          at _subofc174
                            set 1
                          ta
                        fi
                      else
                        at _loopso174
                          reset
                        ta
                      fi
                    wend
                    push _subofc174
                    if
                      at _subofb174
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName5_2
                    add
                    pop     _addvvvXCarry11
                    push    _negNameB10_3
                    push    writeX_AmodB4_3
                    #(begin macro)subof()
                    sbm _subofb175
                    sbm _subofa175 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc175
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso175
                    while
                      push _subofb175
                      if
                        at _subofb175
                          dec
                        ta
                        at _subofa175
                          dec
                        ta
                        push _subofa175
                        inc
                        not
                        if
                          at _subofc175
                            set 1
                          ta
                        fi
                      else
                        at _loopso175
                          reset
                        ta
                      fi
                    wend
                    push _subofc175
                    if
                      at _subofb175
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry11
                    #(begin macro)subof()
                    sbm _subofb176
                    sbm _subofa176 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc176
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso176
                    while
                      push _subofb176
                      if
                        at _subofb176
                          dec
                        ta
                        at _subofa176
                          dec
                        ta
                        push _subofa176
                        inc
                        not
                        if
                          at _subofc176
                            set 1
                          ta
                        fi
                      else
                        at _loopso176
                          reset
                        ta
                      fi
                    wend
                    push _subofc176
                    if
                      at _subofb176
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     _supequalvvXName5_3
                    add
                    pop     _addvvvXCarry11
                    pop     _supequalvvXName5_c
                  fi
                fi
                #(begin macro)scope_end()
                drop
                drop
                #(end macro)scope_end()
              fi
              #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
              #(begin macro)scope_end()
              drop
              drop
              drop
              drop
              drop
              drop
              #(end macro)scope_end()
              #(end macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)
              push _supequalvvXName5_s
              not
              pop _supequalvvX5
              #(begin macro)scope_end()
              drop
              drop
              drop
              drop
              drop
              drop
              #(end macro)scope_end()
              #(end macro)supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
              if
                #(begin macro)incvX(X,nameAdivB)
                #(begin macro)if_equal(name +"_s",0)  # positive number
                push writeX_AdivB4_s
                push 0
                equal
                if
                  #(end macro)if_equal(name +"_s",0)  # positive number
                  #(begin macro)at_inc(name + "_" + xx)
                  #(begin macro)at_1("inc",a)
                  #(begin macro)at_2(ope,a,"")
                  at writeX_AdivB4_0
                    inc 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("inc",a)
                  #(end macro)at_inc(name + "_" + xx)
                  #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                  push writeX_AdivB4_0
                  push 0
                  equal
                  if
                    #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                    #(begin macro)at_inc(name + "_" + xx)
                    #(begin macro)at_1("inc",a)
                    #(begin macro)at_2(ope,a,"")
                    at writeX_AdivB4_1
                      inc 
                    ta
                    #(end macro)at_2(ope,a,"")
                    #(end macro)at_1("inc",a)
                    #(end macro)at_inc(name + "_" + xx)
                    #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                    push writeX_AdivB4_1
                    push 0
                    equal
                    if
                      #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                      #(begin macro)at_inc(name + "_" + xx)
                      #(begin macro)at_1("inc",a)
                      #(begin macro)at_2(ope,a,"")
                      at writeX_AdivB4_2
                        inc 
                      ta
                      #(end macro)at_2(ope,a,"")
                      #(end macro)at_1("inc",a)
                      #(end macro)at_inc(name + "_" + xx)
                      #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                      push writeX_AdivB4_2
                      push 0
                      equal
                      if
                        #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                        #(begin macro)at_inc(name + "_" + xx)
                        #(begin macro)at_1("inc",a)
                        #(begin macro)at_2(ope,a,"")
                        at writeX_AdivB4_3
                          inc 
                        ta
                        #(end macro)at_2(ope,a,"")
                        #(end macro)at_1("inc",a)
                        #(end macro)at_inc(name + "_" + xx)
                        #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                        push writeX_AdivB4_3
                        push 0
                        equal
                        if
                          #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
                          #(begin macro)setcvX(X, name) ## set carry (overflow)
                          #(begin macro)at_set(name+"_c",1)
                          #(begin macro)at_2("set",a,b)
                          at writeX_AdivB4_c
                            set 1
                          ta
                          #(end macro)at_2("set",a,b)
                          #(end macro)at_set(name+"_c",1)
                          #(end macro)setcvX(X, name) ## set carry (overflow)
                        fi
                      fi
                    fi
                  fi
                else    # negative number
                  #(begin macro)at_dec(name + "_" + xx)
                  #(begin macro)at_1("dec",a)
                  #(begin macro)at_2(ope,a,"")
                  at writeX_AdivB4_0
                    dec 
                  ta
                  #(end macro)at_2(ope,a,"")
                  #(end macro)at_1("dec",a)
                  #(end macro)at_dec(name + "_" + xx)
                  #(begin macro)if_equal(name +"_" + xx,255) # reduced
                  push writeX_AdivB4_0
                  push 255
                  equal
                  if
                    #(end macro)if_equal(name +"_" + xx,255) # reduced
                    #(begin macro)at_dec(name + "_" + xx)
                    #(begin macro)at_1("dec",a)
                    #(begin macro)at_2(ope,a,"")
                    at writeX_AdivB4_1
                      dec 
                    ta
                    #(end macro)at_2(ope,a,"")
                    #(end macro)at_1("dec",a)
                    #(end macro)at_dec(name + "_" + xx)
                    #(begin macro)if_equal(name +"_" + xx,255) # reduced
                    push writeX_AdivB4_1
                    push 255
                    equal
                    if
                      #(end macro)if_equal(name +"_" + xx,255) # reduced
                      #(begin macro)at_dec(name + "_" + xx)
                      #(begin macro)at_1("dec",a)
                      #(begin macro)at_2(ope,a,"")
                      at writeX_AdivB4_2
                        dec 
                      ta
                      #(end macro)at_2(ope,a,"")
                      #(end macro)at_1("dec",a)
                      #(end macro)at_dec(name + "_" + xx)
                      #(begin macro)if_equal(name +"_" + xx,255) # reduced
                      push writeX_AdivB4_2
                      push 255
                      equal
                      if
                        #(end macro)if_equal(name +"_" + xx,255) # reduced
                        #(begin macro)at_dec(name + "_" + xx)
                        #(begin macro)at_1("dec",a)
                        #(begin macro)at_2(ope,a,"")
                        at writeX_AdivB4_3
                          dec 
                        ta
                        #(end macro)at_2(ope,a,"")
                        #(end macro)at_1("dec",a)
                        #(end macro)at_dec(name + "_" + xx)
                        #(begin macro)if_equal(name +"_" + xx,255) # reduced
                        push writeX_AdivB4_3
                        push 255
                        equal
                        if
                          #(end macro)if_equal(name +"_" + xx,255) # reduced
                          #(begin macro)setvX(X,name,1)
                          at writeX_AdivB4_0
                            #(begin macro)setX(X,immValue)
                            bf <
                            bf <
                            bf <
                            bf <
                            bf <
                            reset
                            bf  >
                            set 0
                            bf >
                            set    0
                            bf >
                            set    0
                            bf >
                            set    0
                            bf >
                            set    1
                            #(end macro)setX(X,immValue)
                          ta
                          #(end macro)setvX(X,name,1)
                        fi
                      fi
                    fi
                  fi
                  #(begin macro)fixsvX(X,name)
                  push    writeX_AdivB4_s
                  if    # if name is negative
                    #(begin macro)if_equal(name +"_" + xx, 0)
                    push writeX_AdivB4_0
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_" + xx, 0)
                      #(begin macro)if_equal(name +"_" + xx, 0)
                      push writeX_AdivB4_1
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_" + xx, 0)
                        #(begin macro)if_equal(name +"_" + xx, 0)
                        push writeX_AdivB4_2
                        push 0
                        equal
                        if
                          #(end macro)if_equal(name +"_" + xx, 0)
                          #(begin macro)if_equal(name +"_" + xx, 0)
                          push writeX_AdivB4_3
                          push 0
                          equal
                          if
                            #(end macro)if_equal(name +"_" + xx, 0)
                            #(begin macro)at_reset(name + "_s")   # set sign to positive
                            #(begin macro)at_1("reset",a)
                            #(begin macro)at_2(ope,a,"")
                            at writeX_AdivB4_s
                              reset 
                            ta
                            #(end macro)at_2(ope,a,"")
                            #(end macro)at_1("reset",a)
                            #(end macro)at_reset(name + "_s")   # set sign to positive
                          fi
                        fi
                      fi
                    fi
                  fi
                  #(end macro)fixsvX(X,name)
                fi
                #(end macro)incvX(X,nameAdivB)
                #(begin macro)subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvarX(X, "_subvvXNameB" + _subvvX)
                #(begin macro)lvar(name + "_c",0)
                push 0
                sbm _subvvXNameB4_c
                #(end macro)lvar(name + "_c",0)
                #(begin macro)lvar(name + "_s",0)
                push 0
                sbm _subvvXNameB4_s
                #(end macro)lvar(name + "_s",0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB4_3
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB4_2
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB4_1
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _subvvXNameB4_0
                #(end macro)lvar(name + "_"+ xx1,0)
                #(end macro)lvarX(X, "_subvvXNameB" + _subvvX)
                #(begin macro)pushvX(X, name)
                push    writeX_AmodB4_c
                push    writeX_AmodB4_s
                push    writeX_AmodB4_3
                push    writeX_AmodB4_2
                push    writeX_AmodB4_1
                push    writeX_AmodB4_0
                #(end macro)pushvX(X, name)
                #(begin macro)popvX(X, "_subvvXNameB" + _subvvX)
                pop     _subvvXNameB4_0
                pop     _subvvXNameB4_1
                pop     _subvvXNameB4_2
                pop     _subvvXNameB4_3
                pop     _subvvXNameB4_s
                pop     _subvvXNameB4_c
                #(end macro)popvX(X, "_subvvXNameB" + _subvvX)
                #(begin macro)subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)
                #(begin macro)scope_begin()
                #(end macro)scope_begin()
                #(begin macro)lvarX(X,"_negNameB" + _subvvvX)
                #(begin macro)lvar(name + "_c",0)
                push 0
                sbm _negNameB11_c
                #(end macro)lvar(name + "_c",0)
                #(begin macro)lvar(name + "_s",0)
                push 0
                sbm _negNameB11_s
                #(end macro)lvar(name + "_s",0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB11_3
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB11_2
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB11_1
                #(end macro)lvar(name + "_"+ xx1,0)
                #(begin macro)lvar(name + "_"+ xx1,0)
                push 0
                sbm _negNameB11_0
                #(end macro)lvar(name + "_"+ xx1,0)
                #(end macro)lvarX(X,"_negNameB" + _subvvvX)
                #(begin macro)pushvX(X,nameB)
                push    _divvvvvXabsNameB4_c
                push    _divvvvvXabsNameB4_s
                push    _divvvvvXabsNameB4_3
                push    _divvvvvXabsNameB4_2
                push    _divvvvvXabsNameB4_1
                push    _divvvvvXabsNameB4_0
                #(end macro)pushvX(X,nameB)
                #(begin macro)popvX(X,"_negNameB" + _subvvvX)
                pop     _negNameB11_0
                pop     _negNameB11_1
                pop     _negNameB11_2
                pop     _negNameB11_3
                pop     _negNameB11_s
                pop     _negNameB11_c
                #(end macro)popvX(X,"_negNameB" + _subvvvX)
                #(begin macro)negvX(X,"_negNameB" + _subvvvX)
                push    _negNameB11_s
                dec
                bool
                dup
                if    # if name is now negative
                  #(begin macro)if_equal(name +"_"+xx, 0)
                  push _negNameB11_0
                  push 0
                  equal
                  if
                    #(end macro)if_equal(name +"_"+xx, 0)
                    #(begin macro)if_equal(name +"_"+xx, 0)
                    push _negNameB11_1
                    push 0
                    equal
                    if
                      #(end macro)if_equal(name +"_"+xx, 0)
                      #(begin macro)if_equal(name +"_"+xx, 0)
                      push _negNameB11_2
                      push 0
                      equal
                      if
                        #(end macro)if_equal(name +"_"+xx, 0)
                        #(begin macro)if_equal(name +"_"+xx, 0)
                        push _negNameB11_3
                        push 0
                        equal
                        if
                          #(end macro)if_equal(name +"_"+xx, 0)
                          #(begin macro)at_reset(name + "_s")   # set sign to positive if name==0
                          #(begin macro)at_1("reset",a)
                          #(begin macro)at_2(ope,a,"")
                          at _negNameB11_s
                            reset 
                          ta
                          #(end macro)at_2(ope,a,"")
                          #(end macro)at_1("reset",a)
                          #(end macro)at_reset(name + "_s")   # set sign to positive if name==0
                        fi
                      fi
                    fi
                  fi
                fi
                pop     _negNameB11_s
                #(end macro)negvX(X,"_negNameB" + _subvvvX)
                #(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
                push    _subvvXNameB4_s
                push    _negNameB11_s
                or
                not
                push    _subvvXNameB4_s
                push    _negNameB11_s
                and
                or
                if      # nameA and nameB are both positive or negative
                  push    _subvvXNameB4_s
                  pop     writeX_AmodB4_s    # name has same sign of nameA and nameB
                  push    0
                  push    _subvvXNameB4_0
                  #(begin macro)addof()
                  sbm _addofb133
                  sbm _addofa133 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc133
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao133
                  while
                    push _addofa133
                    if
                      at _addofa133
                        dec
                      ta
                      at _addofb133
                        inc
                      ta
                      push _addofb133
                      not
                      if
                        at _addofc133
                          set 1
                        ta
                      fi
                    else
                      at _loopao133
                        reset
                      ta
                    fi
                  wend
                  push _addofc133
                  if
                    at _addofa133
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB4_0
                  push    _negNameB11_0
                  #(begin macro)addof()
                  sbm _addofb134
                  sbm _addofa134 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc134
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao134
                  while
                    push _addofa134
                    if
                      at _addofa134
                        dec
                      ta
                      at _addofb134
                        inc
                      ta
                      push _addofb134
                      not
                      if
                        at _addofc134
                          set 1
                        ta
                      fi
                    else
                      at _loopao134
                        reset
                      ta
                    fi
                  wend
                  push _addofc134
                  if
                    at _addofa134
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB4_0
                  #(begin macro)addof()
                  sbm _addofb135
                  sbm _addofa135 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc135
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao135
                  while
                    push _addofa135
                    if
                      at _addofa135
                        dec
                      ta
                      at _addofb135
                        inc
                      ta
                      push _addofb135
                      not
                      if
                        at _addofc135
                          set 1
                        ta
                      fi
                    else
                      at _loopao135
                        reset
                      ta
                    fi
                  wend
                  push _addofc135
                  if
                    at _addofa135
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB4_0
                  add
                  push    _subvvXNameB4_1
                  #(begin macro)addof()
                  sbm _addofb136
                  sbm _addofa136 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc136
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao136
                  while
                    push _addofa136
                    if
                      at _addofa136
                        dec
                      ta
                      at _addofb136
                        inc
                      ta
                      push _addofb136
                      not
                      if
                        at _addofc136
                          set 1
                        ta
                      fi
                    else
                      at _loopao136
                        reset
                      ta
                    fi
                  wend
                  push _addofc136
                  if
                    at _addofa136
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB4_1
                  push    _negNameB11_1
                  #(begin macro)addof()
                  sbm _addofb137
                  sbm _addofa137 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc137
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao137
                  while
                    push _addofa137
                    if
                      at _addofa137
                        dec
                      ta
                      at _addofb137
                        inc
                      ta
                      push _addofb137
                      not
                      if
                        at _addofc137
                          set 1
                        ta
                      fi
                    else
                      at _loopao137
                        reset
                      ta
                    fi
                  wend
                  push _addofc137
                  if
                    at _addofa137
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB4_1
                  #(begin macro)addof()
                  sbm _addofb138
                  sbm _addofa138 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc138
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao138
                  while
                    push _addofa138
                    if
                      at _addofa138
                        dec
                      ta
                      at _addofb138
                        inc
                      ta
                      push _addofb138
                      not
                      if
                        at _addofc138
                          set 1
                        ta
                      fi
                    else
                      at _loopao138
                        reset
                      ta
                    fi
                  wend
                  push _addofc138
                  if
                    at _addofa138
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB4_1
                  add
                  push    _subvvXNameB4_2
                  #(begin macro)addof()
                  sbm _addofb139
                  sbm _addofa139 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc139
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao139
                  while
                    push _addofa139
                    if
                      at _addofa139
                        dec
                      ta
                      at _addofb139
                        inc
                      ta
                      push _addofb139
                      not
                      if
                        at _addofc139
                          set 1
                        ta
                      fi
                    else
                      at _loopao139
                        reset
                      ta
                    fi
                  wend
                  push _addofc139
                  if
                    at _addofa139
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB4_2
                  push    _negNameB11_2
                  #(begin macro)addof()
                  sbm _addofb140
                  sbm _addofa140 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc140
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao140
                  while
                    push _addofa140
                    if
                      at _addofa140
                        dec
                      ta
                      at _addofb140
                        inc
                      ta
                      push _addofb140
                      not
                      if
                        at _addofc140
                          set 1
                        ta
                      fi
                    else
                      at _loopao140
                        reset
                      ta
                    fi
                  wend
                  push _addofc140
                  if
                    at _addofa140
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB4_2
                  #(begin macro)addof()
                  sbm _addofb141
                  sbm _addofa141 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc141
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao141
                  while
                    push _addofa141
                    if
                      at _addofa141
                        dec
                      ta
                      at _addofb141
                        inc
                      ta
                      push _addofb141
                      not
                      if
                        at _addofc141
                          set 1
                        ta
                      fi
                    else
                      at _loopao141
                        reset
                      ta
                    fi
                  wend
                  push _addofc141
                  if
                    at _addofa141
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB4_2
                  add
                  push    _subvvXNameB4_3
                  #(begin macro)addof()
                  sbm _addofb142
                  sbm _addofa142 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc142
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao142
                  while
                    push _addofa142
                    if
                      at _addofa142
                        dec
                      ta
                      at _addofb142
                        inc
                      ta
                      push _addofb142
                      not
                      if
                        at _addofc142
                          set 1
                        ta
                      fi
                    else
                      at _loopao142
                        reset
                      ta
                    fi
                  wend
                  push _addofc142
                  if
                    at _addofa142
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB4_3
                  push    _negNameB11_3
                  #(begin macro)addof()
                  sbm _addofb143
                  sbm _addofa143 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc143
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao143
                  while
                    push _addofa143
                    if
                      at _addofa143
                        dec
                      ta
                      at _addofb143
                        inc
                      ta
                      push _addofb143
                      not
                      if
                        at _addofc143
                          set 1
                        ta
                      fi
                    else
                      at _loopao143
                        reset
                      ta
                    fi
                  wend
                  push _addofc143
                  if
                    at _addofa143
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  push    writeX_AmodB4_3
                  #(begin macro)addof()
                  sbm _addofb144
                  sbm _addofa144 - 1
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_addofc"+_addof ,0)
                  push 0
                  sbm _addofc144
                  #(end macro)lvar("_addofc"+_addof ,0)
                  push 1
                  sbm _loopao144
                  while
                    push _addofa144
                    if
                      at _addofa144
                        dec
                      ta
                      at _addofb144
                        inc
                      ta
                      push _addofb144
                      not
                      if
                        at _addofc144
                          set 1
                        ta
                      fi
                    else
                      at _loopao144
                        reset
                      ta
                    fi
                  wend
                  push _addofc144
                  if
                    at _addofa144
                      set 1
                    ta
                  fi
                  #(begin macro)scope_end()
                  drop
                  #(end macro)scope_end()
                  #(end macro)addof()
                  pop     writeX_AmodB4_3
                  add
                  pop     writeX_AmodB4_c
                else  # nameA has a different sign of nameB
                  #(begin macro)scope_begin()
                  #(end macro)scope_begin()
                  #(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                  push 0
                  sbm _asupb12
                  #(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB
                  #(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                  push 0
                  sbm _aequb12
                  #(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB
                  push    _subvvXNameB4_3
                  push    _negNameB11_3
                  sup
                  if
                    at _asupb12
                      set 1
                    ta
                  else
                    push    _subvvXNameB4_3
                    push    _negNameB11_3
                    diff
                    if
                      at _asupb12
                        reset
                      ta
                    else
                      push    _subvvXNameB4_2
                      push    _negNameB11_2
                      sup
                      if
                        at _asupb12
                          set 1
                        ta
                      else
                        push    _subvvXNameB4_2
                        push    _negNameB11_2
                        diff
                        if
                          at _asupb12
                            reset
                          ta
                        else
                          push    _subvvXNameB4_1
                          push    _negNameB11_1
                          sup
                          if
                            at _asupb12
                              set 1
                            ta
                          else
                            push    _subvvXNameB4_1
                            push    _negNameB11_1
                            diff
                            if
                              at _asupb12
                                reset
                              ta
                            else
                              push    _subvvXNameB4_0
                              push    _negNameB11_0
                              sup
                              if
                                at _asupb12
                                  set 1
                                ta
                              else
                                push    _subvvXNameB4_0
                                push    _negNameB11_0
                                diff
                                if
                                  at _asupb12
                                    reset
                                  ta
                                else
                                  at _aequb12
                                    set 1
                                  ta
                                fi
                              fi
                            fi
                          fi
                        fi
                      fi
                    fi
                  fi
                  push _asupb12
                  if  # absA > absB : do  absA-absB with sign of A
                    # print("absA > absB\n")
                    push    _subvvXNameB4_s
                    pop     writeX_AmodB4_s    # name has same sign of nameA
                    
                    push    0
                    sbm     _addvvvXCarry12
                    push    _subvvXNameB4_0
                    push    _negNameB11_0
                    #(begin macro)subof()
                    sbm _subofb177
                    sbm _subofa177 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc177
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso177
                    while
                      push _subofb177
                      if
                        at _subofb177
                          dec
                        ta
                        at _subofa177
                          dec
                        ta
                        push _subofa177
                        inc
                        not
                        if
                          at _subofc177
                            set 1
                          ta
                        fi
                      else
                        at _loopso177
                          reset
                        ta
                      fi
                    wend
                    push _subofc177
                    if
                      at _subofb177
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry12
                    #(begin macro)subof()
                    sbm _subofb178
                    sbm _subofa178 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc178
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso178
                    while
                      push _subofb178
                      if
                        at _subofb178
                          dec
                        ta
                        at _subofa178
                          dec
                        ta
                        push _subofa178
                        inc
                        not
                        if
                          at _subofc178
                            set 1
                          ta
                        fi
                      else
                        at _loopso178
                          reset
                        ta
                      fi
                    wend
                    push _subofc178
                    if
                      at _subofb178
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB4_0
                    add
                    pop     _addvvvXCarry12
                    push    _subvvXNameB4_1
                    push    _negNameB11_1
                    #(begin macro)subof()
                    sbm _subofb179
                    sbm _subofa179 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc179
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso179
                    while
                      push _subofb179
                      if
                        at _subofb179
                          dec
                        ta
                        at _subofa179
                          dec
                        ta
                        push _subofa179
                        inc
                        not
                        if
                          at _subofc179
                            set 1
                          ta
                        fi
                      else
                        at _loopso179
                          reset
                        ta
                      fi
                    wend
                    push _subofc179
                    if
                      at _subofb179
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry12
                    #(begin macro)subof()
                    sbm _subofb180
                    sbm _subofa180 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc180
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso180
                    while
                      push _subofb180
                      if
                        at _subofb180
                          dec
                        ta
                        at _subofa180
                          dec
                        ta
                        push _subofa180
                        inc
                        not
                        if
                          at _subofc180
                            set 1
                          ta
                        fi
                      else
                        at _loopso180
                          reset
                        ta
                      fi
                    wend
                    push _subofc180
                    if
                      at _subofb180
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB4_1
                    add
                    pop     _addvvvXCarry12
                    push    _subvvXNameB4_2
                    push    _negNameB11_2
                    #(begin macro)subof()
                    sbm _subofb181
                    sbm _subofa181 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc181
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso181
                    while
                      push _subofb181
                      if
                        at _subofb181
                          dec
                        ta
                        at _subofa181
                          dec
                        ta
                        push _subofa181
                        inc
                        not
                        if
                          at _subofc181
                            set 1
                          ta
                        fi
                      else
                        at _loopso181
                          reset
                        ta
                      fi
                    wend
                    push _subofc181
                    if
                      at _subofb181
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry12
                    #(begin macro)subof()
                    sbm _subofb182
                    sbm _subofa182 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc182
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso182
                    while
                      push _subofb182
                      if
                        at _subofb182
                          dec
                        ta
                        at _subofa182
                          dec
                        ta
                        push _subofa182
                        inc
                        not
                        if
                          at _subofc182
                            set 1
                          ta
                        fi
                      else
                        at _loopso182
                          reset
                        ta
                      fi
                    wend
                    push _subofc182
                    if
                      at _subofb182
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB4_2
                    add
                    pop     _addvvvXCarry12
                    push    _subvvXNameB4_3
                    push    _negNameB11_3
                    #(begin macro)subof()
                    sbm _subofb183
                    sbm _subofa183 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc183
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso183
                    while
                      push _subofb183
                      if
                        at _subofb183
                          dec
                        ta
                        at _subofa183
                          dec
                        ta
                        push _subofa183
                        inc
                        not
                        if
                          at _subofc183
                            set 1
                          ta
                        fi
                      else
                        at _loopso183
                          reset
                        ta
                      fi
                    wend
                    push _subofc183
                    if
                      at _subofb183
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    push    _addvvvXCarry12
                    #(begin macro)subof()
                    sbm _subofb184
                    sbm _subofa184 - 1
                    #(begin macro)scope_begin()
                    #(end macro)scope_begin()
                    #(begin macro)lvar("_subofc"+_subof ,0)
                    push 0
                    sbm _subofc184
                    #(end macro)lvar("_subofc"+_subof ,0)
                    push 1
                    sbm _loopso184
                    while
                      push _subofb184
                      if
                        at _subofb184
                          dec
                        ta
                        at _subofa184
                          dec
                        ta
                        push _subofa184
                        inc
                        not
                        if
                          at _subofc184
                            set 1
                          ta
                        fi
                      else
                        at _loopso184
                          reset
                        ta
                      fi
                    wend
                    push _subofc184
                    if
                      at _subofb184
                        set 1
                      ta
                    fi
                    #(begin macro)scope_end()
                    drop
                    #(end macro)scope_end()
                    swap
                    #(end macro)subof()
                    pop     writeX_AmodB4_3
                    add
                    pop     _addvvvXCarry12
                    pop     writeX_AmodB4_c
                  else # absB >= absA :
                    push    _aequb12
                    if # absA == absB , then name =0 (opposite sign then sum is zero)
                      #print("absA == absB\n")
                      #(begin macro)setvX(X,name,0)
                      at writeX_AmodB4_0
                        #(begin macro)setX(X,immValue)
                        bf <
                        bf <
                        bf <
                        bf <
                        bf <
                        reset
                        bf  >
                        set 0
                        bf >
                        set    0
                        bf >
                        set    0
                        bf >
                        set    0
                        bf >
                        set    0
                        #(end macro)setX(X,immValue)
                      ta
                      #(end macro)setvX(X,name,0)
                    else # absA < absB : do   absB-absA with sign of B
                      #print("absA < absB\n")
                      push    _negNameB11_s
                      pop     writeX_AmodB4_s    # name has same sign of nameB
                      
                      push    0
                      sbm     _addvvvXCarry12
                      push    _negNameB11_0
                      push    _subvvXNameB4_0
                      #(begin macro)subof()
                      sbm _subofb185
                      sbm _subofa185 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc185
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso185
                      while
                        push _subofb185
                        if
                          at _subofb185
                            dec
                          ta
                          at _subofa185
                            dec
                          ta
                          push _subofa185
                          inc
                          not
                          if
                            at _subofc185
                              set 1
                            ta
                          fi
                        else
                          at _loopso185
                            reset
                          ta
                        fi
                      wend
                      push _subofc185
                      if
                        at _subofb185
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry12
                      #(begin macro)subof()
                      sbm _subofb186
                      sbm _subofa186 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc186
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso186
                      while
                        push _subofb186
                        if
                          at _subofb186
                            dec
                          ta
                          at _subofa186
                            dec
                          ta
                          push _subofa186
                          inc
                          not
                          if
                            at _subofc186
                              set 1
                            ta
                          fi
                        else
                          at _loopso186
                            reset
                          ta
                        fi
                      wend
                      push _subofc186
                      if
                        at _subofb186
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB4_0
                      add
                      pop     _addvvvXCarry12
                      push    _negNameB11_1
                      push    _subvvXNameB4_1
                      #(begin macro)subof()
                      sbm _subofb187
                      sbm _subofa187 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc187
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso187
                      while
                        push _subofb187
                        if
                          at _subofb187
                            dec
                          ta
                          at _subofa187
                            dec
                          ta
                          push _subofa187
                          inc
                          not
                          if
                            at _subofc187
                              set 1
                            ta
                          fi
                        else
                          at _loopso187
                            reset
                          ta
                        fi
                      wend
                      push _subofc187
                      if
                        at _subofb187
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry12
                      #(begin macro)subof()
                      sbm _subofb188
                      sbm _subofa188 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc188
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso188
                      while
                        push _subofb188
                        if
                          at _subofb188
                            dec
                          ta
                          at _subofa188
                            dec
                          ta
                          push _subofa188
                          inc
                          not
                          if
                            at _subofc188
                              set 1
                            ta
                          fi
                        else
                          at _loopso188
                            reset
                          ta
                        fi
                      wend
                      push _subofc188
                      if
                        at _subofb188
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB4_1
                      add
                      pop     _addvvvXCarry12
                      push    _negNameB11_2
                      push    _subvvXNameB4_2
                      #(begin macro)subof()
                      sbm _subofb189
                      sbm _subofa189 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc189
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso189
                      while
                        push _subofb189
                        if
                          at _subofb189
                            dec
                          ta
                          at _subofa189
                            dec
                          ta
                          push _subofa189
                          inc
                          not
                          if
                            at _subofc189
                              set 1
                            ta
                          fi
                        else
                          at _loopso189
                            reset
                          ta
                        fi
                      wend
                      push _subofc189
                      if
                        at _subofb189
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry12
                      #(begin macro)subof()
                      sbm _subofb190
                      sbm _subofa190 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc190
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso190
                      while
                        push _subofb190
                        if
                          at _subofb190
                            dec
                          ta
                          at _subofa190
                            dec
                          ta
                          push _subofa190
                          inc
                          not
                          if
                            at _subofc190
                              set 1
                            ta
                          fi
                        else
                          at _loopso190
                            reset
                          ta
                        fi
                      wend
                      push _subofc190
                      if
                        at _subofb190
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB4_2
                      add
                      pop     _addvvvXCarry12
                      push    _negNameB11_3
                      push    _subvvXNameB4_3
                      #(begin macro)subof()
                      sbm _subofb191
                      sbm _subofa191 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc191
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso191
                      while
                        push _subofb191
                        if
                          at _subofb191
                            dec
                          ta
                          at _subofa191
                            dec
                          ta
                          push _subofa191
                          inc
                          not
                          if
                            at _subofc191
                              set 1
                            ta
                          fi
                        else
                          at _loopso191
                            reset
                          ta
                        fi
                      wend
                      push _subofc191
                      if
                        at _subofb191
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      push    _addvvvXCarry12
                      #(begin macro)subof()
                      sbm _subofb192
                      sbm _subofa192 - 1
                      #(begin macro)scope_begin()
                      #(end macro)scope_begin()
                      #(begin macro)lvar("_subofc"+_subof ,0)
                      push 0
                      sbm _subofc192
                      #(end macro)lvar("_subofc"+_subof ,0)
                      push 1
                      sbm _loopso192
                      while
                        push _subofb192
                        if
                          at _subofb192
                            dec
                          ta
                          at _subofa192
                            dec
                          ta
                          push _subofa192
                          inc
                          not
                          if
                            at _subofc192
                              set 1
                            ta
                          fi
                        else
                          at _loopso192
                            reset
                          ta
                        fi
                      wend
                      push _subofc192
                      if
                        at _subofb192
                          set 1
                        ta
                      fi
                      #(begin macro)scope_end()
                      drop
                      #(end macro)scope_end()
                      swap
                      #(end macro)subof()
                      pop     writeX_AmodB4_3
                      add
                      pop     _addvvvXCarry12
                      pop     writeX_AmodB4_c
                    fi
                  fi
                  #(begin macro)scope_end()
                  drop
                  drop
                  #(end macro)scope_end()
                fi
                #(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)
                #(begin macro)scope_end()
                drop
                drop
                drop
                drop
                drop
                drop
                #(end macro)scope_end()
                #(end macro)subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)
                #(begin macro)scope_end()
                drop
                drop
                drop
                drop
                drop
                drop
                #(end macro)scope_end()
                #(end macro)subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)
              else
                #(begin macro)at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend
                #(begin macro)at_1("reset",a)
                #(begin macro)at_2(ope,a,"")
                at _divvvvvX_g4
                  reset 
                ta
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("reset",a)
                #(end macro)at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend
              fi
            wend
            # treat sign of nameAmodB and nameAdivB
            push    _divvvvvXsA4
            pop     writeX_AmodB4_s   # sign of nameAmodB is sign of nameA
            push    _divvvvvXsA4
            push    _divvvvvXsB4
            diff
            if
              push    1
              pop     writeX_AdivB4_s # nameAdivB is negative if sign NameA <> sign nameB
            fi
          else
            #(begin macro)setcvX(X,nameAdivB)
            #(begin macro)at_set(name+"_c",1)
            #(begin macro)at_2("set",a,b)
            at writeX_AdivB4_c
              set 1
            ta
            #(end macro)at_2("set",a,b)
            #(end macro)at_set(name+"_c",1)
            #(end macro)setcvX(X,nameAdivB)
            #(begin macro)setcvX(X,nameAmodB)
            #(begin macro)at_set(name+"_c",1)
            #(begin macro)at_2("set",a,b)
            at writeX_AmodB4_c
              set 1
            ta
            #(end macro)at_2("set",a,b)
            #(end macro)at_set(name+"_c",1)
            #(end macro)setcvX(X,nameAmodB)
          fi
          #(begin macro)scope_end()
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          drop
          #(end macro)scope_end()
          #(end macro)divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)
          push    writeX_AmodB4_0
          pop  _stringDecimal32_
          #(begin macro)pushvX(X,"writeX_AdivB" + _writeX)
          push    writeX_AdivB4_c
          push    writeX_AdivB4_s
          push    writeX_AdivB4_3
          push    writeX_AdivB4_2
          push    writeX_AdivB4_1
          push    writeX_AdivB4_0
          #(end macro)pushvX(X,"writeX_AdivB" + _writeX)
          #(begin macro)popvX(X,"writeX_A" + _writeX)
          pop     writeX_A4_0
          pop     writeX_A4_1
          pop     writeX_A4_2
          pop     writeX_A4_3
          pop     writeX_A4_s
          pop     writeX_A4_c
          #(end macro)popvX(X,"writeX_A" + _writeX)
          arotl _stringDecimal32_
        endloop
        
        push _stringDecimal32_.size
        sbm writeXcnt4
        loop
          arotr _stringDecimal32_
          #(begin macro)if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)
          push writeXcnt4
          push 1
          sup
          if
            #(end macro)if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)
            #(begin macro)if_diff("_stringDecimal" + _xbits +"_", 0)
            push _stringDecimal32_
            push 0
            diff
            if
              #(end macro)if_diff("_stringDecimal" + _xbits +"_", 0)
              push _stringDecimal32_
              #(begin macro)popouthexa()
              sbm _input10
              #(begin macro)if_sup("_input" + __idx,9)
              push _input10
              push 9
              sup
              if
                #(end macro)if_sup("_input" + __idx,9)
                #(begin macro)at_add("_input" + __idx, "'7'")
                #(begin macro)at_2("add",a,b)
                at _input10
                  add '7'
                ta
                #(end macro)at_2("add",a,b)
                #(end macro)at_add("_input" + __idx, "'7'")
              else
                #(begin macro)at_add("_input" + __idx, "'0'")
                #(begin macro)at_2("add",a,b)
                at _input10
                  add '0'
                ta
                #(end macro)at_2("add",a,b)
                #(end macro)at_add("_input" + __idx, "'0'")
              fi
              pop out
              #(end macro)popouthexa()
              #(begin macro)at_set("writeXprefixzero"+_writeX, 0)
              #(begin macro)at_2("set",a,b)
              at writeXprefixzero4
                set 0
              ta
              #(end macro)at_2("set",a,b)
              #(end macro)at_set("writeXprefixzero"+_writeX, 0)
            else
              #(begin macro)if_equal("writeXprefixzero"+_writeX, 0)
              push writeXprefixzero4
              push 0
              equal
              if
                #(end macro)if_equal("writeXprefixzero"+_writeX, 0)
                push _stringDecimal32_
                #(begin macro)popouthexa()
                sbm _input11
                #(begin macro)if_sup("_input" + __idx,9)
                push _input11
                push 9
                sup
                if
                  #(end macro)if_sup("_input" + __idx,9)
                  #(begin macro)at_add("_input" + __idx, "'7'")
                  #(begin macro)at_2("add",a,b)
                  at _input11
                    add '7'
                  ta
                  #(end macro)at_2("add",a,b)
                  #(end macro)at_add("_input" + __idx, "'7'")
                else
                  #(begin macro)at_add("_input" + __idx, "'0'")
                  #(begin macro)at_2("add",a,b)
                  at _input11
                    add '0'
                  ta
                  #(end macro)at_2("add",a,b)
                  #(end macro)at_add("_input" + __idx, "'0'")
                fi
                pop out
                #(end macro)popouthexa()
              fi
            fi
          else
            push _stringDecimal32_
            #(begin macro)popouthexa()
            sbm _input12
            #(begin macro)if_sup("_input" + __idx,9)
            push _input12
            push 9
            sup
            if
              #(end macro)if_sup("_input" + __idx,9)
              #(begin macro)at_add("_input" + __idx, "'7'")
              #(begin macro)at_2("add",a,b)
              at _input12
                add '7'
              ta
              #(end macro)at_2("add",a,b)
              #(end macro)at_add("_input" + __idx, "'7'")
            else
              #(begin macro)at_add("_input" + __idx, "'0'")
              #(begin macro)at_2("add",a,b)
              at _input12
                add '0'
              ta
              #(end macro)at_2("add",a,b)
              #(end macro)at_add("_input" + __idx, "'0'")
            fi
            pop out
            #(end macro)popouthexa()
          fi
        endloop
        #(begin macro)scope_end()
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        drop
        #(end macro)scope_end()
        #(end macro)writeX(4,name)
        #(end macro)write32 result
        #(begin macro)print("\n")
        push    0
        set     10
        out             # 
        drop
        #(end macro)print("\n")
      fi
    fi
    #(begin macro)scope_end
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    drop
    #(end macro)scope_end
    #(begin macro)incv32  fiboN
    #(begin macro)incvX(4,name)
    #(begin macro)if_equal(name +"_s",0)  # positive number
    push fiboN_s
    push 0
    equal
    if
      #(end macro)if_equal(name +"_s",0)  # positive number
      #(begin macro)at_inc(name + "_" + xx)
      #(begin macro)at_1("inc",a)
      #(begin macro)at_2(ope,a,"")
      at fiboN_0
        inc 
      ta
      #(end macro)at_2(ope,a,"")
      #(end macro)at_1("inc",a)
      #(end macro)at_inc(name + "_" + xx)
      #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
      push fiboN_0
      push 0
      equal
      if
        #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
        #(begin macro)at_inc(name + "_" + xx)
        #(begin macro)at_1("inc",a)
        #(begin macro)at_2(ope,a,"")
        at fiboN_1
          inc 
        ta
        #(end macro)at_2(ope,a,"")
        #(end macro)at_1("inc",a)
        #(end macro)at_inc(name + "_" + xx)
        #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
        push fiboN_1
        push 0
        equal
        if
          #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
          #(begin macro)at_inc(name + "_" + xx)
          #(begin macro)at_1("inc",a)
          #(begin macro)at_2(ope,a,"")
          at fiboN_2
            inc 
          ta
          #(end macro)at_2(ope,a,"")
          #(end macro)at_1("inc",a)
          #(end macro)at_inc(name + "_" + xx)
          #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
          push fiboN_2
          push 0
          equal
          if
            #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
            #(begin macro)at_inc(name + "_" + xx)
            #(begin macro)at_1("inc",a)
            #(begin macro)at_2(ope,a,"")
            at fiboN_3
              inc 
            ta
            #(end macro)at_2(ope,a,"")
            #(end macro)at_1("inc",a)
            #(end macro)at_inc(name + "_" + xx)
            #(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
            push fiboN_3
            push 0
            equal
            if
              #(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)
              #(begin macro)setcvX(X, name) ## set carry (overflow)
              #(begin macro)at_set(name+"_c",1)
              #(begin macro)at_2("set",a,b)
              at fiboN_c
                set 1
              ta
              #(end macro)at_2("set",a,b)
              #(end macro)at_set(name+"_c",1)
              #(end macro)setcvX(X, name) ## set carry (overflow)
            fi
          fi
        fi
      fi
    else    # negative number
      #(begin macro)at_dec(name + "_" + xx)
      #(begin macro)at_1("dec",a)
      #(begin macro)at_2(ope,a,"")
      at fiboN_0
        dec 
      ta
      #(end macro)at_2(ope,a,"")
      #(end macro)at_1("dec",a)
      #(end macro)at_dec(name + "_" + xx)
      #(begin macro)if_equal(name +"_" + xx,255) # reduced
      push fiboN_0
      push 255
      equal
      if
        #(end macro)if_equal(name +"_" + xx,255) # reduced
        #(begin macro)at_dec(name + "_" + xx)
        #(begin macro)at_1("dec",a)
        #(begin macro)at_2(ope,a,"")
        at fiboN_1
          dec 
        ta
        #(end macro)at_2(ope,a,"")
        #(end macro)at_1("dec",a)
        #(end macro)at_dec(name + "_" + xx)
        #(begin macro)if_equal(name +"_" + xx,255) # reduced
        push fiboN_1
        push 255
        equal
        if
          #(end macro)if_equal(name +"_" + xx,255) # reduced
          #(begin macro)at_dec(name + "_" + xx)
          #(begin macro)at_1("dec",a)
          #(begin macro)at_2(ope,a,"")
          at fiboN_2
            dec 
          ta
          #(end macro)at_2(ope,a,"")
          #(end macro)at_1("dec",a)
          #(end macro)at_dec(name + "_" + xx)
          #(begin macro)if_equal(name +"_" + xx,255) # reduced
          push fiboN_2
          push 255
          equal
          if
            #(end macro)if_equal(name +"_" + xx,255) # reduced
            #(begin macro)at_dec(name + "_" + xx)
            #(begin macro)at_1("dec",a)
            #(begin macro)at_2(ope,a,"")
            at fiboN_3
              dec 
            ta
            #(end macro)at_2(ope,a,"")
            #(end macro)at_1("dec",a)
            #(end macro)at_dec(name + "_" + xx)
            #(begin macro)if_equal(name +"_" + xx,255) # reduced
            push fiboN_3
            push 255
            equal
            if
              #(end macro)if_equal(name +"_" + xx,255) # reduced
              #(begin macro)setvX(X,name,1)
              at fiboN_0
                #(begin macro)setX(X,immValue)
                bf <
                bf <
                bf <
                bf <
                bf <
                reset
                bf  >
                set 0
                bf >
                set    0
                bf >
                set    0
                bf >
                set    0
                bf >
                set    1
                #(end macro)setX(X,immValue)
              ta
              #(end macro)setvX(X,name,1)
            fi
          fi
        fi
      fi
      #(begin macro)fixsvX(X,name)
      push    fiboN_s
      if    # if name is negative
        #(begin macro)if_equal(name +"_" + xx, 0)
        push fiboN_0
        push 0
        equal
        if
          #(end macro)if_equal(name +"_" + xx, 0)
          #(begin macro)if_equal(name +"_" + xx, 0)
          push fiboN_1
          push 0
          equal
          if
            #(end macro)if_equal(name +"_" + xx, 0)
            #(begin macro)if_equal(name +"_" + xx, 0)
            push fiboN_2
            push 0
            equal
            if
              #(end macro)if_equal(name +"_" + xx, 0)
              #(begin macro)if_equal(name +"_" + xx, 0)
              push fiboN_3
              push 0
              equal
              if
                #(end macro)if_equal(name +"_" + xx, 0)
                #(begin macro)at_reset(name + "_s")   # set sign to positive
                #(begin macro)at_1("reset",a)
                #(begin macro)at_2(ope,a,"")
                at fiboN_s
                  reset 
                ta
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("reset",a)
                #(end macro)at_reset(name + "_s")   # set sign to positive
              fi
            fi
          fi
        fi
      fi
      #(end macro)fixsvX(X,name)
    fi
    #(end macro)incvX(4,name)
    #(end macro)incv32  fiboN
  else
    #(begin macro)at_reset    looper # break main loop
    #(begin macro)at_1("reset",a)
    #(begin macro)at_2(ope,a,"")
    at looper
      reset 
    ta
    #(end macro)at_2(ope,a,"")
    #(end macro)at_1("reset",a)
    #(end macro)at_reset    looper # break main loop
  fi
wend

