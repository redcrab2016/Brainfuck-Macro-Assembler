# ASCII Mandelbrot attempt
# inspired by C code at https://stackoverflow.com/questions/16124127/improvement-to-my-mandelbrot-set-code
include ../include/macro.inc
include ../include/fpnumber.inc


# 8.16 fixed number
    ## 8 = 1*8 bits
define FP_I 1
    ## 16 = 2*8 bits
define FP_P 1
# FP_I + FP_P
    ## 1+2 = 3 : 24 bits
define FP   2

#declareTmpX(FP_I)
declareTmpX(FP_P)
declareTmpX(FP)
declareTmpX(FP*2)

varX(FP,"x")

push 0

setvX(FP,"x",10384)
print("xx=")
printhexaX(FP,"x")
print("\n")

pushvX(FP,"x")
sbmX2(FP_I,"xx1",0,FP_P)
incvX(FP_I,"xx1")
popvX(FP,"x")

print("xx=")
printhexaX(FP,"x")
print("\n")

pushvX(FP,"x")
sbmX2(FP_I,"xx2",0,FP_P)
incvX(FP_I,"xx2")
popvX(FP,"x")

print("xx=")
printhexaX(FP,"x")
print("\n")




drop

