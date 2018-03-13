# ASCII Mandelbrot attempt
# inspired by C code at https://stackoverflow.com/questions/16124127/improvement-to-my-mandelbrot-set-code
include ../include/macro.inc
include ../include/fpnumber.inc

define W            80
define H            40
define zoom         1
define moveX        -0.5
define moveY        0 
define maxIte       26
define oneOnHalfZoomW    {(1/0.5*zoom*W)}
define oneOnHalfZoomH    {(1/0.5*zoom*H)}
define halfW        {(0.5*W)}
define halfH        {(0.5*H)}

# 8.16 fixed number
    ## 8 = 1*8 bits
define FP_I 1
    ## 16 = 2*8 bits
define FP_P 2
# FP_I + FP_P
    ## 1+2 = 3 : 24 bits
define FP   3

varX(FP,"pr")  # pixel real
varX(FP,"pi")  # pixel imaginary
varX(FP,"x")    # screen coordinate horizontal
varX(FP,"y")    # screen coordinate vertical
varX(FP,"newRe")
varX(FP,"newIm")
varX(FP,"oldRe")
varX(FP,"oldIm")
# varX(FP,"ONE")
var     i

declareTmpX(FP)
declareTmpX(FP*2)

# pushFP(FP_I,FP_P,1)
# popvX(FP,"ONE")          # ONE = 1.0

push    {H}
loop
    push    {W}
    loop
        # pr = 1.5 *(x - halfW) * oneOnHalfZoomW + moveX
        pushFP(FP_I,FP_P,1.5)
        pushvX(FP,"x")
        pushFP(FP_I,FP_P, halfW)
        subX(FP)
        mulFP(FP_I,FP_P)
        pushFP(FP_I,FP_P,oneOnHalfZoomW)
        mulFP(FP_I,FP_P)
        pushFP(FP_I,FP_P,moveX)
        addX(FP)
        popvX(FP,"pr")
        # pi = (y - halfH) * oneOnHalfZoomH + moveY
        pushvX(FP,"y")
        pushFP(FP_I,FP_P,halfH)
        subX(FP)
        pushFP(FP_I,FP_P,oneOnHalfZoomW)
        mulFP(FP_I,FP_P)
        pushFP(FP_I,FP_P,moveX)
        addX(FP)
        popvX(FP,"pi")
        # newRe = 0
        setvX(FP,"newRe",0)
        # newIm = 0
        setvX(FP,"newIm",0)
        # oldRe = 0
        setvX(FP,"oldRe",0)
        # oldIm = 0
        setvX(FP,"oldIm",0)
        # i = 0
        at_reset("i")
        # for (i =0 ; i < maxIte; i++) {
        push    1
        sbm     loop
        while
            if_inf("i",maxIte)
            #    oldRe = newRe
                pushvX(FP,"newRe")
                popvX(FP,"oldRe")
            #    oldIm = newIm
                pushvX(FP,"newIm")
                popvX(FP,"oldIm")
            #    newRe = oldRe * oldRe - oldIm * oldIm + pr
                pushvX(FP,"oldRe")
                pushvX(FP,"oldRe")
                mulFP(FP_I,FP_P)
                pushvX(FP,"oldIm")
                pushvX(FP,"oldIm")
                mulFP(FP_I,FP_P)
                subX(FP)
                pushvX(FP,"pr")
                addX(FP)
                popvX(FP,"newRe")
            #    newIm = 2 * oldRe * oldIm + pi
                pushFP(FP_I,FP_P,2)
                pushvX(FP,"oldRe")
                mulFP(FP_I,FP_P)
                pushvX(FP,"oldIm")
                mulFP(FP_I,FP_P)
                pushvX(FP,"pi")
                addX(FP)
                popvX(FP,"newIm")
            #    if (newRe *  newRe +  newIm * newIm) > 4 break for
                ## newRe *  newRe +  newIm * newIm
                pushvX(FP,"newRe")
                pushvX(FP,"newRe")
                mulFP(FP_I,FP_P)                
                pushvX(FP,"newIm")
                pushvX(FP,"newIm")
                mulFP(FP_I,FP_P)
                addX(FP)
                ## if stack FP > 4 break               
                pushFP(FP_I,FP_P, 4)
                supX(FP)
                if
                    at_reset("loop")
                else                                
                    at_inc("i")
                fi
            else
                at_reset("loop")
            fi
        # }
        wend
        # if (i >= maxIte) black point (inside mandel)
        if_equal("i", maxIte)
            print("*")
        # else // outside mandel
        else
            print(".")
        fi
        # x++
        pushvX(FP,"x")
        incFP(FP_I,FP_P)
        popvX(FP,"x")
        # addvvvX(FP,"x","x","ONE")
    endloop
    # x = 0
    setvX(FP,"x",0)
    # y++
    pushvX(FP,"y")
    incFP(FP_I,FP_P)
    popvX(FP,"y")
    #  addvvvX(FP,"y","y","ONE")
    print("\n")
endloop  

