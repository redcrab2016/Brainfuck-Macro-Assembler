#    ____        _         ____    _   _                ____  _        _
#   | __ ) _   _| |_ ___  |___ \  | | | | _____  ____ _/ ___|| |_ _ __(_)_ __   __ _
#   |  _ \| | | | __/ _ \   __) | | |_| |/ _ \ \/ / _` \___ \| __| '__| | '_ \ / _` |
#   | |_) | |_| | ||  __/  / __/  |  _  |  __/>  < (_| |___) | |_| |  | | | | | (_| |
#   |____/ \__, |\__\___| |_____| |_| |_|\___/_/\_\__,_|____/ \__|_|  |_|_| |_|\__, |
#          |___/                                                               |___/
# Read input byte and output it as hexa string
# this sample do use macro


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




push    1
while
  push    in
  push    16
  div
  #(begin macro)writeHexa() # output most significant hexa character from head of stack value, then drop
  sbm _input1
  #(begin macro)if_sup("_input" + whIdx,9)
  push _input1
  push 9
  sup
  if
    #(end macro)if_sup("_input" + whIdx,9)
    #(begin macro)at_add("_input" + whIdx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input1
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + whIdx, "'7'")
  else
    #(begin macro)at_add("_input" + whIdx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input1
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + whIdx, "'0'")
  fi
  pop out
  #(end macro)writeHexa() # output most significant hexa character from head of stack value, then drop
  #(begin macro)writeHexa() # output less significant hexa character from head of stack value, then drop
  sbm _input2
  #(begin macro)if_sup("_input" + whIdx,9)
  push _input2
  push 9
  sup
  if
    #(end macro)if_sup("_input" + whIdx,9)
    #(begin macro)at_add("_input" + whIdx, "'7'")
    #(begin macro)at_2("add",a,b)
    at _input2
      add '7'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + whIdx, "'7'")
  else
    #(begin macro)at_add("_input" + whIdx, "'0'")
    #(begin macro)at_2("add",a,b)
    at _input2
      add '0'
    ta
    #(end macro)at_2("add",a,b)
    #(end macro)at_add("_input" + whIdx, "'0'")
  fi
  pop out
  #(end macro)writeHexa() # output less significant hexa character from head of stack value, then drop
wend

