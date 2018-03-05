# Common macros
# scope variables
js var __scope;
js __scope=[0];

# macro scope_begin : start a new scope for local variable (usage of macro lvar)
macro scope_begin()
    js __scope.push(0);
endmacro

# macro scope_end : end a scope , then drop scoped local variables (drop) (usage of lvar)
macro scope_end()
    js if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
    js } 
    js if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
endmacro

# macro lvar(vname,value) : declare  in scope, a local variable named vname with an assigned value (stored in stack)
macro lvar(vname,value)
    push {value}
    sbm {vname}
    js __scope[__scope.length-1]++; 
endmacro

# macro if_diff(a,b) : if (a != b) {
macro if_diff(a,b)
    push {a}
    push {b}
    diff
    if
endmacro

# macro if_equal(a,b) : if (a == b) {
macro if_equal(a,b)
    push {a}
    push {b}
    equal
    if
endmacro

# macro if_sup(a,b) : if (a > b) {
macro if_sup(a,b)
    push {a}
    push {b}
    sup
    if
endmacro

# macro if_inf(a,b) : if (a < b) {
macro if_inf(a,b)
    push {a}
    push {b}
    inf
    if
endmacro

# macro if_supequal(a,b) : if (a >= b) {
macro if_supequal(a,b)
    push {a}
    push {b}
    inf
    not
    if
endmacro

# macro if_infequal(a,b) : if (a <= b) {
macro if_infequal(a,b)
    push {a}
    push {ba}
    sup
    not
    if
endmacro

# macro at_2
macro at_2(ope, a,b)
    at {a}
    {ope} {b}
    ta
endmacro

# macro at_1
macro at_1(ope, a)
    at_2(ope,a,"")
endmacro

# macro at_reset(a) : a=0
macro at_reset(a)
    at_1("reset",a)
endmacro

# macro at_inc(a) : a++
macro at_inc(a)
    at_1("inc",a)
endmacro

# macro at_dec(a) : a--
macro at_dec(a)
    at_1("dec",a)
endmacro

# macro at_in(a)  : a= readchar()
macro at_in(a)
    at_1("in",a)
endmacro

# macro at_out(a) : write(a)
macro at_out(a)
    at_1("out",a)
endmacro

# macro at_add(a,b) : a += b (immediate)
macro at_add(a,b)
    at_2("add",a,b)
endmacro

# macro at_sub(a,b) : a -= b (immediate)
macro at_sub(a,b)
    at_2("sub",a,b)
endmacro

# macro at_set(a,b) : a = b (immediate)
macro at_set(a,b)
    at_2("set",a,b)
endmacro

macro write(a)
    push    {a}
    pop     out
endmacro

macro divide(a,b,d,r)
    push {a}
    push {b}
    div
    pop {d}
    pop {r}
endmacro

macro left_rewind(array)
    push 1
    sbm __looprewind
    while
        if_diff("{array}.pos",0)
            arotl {array}
        else
            at_reset("__looprewind")
        fi
    wend
endmacro

macro right_rewind(array)
    push {array}.pos
    loop
        arotr {array}
    endloop
endmacro
