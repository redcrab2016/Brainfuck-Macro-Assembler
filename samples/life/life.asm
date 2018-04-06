# Sample: Conway's Game Of Life
include ../include/macro.inc
include ../include/ansi.inc
include ../include/matrix.inc

define BLOCK_WIDTH  16
define BLOCK_HEIGHT 15
define NBBLOCK_WIDTH    4
define NBBLOCK_HEIGHT   3
define WIDTH    {BLOCK_WIDTH*NBBLOCK_WIDTH}
define HEIGHT   {BLOCK_HEIGHT*NBBLOCK_HEIGHT}


macro mvar(name)
varMatrix {name}, {BLOCK_WIDTH},  {BLOCK_HEIGHT}, {NBBLOCK_WIDTH},    {NBBLOCK_HEIGHT}
endmacro

# page is 0 or 1
macro mget(name,    page,   x,  y)
    push    0
    sbm mgresult{_mget}
    matrixGet {name},   {x},    {y},    {BLOCK_WIDTH},  {BLOCK_HEIGHT}, {NBBLOCK_WIDTH},    {NBBLOCK_HEIGHT}
    push    2
    div
    sbm mgpage0{_mget} -1
    sbm mgpage1{_mget}
    push    {page}
    if
        push    mgpage1{_mget}
        pop     mgresult{_mget}  
    else
        push    mgpage0{_mget}
        pop     mgresult{_mget}
    fi
    drop    # mgpage1
    drop    # mgpage0
endmacro

# page is 0 or 1
macro mset(name,    page,   x,  y)
    sbm msinput{_mset}
    matrixGet {name},   {x},    {y},    {BLOCK_WIDTH},  {BLOCK_HEIGHT}, {NBBLOCK_WIDTH},    {NBBLOCK_HEIGHT}
    push    2
    div
    sbm mspage0{_mset} -1
    sbm mspage1{_mset}
    push    {page}
    if   # if page 1
        push    msinput{_mset}
        dup
        add
        push    mspage0{_mset}
        add
        pop     msinput{_mset}
    else # if page 0
        push    mspage1{_mset}
        dup
        add
        push    msinput{_mset}
        add
        pop     msinput{_mset}
    fi
    drop    # mspage1
    drop    # mspage0
    # here: head of stack is msinput
    matrixSet {name},   {x},    {y},    {BLOCK_WIDTH},  {BLOCK_HEIGHT}, {NBBLOCK_WIDTH},    {NBBLOCK_HEIGHT}
endmacro

macro neighbour(op1,op2)
    arotl   ny
    arotl   nx
    push    x
    {op1}
    pop     nx
    push    y
    {op2}
    pop     ny
endmacro


mvar    life  # game of life matrix
var     cur # current generation
var     nex # next generation
var     x
var     y
var     tmp
var     gen

var     nx*9    # neighbours x coordinate
var     ny*9    # neighbours y coordinate

at_reset    cur
at_set      nex,    1

# read input for initial matrix load
at_reset    x
at_reset    y
print("Loading matrix\n")
push    1
sbm     loader
while
    push    in
    sbm aChar
    if_equal    aChar,  '.'
        at_set  tmp,    0
        at_inc  x
    else
        if_equal    aChar,  10
            at_reset    x
            at_inc      y
            at_set      tmp,    3
        else
            if_equal    aChar,  '!'
                at_reset    loader
                at_set      tmp,    3
                print("Stop load\n")
            else
                if_equal   aChar,   'X' 
                    at_set  tmp,    1
                    at_inc  x
                else
                    at_set      tmp,    3
                    at_inc  x                    
                fi                    
            fi            
        fi
    fi
    drop    #aChar
    if_diff tmp,    3
        push    tmp    
        mset    life,   cur,    x,  y  
    fi    
    if_equal    x,  {WIDTH}
        at_reset    x
        at_inc      y
    fi
    if_equal    y,  {HEIGHT}
        at_reset    loader
    fi
wend

# clear screen
ansi_ED 2
ansi_CUP 1,1
ansi_SGR_fg_white
ansi_SGR_bg_black
ansi_SGR_bold
print "Brainf*ck ANSI Conway's Game Of Life {WIDTH}x{HEIGHT} cells"

push    1
sbm     mainloop
while
    # show Life matrix
    at_reset    x
    at_reset    y
    ansi_CUP    2,  1
    push    {HEIGHT}  # for each row  
    loop
        push    {WIDTH} # for each column
        loop
            mget    life,   cur,    x,  y
            if
                ansi_SGR_bg_yellow
                ansi_SGR_fg_yellow
                ansi_SGR_bold
                push    'X'
                pop     out
            else
                ansi_SGR_bg_blue
                ansi_SGR_fg_blue
                ansi_SGR_normalcolorintensity
                push    '.'
                pop     out
            fi
            at_inc  x
        endloop
        at_reset    x
        at_inc      y
        push    10
        pop     out
    endloop
    ansi_SGR_reset
    print "Generation #"
    at_inc  gen
    push    gen
    writeByteDecimal
    print("  \n")
    
    print "Computing " 
    # next generation
    at_reset    x
    at_reset    y
    push    {HEIGHT}  # for each row
    loop
        push    {WIDTH} # for each column
        loop
            scope_begin
                lvar    cValue,     0
                lvar    nbAlive,    0
                ## get current value
                mget    life,   cur,    x,  y
                pop     cValue
                ## get neighbour count ( 8 values )
                ## stack the coordinate of the neighbours
                push    x
                if      
                    if_equal    x,  {WIDTH-1}   # x is at right border
                        push    y
                        if
                            if_equal    y,  {HEIGHT-1}   # y is at bottom border (RIGHT BOTTOM CORNER)
                                ## Above neighbours
                                ## x-1,y-1
                                neighbour   dec,    dec
                                ## x,y-1
                                neighbour   "#",    dec
                                ## left right neighbours
                                ## x-1,y
                                neighbour   dec,    "#"
                            else    # y is not at top nor bottom border  (RIGHT MIDDLE)
                                ## Above neighbours
                                ## x-1,y-1
                                neighbour   dec,    dec
                                ## x,y-1
                                neighbour   "#",    dec
                                ## left right neighbours
                                ## x-1,y
                                neighbour   dec,    "#"
                                ## Below neighbours
                                ## x-1,y+1
                                neighbour   dec,    inc
                                ## x,y+1
                                neighbour   "#",    inc
                            fi
                        else     # y is at top border   ( RIGHT TOP CORNER )
                            ## left right neighbours
                            ## x-1,y
                            neighbour   dec,    "#"
                            ## Below neighbours
                            ## x-1,y+1
                            neighbour   dec,    inc
                            ## x,y+1
                            neighbour   "#",    inc
                        fi
                    else     # x is not at right nor at left border
                        push    y
                        if
                            if_equal    y,  {HEIGHT-1}   # y is at bottom border (MIDDLE BOTTOM)
                                ## Above neighbours
                                ## x-1,y-1
                                neighbour   dec,    dec
                                ## x,y-1
                                neighbour   "#",    dec
                                ## x+1,y-1
                                neighbour   inc,    dec
                                ## left right neighbours
                                ## x-1,y
                                neighbour   dec,    "#"
                                ## x+1,y
                                neighbour   inc,    "#"
                                ## no Below neighbours
                            else    # y is not at top nor bottom border ( MIDDLE )
                                ## Above neighbours
                                ## x-1,y-1
                                neighbour   dec,    dec
                                ## x,y-1
                                neighbour   "#",    dec
                                ## x+1,y-1
                                neighbour   inc,    dec
                                ## left right neighbours
                                ## x-1,y
                                neighbour   dec,    "#"
                                ## x+1,y
                                neighbour   inc,    "#"
                                ## Below neighbours
                                ## x-1,y+1
                                neighbour   dec,    inc
                                ## x,y+1
                                neighbour   "#",    inc
                                ## x+1,y+1
                                neighbour   inc,    inc
                            fi
                        else     # y is at top border  (MIDDLE TOP)
                           ## No Above neighbours
                            ## left right neighbours
                            ## x-1,y
                            neighbour   dec,    "#"
                            ## x+1,y
                            neighbour   inc,    "#"
                            ## Below neighbours
                            ## x-1,y+1
                            neighbour   dec,    inc
                            ## x,y+1
                            neighbour   "#",    inc
                            ## x+1,y+1
                            neighbour   inc,    inc
                        fi
                    fi
                else    # x is at left border
                    push    y
                    if
                        if_equal    y,  {HEIGHT-1}   # y is at bottom border (LEFT BOTTOM CORNER)
                            ## Above neighbours
                            ## x,y-1
                            neighbour   "#",    dec
                            ## x+1,y-1
                            neighbour   inc,    dec
                            ## left right neighbours
                            ## x+1,y
                            neighbour   inc,    "#"
                        else    # y is not at top nor bottom border (LEFT MIDDLE)
                            ## Above neighbours
                            ## x,y-1
                            neighbour   "#",    dec
                            ## x+1,y-1
                            neighbour   inc,    dec
                            ## left right neighbours
                            ## x+1,y
                            neighbour   inc,    "#"
                            ## Below neighbours
                            ## x,y+1
                            neighbour   "#",    inc
                            ## x+1,y+1
                            neighbour   inc,    inc
                        fi
                    else     # y is at top border   (LEFT TOP CORNER)
                        ## left right neighbours
                        ## x+1,y
                        neighbour   inc,    "#"
                        ## Below neighbours
                        ## x,y+1
                        neighbour   "#",    inc
                        ## x+1,y+1
                        neighbour   inc,    inc
                    fi
                fi
                # compute number of alive neighbour cell
                at_reset    nbAlive
                push    nx.pos
                loop
                    push    nx
                    sbm     NX
                    push    ny
                    sbm     NY
                    mget    life,   cur,    NX,  NY
                    push    nbAlive
                    add
                    pop     nbAlive
                    drop    # NY
                    drop    # NX
                    arotr   nx
                    arotr   ny
                endloop
                # by number of alive neighbour cell, kill, keep as is, spawn x,y cell
                # by default keep the cell as-is
                push    nbAlive
                push    2
                inf
                push    nbAlive
                push    3
                sup
                or
                if  # NbAlive <2 or nbAlive > 3  # destroy cell
                    at_reset    cValue
                else 
                    if_equal    nbAlive,    3   #  create cell
                        at_set      cValue, 1
                    fi
                fi
                push    cValue
                mset    life,   nex,    x,  y
            scope_end
            at_inc  x
        endloop
        print "."
        at_reset    x
        at_inc      y
    endloop
    ansi_EL 2
    print("\rDisplaying")
                
    # swap cur and nex : next generation become current generation
    push    cur
    push    nex
    pop     cur
    pop     nex
wend



