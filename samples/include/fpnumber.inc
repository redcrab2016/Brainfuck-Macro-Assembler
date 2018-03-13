# fix point number
include signedX.inc

# macro add 2 fixed point number (I+P)*8 bits in stack
macro addFP(I,P)
    addX(I+P)
endmacro

# macro sub 2 fixed point number (I+P)*8 bits in stack
macro subFP(I,P)
    subX(I+P)
endmacro

macro incFP(I,P)
js _fp2++;
    sbmX2(I,"_incFPinput"+_fp2,0,P)
#    pushvX(I,"_incFPinput"+_fp2)
#    incX(I)
#    popvX(I,"_incFPinput"+_fp2)
    

    incvX(I,"_incFPinput"+_fp2)
endmacro

macro decFP(I,P)
js _fp2++;
    sbmX2(I,"_incFPinput"+_fp2,0,P)
    decvX(I,"_incFPinput"+_fp2)
endmacro

# macro setFP(I,P,immValue) : set fixed point head of stack I,P (I+P)*8 bits with immediate value 
macro setFP(I,P,immValue)
    js _sv8++; 
    js var IP; IP = I+P;
    js var _sign = immValue >=0?0:1;
    js var _abs = immValue>=0?immValue:-immValue;
    js var _int; _int = _abs | 0;
    js var _fra; _fra = ((_abs - _int) * Math.pow(256,P)) | 0;
    js var _fp; _fp = _int * Math.pow(256,P) + _fra;
    js if (_sign ==1) _fp = -_fp;
    sbmX(IP,"_instack"+_sv8,0)
    setvX(IP,"_instack"+_sv8, _fp)
endmacro

# macro pushFP(I,P,immValue) : push immediate fixed point number onto the stack 
macro pushFP(I,P,immValue)
    pushX(I+P,0)
    setFP(I,P,immValue) 
endmacro

# macro castFP(I1,P1,I2,P2) : transform head of Stack Fixed point number I1,P1 (I1+P1* 8 bits) into a Fixed point number I2,P2 (I2+P2*8 bits)
macro castFP(I1,P1,I2,P2)
    js _sv8++; 
    js var I1P1; I1P1 = I1+P1;
    js var I2P2; I2P2 = I2+P2;
    varX(I1P1,"_instack" +_sv8)
    varX(I2P2,"_outstack" + _sv8)
    
    popvX(I1P1,"_instack" + _sv8)
    # reset outstack
    setvX(I2P2, "_outstack" +_sv8, 0)
    # sign
    push _instack{_sv8}_s
    pop _outstack{_sv8}_s
    # integer part
    js if (I1 >= I2) {
        js for (var xx = 0 ; xx < I2; xx++) {
            push _instack{_sv8}_{(xx + P1)}
            pop _outstack{_sv8}_{(xx + P2)}
        js }
    js } else { // I1 < I2
        js for (var xx = 0 ; xx < I1; xx++) {
            push _instack{_sv8}_{(xx + P1)}
            pop _outstack{_sv8}_{(xx + P2)}
        js }
    js }
    # fract part
    js if (P1 >= P2) {
        js for (var xx = 0 ; xx <P2; xx++) {
            push _instack{_sv8}_{(P1-xx-1)}
            pop _outstack{_sv8}_{(P2-xx-1)}
        js }
    js } else { // P1 < P2
        js for (var xx = 0 ; xx < P1; xx++) {
            push _instack{_sv8}_{(P1-xx-1)}
            pop _outstack{_sv8}_{(P2-xx-1)}
        js }
    js }
    pushvX(I2P2,"_outstack" + _sv8)
endmacro

# macro integerFP(I,P) : transform head of stack fixed point number I,P (I+P)*8 bits , into a signed integer I*8bits
macro integerFP(I,P)
    castFP(I,P,I,0)
endmacro

macro fract(I,P) : retrieve the fractional part of head of stack fixed point number I,P (I+P)*8 bits, into a signed integer P*8 bits 
    castFP(I,P,0,P)
endmacro


# macro mul 2 fixed point number (I+P)*8 bits in stack
macro mulFP(I,P)
    js _fp1++;
    js var IP ; IP = (I+P); 
    js var IP2 ; IP2 = 2 * IP;
    sbmX(IP, "nameB"+_fp1,0)
    sbmX(IP, "nameA"+_fp1,1)
    scope_begin()
        lvarX(IP2, "nameAX"  + _fp1)
        lvarX(IP2, "nameBX"  + _fp1)
        lvarX(IP2, "resultX" + _fp1)
        
        # upcast nameA to nameAX (from I+P to (I+P) * 2)
        pushvX(IP,"nameA"+_fp1)
        castX(IP,IP2)
        popvX(IP2,"nameAX"+_fp1)

        # upcast nameB to nameBX (from I+P to (I+P) * 2)
        pushvX(IP,"nameB"+_fp1)
        castX(IP,IP2)
        popvX(IP2,"nameBX"+_fp1)
        
        mulvvvX(IP2,"resultX"+_fp1, "nameAX"+_fp1, "nameBX"+_fp1)
        
        pushvX(IP2,"resultX"+_fp1)
        castFP(I+I,P+P, I,P)
        popvX(IP,"nameA"+_fp1)
    scope_end()
    dropX(IP) # drop nameB
endmacro

js var _fp1; var _fp2;
js _fp1 = 0; _fp2 = 0;
