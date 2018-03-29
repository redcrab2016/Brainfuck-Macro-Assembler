#       _    ____   ____ ___ ___                         
#      / \  / ___| / ___|_ _|_ _|                        
#     / _ \ \___ \| |    | | | |                         
#    / ___ \ ___) | |___ | | | |                         
#   /_/  _\_\____/ \____|___|___|  _ _               _   
#   |  \/  | __ _ _ __   __| | ___| | |__  _ __ ___ | |_ 
#   | |\/| |/ _` | '_ \ / _` |/ _ \ | '_ \| '__/ _ \| __|
#   | |  | | (_| | | | | (_| |  __/ | |_) | | | (_) | |_ 
#   |_|  |_|\__,_|_| |_|\__,_|\___|_|_.__/|_|  \___/ \__|
#                                                        
# ASCII Mandelbrot Fixed point number example
# inspired by C code at https://stackoverflow.com/questions/16124127/improvement-to-my-mandelbrot-set-code
include ../include/macro.inc
include ../include/fpnumber.inc

# 8.24 fixed number FP_I=1*8 bits , FP_P=3*8 bits
    ## 8 = 1*8 bits : for integer part
define FP_I             1
    ## 24 = 3*8 bits  : for fractional part
define FP_P             3
define FP               {(FP_I+FP_P)}

define W                80
define H                40
define zoom             1
define moveX            -0.5
define moveY            0 
define maxIte           26
define oneOnHalfZoomW   {(1/(0.5*zoom*W))}
define oneOnHalfZoomH   {(1/(0.5*zoom*H))}
define halfW            {(0.5*W)}
define halfH            {(0.5*H)}

varFP   {FP_I}, {FP_P}, pr  # pixel real
varFP   {FP_I}, {FP_P}, pi  # pixel imaginary
varFP   {FP_I}, {FP_P}, x   # screen coordinate horizontal
varFP   {FP_I}, {FP_P}, y   # screen coordinate vertical
varFP   {FP_I}, {FP_P}, newRe
varFP   {FP_I}, {FP_P}, newIm
varFP   {FP_I}, {FP_P}, oldRe
varFP   {FP_I}, {FP_P}, oldIm

var     i

#declareTmpX {FP}
#declareTmpX {FP*2}

print("ASCII Mandelbrot : fixed point number sample in "+ FP_I*8 +"." + FP_P*8+" bits format\n")
print("  Maximum iteration "+ maxIte +" : size "+ W + " x "+H+" characters\n")
push    {H}
loop
    push    {W}
    loop
        # pr = 1.5 *(x - halfW) * oneOnHalfZoomW + moveX
        pushFP  {FP_I}, {FP_P}, 1.5
        pushvFP {FP_I}, {FP_P}, x
        pushFP  {FP_I}, {FP_P}, {halfW}
        subFP   {FP_I}, {FP_P}
        mulFP   {FP_I}, {FP_P}
        pushFP  {FP_I}, {FP_P}, {oneOnHalfZoomW}
        mulFP   {FP_I}, {FP_P}
        pushFP  {FP_I}, {FP_P}, {moveX}
        addFP   {FP_I}, {FP_P}
        popvFP  {FP_I}, {FP_P}, pr
        # pi = (y - halfH) * oneOnHalfZoomH + moveY
        pushvFP {FP_I}, {FP_P}, y
        pushFP  {FP_I}, {FP_P}, {halfH}
        subFP   {FP_I}, {FP_P}
        pushFP  {FP_I}, {FP_P}, {oneOnHalfZoomH}
        mulFP   {FP_I}, {FP_P}
        pushFP  {FP_I}, {FP_P}, {moveY}
        addFP   {FP_I}, {FP_P}
        popvFP  {FP_I}, {FP_P}, pi
        # newRe = 0
        setvFP  {FP_I}, {FP_P}, newRe,  0
        # newIm = 0
        setvFP  {FP_I}, {FP_P}, newIm,  0
        # oldRe = 0
        setvFP  {FP_I}, {FP_P}, oldRe,  0
        # oldIm = 0
        setvFP  {FP_I}, {FP_P}, oldIm,  0
        # i = 0
        at_reset    i
        # for (i =0 ; i < maxIte; i++) {
        push    1
        sbm     loop
        while
            if_inf  i,  {maxIte}
            #    oldRe = newRe
                copyFP  {FP_I}, {FP_P}, oldRe,  newRe
            #    oldIm = newIm
                copyFP  {FP_I}, {FP_P}, oldIm,  newIm
            #    newRe = oldRe * oldRe - oldIm * oldIm + pr
                pushvFP {FP_I}, {FP_P}, oldRe
                pushvFP {FP_I}, {FP_P}, oldRe
                mulFP   {FP_I}, {FP_P}
                pushvFP {FP_I}, {FP_P}, oldIm
                pushvFP {FP_I}, {FP_P}, oldIm
                mulFP   {FP_I}, {FP_P}
                subFP   {FP_I}, {FP_P}
                pushvFP {FP_I}, {FP_P}, pr
                addFP   {FP_I}, {FP_P}
                popvFP  {FP_I}, {FP_P}, newRe
            #    newIm = 2 * oldRe * oldIm + pi
                pushFP  {FP_I}, {FP_P}, 2
                pushvFP {FP_I}, {FP_P}, oldRe
                mulFP   {FP_I}, {FP_P}
                pushvFP {FP_I}, {FP_P}, oldIm
                mulFP   {FP_I}, {FP_P}
                pushvFP {FP_I}, {FP_P}, pi
                addFP   {FP_I}, {FP_P}
                popvFP  {FP_I}, {FP_P}, newIm
            #    if (newRe *  newRe +  newIm * newIm) > 4 break for
                ## newRe *  newRe +  newIm * newIm
                pushvFP {FP_I}, {FP_P}, newRe
                pushvFP {FP_I}, {FP_P}, newRe
                mulFP   {FP_I}, {FP_P}                
                pushvFP {FP_I}, {FP_P}, newIm
                pushvFP {FP_I}, {FP_P}, newIm
                mulFP   {FP_I}, {FP_P}
                addFP   {FP_I}, {FP_P}
                ## if stack FP > 4 break               
                pushFP  {FP_I}, {FP_P}, 4
                supFP   {FP_I}, {FP_P}
                if
                    at_reset    loop
                else                                
                    at_inc  i
                fi
            else
                at_reset    loop
            fi
        # }
        wend
        # if (i >= maxIte) black point (inside mandel)
        if_equal    i,  {maxIte}
            print(" ")
        # else // outside mandel (ascii A to Z: iteration 0 to 26)
        else
            push    i
            add     65
            out
            drop
        fi
        # x++
        incvFP  {FP_I}, {FP_P}, x
    endloop
    # x = 0
    setvFP  {FP_I}, {FP_P}, x,  0
    # y++
    incvFP  {FP_I}, {FP_P}, y
    print("\n")
endloop  

