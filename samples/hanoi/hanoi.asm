#       _    _   _ ____ ___     
#      / \  | \ | / ___|_ _|    
#     / _ \ |  \| \___ \| |     
#    / ___ \| |\  |___) | |     
#   /_/  _\_\_| \_|____/___| _  
#   | | | | __ _ _ __   ___ (_) 
#   | |_| |/ _` | '_ \ / _ \| | 
#   |  _  | (_| | | | | (_) | | 
#   |_| |_|\__,_|_| |_|\___/|_| 
#                               
# ANSI displayed Hanoi tower iterative , inspired by https://www.geeksforgeeks.org/iterative-tower-of-hanoi/
include ../include/macro.inc
include ../include/ansi.inc

# 7 means 6 disks ... 
define  NBDISC  7
define  EMPTY   0

var     src*{(NBDISC+1)}
var     dest*{(NBDISC+1)}
var     aux*{(NBDISC+1)}
var     i

# push 1 if stack is full , 0 otherwise
macro isfull(name)
    push    {name}.pos
    push    {name}.size
    sub     2
    equal
endmacro

# push 1 if stack is empty, 0 otherwise
macro isempty(name)
    push    {name}.pos
    bool
    not
endmacro

# value is in stack
macro   pushtower(name)
    sbm pushParam{_pushtower}
    isfull  {name}
    not
    if
        arotl   {name}
        push    pushParam{_pushtower}
        pop     {name}
    fi
    drop            
endmacro

# value returned is in stack
macro   poptower(name)
    push    {EMPTY}
    sbm popresult{_poptower}
    isempty {name}
    not
    if
        push    {name}
        pop     popresult{_poptower}
        at      {name}
            reset
        ta
        arotr   {name}
    fi        
endmacro

# x, y are immediate values
macro   displayTower(name, x,   y)
    # display stick
    ansi_CUP    {y},    {x-NBDISC}
    ansi_SGR_bg256  94
    ansi_SGR_fg256  100
    push    '=' # plate
    js  for (var xx = 0 ; xx < NBDISC*2+1 ; xx++) {
    out
    js }
    ansi_SGR_reset
    set     ' '
    js for (var yy = 0; yy < NBDISC ; yy++) {
        ansi_CUP    {y-yy-1},   {x-NBDISC}
        js for (var xx = 0 ; xx < NBDISC*2+1 ; xx++) {
            out
        js}
    js}
    ansi_SGR_fg256  100
    set     '|' # stick
    js for (var xx = 0 ; xx < NBDISC ; xx++) {
    ansi_CUP    {y-1-xx},    {x}
    out    
    js }
    drop
    ansi_SGR_reset
    # display discs
    scope_begin
        lvar    yy{_displayTower},  0
        lvar    xx{_displayTower},  0
        lvar    oldPos{_displayTower},  0
        lvar    disc{_displayTower},    0
        push    {name}.pos
        pop     oldPos{_displayTower}
        
        push    {name}.pos
        loop
            push    {name}
            pop     disc{_displayTower}
            
            push    {y}
            push    {name}.pos
            sub 
            pop     yy{_displayTower}
            push    {x}
            push    disc{_displayTower}
            sub
            pop     xx{_displayTower}
            ansi_CUP    yy{_displayTower},  xx{_displayTower}
            ansi_SGR_bgcolor   disc{_displayTower}
            ansi_SGR_fgcolor   disc{_displayTower}
            push    disc{_displayTower}
            loop
                print   XX
            endloop
            print   X
            arotr   {name}
        endloop
        push    oldPos{_displayTower}
        loop
            arotl   {name}
        endloop
    scope_end
    ansi_SGR_reset
endmacro

macro displayHanoi()
    # display Hanoi towers
    displayTower    src,    {(NBDISC*2+3)*0+NBDISC+2},   {NBDISC+2}
    displayTower    aux,    {(NBDISC*2+3)*1+NBDISC+2},   {NBDISC+2}
    displayTower    dest,   {(NBDISC*2+3)*2+NBDISC+2},   {NBDISC+2}
    ansi_CUP    {NBDISC+5}, 1
    ansi_SGR_reset
endmacro

macro movePole2Pole(psrc, pdest, srcname, destname)
    scope_begin
        lvar    p1top{_movePole2Pole},  0
        lvar    p2top{_movePole2Pole},  0
        poptower    {psrc}
        pop     p1top{_movePole2Pole}
        poptower    {pdest}
        pop     p2top{_movePole2Pole}
        # when p1 is empty
        push    p1top{_movePole2Pole}
        not
        if
            push        p2top{_movePole2Pole}  
            pushtower   {psrc}
        else
            # when p2 is empty
            push    p2top{_movePole2Pole}
            not
            if
                push    p1top{_movePole2Pole}
                pushtower   {pdest}
            else
                # when p1 > p2
                push    p1top{_movePole2Pole}
                push    p2top{_movePole2Pole}
                sup
                if
                    push    p1top{_movePole2Pole}
                    pushtower   {psrc}
                    push    p2top{_movePole2Pole}
                    pushtower   {psrc}
                else
                    push    p2top{_movePole2Pole}
                    pushtower   {pdest}
                    push    p1top{_movePole2Pole}
                    pushtower   {pdest}
                fi
            fi
        fi
    scope_end
endmacro

ansi_ED     2
ansi_CUP    1,  1
ansi_SGR_fg_white
ansi_SGR_bold
print("ANSI Hanoi example in Brainf*ck : press ENTER for step by step\n")

push    {NBDISC}
sbm     hinit
loop
    push    hinit
    pushtower   src
endloop     

# show initial step
displayHanoi
push    1
in      # press enter to carry on
drop
    
push    1
pop     i
push    {(Math.pow(2,NBDISC)-1)|0}
#push    1
loop
    push    i
    push    1
    equal
    if
        movePole2Pole   src,    dest,   s,  d
    else
        push    i
        push    2
        equal
        if
            movePole2Pole   src,    aux,    s,  a
        else
            push    i
            not
            if
                movePole2Pole   aux,    dest,   a,  d
            fi
        fi
    fi
    # display Hanoi towers
    displayHanoi
    # begin wait for enter key
    push 1
    in
    drop
    # end wait
    # i = (i + 1) % 3
    at  i
        inc
    ta
    push i
    push 3
    equal
    if
        at  i
            reset
        ta
    fi
endloop
