# Test 2
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

# basic macros test
#(begin macro)print ("Basic macro test.\n\n")
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
add     77
out             # 'm'
sub     12
out             # 'a'
add     2
out             # 'c'
add     15
out             # 'r'
sub     3
out             # 'o'
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
#(end macro)print ("Basic macro test.\n\n")
#(begin macro)scope_begin
#(end macro)scope_begin
#(begin macro)lvar a,10
push 10
sbm a
#(end macro)lvar a,10
#(begin macro)lvar b,20
push 20
sbm b
#(end macro)lvar b,20
#(begin macro)lvar c,30
push 30
sbm c
#(end macro)lvar c,30
#(begin macro)lvar d,40
push 40
sbm d
#(end macro)lvar d,40
#(begin macro)lvar f,20
push 20
sbm f
#(end macro)lvar f,20

#(begin macro)print("  a = 10 : 0A == ")
push    0
set     32
out             # ' '
out             # ' '
add     65
out             # 'a'
set     32
out             # ' '
add     29
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
#(end macro)print("  a = 10 : 0A == ")
push    a
#(begin macro)popout8hexa
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
#(end macro)popout8hexa
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print("  b = 20 : 14 == ")
push    0
set     32
out             # ' '
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     29
out             # '='
sub     29
out             # ' '
add     18
out             # '2'
sub     2
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     17
out             # '1'
add     3
out             # '4'
sub     20
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  b = 20 : 14 == ")
push    b
#(begin macro)popout8hexa
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
#(end macro)popout8hexa
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print("  c = 30 : 1E == ")
push    0
set     32
out             # ' '
out             # ' '
add     67
out             # 'c'
set     32
out             # ' '
add     29
out             # '='
sub     29
out             # ' '
add     19
out             # '3'
sub     3
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     17
out             # '1'
add     20
out             # 'E'
set     32
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  c = 30 : 1E == ")
push    c
#(begin macro)popout8hexa
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
#(end macro)popout8hexa
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print("  d = 40 : 28 == ")
push    0
set     32
out             # ' '
out             # ' '
add     68
out             # 'd'
set     32
out             # ' '
add     29
out             # '='
sub     29
out             # ' '
add     20
out             # '4'
sub     4
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     18
out             # '2'
add     6
out             # '8'
sub     24
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  d = 40 : 28 == ")
push    d
#(begin macro)popout8hexa
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
#(end macro)popout8hexa
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")
#(begin macro)print("  f = 20 : 14 == ")
push    0
set     32
out             # ' '
out             # ' '
add     70
out             # 'f'
set     32
out             # ' '
add     29
out             # '='
sub     29
out             # ' '
add     18
out             # '2'
sub     2
out             # '0'
sub     16
out             # ' '
add     26
out             # ':'
sub     26
out             # ' '
add     17
out             # '1'
add     3
out             # '4'
sub     20
out             # ' '
add     29
out             # '='
out             # '='
sub     29
out             # ' '
drop
#(end macro)print("  f = 20 : 14 == ")
push    f
#(begin macro)popout8hexa
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
#(end macro)popout8hexa
#(begin macro)print("\n")
push    0
set     10
out             # 
drop
#(end macro)print("\n")

# macro if_diff(a,b) : if (a != b) {
#(begin macro)print("if_diff\n")
push    0
set     105
out             # 'i'
sub     3
out             # 'f'
sub     7
out             # '_'
add     5
out             # 'd'
add     5
out             # 'i'
sub     3
out             # 'f'
out             # 'f'
set     10
out             # 
drop
#(end macro)print("if_diff\n")
#(begin macro)print("   a diff b is true; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     65
out             # 'a'
set     32
out             # ' '
add     68
out             # 'd'
add     5
out             # 'i'
sub     3
out             # 'f'
out             # 'f'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     84
out             # 't'
sub     2
out             # 'r'
add     3
out             # 'u'
sub     16
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   a diff b is true; ")
#(begin macro)if_diff a,b
push a
push b
diff
if
  #(end macro)if_diff a,b
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
else
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
fi
#(begin macro)print("   b diff f is false; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     68
out             # 'd'
add     5
out             # 'i'
sub     3
out             # 'f'
out             # 'f'
set     32
out             # ' '
add     70
out             # 'f'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     70
out             # 'f'
sub     5
out             # 'a'
add     11
out             # 'l'
add     7
out             # 's'
sub     14
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   b diff f is false; ")
#(begin macro)if_diff b,f
push b
push f
diff
if
  #(end macro)if_diff b,f
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
else
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
fi

# macro if_equal(a,b) : if (a == b) {
#(begin macro)print("if_equal\n")
push    0
set     105
out             # 'i'
sub     3
out             # 'f'
sub     7
out             # '_'
add     6
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
#(end macro)print("if_equal\n")
#(begin macro)print("   a equal b is false; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     65
out             # 'a'
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
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     70
out             # 'f'
sub     5
out             # 'a'
add     11
out             # 'l'
add     7
out             # 's'
sub     14
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   a equal b is false; ")
#(begin macro)if_equal a,b
push a
push b
equal
if
  #(end macro)if_equal a,b
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
else
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
fi
#(begin macro)print("   b equal f is true; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     66
out             # 'b'
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
set     32
out             # ' '
add     70
out             # 'f'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     84
out             # 't'
sub     2
out             # 'r'
add     3
out             # 'u'
sub     16
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   b equal f is true; ")
#(begin macro)if_equal b,f
push b
push f
equal
if
  #(end macro)if_equal b,f
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
else
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
fi

# macro if_sup(a,b) : if (a > b) {
#(begin macro)print("if_sup\n")
push    0
set     105
out             # 'i'
sub     3
out             # 'f'
sub     7
out             # '_'
add     20
out             # 's'
add     2
out             # 'u'
sub     5
out             # 'p'
set     10
out             # 
drop
#(end macro)print("if_sup\n")
#(begin macro)print("   a sup b is false; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     65
out             # 'a'
set     32
out             # ' '
add     83
out             # 's'
add     2
out             # 'u'
sub     5
out             # 'p'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     70
out             # 'f'
sub     5
out             # 'a'
add     11
out             # 'l'
add     7
out             # 's'
sub     14
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   a sup b is false; ")
#(begin macro)if_sup a,b
push a
push b
sup
if
  #(end macro)if_sup a,b
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
else
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
fi
#(begin macro)print("   c sup b is true; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     67
out             # 'c'
set     32
out             # ' '
add     83
out             # 's'
add     2
out             # 'u'
sub     5
out             # 'p'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     84
out             # 't'
sub     2
out             # 'r'
add     3
out             # 'u'
sub     16
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   c sup b is true; ")
#(begin macro)if_sup c,b
push c
push b
sup
if
  #(end macro)if_sup c,b
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
else
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
fi
#(begin macro)print("   f sup b is false; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     70
out             # 'f'
set     32
out             # ' '
add     83
out             # 's'
add     2
out             # 'u'
sub     5
out             # 'p'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     70
out             # 'f'
sub     5
out             # 'a'
add     11
out             # 'l'
add     7
out             # 's'
sub     14
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   f sup b is false; ")
#(begin macro)if_sup f,b
push f
push b
sup
if
  #(end macro)if_sup f,b
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
else
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
fi

# macro if_inf(a,b) : if (a < b) {
#(begin macro)print("if_inf\n")
push    0
set     105
out             # 'i'
sub     3
out             # 'f'
sub     7
out             # '_'
add     10
out             # 'i'
add     5
out             # 'n'
sub     8
out             # 'f'
set     10
out             # 
drop
#(end macro)print("if_inf\n")
#(begin macro)print("   a inf b is true; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     65
out             # 'a'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
sub     8
out             # 'f'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     84
out             # 't'
sub     2
out             # 'r'
add     3
out             # 'u'
sub     16
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   a inf b is true; ")
#(begin macro)if_inf a,b
push a
push b
inf
if
  #(end macro)if_inf a,b
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
else
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
fi
#(begin macro)print("   c inf b is false; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     67
out             # 'c'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
sub     8
out             # 'f'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     70
out             # 'f'
sub     5
out             # 'a'
add     11
out             # 'l'
add     7
out             # 's'
sub     14
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   c inf b is false; ")
#(begin macro)if_inf c,b
push c
push b
inf
if
  #(end macro)if_inf c,b
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
else
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
fi
#(begin macro)print("   f inf b is false; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     70
out             # 'f'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
sub     8
out             # 'f'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     70
out             # 'f'
sub     5
out             # 'a'
add     11
out             # 'l'
add     7
out             # 's'
sub     14
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   f inf b is false; ")
#(begin macro)if_inf f,b
push f
push b
inf
if
  #(end macro)if_inf f,b
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
else
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
fi

# macro if_supequal(a,b) : if (a >= b) {
#(begin macro)print("if_supequal\n")
push    0
set     105
out             # 'i'
sub     3
out             # 'f'
sub     7
out             # '_'
add     20
out             # 's'
add     2
out             # 'u'
sub     5
out             # 'p'
sub     11
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
#(end macro)print("if_supequal\n")
#(begin macro)print("   a supequal b is false; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     65
out             # 'a'
set     32
out             # ' '
add     83
out             # 's'
add     2
out             # 'u'
sub     5
out             # 'p'
sub     11
out             # 'e'
add     12
out             # 'q'
add     4
out             # 'u'
sub     20
out             # 'a'
add     11
out             # 'l'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     70
out             # 'f'
sub     5
out             # 'a'
add     11
out             # 'l'
add     7
out             # 's'
sub     14
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   a supequal b is false; ")
#(begin macro)if_supequal a,b
push a
push b
inf
not
if
  #(end macro)if_supequal a,b
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
else
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
fi
#(begin macro)print("   c supequal b is true; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     67
out             # 'c'
set     32
out             # ' '
add     83
out             # 's'
add     2
out             # 'u'
sub     5
out             # 'p'
sub     11
out             # 'e'
add     12
out             # 'q'
add     4
out             # 'u'
sub     20
out             # 'a'
add     11
out             # 'l'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     84
out             # 't'
sub     2
out             # 'r'
add     3
out             # 'u'
sub     16
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   c supequal b is true; ")
#(begin macro)if_supequal c,b
push c
push b
inf
not
if
  #(end macro)if_supequal c,b
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
else
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
fi
#(begin macro)print("   f supequal b is true; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     70
out             # 'f'
set     32
out             # ' '
add     83
out             # 's'
add     2
out             # 'u'
sub     5
out             # 'p'
sub     11
out             # 'e'
add     12
out             # 'q'
add     4
out             # 'u'
sub     20
out             # 'a'
add     11
out             # 'l'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     84
out             # 't'
sub     2
out             # 'r'
add     3
out             # 'u'
sub     16
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   f supequal b is true; ")
#(begin macro)if_supequal f,b
push f
push b
inf
not
if
  #(end macro)if_supequal f,b
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
else
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
fi

# macro if_infequal(a,b) : if (a <= b) {
#(begin macro)print("if_infequal\n")
push    0
set     105
out             # 'i'
sub     3
out             # 'f'
sub     7
out             # '_'
add     10
out             # 'i'
add     5
out             # 'n'
sub     8
out             # 'f'
sub     1
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
#(end macro)print("if_infequal\n")
#(begin macro)print("   a infequal b is true; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     65
out             # 'a'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
sub     8
out             # 'f'
sub     1
out             # 'e'
add     12
out             # 'q'
add     4
out             # 'u'
sub     20
out             # 'a'
add     11
out             # 'l'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     84
out             # 't'
sub     2
out             # 'r'
add     3
out             # 'u'
sub     16
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   a infequal b is true; ")
#(begin macro)if_infequal a,b
push a
push b
sup
not
if
  #(end macro)if_infequal a,b
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
else
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
fi
#(begin macro)print("   c infequal b is false; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     67
out             # 'c'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
sub     8
out             # 'f'
sub     1
out             # 'e'
add     12
out             # 'q'
add     4
out             # 'u'
sub     20
out             # 'a'
add     11
out             # 'l'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     70
out             # 'f'
sub     5
out             # 'a'
add     11
out             # 'l'
add     7
out             # 's'
sub     14
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   c infequal b is false; ")
#(begin macro)if_infequal c,b
push c
push b
sup
not
if
  #(end macro)if_infequal c,b
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
else
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
fi
#(begin macro)print("   f infequal b is true; ")
push    0
set     32
out             # ' '
out             # ' '
out             # ' '
add     70
out             # 'f'
set     32
out             # ' '
add     73
out             # 'i'
add     5
out             # 'n'
sub     8
out             # 'f'
sub     1
out             # 'e'
add     12
out             # 'q'
add     4
out             # 'u'
sub     20
out             # 'a'
add     11
out             # 'l'
set     32
out             # ' '
add     66
out             # 'b'
set     32
out             # ' '
add     73
out             # 'i'
add     10
out             # 's'
set     32
out             # ' '
add     84
out             # 't'
sub     2
out             # 'r'
add     3
out             # 'u'
sub     16
out             # 'e'
sub     42
out             # ';'
sub     27
out             # ' '
drop
#(end macro)print("   f infequal b is true; ")
#(begin macro)if_infequal f,b
push f
push b
sup
not
if
  #(end macro)if_infequal f,b
  #(begin macro)print ("OK\n")
  push    0
  set     79
  out             # 'O'
  sub     4
  out             # 'K'
  set     10
  out             # 
  drop
  #(end macro)print ("OK\n")
else
  #(begin macro)print ("BUG\n")
  push    0
  set     66
  out             # 'B'
  add     19
  out             # 'U'
  sub     14
  out             # 'G'
  set     10
  out             # 
  drop
  #(end macro)print ("BUG\n")
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
drop
drop
drop
drop
drop
#(end macro)scope_end()


