# Free fix point number. 
include signedX.inc

# macro varFP(I,P,name) : define global Fixed Point number variable
macro varFP(I,P,name)
    varX    {(I+P)},    {name}
endmacro

# macro lvarFP(I,P,name) : define local Fixed Point number variable
macro lvarFP(I,P,name)
    lvarX    {(I+P)},    {name}
endmacro

# macro add 2 fixed point number (I+P)*8 bits in stack
macro addFP(I,P)
    addX    {(I+P)}
endmacro

# macro sub 2 fixed point number (I+P)*8 bits in stack
macro subFP(I,P)
    subX    {(I+P)}
endmacro

# macro incFP(I,P) : increment fixed point number in head of stack
macro incFP(I,P)
    sbmX2   {I},    _incFPinput{_incFP},    0,  {P}
    incvX   {I},    _incFPinput{_incFP}
endmacro

# macro incvFP(I,P,name) : increment fixed point number in variable 'name'
macro incvFP(I,P,name)
    pushvFP {I},    {P},    {name}
    incFP   {I},    {P}
    popvFP  {I},    {P},    {name}
endmacro


# macro decFP(I,P) : decrement fixed point number in head of stack
macro decFP(I,P)
    sbmX2   {I},    _decFPinput{_decFP},    0,  {P}
    decvX   {I},    _decFPinput{_decFP}
endmacro

# macro decvFP(I,P) : decrement fixed point number in variable 'name'
macro decvFP(I,P,name)
    pushvFP {I},    {P},    {name}
    decFP   {I},    {P}
    popvFP  {I},    {P},    {name}
endmacro

# macro copyFP(I,P,dest,source) : dest = source (assignment)
macro copyFP(I,P,dest,source)
    pushvFP {I},    {P},    {source}
    popvFP  {I},    {P},    {dest}
endmacro

# macro setFP(I,P,immValue) : set fixed point head of stack I,P (I+P)*8 bits with immediate value 
macro setFP(I,P,immValue)
    js var IP; IP = I+P;
    js var _sign = immValue >=0?0:1;
    js var _abs = immValue>=0?immValue:-immValue;
    js var _int; _int = _abs | 0;
    js var _fra; _fra = ((_abs - _int) * Math.pow(256,P)) | 0;
    js var _fp; _fp = _int * Math.pow(256,P) + _fra;
    js if (_sign ==1) _fp = -_fp;
    sbmX    {IP},   _setFPinstack{_setFP},  0
    setvX   {IP},   _setFPinstack{_setFP},  {_fp}
endmacro

# macro setvFP(I,P,name, immValue) : set fixed point number at 'name' with immediate value 'immValue'
macro setvFP(I,P,name, immValue)
    js var _sign = immValue >=0?0:1;
    js var _abs = immValue>=0?immValue:-immValue;
    js var _int; _int = _abs | 0;
    js var _fra; _fra = ((_abs - _int) * Math.pow(256,P)) | 0;
    js var _fp; _fp = _int * Math.pow(256,P) + _fra;
    js if (_sign ==1) _fp = -_fp;
    setvX   {(I+P)},    {name}, {_fp}
endmacro

# macro pushFP(I,P,immValue) : push immediate fixed point number onto the stack 
macro pushFP(I,P,immValue)
    pushX   {(I+P)},    0
    setFP   {I},    {P},    {immValue} 
endmacro

# macro dropFP(I,P) : drop fixed point number from stack
macro dropFP(I,P)
    dropX   {(I+P)}
endmacro

# macro pushvFP(I,P,name) : push in stack the fixed point number contained variable 'name'
macro pushvFP(I,P,name)
    pushvX {(I+P)}, {name}
endmacro

# macro popvFP(I,P,name) : pop the fixed point number from stack to store in variable 'name'
macro popvFP(I,P,name)
    popvX   {(I+P)},    {name}
endmacro

# macro supFP(I,P) : push 1 if stack-1 > stack, push 0 otherwise
macro supFP(I,P)
    supX    {(I+P)}
endmacro

# macro castFP(I1,P1,I2,P2) : transform head of Stack Fixed point number I1,P1 (I1+P1* 8 bits) into a Fixed point number I2,P2 (I2+P2*8 bits)
macro castFP(I1,P1,I2,P2)
    js var I1P1; I1P1 = I1+P1;
    js var I2P2; I2P2 = I2+P2;
    varX    {I1P1}, _castFPinstack{_castFP}
    varX    {I2P2}, _castFPoutstack{_castFP}
    
    popvX   {I1P1}, _castFPinstack{_castFP}
    # reset outstack
    setvX   {I2P2}, _castFPoutstack{_castFP},   0
    # sign
    push    _castFPinstack{_castFP}_s
    pop     _castFPoutstack{_castFP}_s
    # integer part
    js if (I1 >= I2) {
        js for (var xx = 0 ; xx < I2; xx++) {
            push    _castFPinstack{_castFP}_{(xx + P1)}
            pop     _castFPoutstack{_castFP}_{(xx + P2)}
        js }
    js } else { // I1 < I2
        js for (var xx = 0 ; xx < I1; xx++) {
            push    _castFPinstack{_castFP}_{(xx + P1)}
            pop     _castFPoutstack{_castFP}_{(xx + P2)}
        js }
    js }
    # fract part
    js if (P1 >= P2) {
        js for (var xx = 0 ; xx <P2; xx++) {
            push    _castFPinstack{_castFP}_{(P1-xx-1)}
            pop     _castFPoutstack{_castFP}_{(P2-xx-1)}
        js }
    js } else { // P1 < P2
        js for (var xx = 0 ; xx < P1; xx++) {
            push    _castFPinstack{_castFP}_{(P1-xx-1)}
            pop     _castFPoutstack{_castFP}_{(P2-xx-1)}
        js }
    js }
    pushvX  {I2P2}, _castFPoutstack{_castFP}
endmacro

# macro integerFP(I,P) : transform head of stack fixed point number I,P (I+P)*8 bits , into a signed integer I*8bits
macro integerFP(I,P)
    castFP(I,P,I,0)
endmacro

# macro fract(I,P) : retrieve the fractional part of head of stack fixed point number I,P (I+P)*8 bits, into a signed integer P*8 bits 
macro fract(I,P)
    castFP(I,P,0,P)
endmacro

# macro mul 2 fixed point number (I+P)*8 bits in stack
macro mulFP(I,P)
    js var IP ; IP = (I+P); 
    js var IP2 ; IP2 = 2 * IP;
    sbmX    {IP},   _mulFPnameB{_mulFP},    0
    sbmX    {IP},   _mulFPnameA{_mulFP},    1
    scope_begin
        lvarX   {IP2},  _mulFPnameAX{_mulFP}
        lvarX   {IP2},  _mulFPnameBX{_mulFP}
        lvarX   {IP2},  _mulFPresultX{_mulFP}
        
        # upcast nameA to nameAX (from I+P to (I+P) * 2)
        pushvX  {IP},   _mulFPnameA{_mulFP}
        castX   {IP},   {IP2}
        popvX   {IP2},  _mulFPnameAX{_mulFP}

        # upcast nameB to nameBX (from I+P to (I+P) * 2)
        pushvX  {IP},   _mulFPnameB{_mulFP}
        castX   {IP},   {IP2}
        popvX   {IP2},  _mulFPnameBX{_mulFP}
        
        mulvvvX {IP2},  _mulFPresultX{_mulFP},  _mulFPnameAX{_mulFP},   _mulFPnameBX{_mulFP}
        
        pushvX  {IP2},  _mulFPresultX{_mulFP}
        castFP  {(I+I)},  {(P+P)},  {I},    {P}
        popvX   {IP},   _mulFPnameA{_mulFP}
    scope_end
    dropX   {IP} # drop nameB
endmacro

