# Test 1
#(begin include)../../samples/include/macro.inc
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
#(end include)../../samples/include/macro.inc

# basic operation test

#(begin macro)print("Basic operation test.\n\n")
push    0
set     66
out             # 'B'
add     31
out             # 'a'
add     18
out             # 's'
sub     10
out             # 'i'
sub     6
out             # 'c'
set     32
out             # ' '
add     79
out             # 'o'
add     1
out             # 'p'
sub     11
out             # 'e'
add     13
out             # 'r'
sub     17
out             # 'a'
add     19
out             # 't'
sub     11
out             # 'i'
add     6
out             # 'o'
sub     1
out             # 'n'
set     32
out             # ' '
add     84
out             # 't'
sub     15
out             # 'e'
add     14
out             # 's'
add     1
out             # 't'
set     46
out             # '.'
set     10
out             # 
out             # 
drop
#(end macro)print("Basic operation test.\n\n")
#(begin macro)print("ADD an immediate\n")
push    0
set     65
out             # 'A'
add     3
out             # 'D'
out             # 'D'
set     32
out             # ' '
add     65
out             # 'a'
add     13
out             # 'n'
set     32
out             # ' '
add     73
out             # 'i'
add     4
out             # 'm'
out             # 'm'
sub     8
out             # 'e'
sub     1
out             # 'd'
add     5
out             # 'i'
sub     8
out             # 'a'
add     19
out             # 't'
sub     15
out             # 'e'
set     10
out             # 
drop
#(end macro)print("ADD an immediate\n")
push    1
add     3
#(begin macro)print(" push 1; add 3 ; 04 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     17
out             # '1'
add     10
out             # ';'
sub     27
out             # ' '
add     65
out             # 'a'
add     3
out             # 'd'
out             # 'd'
set     32
out             # ' '
add     19
out             # '3'
sub     19
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     16
out             # '0'
add     4
out             # '4'
sub     20
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 1; add 3 ; 04 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("ADD two 8 bits in stack\n")
push    0
set     65
out             # 'A'
add     3
out             # 'D'
out             # 'D'
set     32
out             # ' '
add     84
out             # 't'
add     3
out             # 'w'
sub     8
out             # 'o'
set     32
out             # ' '
add     24
out             # '8'
sub     24
out             # ' '
add     66
out             # 'b'
add     7
out             # 'i'
add     11
out             # 't'
sub     1
out             # 's'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     10
out             # 
drop
#(end macro)print("ADD two 8 bits in stack\n")
push    2
push    5
add
#(begin macro)print(" push 2; push 5 ; add ;  07 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     18
out             # '2'
add     9
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     21
out             # '5'
sub     21
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     65
out             # 'a'
add     3
out             # 'd'
out             # 'd'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
add     7
out             # '7'
sub     23
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 2; push 5 ; add ;  07 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
push    253
push    5
add
#(begin macro)print(" push 253; push 5 ; add ;  02 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     18
out             # '2'
add     3
out             # '5'
sub     2
out             # '3'
add     8
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     21
out             # '5'
sub     21
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     65
out             # 'a'
add     3
out             # 'd'
out             # 'd'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
add     2
out             # '2'
sub     18
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 253; push 5 ; add ;  02 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("AND two boolean 8 bits in stack\n")
push    0
set     65
out             # 'A'
add     13
out             # 'N'
sub     10
out             # 'D'
set     32
out             # ' '
add     84
out             # 't'
add     3
out             # 'w'
sub     8
out             # 'o'
set     32
out             # ' '
add     66
out             # 'b'
add     13
out             # 'o'
out             # 'o'
sub     3
out             # 'l'
sub     7
out             # 'e'
sub     4
out             # 'a'
add     13
out             # 'n'
set     32
out             # ' '
add     24
out             # '8'
sub     24
out             # ' '
add     66
out             # 'b'
add     7
out             # 'i'
add     11
out             # 't'
sub     1
out             # 's'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     10
out             # 
drop
#(end macro)print("AND two boolean 8 bits in stack\n")
push    2
push    5
and
#(begin macro)print(" push 2; push 5 ; and ;  01 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     18
out             # '2'
add     9
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     21
out             # '5'
sub     21
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     65
out             # 'a'
add     13
out             # 'n'
sub     10
out             # 'd'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 2; push 5 ; and ;  01 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
push    1
push    1
and
#(begin macro)print(" push 1; push 1 ; and ;  01 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     17
out             # '1'
add     10
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     17
out             # '1'
sub     17
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     65
out             # 'a'
add     13
out             # 'n'
sub     10
out             # 'd'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 1; push 1 ; and ;  01 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
push    0
push    1
and
#(begin macro)print(" push 0; push 1 ; and ;  00 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     16
out             # '0'
add     11
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     17
out             # '1'
sub     17
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     65
out             # 'a'
add     13
out             # 'n'
sub     10
out             # 'd'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 0; push 1 ; and ;  00 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
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
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
push    1
push    0
and
#(begin macro)print(" push 1; push 0 ; and ;  00 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     17
out             # '1'
add     10
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     16
out             # '0'
sub     16
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     65
out             # 'a'
add     13
out             # 'n'
sub     10
out             # 'd'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 1; push 0 ; and ;  00 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input13
#(begin macro)if_sup("_input" + __idx,9)
push _input13
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input13
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input13
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input14
#(begin macro)if_sup("_input" + __idx,9)
push _input14
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input14
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input14
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("AROTL rotate array\n")
push    0
set     65
out             # 'A'
add     17
out             # 'R'
sub     3
out             # 'O'
add     5
out             # 'T'
sub     8
out             # 'L'
set     32
out             # ' '
add     82
out             # 'r'
sub     3
out             # 'o'
add     5
out             # 't'
sub     19
out             # 'a'
add     19
out             # 't'
sub     15
out             # 'e'
set     32
out             # ' '
add     65
out             # 'a'
add     17
out             # 'r'
out             # 'r'
sub     17
out             # 'a'
add     24
out             # 'y'
set     10
out             # 
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
set     32
out             # ' '
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     16
out             # '0'
add     2
out             # '2'
sub     18
out             # ' '
add     16
out             # '0'
add     3
out             # '3'
sub     19
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  01 02 03 == ")
push 3
loop
  push grot1
  #(begin macro)popout8hexa()
  push    16
  div
  #(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  sbm _input15
  #(begin macro)if_sup("_input" + __idx,9)
  push _input15
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input15
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input15
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  #(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  sbm _input16
  #(begin macro)if_sup("_input" + __idx,9)
  push _input16
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input16
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input16
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  #(end macro)popout8hexa()
  #(begin macro)print(" ")
  push    0
  set     32
  out             # ' '
  drop
  #(end macro)print(" ")
  arotl grot1
endloop
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("AROTR rotate array\n")
push    0
set     65
out             # 'A'
add     17
out             # 'R'
sub     3
out             # 'O'
add     5
out             # 'T'
sub     2
out             # 'R'
set     32
out             # ' '
add     82
out             # 'r'
sub     3
out             # 'o'
add     5
out             # 't'
sub     19
out             # 'a'
add     19
out             # 't'
sub     15
out             # 'e'
set     32
out             # ' '
add     65
out             # 'a'
add     17
out             # 'r'
out             # 'r'
sub     17
out             # 'a'
add     24
out             # 'y'
set     10
out             # 
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
set     32
out             # ' '
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     16
out             # '0'
add     2
out             # '2'
sub     18
out             # ' '
add     16
out             # '0'
add     3
out             # '3'
sub     19
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  01 02 03 == ")
push 3
loop
  push grot2
  #(begin macro)popout8hexa()
  push    16
  div
  #(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  sbm _input17
  #(begin macro)if_sup("_input" + __idx,9)
  push _input17
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input17
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input17
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  #(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  sbm _input18
  #(begin macro)if_sup("_input" + __idx,9)
  push _input18
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input18
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input18
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  #(end macro)popout8hexa()
  #(begin macro)print(" ")
  push    0
  set     32
  out             # ' '
  drop
  #(end macro)print(" ")
  arotr grot2
endloop
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("AT / TA at variable action\n")
push    0
set     65
out             # 'A'
add     19
out             # 'T'
set     32
out             # ' '
add     15
out             # '/'
sub     15
out             # ' '
add     52
out             # 'T'
sub     19
out             # 'A'
set     32
out             # ' '
add     65
out             # 'a'
add     19
out             # 't'
set     32
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     17
out             # 'r'
sub     9
out             # 'i'
sub     8
out             # 'a'
add     1
out             # 'b'
add     10
out             # 'l'
sub     7
out             # 'e'
set     32
out             # ' '
add     65
out             # 'a'
add     2
out             # 'c'
add     17
out             # 't'
sub     11
out             # 'i'
add     6
out             # 'o'
sub     1
out             # 'n'
set     10
out             # 
drop
#(end macro)print("AT / TA at variable action\n")
var gvar2
at gvar2
  set 9
ta
push gvar2
#(begin macro)print("  09 == ")
push    0
set     32
out             # ' '
out             # ' '
add     16
out             # '0'
add     9
out             # '9'
sub     25
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  09 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input19
#(begin macro)if_sup("_input" + __idx,9)
push _input19
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input19
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input19
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input20
#(begin macro)if_sup("_input" + __idx,9)
push _input20
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input20
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input20
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("BF inline BF actions\n")
push    0
set     66
out             # 'B'
add     4
out             # 'F'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
sub     2
out             # 'l'
sub     3
out             # 'i'
add     5
out             # 'n'
sub     9
out             # 'e'
set     32
out             # ' '
add     34
out             # 'B'
add     4
out             # 'F'
set     32
out             # ' '
add     65
out             # 'a'
add     2
out             # 'c'
add     17
out             # 't'
sub     11
out             # 'i'
add     6
out             # 'o'
sub     1
out             # 'n'
add     5
out             # 's'
set     10
out             # 
drop
#(end macro)print("BF inline BF actions\n")
#(begin macro)print("  09 == ")
push    0
set     32
out             # ' '
out             # ' '
add     16
out             # '0'
add     9
out             # '9'
sub     25
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  09 == ")
push    0
bf  +++++++++
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input21
#(begin macro)if_sup("_input" + __idx,9)
push _input21
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input21
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input21
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input22
#(begin macro)if_sup("_input" + __idx,9)
push _input22
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input22
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input22
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("BOOL transform stack value to 0 or 1\n")
push    0
set     66
out             # 'B'
add     13
out             # 'O'
out             # 'O'
sub     3
out             # 'L'
set     32
out             # ' '
add     84
out             # 't'
sub     2
out             # 'r'
sub     17
out             # 'a'
add     13
out             # 'n'
add     5
out             # 's'
sub     13
out             # 'f'
add     9
out             # 'o'
add     3
out             # 'r'
sub     5
out             # 'm'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
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
add     16
out             # '0'
sub     16
out             # ' '
add     79
out             # 'o'
add     3
out             # 'r'
set     32
out             # ' '
add     17
out             # '1'
set     10
out             # 
drop
#(end macro)print("BOOL transform stack value to 0 or 1\n")
#(begin macro)print("  10 : 01 == ")
push    0
set     32
out             # ' '
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  10 : 01 == ")
push 10
bool
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input23
#(begin macro)if_sup("_input" + __idx,9)
push _input23
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input23
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input23
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input24
#(begin macro)if_sup("_input" + __idx,9)
push _input24
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input24
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input24
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print("  255 : 01 == ")
push    0
set     32
out             # ' '
out             # ' '
add     18
out             # '2'
add     3
out             # '5'
out             # '5'
sub     21
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  255 : 01 == ")
push 255
bool
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input25
#(begin macro)if_sup("_input" + __idx,9)
push _input25
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input25
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input25
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input26
#(begin macro)if_sup("_input" + __idx,9)
push _input26
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input26
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input26
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print("  0 : 00 == ")
push    0
set     32
out             # ' '
out             # ' '
add     16
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  0 : 00 == ")
push 0
bool
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input27
#(begin macro)if_sup("_input" + __idx,9)
push _input27
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input27
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input27
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input28
#(begin macro)if_sup("_input" + __idx,9)
push _input28
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input28
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input28
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("DEC , decrement head of stack value\n")
push    0
set     68
out             # 'D'
add     1
out             # 'E'
sub     2
out             # 'C'
set     32
out             # ' '
add     12
out             # ','
sub     12
out             # ' '
add     68
out             # 'd'
add     1
out             # 'e'
sub     2
out             # 'c'
add     15
out             # 'r'
sub     13
out             # 'e'
add     8
out             # 'm'
sub     8
out             # 'e'
add     9
out             # 'n'
add     6
out             # 't'
set     32
out             # ' '
add     72
out             # 'h'
sub     3
out             # 'e'
sub     4
out             # 'a'
add     3
out             # 'd'
set     32
out             # ' '
add     79
out             # 'o'
sub     9
out             # 'f'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     10
out             # 
drop
#(end macro)print("DEC , decrement head of stack value\n")
#(begin macro)print(" 10 - 1 : 09 == ")
push    0
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     13
out             # '-'
sub     13
out             # ' '
add     17
out             # '1'
sub     17
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     9
out             # '9'
sub     25
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 10 - 1 : 09 == ")
push 10
dec
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input29
#(begin macro)if_sup("_input" + __idx,9)
push _input29
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input29
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input29
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input30
#(begin macro)if_sup("_input" + __idx,9)
push _input30
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input30
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input30
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("DIFF , 2 value in stack are different\n")
push    0
set     68
out             # 'D'
add     5
out             # 'I'
sub     3
out             # 'F'
out             # 'F'
set     32
out             # ' '
add     12
out             # ','
sub     12
out             # ' '
add     18
out             # '2'
sub     18
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     65
out             # 'a'
add     17
out             # 'r'
sub     13
out             # 'e'
set     32
out             # ' '
add     68
out             # 'd'
add     5
out             # 'i'
sub     3
out             # 'f'
out             # 'f'
sub     1
out             # 'e'
add     13
out             # 'r'
sub     13
out             # 'e'
add     9
out             # 'n'
add     6
out             # 't'
set     10
out             # 
drop
#(end macro)print("DIFF , 2 value in stack are different\n")
#(begin macro)print(" 10 <> 10 : 00 == ")
push    0
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     28
out             # '<'
add     2
out             # '>'
sub     30
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 10 <> 10 : 00 == ")
push 10
push 10
diff
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input31
#(begin macro)if_sup("_input" + __idx,9)
push _input31
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input31
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input31
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input32
#(begin macro)if_sup("_input" + __idx,9)
push _input32
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input32
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input32
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print(" 10 <> 8 : 01 == ")
push    0
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     28
out             # '<'
add     2
out             # '>'
sub     30
out             # ' '
add     24
out             # '8'
sub     24
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 10 <> 8 : 01 == ")
push 10
push 8
diff
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input33
#(begin macro)if_sup("_input" + __idx,9)
push _input33
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input33
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input33
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input34
#(begin macro)if_sup("_input" + __idx,9)
push _input34
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input34
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input34
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("DIV , div 2 value in stack\n")
push    0
set     68
out             # 'D'
add     5
out             # 'I'
add     13
out             # 'V'
set     32
out             # ' '
add     12
out             # ','
sub     12
out             # ' '
add     68
out             # 'd'
add     5
out             # 'i'
add     13
out             # 'v'
set     32
out             # ' '
add     18
out             # '2'
sub     18
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     10
out             # 
drop
#(end macro)print("DIV , div 2 value in stack\n")
#(begin macro)print("  5 div 2 = 2 ; 02 == ")
push    0
set     32
out             # ' '
out             # ' '
add     21
out             # '5'
sub     21
out             # ' '
add     68
out             # 'd'
add     5
out             # 'i'
add     13
out             # 'v'
set     32
out             # ' '
add     18
out             # '2'
sub     18
out             # ' '
add     29
out             # '='
sub     29
out             # ' '
add     18
out             # '2'
sub     18
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     16
out             # '0'
add     2
out             # '2'
sub     18
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  5 div 2 = 2 ; 02 == ")
push 5
push 2
div
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input35
#(begin macro)if_sup("_input" + __idx,9)
push _input35
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input35
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input35
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input36
#(begin macro)if_sup("_input" + __idx,9)
push _input36
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input36
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input36
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print("  5 mod 2 = 1 ; 01 == ")
push    0
set     32
out             # ' '
out             # ' '
add     21
out             # '5'
sub     21
out             # ' '
add     77
out             # 'm'
add     2
out             # 'o'
sub     11
out             # 'd'
set     32
out             # ' '
add     18
out             # '2'
sub     18
out             # ' '
add     29
out             # '='
sub     29
out             # ' '
add     17
out             # '1'
sub     17
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  5 mod 2 = 1 ; 01 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input37
#(begin macro)if_sup("_input" + __idx,9)
push _input37
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input37
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input37
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input38
#(begin macro)if_sup("_input" + __idx,9)
push _input38
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input38
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input38
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("DROP, drop a value in stack\n")
push    0
set     68
out             # 'D'
add     14
out             # 'R'
sub     3
out             # 'O'
add     1
out             # 'P'
sub     36
out             # ','
sub     12
out             # ' '
add     68
out             # 'd'
add     14
out             # 'r'
sub     3
out             # 'o'
add     1
out             # 'p'
set     32
out             # ' '
add     65
out             # 'a'
set     32
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     10
out             # 
drop
#(end macro)print("DROP, drop a value in stack\n")
push 8
push 5
drop
#(begin macro)print (" push 8; push 5 ; drop  ; 08 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     24
out             # '8'
add     3
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     21
out             # '5'
sub     21
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     68
out             # 'd'
add     14
out             # 'r'
sub     3
out             # 'o'
add     1
out             # 'p'
set     32
out             # ' '
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     16
out             # '0'
add     8
out             # '8'
sub     24
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print (" push 8; push 5 ; drop  ; 08 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input39
#(begin macro)if_sup("_input" + __idx,9)
push _input39
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input39
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input39
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input40
#(begin macro)if_sup("_input" + __idx,9)
push _input40
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input40
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input40
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("DUP,  duplicate head of stack value\n")
push    0
set     68
out             # 'D'
add     17
out             # 'U'
sub     5
out             # 'P'
sub     36
out             # ','
sub     12
out             # ' '
out             # ' '
add     68
out             # 'd'
add     17
out             # 'u'
sub     5
out             # 'p'
sub     4
out             # 'l'
sub     3
out             # 'i'
sub     6
out             # 'c'
sub     2
out             # 'a'
add     19
out             # 't'
sub     15
out             # 'e'
set     32
out             # ' '
add     72
out             # 'h'
sub     3
out             # 'e'
sub     4
out             # 'a'
add     3
out             # 'd'
set     32
out             # ' '
add     79
out             # 'o'
sub     9
out             # 'f'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     10
out             # 
drop
#(end macro)print("DUP,  duplicate head of stack value\n")
push 10
dup
#(begin macro)print(" push 10; dup ;  0A == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
add     11
out             # ';'
sub     27
out             # ' '
add     68
out             # 'd'
add     17
out             # 'u'
sub     5
out             # 'p'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
add     17
out             # 'A'
set     32
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 10; dup ;  0A == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input41
#(begin macro)if_sup("_input" + __idx,9)
push _input41
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input41
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input41
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input42
#(begin macro)if_sup("_input" + __idx,9)
push _input42
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input42
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input42
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print(" then... drop once ; 0A == ")
push    0
set     32
out             # ' '
add     84
out             # 't'
sub     12
out             # 'h'
sub     3
out             # 'e'
add     9
out             # 'n'
set     46
out             # '.'
out             # '.'
out             # '.'
sub     14
out             # ' '
add     68
out             # 'd'
add     14
out             # 'r'
sub     3
out             # 'o'
add     1
out             # 'p'
set     32
out             # ' '
add     79
out             # 'o'
sub     1
out             # 'n'
sub     11
out             # 'c'
add     2
out             # 'e'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     16
out             # '0'
add     17
out             # 'A'
set     32
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" then... drop once ; 0A == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input43
#(begin macro)if_sup("_input" + __idx,9)
push _input43
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input43
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input43
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input44
#(begin macro)if_sup("_input" + __idx,9)
push _input44
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input44
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input44
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("EQUAL , 2 value in stack are equal\n")
push    0
set     69
out             # 'E'
add     12
out             # 'Q'
add     4
out             # 'U'
sub     20
out             # 'A'
add     11
out             # 'L'
set     32
out             # ' '
add     12
out             # ','
sub     12
out             # ' '
add     18
out             # '2'
sub     18
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     65
out             # 'a'
add     17
out             # 'r'
sub     13
out             # 'e'
set     32
out             # ' '
add     69
out             # 'e'
add     12
out             # 'q'
add     4
out             # 'u'
sub     20
out             # 'a'
add     11
out             # 'l'
set     10
out             # 
drop
#(end macro)print("EQUAL , 2 value in stack are equal\n")
#(begin macro)print(" 10 == 10 : 01 == ")
push    0
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 10 == 10 : 01 == ")
push 10
push 10
equal
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input45
#(begin macro)if_sup("_input" + __idx,9)
push _input45
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input45
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input45
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input46
#(begin macro)if_sup("_input" + __idx,9)
push _input46
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input46
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input46
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print(" 255 == 255 : 01 == ")
push    0
set     32
out             # ' '
add     18
out             # '2'
add     3
out             # '5'
out             # '5'
sub     21
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
add     18
out             # '2'
add     3
out             # '5'
out             # '5'
sub     21
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 255 == 255 : 01 == ")
push 255
push 255
equal
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input47
#(begin macro)if_sup("_input" + __idx,9)
push _input47
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input47
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input47
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input48
#(begin macro)if_sup("_input" + __idx,9)
push _input48
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input48
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input48
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print(" 0 == 0 : 01 == ")
push    0
set     32
out             # ' '
add     16
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
add     16
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 0 == 0 : 01 == ")
push 0
push 0
equal
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input49
#(begin macro)if_sup("_input" + __idx,9)
push _input49
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input49
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input49
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input50
#(begin macro)if_sup("_input" + __idx,9)
push _input50
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input50
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input50
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print(" 10 == 8 : 00 == ")
push    0
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
add     24
out             # '8'
sub     24
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 10 == 8 : 00 == ")
push 10
push 8
equal
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input51
#(begin macro)if_sup("_input" + __idx,9)
push _input51
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input51
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input51
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input52
#(begin macro)if_sup("_input" + __idx,9)
push _input52
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input52
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input52
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("IF/FI IF/ELSE/FI ...\n")
push    0
set     73
out             # 'I'
sub     3
out             # 'F'
sub     23
out             # '/'
add     23
out             # 'F'
add     3
out             # 'I'
set     32
out             # ' '
add     41
out             # 'I'
sub     3
out             # 'F'
sub     23
out             # '/'
add     22
out             # 'E'
add     7
out             # 'L'
add     7
out             # 'S'
sub     14
out             # 'E'
sub     22
out             # '/'
add     23
out             # 'F'
add     3
out             # 'I'
set     32
out             # ' '
add     14
out             # '.'
out             # '.'
out             # '.'
set     10
out             # 
drop
#(end macro)print("IF/FI IF/ELSE/FI ...\n")
push 1
if
  push 1
  #(begin macro)print("   01 == ")
  push    0
  set     32
  out             # ' '
  out             # ' '
  out             # ' '
  add     16
  out             # '0'
  add     1
  out             # '1'
  sub     17
  out             # ' '
  add     29
  out             # '='
  out             # '='
  sub     29
  out             # ' '
  drop
  #(end macro)print("   01 == ")
  #(begin macro)popout8hexa()
  push    16
  div
  #(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  sbm _input53
  #(begin macro)if_sup("_input" + __idx,9)
  push _input53
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input53
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input53
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  #(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  sbm _input54
  #(begin macro)if_sup("_input" + __idx,9)
  push _input54
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input54
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input54
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  #(end macro)popout8hexa()
  #(begin macro)print("\n")
  push    0
  set     10
  out             # 
  drop
  #(end macro)print("\n")
fi
push 255
if
  push 255
  #(begin macro)print("   FF == ")
  push    0
  set     32
  out             # ' '
  out             # ' '
  out             # ' '
  add     38
  out             # 'F'
  out             # 'F'
  set     32
  out             # ' '
  add     29
  out             # '='
  out             # '='
  sub     29
  out             # ' '
  drop
  #(end macro)print("   FF == ")
  #(begin macro)popout8hexa()
  push    16
  div
  #(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  sbm _input55
  #(begin macro)if_sup("_input" + __idx,9)
  push _input55
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input55
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input55
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  #(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  sbm _input56
  #(begin macro)if_sup("_input" + __idx,9)
  push _input56
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input56
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input56
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  #(end macro)popout8hexa()
  #(begin macro)print("\n")
  push    0
  set     10
  out             # 
  drop
  #(end macro)print("\n")
else
  #(begin macro)print("  BUG 255 !!!\n")
  push    0
  set     32
  out             # ' '
  out             # ' '
  add     34
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     32
  out             # ' '
  add     18
  out             # '2'
  add     3
  out             # '5'
  out             # '5'
  sub     21
  out             # ' '
  add     1
  out             # '!'
  out             # '!'
  out             # '!'
  set     10
  out             # 
  drop
  #(end macro)print("  BUG 255 !!!\n")
fi
push 0
if
  #(begin macro)print("  BUG 0 !!!\n")
  push    0
  set     32
  out             # ' '
  out             # ' '
  add     34
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     32
  out             # ' '
  add     16
  out             # '0'
  sub     16
  out             # ' '
  add     1
  out             # '!'
  out             # '!'
  out             # '!'
  set     10
  out             # 
  drop
  #(end macro)print("  BUG 0 !!!\n")
else
  push 0
  #(begin macro)print("   00 == ")
  push    0
  set     32
  out             # ' '
  out             # ' '
  out             # ' '
  add     16
  out             # '0'
  out             # '0'
  sub     16
  out             # ' '
  add     29
  out             # '='
  out             # '='
  sub     29
  out             # ' '
  drop
  #(end macro)print("   00 == ")
  #(begin macro)popout8hexa()
  push    16
  div
  #(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  sbm _input57
  #(begin macro)if_sup("_input" + __idx,9)
  push _input57
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input57
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input57
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  #(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  sbm _input58
  #(begin macro)if_sup("_input" + __idx,9)
  push _input58
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input58
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input58
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  #(end macro)popout8hexa()
  #(begin macro)print("\n")
  push    0
  set     10
  out             # 
  drop
  #(end macro)print("\n")
fi

#(begin macro)print("INC , decrement head of stack value\n")
push    0
set     73
out             # 'I'
add     5
out             # 'N'
sub     11
out             # 'C'
set     32
out             # ' '
add     12
out             # ','
sub     12
out             # ' '
add     68
out             # 'd'
add     1
out             # 'e'
sub     2
out             # 'c'
add     15
out             # 'r'
sub     13
out             # 'e'
add     8
out             # 'm'
sub     8
out             # 'e'
add     9
out             # 'n'
add     6
out             # 't'
set     32
out             # ' '
add     72
out             # 'h'
sub     3
out             # 'e'
sub     4
out             # 'a'
add     3
out             # 'd'
set     32
out             # ' '
add     79
out             # 'o'
sub     9
out             # 'f'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     10
out             # 
drop
#(end macro)print("INC , decrement head of stack value\n")
#(begin macro)print(" 10 + 1 : 0B == ")
push    0
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     11
out             # '+'
sub     11
out             # ' '
add     17
out             # '1'
sub     17
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     18
out             # 'B'
set     32
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 10 + 1 : 0B == ")
push 10
inc
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input59
#(begin macro)if_sup("_input" + __idx,9)
push _input59
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input59
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input59
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input60
#(begin macro)if_sup("_input" + __idx,9)
push _input60
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input60
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input60
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("INF , value in stack -1 less than stack\n")
push    0
set     73
out             # 'I'
add     5
out             # 'N'
sub     8
out             # 'F'
set     32
out             # ' '
add     12
out             # ','
sub     12
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     13
out             # '-'
add     4
out             # '1'
sub     17
out             # ' '
add     76
out             # 'l'
sub     7
out             # 'e'
add     14
out             # 's'
out             # 's'
set     32
out             # ' '
add     84
out             # 't'
sub     12
out             # 'h'
sub     7
out             # 'a'
add     13
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     10
out             # 
drop
#(end macro)print("INF , value in stack -1 less than stack\n")
#(begin macro)print(" 10 < 10 : 00 == ")
push    0
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     28
out             # '<'
sub     28
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 10 < 10 : 00 == ")
push 10
push 10
inf
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input61
#(begin macro)if_sup("_input" + __idx,9)
push _input61
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input61
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input61
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input62
#(begin macro)if_sup("_input" + __idx,9)
push _input62
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input62
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input62
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print(" 8 < 10 : 01 == ")
push    0
set     32
out             # ' '
add     24
out             # '8'
sub     24
out             # ' '
add     28
out             # '<'
sub     28
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 8 < 10 : 01 == ")
push 8
push 10
inf
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input63
#(begin macro)if_sup("_input" + __idx,9)
push _input63
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input63
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input63
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input64
#(begin macro)if_sup("_input" + __idx,9)
push _input64
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input64
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input64
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print(" 0 < 255 : 01 == ")
push    0
set     32
out             # ' '
add     16
out             # '0'
sub     16
out             # ' '
add     28
out             # '<'
sub     28
out             # ' '
add     18
out             # '2'
add     3
out             # '5'
out             # '5'
sub     21
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 0 < 255 : 01 == ")
push 0
push 255
inf
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input65
#(begin macro)if_sup("_input" + __idx,9)
push _input65
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input65
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input65
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input66
#(begin macro)if_sup("_input" + __idx,9)
push _input66
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input66
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input66
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("LOOP/ENDLOOP  repeated loop\n")
push    0
set     76
out             # 'L'
add     3
out             # 'O'
out             # 'O'
add     1
out             # 'P'
sub     33
out             # '/'
add     22
out             # 'E'
add     9
out             # 'N'
sub     10
out             # 'D'
add     8
out             # 'L'
add     3
out             # 'O'
out             # 'O'
add     1
out             # 'P'
set     32
out             # ' '
out             # ' '
add     82
out             # 'r'
sub     13
out             # 'e'
add     11
out             # 'p'
sub     11
out             # 'e'
sub     4
out             # 'a'
add     19
out             # 't'
sub     15
out             # 'e'
sub     1
out             # 'd'
set     32
out             # ' '
add     76
out             # 'l'
add     3
out             # 'o'
out             # 'o'
add     1
out             # 'p'
set     10
out             # 
drop
#(end macro)print("LOOP/ENDLOOP  repeated loop\n")
#(begin macro)print("  03 02 01 == ")
push    0
set     32
out             # ' '
out             # ' '
add     16
out             # '0'
add     3
out             # '3'
sub     19
out             # ' '
add     16
out             # '0'
add     2
out             # '2'
sub     18
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  03 02 01 == ")
push 3
sbm loop
loop
  push loop
  #(begin macro)popout8hexa()
  push    16
  div
  #(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  sbm _input67
  #(begin macro)if_sup("_input" + __idx,9)
  push _input67
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input67
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input67
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
  #(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  sbm _input68
  #(begin macro)if_sup("_input" + __idx,9)
  push _input68
  push 9
  sup
  if
    #(end macro)if_sup("_input" + __idx,9)
    #(begin macro)at_add("_input" + __idx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input68
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'7'")
  else
    #(begin macro)at_add("_input" + __idx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input68
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + __idx, "'0'")
  fi
  pop out
  #(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
  #(end macro)popout8hexa()
  #(begin macro)print(" ")
  push    0
  set     32
  out             # ' '
  drop
  #(end macro)print(" ")
endloop
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("MUL multiplication of 2 value in stack\n")
push    0
set     77
out             # 'M'
add     8
out             # 'U'
sub     9
out             # 'L'
set     32
out             # ' '
add     77
out             # 'm'
add     8
out             # 'u'
sub     9
out             # 'l'
add     8
out             # 't'
sub     11
out             # 'i'
add     7
out             # 'p'
sub     4
out             # 'l'
sub     3
out             # 'i'
sub     6
out             # 'c'
sub     2
out             # 'a'
add     19
out             # 't'
sub     11
out             # 'i'
add     6
out             # 'o'
sub     1
out             # 'n'
set     32
out             # ' '
add     79
out             # 'o'
sub     9
out             # 'f'
set     32
out             # ' '
add     18
out             # '2'
sub     18
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     10
out             # 
drop
#(end macro)print("MUL multiplication of 2 value in stack\n")
#(begin macro)print("  push 5 ; push 2 ; mul ;  0A == ")
push    0
set     32
out             # ' '
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     21
out             # '5'
sub     21
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     18
out             # '2'
sub     18
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     77
out             # 'm'
add     8
out             # 'u'
sub     9
out             # 'l'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
add     17
out             # 'A'
set     32
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  push 5 ; push 2 ; mul ;  0A == ")
push    5
push    2
mul
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input69
#(begin macro)if_sup("_input" + __idx,9)
push _input69
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input69
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input69
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input70
#(begin macro)if_sup("_input" + __idx,9)
push _input70
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input70
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input70
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("NOT boolean not of the stack value\n")
push    0
set     78
out             # 'N'
add     1
out             # 'O'
add     5
out             # 'T'
set     32
out             # ' '
add     66
out             # 'b'
add     13
out             # 'o'
out             # 'o'
sub     3
out             # 'l'
sub     7
out             # 'e'
sub     4
out             # 'a'
add     13
out             # 'n'
set     32
out             # ' '
add     78
out             # 'n'
add     1
out             # 'o'
add     5
out             # 't'
set     32
out             # ' '
add     79
out             # 'o'
sub     9
out             # 'f'
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
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     10
out             # 
drop
#(end macro)print("NOT boolean not of the stack value\n")
#(begin macro)print("  push 5 ; not ; 00 == ")
push    0
set     32
out             # ' '
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     21
out             # '5'
sub     21
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     78
out             # 'n'
add     1
out             # 'o'
add     5
out             # 't'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     16
out             # '0'
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  push 5 ; not ; 00 == ")
push    5
not
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input71
#(begin macro)if_sup("_input" + __idx,9)
push _input71
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input71
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input71
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input72
#(begin macro)if_sup("_input" + __idx,9)
push _input72
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input72
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input72
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print("  push 0 ; not ; 01 == ")
push    0
set     32
out             # ' '
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     16
out             # '0'
sub     16
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     78
out             # 'n'
add     1
out             # 'o'
add     5
out             # 't'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  push 0 ; not ; 01 == ")
push    0
not
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input73
#(begin macro)if_sup("_input" + __idx,9)
push _input73
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input73
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input73
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input74
#(begin macro)if_sup("_input" + __idx,9)
push _input74
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input74
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input74
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("OR two boolean 8 bits in stack\n")
push    0
set     79
out             # 'O'
add     3
out             # 'R'
set     32
out             # ' '
add     84
out             # 't'
add     3
out             # 'w'
sub     8
out             # 'o'
set     32
out             # ' '
add     66
out             # 'b'
add     13
out             # 'o'
out             # 'o'
sub     3
out             # 'l'
sub     7
out             # 'e'
sub     4
out             # 'a'
add     13
out             # 'n'
set     32
out             # ' '
add     24
out             # '8'
sub     24
out             # ' '
add     66
out             # 'b'
add     7
out             # 'i'
add     11
out             # 't'
sub     1
out             # 's'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     10
out             # 
drop
#(end macro)print("OR two boolean 8 bits in stack\n")
push    2
push    5
or
#(begin macro)print(" push 2; push 5 ; or ;  01 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     18
out             # '2'
add     9
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     21
out             # '5'
sub     21
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     79
out             # 'o'
add     3
out             # 'r'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 2; push 5 ; or ;  01 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input75
#(begin macro)if_sup("_input" + __idx,9)
push _input75
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input75
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input75
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input76
#(begin macro)if_sup("_input" + __idx,9)
push _input76
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input76
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input76
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
push    1
push    1
or
#(begin macro)print(" push 1; push 1 ; or ;  01 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     17
out             # '1'
add     10
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     17
out             # '1'
sub     17
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     79
out             # 'o'
add     3
out             # 'r'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 1; push 1 ; or ;  01 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input77
#(begin macro)if_sup("_input" + __idx,9)
push _input77
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input77
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input77
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input78
#(begin macro)if_sup("_input" + __idx,9)
push _input78
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input78
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input78
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
push    0
push    1
or
#(begin macro)print(" push 0; push 1 ; or ;  01 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     16
out             # '0'
add     11
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     17
out             # '1'
sub     17
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     79
out             # 'o'
add     3
out             # 'r'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 0; push 1 ; or ;  01 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input79
#(begin macro)if_sup("_input" + __idx,9)
push _input79
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input79
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input79
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input80
#(begin macro)if_sup("_input" + __idx,9)
push _input80
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input80
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input80
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
push    0
push    0
or
#(begin macro)print(" push 0; push 0 ; or ;  00 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     16
out             # '0'
add     11
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     16
out             # '0'
sub     16
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     79
out             # 'o'
add     3
out             # 'r'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 0; push 0 ; or ;  00 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input81
#(begin macro)if_sup("_input" + __idx,9)
push _input81
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input81
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input81
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input82
#(begin macro)if_sup("_input" + __idx,9)
push _input82
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input82
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input82
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("SUB an immediate\n")
push    0
set     83
out             # 'S'
add     2
out             # 'U'
sub     19
out             # 'B'
set     32
out             # ' '
add     65
out             # 'a'
add     13
out             # 'n'
set     32
out             # ' '
add     73
out             # 'i'
add     4
out             # 'm'
out             # 'm'
sub     8
out             # 'e'
sub     1
out             # 'd'
add     5
out             # 'i'
sub     8
out             # 'a'
add     19
out             # 't'
sub     15
out             # 'e'
set     10
out             # 
drop
#(end macro)print("SUB an immediate\n")
push    3
sub     1
#(begin macro)print(" push 3; sub 1 ; 02 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     19
out             # '3'
add     8
out             # ';'
sub     27
out             # ' '
add     83
out             # 's'
add     2
out             # 'u'
sub     19
out             # 'b'
set     32
out             # ' '
add     17
out             # '1'
sub     17
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     16
out             # '0'
add     2
out             # '2'
sub     18
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 3; sub 1 ; 02 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input83
#(begin macro)if_sup("_input" + __idx,9)
push _input83
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input83
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input83
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input84
#(begin macro)if_sup("_input" + __idx,9)
push _input84
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input84
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input84
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("SUB two 8 bits in stack\n")
push    0
set     83
out             # 'S'
add     2
out             # 'U'
sub     19
out             # 'B'
set     32
out             # ' '
add     84
out             # 't'
add     3
out             # 'w'
sub     8
out             # 'o'
set     32
out             # ' '
add     24
out             # '8'
sub     24
out             # ' '
add     66
out             # 'b'
add     7
out             # 'i'
add     11
out             # 't'
sub     1
out             # 's'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     10
out             # 
drop
#(end macro)print("SUB two 8 bits in stack\n")
push    5
push    3
sub
#(begin macro)print(" push 5; push 3 ; sub ;  02 == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     21
out             # '5'
add     6
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     19
out             # '3'
sub     19
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     83
out             # 's'
add     2
out             # 'u'
sub     19
out             # 'b'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     16
out             # '0'
add     2
out             # '2'
sub     18
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 5; push 3 ; sub ;  02 == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input85
#(begin macro)if_sup("_input" + __idx,9)
push _input85
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input85
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input85
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input86
#(begin macro)if_sup("_input" + __idx,9)
push _input86
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input86
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input86
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
push    2
push    5
sub
#(begin macro)print(" push 2; push 5 ; add ;  FD == ")
push    0
set     32
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     18
out             # '2'
add     9
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     21
out             # '5'
sub     21
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     65
out             # 'a'
add     3
out             # 'd'
out             # 'd'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
out             # ' '
add     38
out             # 'F'
sub     2
out             # 'D'
set     32
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" push 2; push 5 ; add ;  FD == ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input87
#(begin macro)if_sup("_input" + __idx,9)
push _input87
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input87
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input87
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input88
#(begin macro)if_sup("_input" + __idx,9)
push _input88
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input88
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input88
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("SUP , value in stack -1 greater than stack\n")
push    0
set     83
out             # 'S'
add     2
out             # 'U'
sub     5
out             # 'P'
set     32
out             # ' '
add     12
out             # ','
sub     12
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     13
out             # '-'
add     4
out             # '1'
sub     17
out             # ' '
add     71
out             # 'g'
add     11
out             # 'r'
sub     13
out             # 'e'
sub     4
out             # 'a'
add     19
out             # 't'
sub     15
out             # 'e'
add     13
out             # 'r'
set     32
out             # ' '
add     84
out             # 't'
sub     12
out             # 'h'
sub     7
out             # 'a'
add     13
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     10
out             # 
drop
#(end macro)print("SUP , value in stack -1 greater than stack\n")
#(begin macro)print(" 10 > 10 : 00 == ")
push    0
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     30
out             # '>'
sub     30
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
out             # '0'
sub     16
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 10 > 10 : 00 == ")
push 10
push 10
sup
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input89
#(begin macro)if_sup("_input" + __idx,9)
push _input89
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input89
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input89
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input90
#(begin macro)if_sup("_input" + __idx,9)
push _input90
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input90
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input90
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print(" 10 > 8 : 01 == ")
push    0
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
sub     16
out             # ' '
add     30
out             # '>'
sub     30
out             # ' '
add     24
out             # '8'
sub     24
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 10 > 8 : 01 == ")
push 10
push 8
sup
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input91
#(begin macro)if_sup("_input" + __idx,9)
push _input91
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input91
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input91
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input92
#(begin macro)if_sup("_input" + __idx,9)
push _input92
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input92
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input92
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print(" 255 > 0 : 01 == ")
push    0
set     32
out             # ' '
add     18
out             # '2'
add     3
out             # '5'
out             # '5'
sub     21
out             # ' '
add     30
out             # '>'
sub     30
out             # ' '
add     16
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 255 > 0 : 01 == ")
push 255
push 0
sup
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input93
#(begin macro)if_sup("_input" + __idx,9)
push _input93
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input93
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input93
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input94
#(begin macro)if_sup("_input" + __idx,9)
push _input94
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input94
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input94
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("SWAP, exchange two values in stack\n")
push    0
set     83
out             # 'S'
add     4
out             # 'W'
sub     22
out             # 'A'
add     15
out             # 'P'
sub     36
out             # ','
sub     12
out             # ' '
add     69
out             # 'e'
add     19
out             # 'x'
sub     21
out             # 'c'
add     5
out             # 'h'
sub     7
out             # 'a'
add     13
out             # 'n'
sub     7
out             # 'g'
sub     2
out             # 'e'
set     32
out             # ' '
add     84
out             # 't'
add     3
out             # 'w'
sub     8
out             # 'o'
set     32
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
add     14
out             # 's'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     10
out             # 
drop
#(end macro)print("SWAP, exchange two values in stack\n")
#(begin macro)print("  push 10; push 9 ; swap ; 0A 09 == ")
push    0
set     32
out             # ' '
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     17
out             # '1'
sub     1
out             # '0'
add     11
out             # ';'
sub     27
out             # ' '
add     80
out             # 'p'
add     5
out             # 'u'
sub     2
out             # 's'
sub     11
out             # 'h'
set     32
out             # ' '
add     25
out             # '9'
sub     25
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     83
out             # 's'
add     4
out             # 'w'
sub     22
out             # 'a'
add     15
out             # 'p'
set     32
out             # ' '
add     27
out             # ';'
sub     27
out             # ' '
add     16
out             # '0'
add     17
out             # 'A'
set     32
out             # ' '
add     16
out             # '0'
add     9
out             # '9'
sub     25
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  push 10; push 9 ; swap ; 0A 09 == ")
push 10
push 9
swap
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input95
#(begin macro)if_sup("_input" + __idx,9)
push _input95
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input95
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input95
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input96
#(begin macro)if_sup("_input" + __idx,9)
push _input96
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input96
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input96
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print(" ")
push    0
set     32
out             # ' '
drop
#(end macro)print(" ")
#(begin macro)popout8hexa()
push    16
div
#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
sbm _input97
#(begin macro)if_sup("_input" + __idx,9)
push _input97
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input97
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input97
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
sbm _input98
#(begin macro)if_sup("_input" + __idx,9)
push _input98
push 9
sup
if
  #(end macro)if_sup("_input" + __idx,9)
  #(begin macro)at_add("_input" + __idx, "'7'")
  #(begin macro)at_2("add",a,b)
  at _input98
    add '7'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'7'")
else
  #(begin macro)at_add("_input" + __idx, "'0'")
  #(begin macro)at_2("add",a,b)
  at _input98
    add '0'
  ta
  #(end macro)at_2("add",a,b)
  #(end macro)at_add("_input" + __idx, "'0'")
fi
pop out
#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
#(end macro)popout8hexa()
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

#(begin macro)print("WHILE/WEND , while stack value is >0 , do ..\n")
push    0
set     87
out             # 'W'
sub     15
out             # 'H'
add     1
out             # 'I'
add     3
out             # 'L'
sub     7
out             # 'E'
sub     22
out             # '/'
add     40
out             # 'W'
sub     18
out             # 'E'
add     9
out             # 'N'
sub     10
out             # 'D'
set     32
out             # ' '
add     12
out             # ','
sub     12
out             # ' '
add     87
out             # 'w'
sub     15
out             # 'h'
add     1
out             # 'i'
add     3
out             # 'l'
sub     7
out             # 'e'
set     32
out             # ' '
add     83
out             # 's'
add     1
out             # 't'
sub     19
out             # 'a'
add     2
out             # 'c'
add     8
out             # 'k'
set     32
out             # ' '
add     86
out             # 'v'
sub     21
out             # 'a'
add     11
out             # 'l'
add     9
out             # 'u'
sub     16
out             # 'e'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     30
out             # '>'
sub     14
out             # '0'
sub     16
out             # ' '
add     12
out             # ','
sub     12
out             # ' '
add     68
out             # 'd'
add     11
out             # 'o'
set     32
out             # ' '
add     14
out             # '.'
out             # '.'
set     10
out             # 
drop
#(end macro)print("WHILE/WEND , while stack value is >0 , do ..\n")
#(begin macro)print(" 01 02 03 == ")
push    0
set     32
out             # ' '
add     16
out             # '0'
add     1
out             # '1'
sub     17
out             # ' '
add     16
out             # '0'
add     2
out             # '2'
sub     18
out             # ' '
add     16
out             # '0'
add     3
out             # '3'
sub     19
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print(" 01 02 03 == ")
push 1
sbm whilewend
while
  push 4
  push whilewend
  equal
  if
    at whilewend
      reset
    ta
  else
    push whilewend
    #(begin macro)popout8hexa()
    push    16
    div
    #(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop
    sbm _input99
    #(begin macro)if_sup("_input" + __idx,9)
    push _input99
    push 9
    sup
    if
      #(end macro)if_sup("_input" + __idx,9)
      #(begin macro)at_add("_input" + __idx, "'7'")
      #(begin macro)at_2("add",a,b)
      at _input99
        add '7'
      ta
      #(end macro)at_2("add",a,b)
      #(end macro)at_add("_input" + __idx, "'7'")
    else
      #(begin macro)at_add("_input" + __idx, "'0'")
      #(begin macro)at_2("add",a,b)
      at _input99
        add '0'
      ta
      #(end macro)at_2("add",a,b)
      #(end macro)at_add("_input" + __idx, "'0'")
    fi
    pop out
    #(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop
    #(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop
    sbm _input100
    #(begin macro)if_sup("_input" + __idx,9)
    push _input100
    push 9
    sup
    if
      #(end macro)if_sup("_input" + __idx,9)
      #(begin macro)at_add("_input" + __idx, "'7'")
      #(begin macro)at_2("add",a,b)
      at _input100
        add '7'
      ta
      #(end macro)at_2("add",a,b)
      #(end macro)at_add("_input" + __idx, "'7'")
    else
      #(begin macro)at_add("_input" + __idx, "'0'")
      #(begin macro)at_2("add",a,b)
      at _input100
        add '0'
      ta
      #(end macro)at_2("add",a,b)
      #(end macro)at_add("_input" + __idx, "'0'")
    fi
    pop out
    #(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop
    #(end macro)popout8hexa()
    #(begin macro)print(" ")
    push    0
    set     32
    out             # ' '
    drop
    #(end macro)print(" ")
    at whilewend
      inc
    ta
  fi
wend
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")


#(begin macro)print("\nEnd of test\n")
push    0
set     10
out             # 
add     59
out             # 'E'
add     41
out             # 'n'
sub     10
out             # 'd'
set     32
out             # ' '
add     79
out             # 'o'
sub     9
out             # 'f'
set     32
out             # ' '
add     84
out             # 't'
sub     15
out             # 'e'
add     14
out             # 's'
add     1
out             # 't'
set     10
out             # 
drop
#(end macro)print("\nEnd of test\n")








