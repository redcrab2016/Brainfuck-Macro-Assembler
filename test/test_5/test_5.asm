# basic matrix tests
include ../../samples/include/macro.inc
include ../../samples/include/matrix.inc

define BLOCK_WIDTH  16
define BLOCK_HEIGHT 15
define NBBLOCK_WIDTH    4
define NBBLOCK_HEIGHT   3
define WIDTH    {BLOCK_WIDTH*NBBLOCK_WIDTH}
define HEIGHT   {BLOCK_HEIGHT*NBBLOCK_HEIGHT}


# page is 0 or 1
macro mgetp(name,    page,   x,  y)
push    0
sbm mgresult{_mgetp}
matrixGet {name},   {x},    {y},    {BLOCK_WIDTH},  {BLOCK_HEIGHT}, {NBBLOCK_WIDTH},    {NBBLOCK_HEIGHT}
push    2
div
sbm mgpage0{_mgetp} -1
sbm mgpage1{_mgetp}
push    {page}
if
    push    mgpage1{_mgetp}
    pop     mgresult{_mgetp}  
else
    push    mgpage0{_mgetp}
    pop     mgresult{_mgetp}
fi
drop    # mgpage1
drop    # mgpage0
endmacro

# page is 0 or 1
macro msetp(name,    page,   x,  y)
sbm msinput{_msetp}
matrixGet {name},   {x},    {y},    {BLOCK_WIDTH},  {BLOCK_HEIGHT}, {NBBLOCK_WIDTH},    {NBBLOCK_HEIGHT}
push    2
div
sbm mspage0{_msetp} -1
sbm mspage1{_msetp}
push    {page}
if   # if page 1
    push    msinput{_msetp}
    push    2
    mul
    push    mspage0{_msetp}
    add
    pop     msinput{_msetp}
else # if page 0
    push    msinput{_msetp}
    push    mspage1{_msetp}
    add
    pop     msinput{_msetp}
fi
drop    # mspage1
drop    # mspage0
# here: head of stack is msinput
matrixSet {name},   {x},    {y},    {BLOCK_WIDTH},  {BLOCK_HEIGHT}, {NBBLOCK_WIDTH},    {NBBLOCK_HEIGHT}
endmacro




macro mvar(name)
varMatrix {name}, {BLOCK_WIDTH},  {BLOCK_HEIGHT}, {NBBLOCK_WIDTH},    {NBBLOCK_HEIGHT}
endmacro

macro mget(name, x,  y)
matrixGet {name},   {x},    {y},    {BLOCK_WIDTH},  {BLOCK_HEIGHT}, {NBBLOCK_WIDTH},    {NBBLOCK_HEIGHT}
endmacro

# page is 0 or 1
macro mset(name,  x,  y)
matrixSet {name},   {x},    {y},    {BLOCK_WIDTH},  {BLOCK_HEIGHT}, {NBBLOCK_WIDTH},    {NBBLOCK_HEIGHT}
endmacro


mvar    m
var     i
var     p
var     x
var     y
var     v

# SET matrix Value 0to 3 (A to D)
at_reset    i
at_reset    x
at_reset    y
push    {HEIGHT}
loop
    push    {WIDTH}
    loop
        push    i
        mset    m,  x,  y
        at_inc  i
        if_equal    i,  4
            at_reset    i
        fi
        at_inc  x
    endloop
    at_inc      y
    at_reset    x
endloop

# Display value 0 to 2 (A to D)
print("Shows series of ABCD...\n")
at_reset    x
at_reset    y
push    {HEIGHT}
loop
    push    {WIDTH}
    loop
        mget    m,  x,  y
        add     'A'
        pop     out
        at_inc  x
    endloop
    print("\n")
    at_inc      y
    at_reset    x
endloop
print("\n")

# Display value from page 0
print("Shows series of ABAB...\n")
at_reset    x
at_reset    y
push    {HEIGHT}
loop
    push    {WIDTH}
    loop
        mgetp    m, 0,  x,  y
        add     'A'
        pop     out
        at_inc  x
    endloop
    print("\n")
    at_inc      y
    at_reset    x
endloop
print("\n")

# display value from page 1
print("Shows series of AABB...\n")
at_reset    x
at_reset    y
push    {HEIGHT}
loop
    push    {WIDTH}
    loop
        mgetp    m, 1,  x,  y
        add     'A'
        pop     out
        at_inc  x
    endloop
    print("\n")
    at_inc      y
    at_reset    x
endloop
print("\n")

# RESET matrix to zero
at_reset    i
at_reset    x
at_reset    y
push    {HEIGHT}
loop
    push    {WIDTH}
    loop
        push    0
        mset    m,  x,  y
        at_inc  x
    endloop
    at_inc      y
    at_reset    x
endloop

# SET page value matrix, one page used only
at_reset    x
at_reset    y
at_reset    i
at_reset    p
at_reset    v
push    {HEIGHT}
loop
    push    {WIDTH}
    loop
        
        if_equal    i,  0
            at_reset    p
            at_reset    v
        else
            if_equal    i,  1
                at_reset    p
                at_set      v,1
            else
                if_equal    i,2
                    at_set      p,1
                    at_reset    v
                else
                    at_set      p,1
                    at_set      v,1                        
                fi
            fi
        fi
        push    v
        msetp    m,  p,  x,  y
        at_inc  i
        if_equal    i,  4
            at_reset    i
        fi
        at_inc  x
    endloop
    at_inc      y
    at_reset    x
endloop

# DISPLAY page value matrix as-is
at_reset    x
at_reset    y
push    {HEIGHT}
loop
    push    {WIDTH}
    loop
        mget    m,  x,  y
        add     'A'
        pop     out
        at_inc  x
    endloop
    print("\n")
    at_inc      y
    at_reset    x
endloop
