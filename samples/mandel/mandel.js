var _main = function(){
var _str_main; 
_str_main='';
if (arguments.length != 0) throw 'Too much arguments provided to macro _main()[' + [] +']';
_str_main+='# ASCII Mandelbrot attempt' + '\n';
_str_main+='# inspired by C code at https://stackoverflow.com/questions/16124127/improvement-to-my-mandelbrot-set-code' + '\n';
_str_main+='#(begin include)../include/macro.inc' + '\n';
_str_main+='# Common macros' + '\n';
_str_main+='# scope variables' + '\n';
_str_main+='#(js) var __scope; var __idx;' + '\n';
var __scope; var __idx;
_str_main+='#(js) __scope=[0]; __idx = 0;' + '\n';
__scope=[0]; __idx = 0;
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# macro scope_begin : start a new scope for local variable (usage of macro lvar)' + '\n';
var scope_begin = function(){
var _strscope_begin; 
_strscope_begin='';
if (arguments.length != 0) throw 'Too much arguments provided to macro scope_begin()[' + [] +']';
_strscope_begin+='#(js) __scope.push(0);' + '\n';
__scope.push(0);
return _strscope_begin;
}
_str_main+='' + '\n';
_str_main+='# macro scope_end : end a scope , then drop scoped local variables (drop) (usage of lvar)' + '\n';
var scope_end = function(){
var _strscope_end; 
_strscope_end='';
if (arguments.length != 0) throw 'Too much arguments provided to macro scope_end()[' + [] +']';
_strscope_end+='#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {' + '\n';
if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
_strscope_end+='    drop' + '\n';
_strscope_end+='#(js) } ' + '\n';
} 
_strscope_end+='#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);' + '\n';
if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
return _strscope_end;
}
_str_main+='' + '\n';
_str_main+='# macro lvar(vname,value) : declare  in scope, a local variable named vname with an assigned value (stored in stack)' + '\n';
var lvar = function(vname,value){
var _strlvar; 
_strlvar='';
if (typeof vname == 'undefined') throw 'Parameter vname is undefined in call of  macro lvar(vname,value)[' + [vname,value] +']';
if (typeof value == 'undefined') throw 'Parameter value is undefined in call of  macro lvar(vname,value)[' + [vname,value] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro lvar(vname,value)[' + [vname,value] +']';
_strlvar+='    push ' + value + '' + '\n';
_strlvar+='    sbm ' + vname + '' + '\n';
_strlvar+='#(js) __scope[__scope.length-1]++; ' + '\n';
__scope[__scope.length-1]++; 
return _strlvar;
}
_str_main+='' + '\n';
_str_main+='# macro if_diff(a,b) : if (a != b) {' + '\n';
var if_diff = function(a,b){
var _strif_diff; 
_strif_diff='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_diff(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_diff(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_diff(a,b)[' + [a,b] +']';
_strif_diff+='    push ' + a + '' + '\n';
_strif_diff+='    push ' + b + '' + '\n';
_strif_diff+='    diff' + '\n';
_strif_diff+='    if' + '\n';
return _strif_diff;
}
_str_main+='' + '\n';
_str_main+='# macro if_equal(a,b) : if (a == b) {' + '\n';
var if_equal = function(a,b){
var _strif_equal; 
_strif_equal='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_equal(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_equal(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_equal(a,b)[' + [a,b] +']';
_strif_equal+='    push ' + a + '' + '\n';
_strif_equal+='    push ' + b + '' + '\n';
_strif_equal+='    equal' + '\n';
_strif_equal+='    if' + '\n';
return _strif_equal;
}
_str_main+='' + '\n';
_str_main+='# macro if_sup(a,b) : if (a > b) {' + '\n';
var if_sup = function(a,b){
var _strif_sup; 
_strif_sup='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_sup(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_sup(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_sup(a,b)[' + [a,b] +']';
_strif_sup+='    push ' + a + '' + '\n';
_strif_sup+='    push ' + b + '' + '\n';
_strif_sup+='    sup' + '\n';
_strif_sup+='    if' + '\n';
return _strif_sup;
}
_str_main+='' + '\n';
_str_main+='# macro if_inf(a,b) : if (a < b) {' + '\n';
var if_inf = function(a,b){
var _strif_inf; 
_strif_inf='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_inf(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_inf(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_inf(a,b)[' + [a,b] +']';
_strif_inf+='    push ' + a + '' + '\n';
_strif_inf+='    push ' + b + '' + '\n';
_strif_inf+='    inf' + '\n';
_strif_inf+='    if' + '\n';
return _strif_inf;
}
_str_main+='' + '\n';
_str_main+='# macro if_supequal(a,b) : if (a >= b) {' + '\n';
var if_supequal = function(a,b){
var _strif_supequal; 
_strif_supequal='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_supequal(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_supequal(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_supequal(a,b)[' + [a,b] +']';
_strif_supequal+='    push ' + a + '' + '\n';
_strif_supequal+='    push ' + b + '' + '\n';
_strif_supequal+='    inf' + '\n';
_strif_supequal+='    not' + '\n';
_strif_supequal+='    if' + '\n';
return _strif_supequal;
}
_str_main+='' + '\n';
_str_main+='# macro if_infequal(a,b) : if (a <= b) {' + '\n';
var if_infequal = function(a,b){
var _strif_infequal; 
_strif_infequal='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_infequal(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_infequal(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_infequal(a,b)[' + [a,b] +']';
_strif_infequal+='    push ' + a + '' + '\n';
_strif_infequal+='    push ' + b + '' + '\n';
_strif_infequal+='    sup' + '\n';
_strif_infequal+='    not' + '\n';
_strif_infequal+='    if' + '\n';
return _strif_infequal;
}
_str_main+='' + '\n';
_str_main+='# macro at_2' + '\n';
var at_2 = function(ope, a,b){
var _strat_2; 
_strat_2='';
if (typeof ope == 'undefined') throw 'Parameter ope is undefined in call of  macro at_2(ope, a,b)[' + [ope, a,b] +']';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_2(ope, a,b)[' + [ope, a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro at_2(ope, a,b)[' + [ope, a,b] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro at_2(ope, a,b)[' + [ope, a,b] +']';
_strat_2+='    at ' + a + '' + '\n';
_strat_2+='    ' + ope + ' ' + b + '' + '\n';
_strat_2+='    ta' + '\n';
return _strat_2;
}
_str_main+='' + '\n';
_str_main+='# macro at_1' + '\n';
var at_1 = function(ope, a){
var _strat_1; 
_strat_1='';
if (typeof ope == 'undefined') throw 'Parameter ope is undefined in call of  macro at_1(ope, a)[' + [ope, a] +']';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_1(ope, a)[' + [ope, a] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro at_1(ope, a)[' + [ope, a] +']';
_strat_1+='#(begin macro)    at_2(ope,a,"")' + '\n';
_strat_1+=at_2(ope,a,"");
_strat_1+='#(end macro)    at_2(ope,a,"")' + '\n';
return _strat_1;
}
_str_main+='' + '\n';
_str_main+='# macro at_reset(a) : a=0' + '\n';
var at_reset = function(a){
var _strat_reset; 
_strat_reset='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_reset(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro at_reset(a)[' + [a] +']';
_strat_reset+='#(begin macro)    at_1("reset",a)' + '\n';
_strat_reset+=at_1("reset",a);
_strat_reset+='#(end macro)    at_1("reset",a)' + '\n';
return _strat_reset;
}
_str_main+='' + '\n';
_str_main+='# macro at_inc(a) : a++' + '\n';
var at_inc = function(a){
var _strat_inc; 
_strat_inc='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_inc(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro at_inc(a)[' + [a] +']';
_strat_inc+='#(begin macro)    at_1("inc",a)' + '\n';
_strat_inc+=at_1("inc",a);
_strat_inc+='#(end macro)    at_1("inc",a)' + '\n';
return _strat_inc;
}
_str_main+='' + '\n';
_str_main+='# macro at_dec(a) : a--' + '\n';
var at_dec = function(a){
var _strat_dec; 
_strat_dec='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_dec(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro at_dec(a)[' + [a] +']';
_strat_dec+='#(begin macro)    at_1("dec",a)' + '\n';
_strat_dec+=at_1("dec",a);
_strat_dec+='#(end macro)    at_1("dec",a)' + '\n';
return _strat_dec;
}
_str_main+='' + '\n';
_str_main+='# macro at_in(a)  : a= readchar()' + '\n';
var at_in = function(a){
var _strat_in; 
_strat_in='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_in(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro at_in(a)[' + [a] +']';
_strat_in+='#(begin macro)    at_1("in",a)' + '\n';
_strat_in+=at_1("in",a);
_strat_in+='#(end macro)    at_1("in",a)' + '\n';
return _strat_in;
}
_str_main+='' + '\n';
_str_main+='# macro at_out(a) : write(a)' + '\n';
var at_out = function(a){
var _strat_out; 
_strat_out='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_out(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro at_out(a)[' + [a] +']';
_strat_out+='#(begin macro)    at_1("out",a)' + '\n';
_strat_out+=at_1("out",a);
_strat_out+='#(end macro)    at_1("out",a)' + '\n';
return _strat_out;
}
_str_main+='' + '\n';
_str_main+='# macro at_add(a,b) : a += b (immediate)' + '\n';
var at_add = function(a,b){
var _strat_add; 
_strat_add='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_add(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro at_add(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro at_add(a,b)[' + [a,b] +']';
_strat_add+='#(begin macro)    at_2("add",a,b)' + '\n';
_strat_add+=at_2("add",a,b);
_strat_add+='#(end macro)    at_2("add",a,b)' + '\n';
return _strat_add;
}
_str_main+='' + '\n';
_str_main+='# macro at_sub(a,b) : a -= b (immediate)' + '\n';
var at_sub = function(a,b){
var _strat_sub; 
_strat_sub='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_sub(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro at_sub(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro at_sub(a,b)[' + [a,b] +']';
_strat_sub+='#(begin macro)    at_2("sub",a,b)' + '\n';
_strat_sub+=at_2("sub",a,b);
_strat_sub+='#(end macro)    at_2("sub",a,b)' + '\n';
return _strat_sub;
}
_str_main+='' + '\n';
_str_main+='# macro at_set(a,b) : a = b (immediate)' + '\n';
var at_set = function(a,b){
var _strat_set; 
_strat_set='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_set(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro at_set(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro at_set(a,b)[' + [a,b] +']';
_strat_set+='#(begin macro)    at_2("set",a,b)' + '\n';
_strat_set+=at_2("set",a,b);
_strat_set+='#(end macro)    at_2("set",a,b)' + '\n';
return _strat_set;
}
_str_main+='' + '\n';
var write = function(a){
var _strwrite; 
_strwrite='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro write(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro write(a)[' + [a] +']';
_strwrite+='    push    ' + a + '' + '\n';
_strwrite+='    pop     out' + '\n';
return _strwrite;
}
_str_main+='' + '\n';
var divide = function(a,b,d,r){
var _strdivide; 
_strdivide='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro divide(a,b,d,r)[' + [a,b,d,r] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro divide(a,b,d,r)[' + [a,b,d,r] +']';
if (typeof d == 'undefined') throw 'Parameter d is undefined in call of  macro divide(a,b,d,r)[' + [a,b,d,r] +']';
if (typeof r == 'undefined') throw 'Parameter r is undefined in call of  macro divide(a,b,d,r)[' + [a,b,d,r] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro divide(a,b,d,r)[' + [a,b,d,r] +']';
_strdivide+='    push ' + a + '' + '\n';
_strdivide+='    push ' + b + '' + '\n';
_strdivide+='    div' + '\n';
_strdivide+='    pop ' + d + '' + '\n';
_strdivide+='    pop ' + r + '' + '\n';
return _strdivide;
}
_str_main+='' + '\n';
var left_rewind = function(array){
var _strleft_rewind; 
_strleft_rewind='';
if (typeof array == 'undefined') throw 'Parameter array is undefined in call of  macro left_rewind(array)[' + [array] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro left_rewind(array)[' + [array] +']';
_strleft_rewind+='    push 1' + '\n';
_strleft_rewind+='    sbm __looprewind' + '\n';
_strleft_rewind+='    while' + '\n';
_strleft_rewind+='#(begin macro)        if_diff("' + array + '.pos",0)' + '\n';
_strleft_rewind+=if_diff("array.pos",0);
_strleft_rewind+='#(end macro)        if_diff("' + array + '.pos",0)' + '\n';
_strleft_rewind+='            arotl ' + array + '' + '\n';
_strleft_rewind+='        else' + '\n';
_strleft_rewind+='#(begin macro)            at_reset("__looprewind")' + '\n';
_strleft_rewind+=at_reset("__looprewind");
_strleft_rewind+='#(end macro)            at_reset("__looprewind")' + '\n';
_strleft_rewind+='        fi' + '\n';
_strleft_rewind+='    wend' + '\n';
return _strleft_rewind;
}
_str_main+='' + '\n';
var right_rewind = function(array){
var _strright_rewind; 
_strright_rewind='';
if (typeof array == 'undefined') throw 'Parameter array is undefined in call of  macro right_rewind(array)[' + [array] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro right_rewind(array)[' + [array] +']';
_strright_rewind+='    push ' + array + '.pos' + '\n';
_strright_rewind+='    loop' + '\n';
_strright_rewind+='        arotr ' + array + '' + '\n';
_strright_rewind+='    endloop' + '\n';
return _strright_rewind;
}
_str_main+='' + '\n';
_str_main+='# macro popouthexa() : from head of stack value (from 0 to 15) write out hexa (from 0 to 9 and A to F)' + '\n';
var popouthexa = function(){
var _strpopouthexa; 
_strpopouthexa='';
if (arguments.length != 0) throw 'Too much arguments provided to macro popouthexa()[' + [] +']';
_strpopouthexa+='#(js) __idx++;' + '\n';
__idx++;
_strpopouthexa+='    sbm _input' + __idx + '' + '\n';
_strpopouthexa+='#(begin macro)    if_sup("_input" + __idx,9)' + '\n';
_strpopouthexa+=if_sup("_input" + __idx,9);
_strpopouthexa+='#(end macro)    if_sup("_input" + __idx,9)' + '\n';
_strpopouthexa+='#(begin macro)        at_add("_input" + __idx, "\'7\'")' + '\n';
_strpopouthexa+=at_add("_input" + __idx, "'7'");
_strpopouthexa+='#(end macro)        at_add("_input" + __idx, "\'7\'")' + '\n';
_strpopouthexa+='    else' + '\n';
_strpopouthexa+='#(begin macro)        at_add("_input" + __idx, "\'0\'")' + '\n';
_strpopouthexa+=at_add("_input" + __idx, "'0'");
_strpopouthexa+='#(end macro)        at_add("_input" + __idx, "\'0\'")' + '\n';
_strpopouthexa+='    fi' + '\n';
_strpopouthexa+='    pop out' + '\n';
return _strpopouthexa;
}
_str_main+='' + '\n';
_str_main+='# macro popout8hexa() : from head of stack the 8 bit value is write out in hexa' + '\n';
var popout8hexa = function(){
var _strpopout8hexa; 
_strpopout8hexa='';
if (arguments.length != 0) throw 'Too much arguments provided to macro popout8hexa()[' + [] +']';
_strpopout8hexa+='    push    16' + '\n';
_strpopout8hexa+='    div' + '\n';
_strpopout8hexa+='#(begin macro)    popouthexa() # output most significant hexa character from head of stack value, then drop' + '\n';
_strpopout8hexa+=popouthexa();
_strpopout8hexa+='#(end macro)    popouthexa() # output most significant hexa character from head of stack value, then drop' + '\n';
_strpopout8hexa+='#(begin macro)    popouthexa() # output less significant hexa character from head of stack value, then drop' + '\n';
_strpopout8hexa+=popouthexa();
_strpopout8hexa+='#(end macro)    popouthexa() # output less significant hexa character from head of stack value, then drop' + '\n';
return _strpopout8hexa;
}
_str_main+='' + '\n';
_str_main+='# macro print(aString) : print out a string' + '\n';
var print = function(aString){
var _strprint; 
_strprint='';
if (typeof aString == 'undefined') throw 'Parameter aString is undefined in call of  macro print(aString)[' + [aString] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro print(aString)[' + [aString] +']';
_strprint+='    push    0' + '\n';
_strprint+='#(js) var __prev; __prev = 0;' + '\n';
var __prev; __prev = 0;
_strprint+='#(js) for (var istr=0; istr < aString.length ; istr++) {' + '\n';
for (var istr=0; istr < aString.length ; istr++) {
_strprint+='#(js) var __ascii; __ascii = aString[istr].charCodeAt(0);' + '\n';
var __ascii; __ascii = aString[istr].charCodeAt(0);
_strprint+='#(js) var __move; __move = __ascii - __prev;' + '\n';
var __move; __move = __ascii - __prev;
_strprint+='#(js) var __dist ; __dist = (__move > 0)?__move:-__move;' + '\n';
var __dist ; __dist = (__move > 0)?__move:-__move;
_strprint+='#(js) if (__dist < __ascii) { // shorter to move' + '\n';
if (__dist < __ascii) { // shorter to move
_strprint+='#(js) if (__move > 0 ) {' + '\n';
if (__move > 0 ) {
_strprint+='    add     ' + __dist + '   ' + '\n';
_strprint+='#(js) } else {' + '\n';
} else {
_strprint+='#(js) if (__dist != 0) {' + '\n';
if (__dist != 0) {
_strprint+='    sub     ' + __dist + '   ' + '\n';
_strprint+='#(js) }' + '\n';
}
_strprint+='#(js) }' + '\n';
}
_strprint+='#(js) } else {' + '\n';
} else {
_strprint+='    set     ' + __ascii + '    ' + '\n';
_strprint+='#(js) }' + '\n';
}
_strprint+='    out             # ' + (aString[istr].charCodeAt(0)>31?("\'"+aString[istr]+"\'"):"") + '' + '\n';
_strprint+='#(js) __prev  = __ascii;' + '\n';
__prev  = __ascii;
_strprint+='#(js) }' + '\n';
}
_strprint+='    drop' + '\n';
return _strprint;
}
_str_main+='#(end include)../include/macro.inc' + '\n';
_str_main+='#(begin include)../include/fpnumber.inc' + '\n';
_str_main+='# fix point number' + '\n';
_str_main+='#(begin include)signedX.inc' + '\n';
_str_main+='# X bytes : X*8 bits signed integer : ' + '\n';
_str_main+='' + '\n';
_str_main+='# macro varX(name) :declare global X * 8 bits' + '\n';
var varX = function(X,name){
var _strvarX; 
_strvarX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro varX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro varX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro varX(X,name)[' + [X,name] +']';
_strvarX+='#(js) for (var xx=0 ; xx < X ; xx++) {' + '\n';
for (var xx=0 ; xx < X ; xx++) {
_strvarX+='    var ' + name + '_' + xx + '    # ' + xx + ' byte of ' + name + '' + '\n';
_strvarX+='#(js) }' + '\n';
}
_strvarX+='    var ' + name + '_s    # Sign of ' + name + '' + '\n';
_strvarX+='    var ' + name + '_c    # carry of ' + name + ' ' + '\n';
return _strvarX;
}
_str_main+='' + '\n';
_str_main+='# macro lvarX(X,name) : declare local X * 8 bits' + '\n';
var lvarX = function(X,name){
var _strlvarX; 
_strlvarX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro lvarX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro lvarX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro lvarX(X,name)[' + [X,name] +']';
_strlvarX+='#(begin macro)    lvar(name + "_c",0)' + '\n';
_strlvarX+=lvar(name + "_c",0);
_strlvarX+='#(end macro)    lvar(name + "_c",0)' + '\n';
_strlvarX+='#(begin macro)    lvar(name + "_s",0)' + '\n';
_strlvarX+=lvar(name + "_s",0);
_strlvarX+='#(end macro)    lvar(name + "_s",0)' + '\n';
_strlvarX+='#(js) for (var xx =0 ; xx < X ; xx++) {' + '\n';
for (var xx =0 ; xx < X ; xx++) {
_strlvarX+='#(js) var xx1; xx1 = X-xx-1; // X-1 to 0' + '\n';
var xx1; xx1 = X-xx-1; // X-1 to 0
_strlvarX+='#(begin macro)    lvar(name + "_"+ xx1,0)' + '\n';
_strlvarX+=lvar(name + "_"+ xx1,0);
_strlvarX+='#(end macro)    lvar(name + "_"+ xx1,0)' + '\n';
_strlvarX+='#(js) }' + '\n';
}
return _strlvarX;
}
_str_main+='' + '\n';
_str_main+='# macro fixsvX(X,name) : be sure that name is positive if equal to zero' + '\n';
var fixsvX = function(X,name){
var _strfixsvX; 
_strfixsvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro fixsvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro fixsvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro fixsvX(X,name)[' + [X,name] +']';
_strfixsvX+='    push    ' + name + '_s' + '\n';
_strfixsvX+='    if    # if name is negative' + '\n';
_strfixsvX+='#(js) for (var xx = 0; xx < X ; xx++) {' + '\n';
for (var xx = 0; xx < X ; xx++) {
_strfixsvX+='#(begin macro)        if_equal(name +"_" + xx, 0)' + '\n';
_strfixsvX+=if_equal(name +"_" + xx, 0);
_strfixsvX+='#(end macro)        if_equal(name +"_" + xx, 0)' + '\n';
_strfixsvX+='#(js) }' + '\n';
}
_strfixsvX+='#(begin macro)                at_reset(name + "_s")   # set sign to positive' + '\n';
_strfixsvX+=at_reset(name + "_s");
_strfixsvX+='#(end macro)                at_reset(name + "_s")   # set sign to positive' + '\n';
_strfixsvX+='#(js) for ( var xx = 0 ; xx < X ; xx++) {' + '\n';
for ( var xx = 0 ; xx < X ; xx++) {
_strfixsvX+='            fi' + '\n';
_strfixsvX+='#(js) }' + '\n';
}
_strfixsvX+='    fi' + '\n';
return _strfixsvX;
}
_str_main+='' + '\n';
_str_main+='# macro pushvX(X,name) : push X*8 bits name on stack' + '\n';
var pushvX = function(X,name){
var _strpushvX; 
_strpushvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro pushvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro pushvX(X,name)[' + [X,name] +']';
_strpushvX+='    push    ' + name + '_c' + '\n';
_strpushvX+='    push    ' + name + '_s' + '\n';
_strpushvX+='#(js) for (var xx =0 ; xx < X ; xx++) {' + '\n';
for (var xx =0 ; xx < X ; xx++) {
_strpushvX+='#(js) var xx1; xx1 = X-xx-1; // X-1 to 0' + '\n';
var xx1; xx1 = X-xx-1; // X-1 to 0
_strpushvX+='    push    ' + name + '_' + xx1 + '' + '\n';
_strpushvX+='#(js) }' + '\n';
}
return _strpushvX;
}
_str_main+='' + '\n';
_str_main+='# macro pushX(X,immValue) : push immediate X*8 bits value on the stack' + '\n';
var pushX = function(X,immValue){
var _strpushX; 
_strpushX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro pushX(X,immValue)[' + [X,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro pushX(X,immValue)[' + [X,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro pushX(X,immValue)[' + [X,immValue] +']';
_strpushX+='    push    0' + '\n';
_strpushX+='    push    ' + (immValue>=0?0:1) + '' + '\n';
_strpushX+='#(js) var absImmValue; absImmValue = immValue>=0?immValue:-immValue;' + '\n';
var absImmValue; absImmValue = immValue>=0?immValue:-immValue;
_strpushX+='#(js) for (var xx = 0 ; xx < X ; xx++) {' + '\n';
for (var xx = 0 ; xx < X ; xx++) {
_strpushX+='#(js) var xx1; xx1 = X-xx-1; // X-1 to 0' + '\n';
var xx1; xx1 = X-xx-1; // X-1 to 0
_strpushX+='#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);' + '\n';
absImmValue = absImmValue % Math.pow(256,xx1+1);
_strpushX+='    push    ' + ((absImmValue/Math.pow(256,xx1)) | 0) + '' + '\n';
_strpushX+='#(js) }' + '\n';
}
return _strpushX;
}
_str_main+='' + '\n';
_str_main+='# macro dupX(X) : duplicate X * 8 bits value on stack' + '\n';
var dupX = function(X){
var _strdupX; 
_strdupX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro dupX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro dupX(X)[' + [X] +']';
_strdupX+='#(js) for (var xx = 0 ; xx < X+2 ; xx++) { // 0 to X+2-1' + '\n';
for (var xx = 0 ; xx < X+2 ; xx++) { // 0 to X+2-1
_strdupX+='        push -' + X+2-1 + '' + '\n';
_strdupX+='#(js) }' + '\n';
}
return _strdupX;
}
_str_main+='' + '\n';
_str_main+='# macro pushsvX(X,name) : push the sign of the X*8 bits variable \'name\'' + '\n';
var pushsvX = function(X,name){
var _strpushsvX; 
_strpushsvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro pushsvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushsvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro pushsvX(X,name)[' + [X,name] +']';
_strpushsvX+='    push    ' + name + '_s' + '\n';
return _strpushsvX;
}
_str_main+='' + '\n';
_str_main+='# macro pushcvX(X,name) : push the carry of the X*8 bits variable \'name\'' + '\n';
var pushcvX = function(X,name){
var _strpushcvX; 
_strpushcvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro pushcvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushcvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro pushcvX(X,name)[' + [X,name] +']';
_strpushcvX+='    push    ' + name + '_c' + '\n';
return _strpushcvX;
}
_str_main+='' + '\n';
_str_main+='# macro popvX(X,name) : pop the stack to the X*8 bits variable \'name\'' + '\n';
var popvX = function(X,name){
var _strpopvX; 
_strpopvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro popvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro popvX(X,name)[' + [X,name] +']';
_strpopvX+='#(js) for (var xx=0; xx < X; xx++) {' + '\n';
for (var xx=0; xx < X; xx++) {
_strpopvX+='    pop     ' + name + '_' + xx + '' + '\n';
_strpopvX+='#(js) }' + '\n';
}
_strpopvX+='    pop     ' + name + '_s' + '\n';
_strpopvX+='    pop     ' + name + '_c' + '\n';
return _strpopvX;
}
_str_main+='' + '\n';
_str_main+='# macro popsvX(X,name) : pop the sign(8 bits 0/1) to the X*8 bits variable \'name\'' + '\n';
var popsvX = function(X,name){
var _strpopsvX; 
_strpopsvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro popsvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popsvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro popsvX(X,name)[' + [X,name] +']';
_strpopsvX+='    POP    ' + name + '_s' + '\n';
return _strpopsvX;
}
_str_main+='' + '\n';
_str_main+='# macro popcvX(X,name) : pop the carry(8 bit 0/1) to the X*8 bits variable \'name\'' + '\n';
var popcvX = function(X,name){
var _strpopcvX; 
_strpopcvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro popcvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popcvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro popcvX(X,name)[' + [X,name] +']';
_strpopcvX+='    POP    ' + name + '_c' + '\n';
return _strpopcvX;
}
_str_main+='' + '\n';
_str_main+='# macro negvX(X,name) : name = -name' + '\n';
var negvX = function(X,name){
var _strnegvX; 
_strnegvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro negvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro negvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro negvX(X,name)[' + [X,name] +']';
_strnegvX+='    push    ' + name + '_s' + '\n';
_strnegvX+='    dec' + '\n';
_strnegvX+='    bool' + '\n';
_strnegvX+='    dup' + '\n';
_strnegvX+='    if    # if name is now negative' + '\n';
_strnegvX+='#(js) for (var xx = 0; xx < X ; xx++) {' + '\n';
for (var xx = 0; xx < X ; xx++) {
_strnegvX+='#(begin macro)        if_equal(name +"_"+xx, 0)' + '\n';
_strnegvX+=if_equal(name +"_"+xx, 0);
_strnegvX+='#(end macro)        if_equal(name +"_"+xx, 0)' + '\n';
_strnegvX+='#(js) }' + '\n';
}
_strnegvX+='#(begin macro)                at_reset(name + "_s")   # set sign to positive if name==0' + '\n';
_strnegvX+=at_reset(name + "_s");
_strnegvX+='#(end macro)                at_reset(name + "_s")   # set sign to positive if name==0' + '\n';
_strnegvX+='#(js) for (var xx = 0 ; xx < X ; xx++) {' + '\n';
for (var xx = 0 ; xx < X ; xx++) {
_strnegvX+='        fi' + '\n';
_strnegvX+='#(js) }' + '\n';
}
_strnegvX+='    fi' + '\n';
_strnegvX+='    pop     ' + name + '_s' + '\n';
return _strnegvX;
}
_str_main+='' + '\n';
_str_main+='# macro absvX(X,name) : name = abs(name)' + '\n';
var absvX = function(X,name){
var _strabsvX; 
_strabsvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro absvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro absvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro absvX(X,name)[' + [X,name] +']';
_strabsvX+='    push    0' + '\n';
_strabsvX+='    pop     ' + name + '_s' + '\n';
return _strabsvX;
}
_str_main+='' + '\n';
_str_main+='# macro absX(X) : X*8 bits head of stack = abs(X*8 bits head of stack)' + '\n';
var absX = function(X){
var _strabsX; 
_strabsX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro absX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro absX(X)[' + [X] +']';
_strabsX+='#(js) for (var xx=0 ; xx < X ; xx++) {' + '\n';
for (var xx=0 ; xx < X ; xx++) {
_strabsX+='    bf <' + '\n';
_strabsX+='#(js) }' + '\n';
}
_strabsX+='    reset' + '\n';
_strabsX+='#(js) for (var xx=0 ; xx < X ; xx++) {' + '\n';
for (var xx=0 ; xx < X ; xx++) {
_strabsX+='    bf >' + '\n';
_strabsX+='#(js) }' + '\n';
}
return _strabsX;
}
_str_main+='' + '\n';
_str_main+='# macro negX(X) : X*8 bits head of stack = - (X*8 bits head of stack)    ' + '\n';
var negX = function(X){
var _strnegX; 
_strnegX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro negX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro negX(X)[' + [X] +']';
_strnegX+='#(js) var _xbits; _xbits = X *8;' + '\n';
var _xbits; _xbits = X *8;
_strnegX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strnegX+=popvX(X,"__tmp" + _xbits + "__");
_strnegX+='#(end macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strnegX+='#(begin macro)    negvX(X,"__tmp" + xbits + "__")' + '\n';
_strnegX+=negvX(X,"__tmp" + xbits + "__");
_strnegX+='#(end macro)    negvX(X,"__tmp" + xbits + "__")' + '\n';
_strnegX+='#(begin macro)    pushvX(X,"__tmp" + xbits + "__")' + '\n';
_strnegX+=pushvX(X,"__tmp" + xbits + "__");
_strnegX+='#(end macro)    pushvX(X,"__tmp" + xbits + "__")' + '\n';
return _strnegX;
}
_str_main+='' + '\n';
_str_main+='# macro setcX(X) : set 1 to X*8 bits head of stack carry' + '\n';
var setcX = function(X){
var _strsetcX; 
_strsetcX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro setcX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro setcX(X)[' + [X] +']';
_strsetcX+='#(js) for (var xx=0 ; xx < X+1 ; xx++) {' + '\n';
for (var xx=0 ; xx < X+1 ; xx++) {
_strsetcX+='    bf <' + '\n';
_strsetcX+='#(js) }' + '\n';
}
_strsetcX+='    set     1' + '\n';
_strsetcX+='#(js) for (var xx=0 ; xx < X+1 ; xx++) {' + '\n';
for (var xx=0 ; xx < X+1 ; xx++) {
_strsetcX+='    bf >' + '\n';
_strsetcX+='#(js) }' + '\n';
}
return _strsetcX;
}
_str_main+='' + '\n';
_str_main+='# macro setcvX(X,name) : set 1 to X*8 bits variable \'name\' carry' + '\n';
var setcvX = function(X,name){
var _strsetcvX; 
_strsetcvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro setcvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro setcvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro setcvX(X,name)[' + [X,name] +']';
_strsetcvX+='#(begin macro)    at_set(name+"_c",1)' + '\n';
_strsetcvX+=at_set(name+"_c",1);
_strsetcvX+='#(end macro)    at_set(name+"_c",1)' + '\n';
return _strsetcvX;
}
_str_main+='' + '\n';
_str_main+='# macro clearcX(X) : set 0 to 8*X bits head of stack carry' + '\n';
var clearcX = function(X){
var _strclearcX; 
_strclearcX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro clearcX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro clearcX(X)[' + [X] +']';
_strclearcX+='#(js) for (var xx=0 ; xx < X+1 ; xx++) {' + '\n';
for (var xx=0 ; xx < X+1 ; xx++) {
_strclearcX+='    bf <' + '\n';
_strclearcX+='#(js) }' + '\n';
}
_strclearcX+='    reset' + '\n';
_strclearcX+='#(js) for (var xx=0 ; xx < X+1 ; xx++) {' + '\n';
for (var xx=0 ; xx < X+1 ; xx++) {
_strclearcX+='    bf >' + '\n';
_strclearcX+='#(js) }' + '\n';
}
return _strclearcX;
}
_str_main+='' + '\n';
_str_main+='# macro clearcvX(X,name) : set 0 to X*8 bits variable \'name\' carry' + '\n';
var clearcvX = function(X,name){
var _strclearcvX; 
_strclearcvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro clearcvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro clearcvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro clearcvX(X,name)[' + [X,name] +']';
_strclearcvX+='#(begin macro)    at_reset(name+"_c")' + '\n';
_strclearcvX+=at_reset(name+"_c");
_strclearcvX+='#(end macro)    at_reset(name+"_c")' + '\n';
return _strclearcvX;
}
_str_main+='' + '\n';
_str_main+='# macro dropX(X) : drop 8*X bits value from stack' + '\n';
var dropX = function(X){
var _strdropX; 
_strdropX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro dropX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro dropX(X)[' + [X] +']';
_strdropX+='#(js) for (var xx = 0; xx < X+2 ; xx++) {' + '\n';
for (var xx = 0; xx < X+2 ; xx++) {
_strdropX+='    drop' + '\n';
_strdropX+='#(js) }' + '\n';
}
return _strdropX;
}
_str_main+='' + '\n';
_str_main+='# macro resetX(X) : reset X*8 bits value of the head of stack' + '\n';
var resetX = function(X){
var _strresetX; 
_strresetX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro resetX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro resetX(X)[' + [X] +']';
_strresetX+='#(js) for (var xx= 0; xx < X+1 ; xx++) {' + '\n';
for (var xx= 0; xx < X+1 ; xx++) {
_strresetX+='    bf <' + '\n';
_strresetX+='#(js) }' + '\n';
}
_strresetX+='    bf [-]' + '\n';
_strresetX+='#(js) for (var xx= 0; xx < X+1 ; xx++) {' + '\n';
for (var xx= 0; xx < X+1 ; xx++) {
_strresetX+='    bf >[-]' + '\n';
_strresetX+='#(js) }' + '\n';
}
return _strresetX;
}
_str_main+='' + '\n';
_str_main+='# macro resetvX(X,name) : reset X*8 bits variable \'name\'' + '\n';
var resetvX = function(X,name){
var _strresetvX; 
_strresetvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro resetvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro resetvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro resetvX(X,name)[' + [X,name] +']';
_strresetvX+='    at ' + name + '_0' + '\n';
_strresetvX+='#(begin macro)        resetX(X)' + '\n';
_strresetvX+=resetX(X);
_strresetvX+='#(end macro)        resetX(X)' + '\n';
_strresetvX+='    ta' + '\n';
return _strresetvX;
}
_str_main+='' + '\n';
_str_main+='# macro setX(X,immValue) : set X*8 bits value on the head of stack' + '\n';
var setX = function(X,immValue){
var _strsetX; 
_strsetX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro setX(X,immValue)[' + [X,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro setX(X,immValue)[' + [X,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro setX(X,immValue)[' + [X,immValue] +']';
_strsetX+='#(js) for (var xx=0; xx < X+1; xx++) {' + '\n';
for (var xx=0; xx < X+1; xx++) {
_strsetX+='    bf <' + '\n';
_strsetX+='#(js) }' + '\n';
}
_strsetX+='    reset' + '\n';
_strsetX+='    bf  >' + '\n';
_strsetX+='    set ' + (immValue>=0?0:1) + '' + '\n';
_strsetX+='#(js) var absImmValue ; absImmValue = immValue>0?immValue:-immValue;' + '\n';
var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
_strsetX+='#(js) for (var xx = 0 ; xx < X ; xx++) {' + '\n';
for (var xx = 0 ; xx < X ; xx++) {
_strsetX+='#(js) var xx1; xx1 = X-xx-1; // X-1 to 0' + '\n';
var xx1; xx1 = X-xx-1; // X-1 to 0
_strsetX+='#(js) absImmValue = absImmValue % Math.pow(256,xx1+1);' + '\n';
absImmValue = absImmValue % Math.pow(256,xx1+1);
_strsetX+='    bf >' + '\n';
_strsetX+='    set    ' + ((absImmValue/Math.pow(256,xx1)) | 0) + '' + '\n';
_strsetX+='#(js) }' + '\n';
}
return _strsetX;
}
_str_main+='' + '\n';
_str_main+='# macro setvX(X,name, immValue) : set X*8 bits immediate value to a X*8 bits variable \'name\' ' + '\n';
var setvX = function(X,name,immValue){
var _strsetvX; 
_strsetvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro setvX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro setvX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro setvX(X,name,immValue)[' + [X,name,immValue] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro setvX(X,name,immValue)[' + [X,name,immValue] +']';
_strsetvX+='    at ' + name + '_0' + '\n';
_strsetvX+='#(begin macro)        setX(X,immValue)' + '\n';
_strsetvX+=setX(X,immValue);
_strsetvX+='#(end macro)        setX(X,immValue)' + '\n';
_strsetvX+='    ta' + '\n';
return _strsetvX;
}
_str_main+='' + '\n';
_str_main+='# macro fixsvX(X,name) : be sure to have sign to zero if X*8bits variable \'name\' is zero' + '\n';
var fixsvX = function(X,name){
var _strfixsvX; 
_strfixsvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro fixsvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro fixsvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro fixsvX(X,name)[' + [X,name] +']';
_strfixsvX+='    push    ' + name + '_s' + '\n';
_strfixsvX+='    if    # if name is negative' + '\n';
_strfixsvX+='#(js) for (var xx = 0 ; xx < X ; xx++) {' + '\n';
for (var xx = 0 ; xx < X ; xx++) {
_strfixsvX+='#(begin macro)        if_equal(name +"_" + xx, 0)' + '\n';
_strfixsvX+=if_equal(name +"_" + xx, 0);
_strfixsvX+='#(end macro)        if_equal(name +"_" + xx, 0)' + '\n';
_strfixsvX+='#(js) }' + '\n';
}
_strfixsvX+='#(begin macro)            at_reset(name + "_s")   # set sign to positive' + '\n';
_strfixsvX+=at_reset(name + "_s");
_strfixsvX+='#(end macro)            at_reset(name + "_s")   # set sign to positive' + '\n';
_strfixsvX+='#(js) for (var xx = 0 ; xx < X ; xx++) {' + '\n';
for (var xx = 0 ; xx < X ; xx++) {
_strfixsvX+='        fi' + '\n';
_strfixsvX+='#(js) }' + '\n';
}
_strfixsvX+='    fi' + '\n';
return _strfixsvX;
}
_str_main+='' + '\n';
_str_main+='# macro fixsX(X) : be sure to have sign to zero if X*8 bits head of stack value is zero' + '\n';
var fixsX = function(X){
var _strfixsX; 
_strfixsX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro fixsX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro fixsX(X)[' + [X] +']';
_strfixsX+='#(js) var _xbits; _xbits = X *8;' + '\n';
var _xbits; _xbits = X *8;
_strfixsX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strfixsX+=popvX(X,"__tmp" + _xbits + "__");
_strfixsX+='#(end macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strfixsX+='#(begin macro)    fixsvX(X,"__tmp" + _xbits + "__")' + '\n';
_strfixsX+=fixsvX(X,"__tmp" + _xbits + "__");
_strfixsX+='#(end macro)    fixsvX(X,"__tmp" + _xbits + "__")' + '\n';
_strfixsX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
_strfixsX+=pushvX(X,"__tmp" + _xbits + "__");
_strfixsX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
return _strfixsX;
}
_str_main+='' + '\n';
_str_main+='# macro boolX(X) : same as \'bool\' but with a X*8 bits value on stack' + '\n';
var boolX = function(X){
var _strboolX; 
_strboolX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro boolX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro boolX(X)[' + [X] +']';
_strboolX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strboolX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strboolX+=popvX(X,"__tmp" + _xbits + "__");
_strboolX+='#(end macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strboolX+='#(js) for (var xx = 0 ; xx < X ; xx++) { ' + '\n';
for (var xx = 0 ; xx < X ; xx++) { 
_strboolX+='    push __tmp' + _xbits + '___' + xx + '' + '\n';
_strboolX+='    bool' + '\n';
_strboolX+='#(js) }' + '\n';
}
_strboolX+='#(js) for (var xx = 0 ; xx < X-1 ; xx++) {' + '\n';
for (var xx = 0 ; xx < X-1 ; xx++) {
_strboolX+='    or' + '\n';
_strboolX+='#(js) }' + '\n';
}
return _strboolX;
}
_str_main+='' + '\n';
_str_main+='# macro boolvX(X,name) : push on stack the bool(name) X*8 bits ' + '\n';
var boolvX = function(X,name){
var _strboolvX; 
_strboolvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro boolvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro boolvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro boolvX(X,name)[' + [X,name] +']';
_strboolvX+='#(js) for (var xx = 0 ; xx < X; xx++) {' + '\n';
for (var xx = 0 ; xx < X; xx++) {
_strboolvX+='    push ' + name + '_' + xx + '' + '\n';
_strboolvX+='    bool' + '\n';
_strboolvX+='#(js) }' + '\n';
}
_strboolvX+='#(js) for (var xx = 0 ; xx < X-1; xx++) {' + '\n';
for (var xx = 0 ; xx < X-1; xx++) {
_strboolvX+='    or' + '\n';
_strboolvX+='#(js) }' + '\n';
}
return _strboolvX;
}
_str_main+='' + '\n';
_str_main+='# macro incvX(X,name) : name = name +1 (X*8 bits)' + '\n';
var incvX = function(X,name){
var _strincvX; 
_strincvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro incvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro incvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro incvX(X,name)[' + [X,name] +']';
_strincvX+='#(begin macro)    if_equal(name +"_s",0)  # positive number' + '\n';
_strincvX+=if_equal(name +"_s",0);
_strincvX+='#(end macro)    if_equal(name +"_s",0)  # positive number' + '\n';
_strincvX+='#(js) for (var xx=0; xx < X; xx++) {' + '\n';
for (var xx=0; xx < X; xx++) {
_strincvX+='#(begin macro)            at_inc(name + "_" + xx)' + '\n';
_strincvX+=at_inc(name + "_" + xx);
_strincvX+='#(end macro)            at_inc(name + "_" + xx)' + '\n';
_strincvX+='#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)' + '\n';
_strincvX+=if_equal( name + "_" + xx,0);
_strincvX+='#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)' + '\n';
_strincvX+='#(js) }' + '\n';
}
_strincvX+='#(begin macro)           setcvX(X, name) ## set carry (overflow)' + '\n';
_strincvX+=setcvX(X, name);
_strincvX+='#(end macro)           setcvX(X, name) ## set carry (overflow)' + '\n';
_strincvX+='#(js) for (var xx=0; xx < X; xx++) {' + '\n';
for (var xx=0; xx < X; xx++) {
_strincvX+='            fi' + '\n';
_strincvX+='#(js) }        ' + '\n';
}        
_strincvX+='    else    # negative number' + '\n';
_strincvX+='#(js) for (var xx=0; xx < X; xx++) {' + '\n';
for (var xx=0; xx < X; xx++) {
_strincvX+='#(begin macro)        at_dec(name + "_" + xx)' + '\n';
_strincvX+=at_dec(name + "_" + xx);
_strincvX+='#(end macro)        at_dec(name + "_" + xx)' + '\n';
_strincvX+='#(begin macro)        if_equal(name +"_" + xx,255) # reduced' + '\n';
_strincvX+=if_equal(name +"_" + xx,255);
_strincvX+='#(end macro)        if_equal(name +"_" + xx,255) # reduced' + '\n';
_strincvX+='#(js) }' + '\n';
}
_strincvX+='#(begin macro)        setvX(X,name,1)' + '\n';
_strincvX+=setvX(X,name,1);
_strincvX+='#(end macro)        setvX(X,name,1)' + '\n';
_strincvX+='#(js) for (var xx=0; xx < X; xx++) {' + '\n';
for (var xx=0; xx < X; xx++) {
_strincvX+='        fi' + '\n';
_strincvX+='#(js) }' + '\n';
}
_strincvX+='#(begin macro)        fixsvX(X,name)    ' + '\n';
_strincvX+=fixsvX(X,name);
_strincvX+='#(end macro)        fixsvX(X,name)    ' + '\n';
_strincvX+='    fi' + '\n';
return _strincvX;
}
_str_main+='' + '\n';
_str_main+='# macro incX(X) : X*8 bits head of stack value incremented' + '\n';
var incX = function(X){
var _strincX; 
_strincX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro incX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro incX(X)[' + [X] +']';
_strincX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strincX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strincX+=popvX(X,"__tmp" + _xbits + "__");
_strincX+='#(end macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strincX+='#(begin macro)    incvX(X,"__tmp" + _xbits + "__")' + '\n';
_strincX+=incvX(X,"__tmp" + _xbits + "__");
_strincX+='#(end macro)    incvX(X,"__tmp" + _xbits + "__")' + '\n';
_strincX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
_strincX+=pushvX(X,"__tmp" + _xbits + "__");
_strincX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
return _strincX;
}
_str_main+='' + '\n';
_str_main+='# macro decvX(X,name) : name-- (X*8 bits)' + '\n';
var decvX = function(X,name){
var _strdecvX; 
_strdecvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro decvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro decvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro decvX(X,name)[' + [X,name] +']';
_strdecvX+='#(begin macro)    if_equal(name +"_s",1)  # negative number' + '\n';
_strdecvX+=if_equal(name +"_s",1);
_strdecvX+='#(end macro)    if_equal(name +"_s",1)  # negative number' + '\n';
_strdecvX+='#(js) for (var xx=0; xx < X; xx++) {' + '\n';
for (var xx=0; xx < X; xx++) {
_strdecvX+='#(begin macro)            at_inc(name + "_" + xx)' + '\n';
_strdecvX+=at_inc(name + "_" + xx);
_strdecvX+='#(end macro)            at_inc(name + "_" + xx)' + '\n';
_strdecvX+='#(begin macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)' + '\n';
_strdecvX+=if_equal( name + "_" + xx,0);
_strdecvX+='#(end macro)            if_equal( name + "_" + xx,0) # reach zero (roll over)' + '\n';
_strdecvX+='#(js) }' + '\n';
}
_strdecvX+='#(begin macro)           setcvX(X, name) ## set carry (overflow)' + '\n';
_strdecvX+=setcvX(X, name);
_strdecvX+='#(end macro)           setcvX(X, name) ## set carry (overflow)' + '\n';
_strdecvX+='#(js) for (var xx=0; xx < X; xx++) {' + '\n';
for (var xx=0; xx < X; xx++) {
_strdecvX+='            fi' + '\n';
_strdecvX+='#(js) }        ' + '\n';
}        
_strdecvX+='    else    # positive number' + '\n';
_strdecvX+='#(js) for (var xx=0; xx < X; xx++) {' + '\n';
for (var xx=0; xx < X; xx++) {
_strdecvX+='#(begin macro)        at_dec(name + "_" + xx)' + '\n';
_strdecvX+=at_dec(name + "_" + xx);
_strdecvX+='#(end macro)        at_dec(name + "_" + xx)' + '\n';
_strdecvX+='#(begin macro)        if_equal(name +"_" + xx,255) # reduced' + '\n';
_strdecvX+=if_equal(name +"_" + xx,255);
_strdecvX+='#(end macro)        if_equal(name +"_" + xx,255) # reduced' + '\n';
_strdecvX+='#(js) }' + '\n';
}
_strdecvX+='#(begin macro)        setvX(X,name,-1)' + '\n';
_strdecvX+=setvX(X,name,-1);
_strdecvX+='#(end macro)        setvX(X,name,-1)' + '\n';
_strdecvX+='#(js) for (var xx=0; xx < X; xx++) {' + '\n';
for (var xx=0; xx < X; xx++) {
_strdecvX+='        fi' + '\n';
_strdecvX+='#(js) }' + '\n';
}
_strdecvX+='    fi' + '\n';
return _strdecvX;
}
_str_main+='' + '\n';
_str_main+='# macro decX(X) : X*8 bits head of stack value decrement' + '\n';
var decX = function(X){
var _strdecX; 
_strdecX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro decX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro decX(X)[' + [X] +']';
_strdecX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strdecX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strdecX+=popvX(X,"__tmp" + _xbits + "__");
_strdecX+='#(end macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strdecX+='#(begin macro)    decX(X,"__tmp" + _xbits + "__")' + '\n';
_strdecX+=decX(X,"__tmp" + _xbits + "__");
_strdecX+='#(end macro)    decX(X,"__tmp" + _xbits + "__")' + '\n';
_strdecX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
_strdecX+=pushvX(X,"__tmp" + _xbits + "__");
_strdecX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
return _strdecX;
}
_str_main+='' + '\n';
_str_main+='# macro addviX(X,name, immValue) : name += immediate value' + '\n';
var addviX = function(X,name,immValue){
var _straddviX; 
_straddviX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
_straddviX+='#(js) _sv1++;' + '\n';
_sv1++;
_straddviX+='#(begin macro)    scope_begin()' + '\n';
_straddviX+=scope_begin();
_straddviX+='#(end macro)    scope_begin()' + '\n';
_straddviX+='#(begin macro)        lvarX(X,"addviXgX_"+_sv1)' + '\n';
_straddviX+=lvarX(X,"addviXgX_"+_sv1);
_straddviX+='#(end macro)        lvarX(X,"addviXgX_"+_sv1)' + '\n';
_straddviX+='#(begin macro)        setX(X,immValue>0?immValue:-immValue)' + '\n';
_straddviX+=setX(X,immValue>0?immValue:-immValue);
_straddviX+='#(end macro)        setX(X,immValue>0?immValue:-immValue)' + '\n';
_straddviX+='        push    1' + '\n';
_straddviX+='        sbm addviX_loop' + _sv1 + '' + '\n';
_straddviX+='' + '\n';
_straddviX+='        while' + '\n';
_straddviX+='#(begin macro)            boolvX(X,"addviXgX_"+ _sv1)' + '\n';
_straddviX+=boolvX(X,"addviXgX_"+ _sv1);
_straddviX+='#(end macro)            boolvX(X,"addviXgX_"+ _sv1)' + '\n';
_straddviX+='            if' + '\n';
_straddviX+='#(begin macro)                decvX(X,"addviXgX_"+_sv1)' + '\n';
_straddviX+=decvX(X,"addviXgX_"+_sv1);
_straddviX+='#(end macro)                decvX(X,"addviXgX_"+_sv1)' + '\n';
_straddviX+='#(js) if (immValue>0) {' + '\n';
if (immValue>0) {
_straddviX+='#(begin macro)                    incvX(X,name)' + '\n';
_straddviX+=incvX(X,name);
_straddviX+='#(end macro)                    incvX(X,name)' + '\n';
_straddviX+='#(js) } else {' + '\n';
} else {
_straddviX+='#(begin macro)                    decvX(X,name)' + '\n';
_straddviX+=decvX(X,name);
_straddviX+='#(end macro)                    decvX(X,name)' + '\n';
_straddviX+='#(js) }' + '\n';
}
_straddviX+='            else' + '\n';
_straddviX+='#(begin macro)                at_reset("addviX_loop"+_sv1)' + '\n';
_straddviX+=at_reset("addviX_loop"+_sv1);
_straddviX+='#(end macro)                at_reset("addviX_loop"+_sv1)' + '\n';
_straddviX+='            fi' + '\n';
_straddviX+='        wend' + '\n';
_straddviX+='#(begin macro)    scope_end()' + '\n';
_straddviX+=scope_end();
_straddviX+='#(end macro)    scope_end()' + '\n';
return _straddviX;
}
_str_main+='' + '\n';
_str_main+='# macro addi16(immValue) : 16 bits head of stack value += immediate value' + '\n';
var addi16 = function(immValue){
var _straddi16; 
_straddi16='';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro addi16(immValue)[' + [immValue] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addi16(immValue)[' + [immValue] +']';
_straddi16+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_straddi16+='#(begin macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_straddi16+=popvX(X,"__tmp" + _xbits + "__");
_straddi16+='#(end macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_straddi16+='#(begin macro)    addviX(X,"__tmp" + _xbits + "__",immValue)' + '\n';
_straddi16+=addviX(X,"__tmp" + _xbits + "__",immValue);
_straddi16+='#(end macro)    addviX(X,"__tmp" + _xbits + "__",immValue)' + '\n';
_straddi16+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
_straddi16+=pushvX(X,"__tmp" + _xbits + "__");
_straddi16+='#(end macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
return _straddi16;
}
_str_main+='' + '\n';
_str_main+='# macro subviX(X,name, immValue) : name -= immediate value' + '\n';
var subviX = function(X,name,immValue){
var _strsubviX; 
_strsubviX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
_strsubviX+='#(js) _sv2++;' + '\n';
_sv2++;
_strsubviX+='#(begin macro)    scope_begin()' + '\n';
_strsubviX+=scope_begin();
_strsubviX+='#(end macro)    scope_begin()' + '\n';
_strsubviX+='#(begin macro)        lvarX(X,"subviXgX_"+_sv2)' + '\n';
_strsubviX+=lvarX(X,"subviXgX_"+_sv2);
_strsubviX+='#(end macro)        lvarX(X,"subviXgX_"+_sv2)' + '\n';
_strsubviX+='#(begin macro)        setX(X,immValue>0?immValue:-immValue)' + '\n';
_strsubviX+=setX(X,immValue>0?immValue:-immValue);
_strsubviX+='#(end macro)        setX(X,immValue>0?immValue:-immValue)' + '\n';
_strsubviX+='        push    1' + '\n';
_strsubviX+='        sbm subviX_loop' + _sv2 + '' + '\n';
_strsubviX+='        while' + '\n';
_strsubviX+='#(begin macro)            pushvX(X,"subviXgX_"+ _sv2)' + '\n';
_strsubviX+=pushvX(X,"subviXgX_"+ _sv2);
_strsubviX+='#(end macro)            pushvX(X,"subviXgX_"+ _sv2)' + '\n';
_strsubviX+='#(begin macro)            boolX(X)' + '\n';
_strsubviX+=boolX(X);
_strsubviX+='#(end macro)            boolX(X)' + '\n';
_strsubviX+='            if' + '\n';
_strsubviX+='#(begin macro)                decvX(X,"subviXgX_"+_sv2)' + '\n';
_strsubviX+=decvX(X,"subviXgX_"+_sv2);
_strsubviX+='#(end macro)                decvX(X,"subviXgX_"+_sv2)' + '\n';
_strsubviX+='#(js) if (immValue>0) {' + '\n';
if (immValue>0) {
_strsubviX+='#(begin macro)                    decvX(X,name)' + '\n';
_strsubviX+=decvX(X,name);
_strsubviX+='#(end macro)                    decvX(X,name)' + '\n';
_strsubviX+='#(js) } else {' + '\n';
} else {
_strsubviX+='#(begin macro)                    incvX(X,name)' + '\n';
_strsubviX+=incvX(X,name);
_strsubviX+='#(end macro)                    incvX(X,name)' + '\n';
_strsubviX+='#(js) }' + '\n';
}
_strsubviX+='            else' + '\n';
_strsubviX+='#(begin macro)                at_reset("subviX_loop"+_sv2)' + '\n';
_strsubviX+=at_reset("subviX_loop"+_sv2);
_strsubviX+='#(end macro)                at_reset("subviX_loop"+_sv2)' + '\n';
_strsubviX+='            fi' + '\n';
_strsubviX+='        wend' + '\n';
_strsubviX+='#(begin macro)    scope_end()' + '\n';
_strsubviX+=scope_end();
_strsubviX+='#(end macro)    scope_end()' + '\n';
return _strsubviX;
}
_str_main+='' + '\n';
_str_main+='# macro subiX(X,immValue) : X*8 bits head of stack value -= immediate value' + '\n';
var subiX = function(X,immValue){
var _strsubiX; 
_strsubiX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subiX(X,immValue)[' + [X,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro subiX(X,immValue)[' + [X,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subiX(X,immValue)[' + [X,immValue] +']';
_strsubiX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strsubiX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strsubiX+=popvX(X,"__tmp" + _xbits + "__");
_strsubiX+='#(end macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strsubiX+='#(begin macro)    subviX(X,"__tmp" + _xbits + "__",immValue)' + '\n';
_strsubiX+=subviX(X,"__tmp" + _xbits + "__",immValue);
_strsubiX+='#(end macro)    subviX(X,"__tmp" + _xbits + "__",immValue)' + '\n';
_strsubiX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
_strsubiX+=pushvX(X,"__tmp" + _xbits + "__");
_strsubiX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
return _strsubiX;
}
_str_main+='' + '\n';
_str_main+='# macro addvvvX(X,name, nameA, nameB) : name = nameA + nameB' + '\n';
var addvvvX = function(X,name, nameA, nameB){
var _straddvvvX; 
_straddvvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro addvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro addvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
_straddvvvX+='#(js) _sv3++;' + '\n';
_sv3++;
_straddvvvX+='#(begin macro)    pushvX(X,nameA)' + '\n';
_straddvvvX+=pushvX(X,nameA);
_straddvvvX+='#(end macro)    pushvX(X,nameA)' + '\n';
_straddvvvX+='#(begin macro)    popvX(X,name)    # name = nameA' + '\n';
_straddvvvX+=popvX(X,name);
_straddvvvX+='#(end macro)    popvX(X,name)    # name = nameA' + '\n';
_straddvvvX+='#(begin macro)    scope_begin()' + '\n';
_straddvvvX+=scope_begin();
_straddvvvX+='#(end macro)    scope_begin()' + '\n';
_straddvvvX+='#(begin macro)        lvarX(X,"addvvvXgX_" + _sv3)' + '\n';
_straddvvvX+=lvarX(X,"addvvvXgX_" + _sv3);
_straddvvvX+='#(end macro)        lvarX(X,"addvvvXgX_" + _sv3)' + '\n';
_straddvvvX+='#(begin macro)        pushvX(X,nameB)' + '\n';
_straddvvvX+=pushvX(X,nameB);
_straddvvvX+='#(end macro)        pushvX(X,nameB)' + '\n';
_straddvvvX+='#(begin macro)        popvX(X,"addvvvXgX_" + _sv3)' + '\n';
_straddvvvX+=popvX(X,"addvvvXgX_" + _sv3);
_straddvvvX+='#(end macro)        popvX(X,"addvvvXgX_" + _sv3)' + '\n';
_straddvvvX+='        push 0' + '\n';
_straddvvvX+='#(begin macro)        popsvX(X,"addvvvXgX_" + _sv3) # absolute number (always positive)' + '\n';
_straddvvvX+=popsvX(X,"addvvvXgX_" + _sv3);
_straddvvvX+='#(end macro)        popsvX(X,"addvvvXgX_" + _sv3) # absolute number (always positive)' + '\n';
_straddvvvX+='        ' + '\n';
_straddvvvX+='        push    ' + nameB + '_s' + '\n';
_straddvvvX+='        if    # nameB is negative ' + '\n';
_straddvvvX+='            push    1' + '\n';
_straddvvvX+='            sbm addvvvX_loop' + _sv3 + '' + '\n';
_straddvvvX+='            while' + '\n';
_straddvvvX+='#(begin macro)                pushvX(X,"addvvvXgX_"+ _sv3)' + '\n';
_straddvvvX+=pushvX(X,"addvvvXgX_"+ _sv3);
_straddvvvX+='#(end macro)                pushvX(X,"addvvvXgX_"+ _sv3)' + '\n';
_straddvvvX+='#(begin macro)                boolX(X)' + '\n';
_straddvvvX+=boolX(X);
_straddvvvX+='#(end macro)                boolX(X)' + '\n';
_straddvvvX+='                if' + '\n';
_straddvvvX+='#(begin macro)                    decvX(X,"addvvvXgX_"+_sv3)' + '\n';
_straddvvvX+=decvX(X,"addvvvXgX_"+_sv3);
_straddvvvX+='#(end macro)                    decvX(X,"addvvvXgX_"+_sv3)' + '\n';
_straddvvvX+='#(begin macro)                    decvX(X,name)' + '\n';
_straddvvvX+=decvX(X,name);
_straddvvvX+='#(end macro)                    decvX(X,name)' + '\n';
_straddvvvX+='                else' + '\n';
_straddvvvX+='#(begin macro)                    at_reset("addvvvX_loop"+_sv3)' + '\n';
_straddvvvX+=at_reset("addvvvX_loop"+_sv3);
_straddvvvX+='#(end macro)                    at_reset("addvvvX_loop"+_sv3)' + '\n';
_straddvvvX+='                fi' + '\n';
_straddvvvX+='            wend' + '\n';
_straddvvvX+='        else  # nameB is positive' + '\n';
_straddvvvX+='            push    1' + '\n';
_straddvvvX+='            sbm addvvvX_loop' + _sv3 + '' + '\n';
_straddvvvX+='            while' + '\n';
_straddvvvX+='#(begin macro)                pushvX(X,"addvvvXgX_"+ _sv3)' + '\n';
_straddvvvX+=pushvX(X,"addvvvXgX_"+ _sv3);
_straddvvvX+='#(end macro)                pushvX(X,"addvvvXgX_"+ _sv3)' + '\n';
_straddvvvX+='#(begin macro)                boolX(X)' + '\n';
_straddvvvX+=boolX(X);
_straddvvvX+='#(end macro)                boolX(X)' + '\n';
_straddvvvX+='                if' + '\n';
_straddvvvX+='#(begin macro)                    decvX(X,"addvvvXgX_"+_sv3)' + '\n';
_straddvvvX+=decvX(X,"addvvvXgX_"+_sv3);
_straddvvvX+='#(end macro)                    decvX(X,"addvvvXgX_"+_sv3)' + '\n';
_straddvvvX+='#(begin macro)                    incvX(X,name)' + '\n';
_straddvvvX+=incvX(X,name);
_straddvvvX+='#(end macro)                    incvX(X,name)' + '\n';
_straddvvvX+='                else' + '\n';
_straddvvvX+='#(begin macro)                    at_reset("addvvvX_loop"+_sv3)' + '\n';
_straddvvvX+=at_reset("addvvvX_loop"+_sv3);
_straddvvvX+='#(end macro)                    at_reset("addvvvX_loop"+_sv3)' + '\n';
_straddvvvX+='                fi' + '\n';
_straddvvvX+='            wend' + '\n';
_straddvvvX+='        fi' + '\n';
_straddvvvX+='#(begin macro)    scope_end()' + '\n';
_straddvvvX+=scope_end();
_straddvvvX+='#(end macro)    scope_end()' + '\n';
return _straddvvvX;
}
_str_main+='' + '\n';
_str_main+='# macro addvvX(X,name, nameA) : name += nameA' + '\n';
var addvvX = function(X,name, nameA){
var _straddvvX; 
_straddvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
_straddvvX+='#(begin macro)    addvvvX(X,name, name, nameA)' + '\n';
_straddvvX+=addvvvX(X,name, name, nameA);
_straddvvX+='#(end macro)    addvvvX(X,name, name, nameA)' + '\n';
return _straddvvX;
}
_str_main+='' + '\n';
_str_main+='# macro addvX(X,nameA) : head stack += nameA' + '\n';
var addv16 = function(nameA){
var _straddv16; 
_straddv16='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addv16(nameA)[' + [nameA] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addv16(nameA)[' + [nameA] +']';
_straddv16+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_straddv16+='#(begin macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_straddv16+=popvX(X,"__tmp" + _xbits + "__");
_straddv16+='#(end macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_straddv16+='#(begin macro)    addvvX(X,"__tmp" + _xbits + "__",nameA)' + '\n';
_straddv16+=addvvX(X,"__tmp" + _xbits + "__",nameA);
_straddv16+='#(end macro)    addvvX(X,"__tmp" + _xbits + "__",nameA)' + '\n';
_straddv16+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
_straddv16+=pushvX(X,"__tmp" + _xbits + "__");
_straddv16+='#(end macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
return _straddv16;
}
_str_main+='' + '\n';
_str_main+='# macro addX(X) : stack-1 = stack-1 + stack ; stack--' + '\n';
var addX = function(X){
var _straddX; 
_straddX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addX(X)[' + [X] +']';
_straddX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_straddX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_straddX+=popvX(X,"__tmp" + _xbits + "b__");
_straddX+='#(end macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_straddX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_straddX+=popvX(X,"__tmp" + _xbits + "a__");
_straddX+='#(end macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_straddX+='#(begin macro)    addvvvX(X,"__tmp" + _xbits + "c__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")' + '\n';
_straddX+=addvvvX(X,"__tmp" + _xbits + "c__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__");
_straddX+='#(end macro)    addvvvX(X,"__tmp" + _xbits + "c__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")' + '\n';
_straddX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "c__")' + '\n';
_straddX+=pushvX(X,"__tmp" + _xbits + "c__");
_straddX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "c__")' + '\n';
return _straddX;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# macro subvvvX(X,name, nameA, nameB) : name = nameA - nameB' + '\n';
var subvvvX = function(X,name, nameA, nameB){
var _strsubvvvX; 
_strsubvvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro subvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro subvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro subvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
_strsubvvvX+='#(js) _sv4++;' + '\n';
_sv4++;
_strsubvvvX+='#(begin macro)    pushvX(X,nameA)' + '\n';
_strsubvvvX+=pushvX(X,nameA);
_strsubvvvX+='#(end macro)    pushvX(X,nameA)' + '\n';
_strsubvvvX+='#(begin macro)    popvX(X,name)    # name = nameA' + '\n';
_strsubvvvX+=popvX(X,name);
_strsubvvvX+='#(end macro)    popvX(X,name)    # name = nameA' + '\n';
_strsubvvvX+='#(begin macro)    scope_begin()' + '\n';
_strsubvvvX+=scope_begin();
_strsubvvvX+='#(end macro)    scope_begin()' + '\n';
_strsubvvvX+='#(begin macro)        lvarX(X,"subvvvXgX_" + _sv4)' + '\n';
_strsubvvvX+=lvarX(X,"subvvvXgX_" + _sv4);
_strsubvvvX+='#(end macro)        lvarX(X,"subvvvXgX_" + _sv4)' + '\n';
_strsubvvvX+='#(begin macro)        pushvX(X,nameB)' + '\n';
_strsubvvvX+=pushvX(X,nameB);
_strsubvvvX+='#(end macro)        pushvX(X,nameB)' + '\n';
_strsubvvvX+='#(begin macro)        popvX(X,"subvvvXgX_" + _sv4)' + '\n';
_strsubvvvX+=popvX(X,"subvvvXgX_" + _sv4);
_strsubvvvX+='#(end macro)        popvX(X,"subvvvXgX_" + _sv4)' + '\n';
_strsubvvvX+='        push 0' + '\n';
_strsubvvvX+='#(begin macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)' + '\n';
_strsubvvvX+=popsvX(X,"subvvvXgX_" + _sv4);
_strsubvvvX+='#(end macro)        popsvX(X,"subvvvXgX_" + _sv4) # absolute number (always positive)' + '\n';
_strsubvvvX+='        ' + '\n';
_strsubvvvX+='        push    ' + nameB + '_s' + '\n';
_strsubvvvX+='        if    # nameB is negative ' + '\n';
_strsubvvvX+='            push    1' + '\n';
_strsubvvvX+='            sbm subvvvX_loop' + _sv4 + '' + '\n';
_strsubvvvX+='            while' + '\n';
_strsubvvvX+='#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)' + '\n';
_strsubvvvX+=pushvX(X,"subvvvXgX_"+ _sv4);
_strsubvvvX+='#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)' + '\n';
_strsubvvvX+='#(begin macro)                boolX(X)' + '\n';
_strsubvvvX+=boolX(X);
_strsubvvvX+='#(end macro)                boolX(X)' + '\n';
_strsubvvvX+='                if' + '\n';
_strsubvvvX+='#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)' + '\n';
_strsubvvvX+=decvX(X,"subvvvXgX_"+_sv4);
_strsubvvvX+='#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)' + '\n';
_strsubvvvX+='#(begin macro)                    incvX(X,name)' + '\n';
_strsubvvvX+=incvX(X,name);
_strsubvvvX+='#(end macro)                    incvX(X,name)' + '\n';
_strsubvvvX+='                else' + '\n';
_strsubvvvX+='#(begin macro)                    at_reset("subvvvX_loop"+_sv4)' + '\n';
_strsubvvvX+=at_reset("subvvvX_loop"+_sv4);
_strsubvvvX+='#(end macro)                    at_reset("subvvvX_loop"+_sv4)' + '\n';
_strsubvvvX+='                fi' + '\n';
_strsubvvvX+='            wend' + '\n';
_strsubvvvX+='        else  # nameB is positive' + '\n';
_strsubvvvX+='            push    1' + '\n';
_strsubvvvX+='            sbm subvvvX_loop' + _sv4 + '' + '\n';
_strsubvvvX+='            while' + '\n';
_strsubvvvX+='#(begin macro)                pushvX(X,"subvvvXgX_"+ _sv4)' + '\n';
_strsubvvvX+=pushvX(X,"subvvvXgX_"+ _sv4);
_strsubvvvX+='#(end macro)                pushvX(X,"subvvvXgX_"+ _sv4)' + '\n';
_strsubvvvX+='#(begin macro)                boolX(X)' + '\n';
_strsubvvvX+=boolX(X);
_strsubvvvX+='#(end macro)                boolX(X)' + '\n';
_strsubvvvX+='                if' + '\n';
_strsubvvvX+='#(begin macro)                    decvX(X,"subvvvXgX_"+_sv4)' + '\n';
_strsubvvvX+=decvX(X,"subvvvXgX_"+_sv4);
_strsubvvvX+='#(end macro)                    decvX(X,"subvvvXgX_"+_sv4)' + '\n';
_strsubvvvX+='#(begin macro)                    decvX(X, name)' + '\n';
_strsubvvvX+=decvX(X, name);
_strsubvvvX+='#(end macro)                    decvX(X, name)' + '\n';
_strsubvvvX+='                else' + '\n';
_strsubvvvX+='#(begin macro)                    at_reset("subvvvX_loop"+_sv4)' + '\n';
_strsubvvvX+=at_reset("subvvvX_loop"+_sv4);
_strsubvvvX+='#(end macro)                    at_reset("subvvvX_loop"+_sv4)' + '\n';
_strsubvvvX+='                fi' + '\n';
_strsubvvvX+='            wend' + '\n';
_strsubvvvX+='        fi' + '\n';
_strsubvvvX+='#(begin macro)    scope_end()' + '\n';
_strsubvvvX+=scope_end();
_strsubvvvX+='#(end macro)    scope_end()' + '\n';
return _strsubvvvX;
}
_str_main+='' + '\n';
_str_main+='# macro subvvX(X,name, nameA) : name -= nameA ' + '\n';
var subvvX = function(X,name, nameA){
var _strsubvvX; 
_strsubvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
_strsubvvX+='#(begin macro)    subvvvX(X,name, name, nameA)' + '\n';
_strsubvvX+=subvvvX(X,name, name, nameA);
_strsubvvX+='#(end macro)    subvvvX(X,name, name, nameA)' + '\n';
return _strsubvvX;
}
_str_main+='' + '\n';
_str_main+='# macro subvX(X,nameA) : head stack -= nameA' + '\n';
var subvX = function(X,nameA){
var _strsubvX; 
_strsubvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subvX(X,nameA)[' + [X,nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro subvX(X,nameA)[' + [X,nameA] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subvX(X,nameA)[' + [X,nameA] +']';
_strsubvX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strsubvX+='#(begin macro)    popvX(X,"__tmp" + _xbits +"__")' + '\n';
_strsubvX+=popvX(X,"__tmp" + _xbits +"__");
_strsubvX+='#(end macro)    popvX(X,"__tmp" + _xbits +"__")' + '\n';
_strsubvX+='#(begin macro)    subvvX(X,"__tmp" + _xbits +"__",nameA)' + '\n';
_strsubvX+=subvvX(X,"__tmp" + _xbits +"__",nameA);
_strsubvX+='#(end macro)    subvvX(X,"__tmp" + _xbits +"__",nameA)' + '\n';
_strsubvX+='#(begin macro)    pushvX(X,"__tmp" + _xbits +"__")' + '\n';
_strsubvX+=pushvX(X,"__tmp" + _xbits +"__");
_strsubvX+='#(end macro)    pushvX(X,"__tmp" + _xbits +"__")' + '\n';
return _strsubvX;
}
_str_main+='' + '\n';
_str_main+='# macro subX(X) : stack-1 = stack-1 - stack ; stack--' + '\n';
var subX = function(X){
var _strsubX; 
_strsubX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro subX(X)[' + [X] +']';
_strsubX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strsubX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strsubX+=popvX(X,"__tmp" + _xbits + "b__");
_strsubX+='#(end macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strsubX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strsubX+=popvX(X,"__tmp" + _xbits + "a__");
_strsubX+='#(end macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strsubX+='#(begin macro)    subvvvX(X,"__tmp" + _xbits + "c__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")' + '\n';
_strsubX+=subvvvX(X,"__tmp" + _xbits + "c__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__");
_strsubX+='#(end macro)    subvvvX(X,"__tmp" + _xbits + "c__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")' + '\n';
_strsubX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "c__")' + '\n';
_strsubX+=pushvX(X,"__tmp" + _xbits + "c__");
_strsubX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "c__")' + '\n';
return _strsubX;
}
_str_main+='' + '\n';
_str_main+='# macro mulvvvX(X,name, nameA, nameB) : name = nameA * nameB ' + '\n';
var mulvvvX = function(X,name, nameA, nameB){
var _strmulvvvX; 
_strmulvvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro mulvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro mulvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro mulvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
_strmulvvvX+='#(js) _sv5++;' + '\n';
_sv5++;
_strmulvvvX+='#(begin macro)    scope_begin()' + '\n';
_strmulvvvX+=scope_begin();
_strmulvvvX+='#(end macro)    scope_begin()' + '\n';
_strmulvvvX+='#(begin macro)        lvarX(X,"mulvvvXabsNameA" + _sv5)' + '\n';
_strmulvvvX+=lvarX(X,"mulvvvXabsNameA" + _sv5);
_strmulvvvX+='#(end macro)        lvarX(X,"mulvvvXabsNameA" + _sv5)' + '\n';
_strmulvvvX+='#(begin macro)        pushvX(X,nameA)' + '\n';
_strmulvvvX+=pushvX(X,nameA);
_strmulvvvX+='#(end macro)        pushvX(X,nameA)' + '\n';
_strmulvvvX+='#(begin macro)        popvX(X,"mulvvvXabsNameA" + _sv5)' + '\n';
_strmulvvvX+=popvX(X,"mulvvvXabsNameA" + _sv5);
_strmulvvvX+='#(end macro)        popvX(X,"mulvvvXabsNameA" + _sv5)' + '\n';
_strmulvvvX+='#(begin macro)        lvar("mulvvvXsA" + _sv5, 0)' + '\n';
_strmulvvvX+=lvar("mulvvvXsA" + _sv5, 0);
_strmulvvvX+='#(end macro)        lvar("mulvvvXsA" + _sv5, 0)' + '\n';
_strmulvvvX+='#(begin macro)        pushsvX(X,"mulvvvXabsNameA" + _sv5)' + '\n';
_strmulvvvX+=pushsvX(X,"mulvvvXabsNameA" + _sv5);
_strmulvvvX+='#(end macro)        pushsvX(X,"mulvvvXabsNameA" + _sv5)' + '\n';
_strmulvvvX+='        pop mulvvvXsA' + _sv5 + '' + '\n';
_strmulvvvX+='#(begin macro)        absvX(X,"mulvvvXabsNameA" + _sv5)   # absNameA = abs(nameA)' + '\n';
_strmulvvvX+=absvX(X,"mulvvvXabsNameA" + _sv5);
_strmulvvvX+='#(end macro)        absvX(X,"mulvvvXabsNameA" + _sv5)   # absNameA = abs(nameA)' + '\n';
_strmulvvvX+='        ' + '\n';
_strmulvvvX+='#(begin macro)        lvarX(X,"mulvvvXabsNameB" + _sv5)' + '\n';
_strmulvvvX+=lvarX(X,"mulvvvXabsNameB" + _sv5);
_strmulvvvX+='#(end macro)        lvarX(X,"mulvvvXabsNameB" + _sv5)' + '\n';
_strmulvvvX+='#(begin macro)        pushvX(X,nameB)' + '\n';
_strmulvvvX+=pushvX(X,nameB);
_strmulvvvX+='#(end macro)        pushvX(X,nameB)' + '\n';
_strmulvvvX+='#(begin macro)        popvX(X,"mulvvvXabsNameB" + _sv5)' + '\n';
_strmulvvvX+=popvX(X,"mulvvvXabsNameB" + _sv5);
_strmulvvvX+='#(end macro)        popvX(X,"mulvvvXabsNameB" + _sv5)' + '\n';
_strmulvvvX+='#(begin macro)        lvar("mulvvvXsB" + _sv5, 0)' + '\n';
_strmulvvvX+=lvar("mulvvvXsB" + _sv5, 0);
_strmulvvvX+='#(end macro)        lvar("mulvvvXsB" + _sv5, 0)' + '\n';
_strmulvvvX+='#(begin macro)        pushsvX(X,"mulvvvXabsNameB" + _sv5)' + '\n';
_strmulvvvX+=pushsvX(X,"mulvvvXabsNameB" + _sv5);
_strmulvvvX+='#(end macro)        pushsvX(X,"mulvvvXabsNameB" + _sv5)' + '\n';
_strmulvvvX+='        pop mulvvvXsB' + _sv5 + '' + '\n';
_strmulvvvX+='#(begin macro)        absvX(X,"mulvvvXabsNameB" + _sv5)   # absNameB = abs(nameB)' + '\n';
_strmulvvvX+=absvX(X,"mulvvvXabsNameB" + _sv5);
_strmulvvvX+='#(end macro)        absvX(X,"mulvvvXabsNameB" + _sv5)   # absNameB = abs(nameB)' + '\n';
_strmulvvvX+='        ' + '\n';
_strmulvvvX+='#(begin macro)        resetvX(X,name)' + '\n';
_strmulvvvX+=resetvX(X,name);
_strmulvvvX+='#(end macro)        resetvX(X,name)' + '\n';
_strmulvvvX+='' + '\n';
_strmulvvvX+='        push    1' + '\n';
_strmulvvvX+='        sbm mulvvvX_loop' + _sv5 + '' + '\n';
_strmulvvvX+='        while' + '\n';
_strmulvvvX+='#(begin macro)            boolvX(X,"mulvvvXabsNameB" + _sv5)' + '\n';
_strmulvvvX+=boolvX(X,"mulvvvXabsNameB" + _sv5);
_strmulvvvX+='#(end macro)            boolvX(X,"mulvvvXabsNameB" + _sv5)' + '\n';
_strmulvvvX+='            if  # absNameB is not zero' + '\n';
_strmulvvvX+='#(begin macro)                addvvX(X,name,"mulvvvXabsNameA" + _sv5)' + '\n';
_strmulvvvX+=addvvX(X,name,"mulvvvXabsNameA" + _sv5);
_strmulvvvX+='#(end macro)                addvvX(X,name,"mulvvvXabsNameA" + _sv5)' + '\n';
_strmulvvvX+='#(begin macro)                decvX(X,"mulvvvXabsNameB" + _sv5)' + '\n';
_strmulvvvX+=decvX(X,"mulvvvXabsNameB" + _sv5);
_strmulvvvX+='#(end macro)                decvX(X,"mulvvvXabsNameB" + _sv5)' + '\n';
_strmulvvvX+='            else ' + '\n';
_strmulvvvX+='#(begin macro)                at_reset("mulvvvX_loop"+_sv5)' + '\n';
_strmulvvvX+=at_reset("mulvvvX_loop"+_sv5);
_strmulvvvX+='#(end macro)                at_reset("mulvvvX_loop"+_sv5)' + '\n';
_strmulvvvX+='            fi' + '\n';
_strmulvvvX+='        wend        ' + '\n';
_strmulvvvX+='        # resolve sign' + '\n';
_strmulvvvX+='        push mulvvvXsA' + _sv5 + '' + '\n';
_strmulvvvX+='        push mulvvvXsB' + _sv5 + '' + '\n';
_strmulvvvX+='        diff    # if sign(nameA) <> sign(nameB) then name is negative' + '\n';
_strmulvvvX+='        if' + '\n';
_strmulvvvX+='#(begin macro)            at_set(name +"_s",1)' + '\n';
_strmulvvvX+=at_set(name +"_s",1);
_strmulvvvX+='#(end macro)            at_set(name +"_s",1)' + '\n';
_strmulvvvX+='        fi        ' + '\n';
_strmulvvvX+='#(begin macro)    scope_end()' + '\n';
_strmulvvvX+=scope_end();
_strmulvvvX+='#(end macro)    scope_end()' + '\n';
return _strmulvvvX;
}
_str_main+='' + '\n';
_str_main+='# macro mulvvX(X,name, nameA) : name *= nameA' + '\n';
var mulvvX = function(X,name, nameA){
var _strmulvvX; 
_strmulvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro mulvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro mulvvX(X,name, nameA)[' + [X,name, nameA] +']';
_strmulvvX+='#(begin macro)    mulvvvX(X,name,name,nameA)' + '\n';
_strmulvvX+=mulvvvX(X,name,name,nameA);
_strmulvvX+='#(end macro)    mulvvvX(X,name,name,nameA)' + '\n';
return _strmulvvX;
}
_str_main+='' + '\n';
_str_main+='# macro mulvX(X,name) : head of stack *= name' + '\n';
var mulvX = function(X,name){
var _strmulvX; 
_strmulvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro mulvX(X,name)[' + [X,name] +']';
_strmulvX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strmulvX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strmulvX+=popvX(X,"__tmp" + _xbits + "__");
_strmulvX+='#(end macro)    popvX(X,"__tmp" + _xbits + "__")' + '\n';
_strmulvX+='#(begin macro)    mulvvX(X,"__tmp" + _xbits + "__",name)' + '\n';
_strmulvX+=mulvvX(X,"__tmp" + _xbits + "__",name);
_strmulvX+='#(end macro)    mulvvX(X,"__tmp" + _xbits + "__",name)' + '\n';
_strmulvX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
_strmulvX+=pushvX(X,"__tmp" + _xbits + "__");
_strmulvX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "__")' + '\n';
return _strmulvX;
}
_str_main+='' + '\n';
_str_main+='# macro mulX(X) : stack-1 = stack-1 * stack : stack--' + '\n';
var mulX = function(X){
var _strmulX; 
_strmulX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro mulX(X)[' + [X] +']';
_strmulX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strmulX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strmulX+=popvX(X,"__tmp" + _xbits + "a__");
_strmulX+='#(end macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strmulX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strmulX+=popvX(X,"__tmp" + _xbits + "b__");
_strmulX+='#(end macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strmulX+='#(begin macro)    mulvvvX(X,"__tmp" + _xbits + "c__","__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")' + '\n';
_strmulX+=mulvvvX(X,"__tmp" + _xbits + "c__","__tmp" + _xbits + "a__","__tmp" + _xbits + "b__");
_strmulX+='#(end macro)    mulvvvX(X,"__tmp" + _xbits + "c__","__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")' + '\n';
_strmulX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "c__")' + '\n';
_strmulX+=pushvX(X,"__tmp" + _xbits + "c__");
_strmulX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "c__")' + '\n';
return _strmulX;
}
_str_main+='' + '\n';
_str_main+='# macro equalvvX(X,nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise' + '\n';
var equalvvX = function(X,nameA, nameB){
var _strequalvvX; 
_strequalvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro equalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro equalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro equalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro equalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strequalvvX+='    push ' + nameA + '_s' + '\n';
_strequalvvX+='    push ' + nameB + '_s' + '\n';
_strequalvvX+='    equal' + '\n';
_strequalvvX+='#(js) for (var xx = 0 ; xx< X ; xx++) {' + '\n';
for (var xx = 0 ; xx< X ; xx++) {
_strequalvvX+='    push ' + nameA + '_' + xx + '' + '\n';
_strequalvvX+='    push ' + nameB + '_' + xx + '' + '\n';
_strequalvvX+='    equal' + '\n';
_strequalvvX+='#(js) }' + '\n';
}
_strequalvvX+='#(js) for (var xx = 0 ; xx < X-1 ; xx++) {' + '\n';
for (var xx = 0 ; xx < X-1 ; xx++) {
_strequalvvX+='    and' + '\n';
_strequalvvX+='#(js) }' + '\n';
}
_strequalvvX+='    and' + '\n';
return _strequalvvX;
}
_str_main+='' + '\n';
_str_main+='# macro equalX(X) : same as "equal" but with X*8 bits value in stack' + '\n';
var equal = function(X){
var _strequal; 
_strequal='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro equal(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro equal(X)[' + [X] +']';
_strequal+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strequal+='#(begin macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strequal+=popvX(X,"__tmp" + _xbits + "b__");
_strequal+='#(end macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strequal+='#(begin macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strequal+=popvX(X,"__tmp" + _xbits + "a__");
_strequal+='#(end macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strequal+='#(begin macro)    equalvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")' + '\n';
_strequal+=equalvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__");
_strequal+='#(end macro)    equalvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")' + '\n';
return _strequal;
}
_str_main+='' + '\n';
_str_main+='# macro diffvvX(X,nameA, nameB) : push 1 if Name != NameB , push 0 otherwise' + '\n';
var diffvvX = function(X,nameA, nameB){
var _strdiffvvX; 
_strdiffvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro diffvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro diffvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro diffvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro diffvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strdiffvvX+='#(begin macro)    equalvvX(X,nameA, nameB)' + '\n';
_strdiffvvX+=equalvvX(X,nameA, nameB);
_strdiffvvX+='#(end macro)    equalvvX(X,nameA, nameB)' + '\n';
_strdiffvvX+='    not' + '\n';
return _strdiffvvX;
}
_str_main+='' + '\n';
_str_main+='# macro diffX(X) : same as "diff" but with X*8 bits value in stack' + '\n';
var diffX = function(X){
var _strdiffX; 
_strdiffX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro diffX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro diffX(X)[' + [X] +']';
_strdiffX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strdiffX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strdiffX+=popvX(X,"__tmp" + _xbits + "b__");
_strdiffX+='#(end macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strdiffX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strdiffX+=popvX(X,"__tmp" + _xbits + "a__");
_strdiffX+='#(end macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strdiffX+='#(begin macro)    diffvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")' + '\n';
_strdiffX+=diffvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__");
_strdiffX+='#(end macro)    diffvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")' + '\n';
return _strdiffX;
}
_str_main+='' + '\n';
_str_main+='# macro supequalvvX(X,nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise' + '\n';
var supequalvvX = function(X,nameA, nameB){
var _strsupequalvvX; 
_strsupequalvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strsupequalvvX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strsupequalvvX+='#(begin macro)    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)' + '\n';
_strsupequalvvX+=subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB);
_strsupequalvvX+='#(end macro)    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)' + '\n';
_strsupequalvvX+='    push __tmp' + _xbits + 'c___s' + '\n';
_strsupequalvvX+='    not' + '\n';
return _strsupequalvvX;
}
_str_main+='' + '\n';
_str_main+='# macro supequalX(X) : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 X*8 bits value from stack' + '\n';
var supequalX = function(X){
var _strsupequalX; 
_strsupequalX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supequalX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro supequalX(X)[' + [X] +']';
_strsupequalX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strsupequalX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strsupequalX+=popvX(X,"__tmp" + _xbits + "b__");
_strsupequalX+='#(end macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strsupequalX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strsupequalX+=popvX(X,"__tmp" + _xbits + "a__");
_strsupequalX+='#(end macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strsupequalX+='#(begin macro)    supequalvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")' + '\n';
_strsupequalX+=supequalvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__");
_strsupequalX+='#(end macro)    supequalvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")' + '\n';
return _strsupequalX;
}
_str_main+='' + '\n';
_str_main+='# macro infvvX(X,nameA, nameB) : push 1 if nameA < nameB push 0 otherwise' + '\n';
var infvvX = function(X,nameA, nameB){
var _strinfvvX; 
_strinfvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strinfvvX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strinfvvX+='#(begin macro)    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)' + '\n';
_strinfvvX+=subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB);
_strinfvvX+='#(end macro)    subvvvX(X,"__tmp" + _xbits + "c__", nameA, nameB)' + '\n';
_strinfvvX+='    push __tmp' + _xbits + 'c___s' + '\n';
return _strinfvvX;
}
_str_main+='' + '\n';
_str_main+='# macro infX(X) : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 X*8 bits value from stack' + '\n';
var infX = function(X){
var _strinfX; 
_strinfX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro infX(X)[' + [X] +']';
_strinfX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strinfX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strinfX+=popvX(X,"__tmp" + _xbits + "b__");
_strinfX+='#(end macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strinfX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strinfX+=popvX(X,"__tmp" + _xbits + "a__");
_strinfX+='#(end macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strinfX+='#(begin macro)    infvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")' + '\n';
_strinfX+=infvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__");
_strinfX+='#(end macro)    infvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")' + '\n';
return _strinfX;
}
_str_main+='' + '\n';
_str_main+='# macro infequalvvX(X,nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise' + '\n';
var infequalvvX = function(X,nameA, nameB){
var _strinfequalvvX; 
_strinfequalvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro infequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro infequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro infequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strinfequalvvX+='#(begin macro)    supequalvvX(X,nameB, nameA)' + '\n';
_strinfequalvvX+=supequalvvX(X,nameB, nameA);
_strinfequalvvX+='#(end macro)    supequalvvX(X,nameB, nameA)' + '\n';
return _strinfequalvvX;
}
_str_main+='' + '\n';
_str_main+='# macro infequalX(X) : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 X*8 bits value from stack ' + '\n';
var infequalX = function(X){
var _strinfequalX; 
_strinfequalX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infequalX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro infequalX(X)[' + [X] +']';
_strinfequalX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strinfequalX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strinfequalX+=popvX(X,"__tmp" + _xbits + "b__");
_strinfequalX+='#(end macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strinfequalX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strinfequalX+=popvX(X,"__tmp" + _xbits + "a__");
_strinfequalX+='#(end macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strinfequalX+='#(begin macro)    infequalvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")' + '\n';
_strinfequalX+=infequalvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__");
_strinfequalX+='#(end macro)    infequalvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")' + '\n';
return _strinfequalX;
}
_str_main+='' + '\n';
_str_main+='# macro supvvX(X,nameA , nameB) : push 1 if nameA > nameB push 0 otherwise' + '\n';
var supvvX = function(X,nameA, nameB){
var _strsupvvX; 
_strsupvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro supvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro supvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro supvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strsupvvX+='#(begin macro)    infvvX(X,nameB, nameA)' + '\n';
_strsupvvX+=infvvX(X,nameB, nameA);
_strsupvvX+='#(end macro)    infvvX(X,nameB, nameA)' + '\n';
return _strsupvvX;
}
_str_main+='' + '\n';
_str_main+='# macro supX(X) : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 X*8 bits value from stack' + '\n';
var supX = function(X){
var _strsupX; 
_strsupX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro supX(X)[' + [X] +']';
_strsupX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strsupX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strsupX+=popvX(X,"__tmp" + _xbits + "b__");
_strsupX+='#(end macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strsupX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strsupX+=popvX(X,"__tmp" + _xbits + "a__");
_strsupX+='#(end macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strsupX+='#(begin macro)    supvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")' + '\n';
_strsupX+=supvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__");
_strsupX+='#(end macro)    supvvX(X,"__tmp" + _xbits + "a__","__tmp" + _xbits + "b__")' + '\n';
return _strsupX;
}
_str_main+='' + '\n';
_str_main+='# macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB' + '\n';
var divvvvvX = function(X,nameAdivB, nameAmodB, nameA, nameB){
var _strdivvvvvX; 
_strdivvvvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameAdivB == 'undefined') throw 'Parameter nameAdivB is undefined in call of  macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameAmodB == 'undefined') throw 'Parameter nameAmodB is undefined in call of  macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
if (arguments.length != 5) throw 'Too much arguments provided to macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
_strdivvvvvX+='#(js) _sv6++;' + '\n';
_sv6++;
_strdivvvvvX+='#(begin macro)    scope_begin()' + '\n';
_strdivvvvvX+=scope_begin();
_strdivvvvvX+='#(end macro)    scope_begin()' + '\n';
_strdivvvvvX+='#(begin macro)        lvarX(X,"divvvvvXabsNameA" + _sv6)' + '\n';
_strdivvvvvX+=lvarX(X,"divvvvvXabsNameA" + _sv6);
_strdivvvvvX+='#(end macro)        lvarX(X,"divvvvvXabsNameA" + _sv6)' + '\n';
_strdivvvvvX+='#(begin macro)        pushvX(X,nameA)' + '\n';
_strdivvvvvX+=pushvX(X,nameA);
_strdivvvvvX+='#(end macro)        pushvX(X,nameA)' + '\n';
_strdivvvvvX+='#(begin macro)        popvX(X,"divvvvvXabsNameA" + _sv6)' + '\n';
_strdivvvvvX+=popvX(X,"divvvvvXabsNameA" + _sv6);
_strdivvvvvX+='#(end macro)        popvX(X,"divvvvvXabsNameA" + _sv6)' + '\n';
_strdivvvvvX+='#(begin macro)        lvar("divvvvvXsA" + _sv6,0)' + '\n';
_strdivvvvvX+=lvar("divvvvvXsA" + _sv6,0);
_strdivvvvvX+='#(end macro)        lvar("divvvvvXsA" + _sv6,0)' + '\n';
_strdivvvvvX+='        push ' + nameA + '_s' + '\n';
_strdivvvvvX+='        pop divvvvvXsA' + _sv6 + '' + '\n';
_strdivvvvvX+='#(begin macro)        absvX(X,"divvvvvXabsNameA" + _sv6)' + '\n';
_strdivvvvvX+=absvX(X,"divvvvvXabsNameA" + _sv6);
_strdivvvvvX+='#(end macro)        absvX(X,"divvvvvXabsNameA" + _sv6)' + '\n';
_strdivvvvvX+='        ' + '\n';
_strdivvvvvX+='#(begin macro)        lvarX(X,"divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+=lvarX(X,"divvvvvXabsNameB" + _sv6);
_strdivvvvvX+='#(end macro)        lvarX(X,"divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+='#(begin macro)        pushvX(X,nameB)' + '\n';
_strdivvvvvX+=pushvX(X,nameB);
_strdivvvvvX+='#(end macro)        pushvX(X,nameB)' + '\n';
_strdivvvvvX+='#(begin macro)        popvX(X,"divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+=popvX(X,"divvvvvXabsNameB" + _sv6);
_strdivvvvvX+='#(end macro)        popvX(X,"divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+='#(begin macro)        lvar("divvvvvXsB" + _sv6,0)' + '\n';
_strdivvvvvX+=lvar("divvvvvXsB" + _sv6,0);
_strdivvvvvX+='#(end macro)        lvar("divvvvvXsB" + _sv6,0)' + '\n';
_strdivvvvvX+='        push ' + nameB + '_s' + '\n';
_strdivvvvvX+='        pop divvvvvXsB' + _sv6 + '' + '\n';
_strdivvvvvX+='#(begin macro)        absvX(X,"divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+=absvX(X,"divvvvvXabsNameB" + _sv6);
_strdivvvvvX+='#(end macro)        absvX(X,"divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+='        ' + '\n';
_strdivvvvvX+='#(begin macro)        pushvX(X,"divvvvvXabsNameA" + _sv6)' + '\n';
_strdivvvvvX+=pushvX(X,"divvvvvXabsNameA" + _sv6);
_strdivvvvvX+='#(end macro)        pushvX(X,"divvvvvXabsNameA" + _sv6)' + '\n';
_strdivvvvvX+='#(begin macro)        popvX(X,nameAmodB)' + '\n';
_strdivvvvvX+=popvX(X,nameAmodB);
_strdivvvvvX+='#(end macro)        popvX(X,nameAmodB)' + '\n';
_strdivvvvvX+='        ' + '\n';
_strdivvvvvX+='#(begin macro)        resetvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=resetvX(X,nameAdivB);
_strdivvvvvX+='#(end macro)        resetvX(X,nameAdivB)' + '\n';
_strdivvvvvX+='        ' + '\n';
_strdivvvvvX+='#(begin macro)        boolvX(X,"divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+=boolvX(X,"divvvvvXabsNameB" + _sv6);
_strdivvvvvX+='#(end macro)        boolvX(X,"divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+='        if' + '\n';
_strdivvvvvX+='            push    1' + '\n';
_strdivvvvvX+='            sbm     divvvvvX_g' + _sv6 + '' + '\n';
_strdivvvvvX+='            while' + '\n';
_strdivvvvvX+='#(begin macro)                supequalvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+=supequalvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6);
_strdivvvvvX+='#(end macro)                supequalvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+='                if' + '\n';
_strdivvvvvX+='#(begin macro)                    incvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=incvX(X,nameAdivB);
_strdivvvvvX+='#(end macro)                    incvX(X,nameAdivB)' + '\n';
_strdivvvvvX+='#(begin macro)                    subvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+=subvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6);
_strdivvvvvX+='#(end macro)                    subvvX(X,nameAmodB, "divvvvvXabsNameB" + _sv6)' + '\n';
_strdivvvvvX+='                else' + '\n';
_strdivvvvvX+='#(begin macro)                    at_reset("divvvvvX_g" + _sv6) # break while/wend' + '\n';
_strdivvvvvX+=at_reset("divvvvvX_g" + _sv6);
_strdivvvvvX+='#(end macro)                    at_reset("divvvvvX_g" + _sv6) # break while/wend' + '\n';
_strdivvvvvX+='                fi' + '\n';
_strdivvvvvX+='            wend' + '\n';
_strdivvvvvX+='            ' + '\n';
_strdivvvvvX+='            # treat sign of nameAmodB and nameAdivB' + '\n';
_strdivvvvvX+='            push    divvvvvXsA' + _sv6 + '' + '\n';
_strdivvvvvX+='            pop     ' + nameAmodB + '_s   # sign of nameAmodB is sign of nameA' + '\n';
_strdivvvvvX+='            push    divvvvvXsA' + _sv6 + '' + '\n';
_strdivvvvvX+='            push    divvvvvXsB' + _sv6 + '' + '\n';
_strdivvvvvX+='            diff' + '\n';
_strdivvvvvX+='            if' + '\n';
_strdivvvvvX+='                push    1' + '\n';
_strdivvvvvX+='                pop     ' + nameAdivB + '_s # nameAdivB is negative if sign NameA <> sign nameB' + '\n';
_strdivvvvvX+='            fi' + '\n';
_strdivvvvvX+='        else' + '\n';
_strdivvvvvX+='#(begin macro)            setcvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=setcvX(X,nameAdivB);
_strdivvvvvX+='#(end macro)            setcvX(X,nameAdivB)' + '\n';
_strdivvvvvX+='#(begin macro)            setcvX(X,nameAmodB)            ' + '\n';
_strdivvvvvX+=setcvX(X,nameAmodB);
_strdivvvvvX+='#(end macro)            setcvX(X,nameAmodB)            ' + '\n';
_strdivvvvvX+='        fi' + '\n';
_strdivvvvvX+='#(begin macro)    scope_end()' + '\n';
_strdivvvvvX+=scope_end();
_strdivvvvvX+='#(end macro)    scope_end()' + '\n';
return _strdivvvvvX;
}
_str_main+='' + '\n';
_str_main+='# macro divvvX(X,nameA, nameB) : Push 2 X*8 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB ' + '\n';
var divvvX = function(X,nameA, nameB){
var _strdivvvX; 
_strdivvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strdivvvX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strdivvvX+='#(begin macro)    divvvvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__", nameA, nameB)' + '\n';
_strdivvvX+=divvvvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__", nameA, nameB);
_strdivvvX+='#(end macro)    divvvvvX(X,"__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__", nameA, nameB)' + '\n';
_strdivvvX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "b__")   # nameA mod nameB' + '\n';
_strdivvvX+=pushvX(X,"__tmp" + _xbits + "b__");
_strdivvvX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "b__")   # nameA mod nameB' + '\n';
_strdivvvX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "a__")   # nameA div nameB' + '\n';
_strdivvvX+=pushvX(X,"__tmp" + _xbits + "a__");
_strdivvvX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "a__")   # nameA div nameB' + '\n';
return _strdivvvX;
}
_str_main+='' + '\n';
_str_main+='# macro divX(X) : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B' + '\n';
var divX = function(X){
var _strdivX; 
_strdivX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro divX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro divX(X)[' + [X] +']';
_strdivX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strdivX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strdivX+=popvX(X,"__tmp" + _xbits + "b__");
_strdivX+='#(end macro)    popvX(X,"__tmp" + _xbits + "b__")' + '\n';
_strdivX+='#(begin macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strdivX+=popvX(X,"__tmp" + _xbits + "a__");
_strdivX+='#(end macro)    popvX(X,"__tmp" + _xbits + "a__")' + '\n';
_strdivX+='#(begin macro)    divvvvvX(X,"__tmp" + _xbits + "c__","__tmp" + _xbits + "d__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")' + '\n';
_strdivX+=divvvvvX(X,"__tmp" + _xbits + "c__","__tmp" + _xbits + "d__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__");
_strdivX+='#(end macro)    divvvvvX(X,"__tmp" + _xbits + "c__","__tmp" + _xbits + "d__", "__tmp" + _xbits + "a__", "__tmp" + _xbits + "b__")' + '\n';
_strdivX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "d__") # __tmpXa__ mod __tpmXb__' + '\n';
_strdivX+=pushvX(X,"__tmp" + _xbits + "d__");
_strdivX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "d__") # __tmpXa__ mod __tpmXb__' + '\n';
_strdivX+='#(begin macro)    pushvX(X,"__tmp" + _xbits + "c__") # __tmpXa__ div __tmpXb__' + '\n';
_strdivX+=pushvX(X,"__tmp" + _xbits + "c__");
_strdivX+='#(end macro)    pushvX(X,"__tmp" + _xbits + "c__") # __tmpXa__ div __tmpXb__' + '\n';
return _strdivX;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# macro castX(X1,X2) : transform stack X1*8 bits value to X2*8 bits value' + '\n';
var castX = function(X1,X2){
var _strcastX; 
_strcastX='';
if (typeof X1 == 'undefined') throw 'Parameter X1 is undefined in call of  macro castX(X1,X2)[' + [X1,X2] +']';
if (typeof X2 == 'undefined') throw 'Parameter X2 is undefined in call of  macro castX(X1,X2)[' + [X1,X2] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro castX(X1,X2)[' + [X1,X2] +']';
_strcastX+='#(js) if (X1 != X2 && X1 > 0 && X2 > 0) {' + '\n';
if (X1 != X2 && X1 > 0 && X2 > 0) {
_strcastX+='#(js) _sv9++;' + '\n';
_sv9++;
_strcastX+='#(begin macro)    sbmX(X1,"_castXInput"+_sv9,0)' + '\n';
_strcastX+=sbmX(X1,"_castXInput"+_sv9,0);
_strcastX+='#(end macro)    sbmX(X1,"_castXInput"+_sv9,0)' + '\n';
_strcastX+='#(begin macro)    varX(X2,"_castXoutput"+_sv9)' + '\n';
_strcastX+=varX(X2,"_castXoutput"+_sv9);
_strcastX+='#(end macro)    varX(X2,"_castXoutput"+_sv9)' + '\n';
_strcastX+='#(begin macro)    scope_begin()' + '\n';
_strcastX+=scope_begin();
_strcastX+='#(end macro)    scope_begin()' + '\n';
_strcastX+='#(begin macro)        lvarX(X1,"ori" + _sv9)' + '\n';
_strcastX+=lvarX(X1,"ori" + _sv9);
_strcastX+='#(end macro)        lvarX(X1,"ori" + _sv9)' + '\n';
_strcastX+='#(begin macro)        lvarX(X2,"dest" + _sv9)' + '\n';
_strcastX+=lvarX(X2,"dest" + _sv9);
_strcastX+='#(end macro)        lvarX(X2,"dest" + _sv9)' + '\n';
_strcastX+='' + '\n';
_strcastX+='#(begin macro)        pushvX(X1,"_castXInput"+_sv9)       ' + '\n';
_strcastX+=pushvX(X1,"_castXInput"+_sv9);
_strcastX+='#(end macro)        pushvX(X1,"_castXInput"+_sv9)       ' + '\n';
_strcastX+='#(begin macro)        popvX(X1,"ori" + _sv9)' + '\n';
_strcastX+=popvX(X1,"ori" + _sv9);
_strcastX+='#(end macro)        popvX(X1,"ori" + _sv9)' + '\n';
_strcastX+='        push    ori' + _sv9 + '_s   ' + '\n';
_strcastX+='        pop     dest' + _sv9 + '_s  # keep sign' + '\n';
_strcastX+='#(js) if (X1 < X2) {' + '\n';
if (X1 < X2) {
_strcastX+='#(js) for (var xx = 0 ; xx < X1; xx++) {' + '\n';
for (var xx = 0 ; xx < X1; xx++) {
_strcastX+='                push    ori' + _sv9 + '_' + xx + '' + '\n';
_strcastX+='                pop     dest' + _sv9 + '_' + xx + '' + '\n';
_strcastX+='#(js) }' + '\n';
}
_strcastX+='#(js) for (var xx = X1; xx < X2 ; xx++ ) {' + '\n';
for (var xx = X1; xx < X2 ; xx++ ) {
_strcastX+='                push    0' + '\n';
_strcastX+='                pop     dest' + _sv9 + '_' + xx + '' + '\n';
_strcastX+='#(js) } ' + '\n';
} 
_strcastX+='#(js) } else { // if X1 > X2' + '\n';
} else { // if X1 > X2
_strcastX+='#(js) for (var xx = 0 ; xx < X2; xx++) {' + '\n';
for (var xx = 0 ; xx < X2; xx++) {
_strcastX+='                push    ori' + _sv9 + '_' + xx + '' + '\n';
_strcastX+='                pop     dest' + _sv9 + '_' + xx + '' + '\n';
_strcastX+='#(js) }' + '\n';
}
_strcastX+='            ' + '\n';
_strcastX+='#(js) }' + '\n';
}
_strcastX+='#(begin macro)        pushvX(X2,"dest"+_sv9)' + '\n';
_strcastX+=pushvX(X2,"dest"+_sv9);
_strcastX+='#(end macro)        pushvX(X2,"dest"+_sv9)' + '\n';
_strcastX+='#(begin macro)        popvX(X2,"_castXoutput"+_sv9)' + '\n';
_strcastX+=popvX(X2,"_castXoutput"+_sv9);
_strcastX+='#(end macro)        popvX(X2,"_castXoutput"+_sv9)' + '\n';
_strcastX+='#(begin macro)    scope_end()' + '\n';
_strcastX+=scope_end();
_strcastX+='#(end macro)    scope_end()' + '\n';
_strcastX+='#(begin macro)    dropX(X1)' + '\n';
_strcastX+=dropX(X1);
_strcastX+='#(end macro)    dropX(X1)' + '\n';
_strcastX+='#(begin macro)    pushvX(X2,"_castXoutput"+_sv9) ' + '\n';
_strcastX+=pushvX(X2,"_castXoutput"+_sv9);
_strcastX+='#(end macro)    pushvX(X2,"_castXoutput"+_sv9) ' + '\n';
_strcastX+='#(js) }' + '\n';
}
return _strcastX;
}
_str_main+='' + '\n';
_str_main+='# macro sbmX2(X,name,backward,offset) : sbm a X*8 bit head of stack - (backward X*8 bits value+ offset)' + '\n';
var sbmX2 = function(X,name,backward,offset){
var _strsbmX2; 
_strsbmX2='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro sbmX2(X,name,backward,offset)[' + [X,name,backward,offset] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro sbmX2(X,name,backward,offset)[' + [X,name,backward,offset] +']';
if (typeof backward == 'undefined') throw 'Parameter backward is undefined in call of  macro sbmX2(X,name,backward,offset)[' + [X,name,backward,offset] +']';
if (typeof offset == 'undefined') throw 'Parameter offset is undefined in call of  macro sbmX2(X,name,backward,offset)[' + [X,name,backward,offset] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro sbmX2(X,name,backward,offset)[' + [X,name,backward,offset] +']';
_strsbmX2+='#(js) for (var xx=0; xx <X ; xx++) {' + '\n';
for (var xx=0; xx <X ; xx++) {
_strsbmX2+='    sbm ' + name + '_' + xx + ' - ' + (backward*(X+2)+xx+offset) + '' + '\n';
_strsbmX2+='#(js) }' + '\n';
}
_strsbmX2+='    sbm ' + name + '_s - ' + (backward*(X+2)+X+offset) + '' + '\n';
_strsbmX2+='    sbm ' + name + '_c - ' + (backward*(X+2)+X+1+offset) + '' + '\n';
return _strsbmX2;
}
_str_main+='' + '\n';
_str_main+='# macro sbmX(X,name,backward) : sbm a X*8 bit head of stack - (backward X*8 bits value)' + '\n';
var sbmX = function(X,name,backward){
var _strsbmX; 
_strsbmX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro sbmX(X,name,backward)[' + [X,name,backward] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro sbmX(X,name,backward)[' + [X,name,backward] +']';
if (typeof backward == 'undefined') throw 'Parameter backward is undefined in call of  macro sbmX(X,name,backward)[' + [X,name,backward] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro sbmX(X,name,backward)[' + [X,name,backward] +']';
_strsbmX+='#(begin macro)    sbmX2(X,name,backward,0)' + '\n';
_strsbmX+=sbmX2(X,name,backward,0);
_strsbmX+='#(end macro)    sbmX2(X,name,backward,0)' + '\n';
return _strsbmX;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# upcast macro' + '\n';
var cast8to16 = function(){
var _strcast8to16; 
_strcast8to16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast8to16()[' + [] +']';
_strcast8to16+='#(begin macro)    castX(1,2)' + '\n';
_strcast8to16+=castX(1,2);
_strcast8to16+='#(end macro)    castX(1,2)' + '\n';
return _strcast8to16;
}
_str_main+='' + '\n';
var cast8to24 = function(){
var _strcast8to24; 
_strcast8to24='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast8to24()[' + [] +']';
_strcast8to24+='#(begin macro)    castX(1,3)' + '\n';
_strcast8to24+=castX(1,3);
_strcast8to24+='#(end macro)    castX(1,3)' + '\n';
return _strcast8to24;
}
_str_main+='' + '\n';
var cast8to32 = function(){
var _strcast8to32; 
_strcast8to32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast8to32()[' + [] +']';
_strcast8to32+='#(begin macro)    castX(1,4)' + '\n';
_strcast8to32+=castX(1,4);
_strcast8to32+='#(end macro)    castX(1,4)' + '\n';
return _strcast8to32;
}
_str_main+='' + '\n';
var cast16to24 = function(){
var _strcast16to24; 
_strcast16to24='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast16to24()[' + [] +']';
_strcast16to24+='#(begin macro)    castX(2,3)' + '\n';
_strcast16to24+=castX(2,3);
_strcast16to24+='#(end macro)    castX(2,3)' + '\n';
return _strcast16to24;
}
_str_main+='' + '\n';
var cast16to32 = function(){
var _strcast16to32; 
_strcast16to32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast16to32()[' + [] +']';
_strcast16to32+='#(begin macro)    castX(2,4)' + '\n';
_strcast16to32+=castX(2,4);
_strcast16to32+='#(end macro)    castX(2,4)' + '\n';
return _strcast16to32;
}
_str_main+='' + '\n';
var cast24to32 = function(){
var _strcast24to32; 
_strcast24to32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast24to32()[' + [] +']';
_strcast24to32+='#(begin macro)    castX(3,4)' + '\n';
_strcast24to32+=castX(3,4);
_strcast24to32+='#(end macro)    castX(3,4)' + '\n';
return _strcast24to32;
}
_str_main+='' + '\n';
_str_main+='# downcast macro' + '\n';
var cast16to8 = function(){
var _strcast16to8; 
_strcast16to8='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast16to8()[' + [] +']';
_strcast16to8+='#(begin macro)    castX(2,1)' + '\n';
_strcast16to8+=castX(2,1);
_strcast16to8+='#(end macro)    castX(2,1)' + '\n';
return _strcast16to8;
}
_str_main+='' + '\n';
var cast24to8 = function(){
var _strcast24to8; 
_strcast24to8='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast24to8()[' + [] +']';
_strcast24to8+='#(begin macro)    castX(3,1)' + '\n';
_strcast24to8+=castX(3,1);
_strcast24to8+='#(end macro)    castX(3,1)' + '\n';
return _strcast24to8;
}
_str_main+='' + '\n';
var cast32to8 = function(){
var _strcast32to8; 
_strcast32to8='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast32to8()[' + [] +']';
_strcast32to8+='#(begin macro)    castX(4,1)' + '\n';
_strcast32to8+=castX(4,1);
_strcast32to8+='#(end macro)    castX(4,1)' + '\n';
return _strcast32to8;
}
_str_main+='' + '\n';
var cast24to16 = function(){
var _strcast24to16; 
_strcast24to16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast24to16()[' + [] +']';
_strcast24to16+='#(begin macro)    castX(3,2)' + '\n';
_strcast24to16+=castX(3,2);
_strcast24to16+='#(end macro)    castX(3,2)' + '\n';
return _strcast24to16;
}
_str_main+='' + '\n';
var cast32to16 = function(){
var _strcast32to16; 
_strcast32to16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast32to16()[' + [] +']';
_strcast32to16+='#(begin macro)    castX(3,2)' + '\n';
_strcast32to16+=castX(3,2);
_strcast32to16+='#(end macro)    castX(3,2)' + '\n';
return _strcast32to16;
}
_str_main+='' + '\n';
var cast32to24 = function(){
var _strcast32to24; 
_strcast32to24='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast32to24()[' + [] +']';
_strcast32to24+='#(begin macro)    castX(4,3)' + '\n';
_strcast32to24+=castX(4,3);
_strcast32to24+='#(end macro)    castX(4,3)' + '\n';
return _strcast32to24;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# macro writeX(X,name) : print out the decimal value (signed)' + '\n';
var writeX = function(X,name){
var _strwriteX; 
_strwriteX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro writeX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro writeX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro writeX(X,name)[' + [X,name] +']';
_strwriteX+='#(js) _sv7++;' + '\n';
_sv7++;
_strwriteX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strwriteX+='#(begin macro)    scope_begin()' + '\n';
_strwriteX+=scope_begin();
_strwriteX+='#(end macro)    scope_begin()' + '\n';
_strwriteX+='#(begin macro)        lvar("writeXprefixzero"+_sv7,1)' + '\n';
_strwriteX+=lvar("writeXprefixzero"+_sv7,1);
_strwriteX+='#(end macro)        lvar("writeXprefixzero"+_sv7,1)' + '\n';
_strwriteX+='#(begin macro)        lvarX(X,"writeX_A"+_sv7)' + '\n';
_strwriteX+=lvarX(X,"writeX_A"+_sv7);
_strwriteX+='#(end macro)        lvarX(X,"writeX_A"+_sv7)' + '\n';
_strwriteX+='#(begin macro)        lvarX(X,"writeX_B"+_sv7)' + '\n';
_strwriteX+=lvarX(X,"writeX_B"+_sv7);
_strwriteX+='#(end macro)        lvarX(X,"writeX_B"+_sv7)' + '\n';
_strwriteX+='#(begin macro)        lvarX(X,"writeX_AmodB"+_sv7)' + '\n';
_strwriteX+=lvarX(X,"writeX_AmodB"+_sv7);
_strwriteX+='#(end macro)        lvarX(X,"writeX_AmodB"+_sv7)' + '\n';
_strwriteX+='#(begin macro)        lvarX(X,"writeX_AdivB"+_sv7)' + '\n';
_strwriteX+=lvarX(X,"writeX_AdivB"+_sv7);
_strwriteX+='#(end macro)        lvarX(X,"writeX_AdivB"+_sv7)' + '\n';
_strwriteX+='' + '\n';
_strwriteX+='#(begin macro)        pushvX(X,name)' + '\n';
_strwriteX+=pushvX(X,name);
_strwriteX+='#(end macro)        pushvX(X,name)' + '\n';
_strwriteX+='#(begin macro)        popvX(X,"writeX_A"+_sv7)' + '\n';
_strwriteX+=popvX(X,"writeX_A"+_sv7);
_strwriteX+='#(end macro)        popvX(X,"writeX_A"+_sv7)' + '\n';
_strwriteX+='        ' + '\n';
_strwriteX+='#(begin macro)        pushX(X,10)' + '\n';
_strwriteX+=pushX(X,10);
_strwriteX+='#(end macro)        pushX(X,10)' + '\n';
_strwriteX+='#(begin macro)        popvX(X,"writeX_B"+_sv7)' + '\n';
_strwriteX+=popvX(X,"writeX_B"+_sv7);
_strwriteX+='#(end macro)        popvX(X,"writeX_B"+_sv7)' + '\n';
_strwriteX+='        ' + '\n';
_strwriteX+='        push writeX_A' + _sv7 + '_s' + '\n';
_strwriteX+='        if' + '\n';
_strwriteX+='            push    \'-\'' + '\n';
_strwriteX+='            pop     out   # write \'-\' if name < 0' + '\n';
_strwriteX+='        fi' + '\n';
_strwriteX+='        ' + '\n';
_strwriteX+='        push _stringDecimal' + _xbits + '_.size' + '\n';
_strwriteX+='        loop' + '\n';
_strwriteX+='            # output = input mod 10 ; input = input div 10' + '\n';
_strwriteX+='#(begin macro)            divvvvvX(X,"writeX_AdivB" + _sv7, "writeX_AmodB" + _sv7, "writeX_A" + _sv7, "writeX_B" + _sv7)' + '\n';
_strwriteX+=divvvvvX(X,"writeX_AdivB" + _sv7, "writeX_AmodB" + _sv7, "writeX_A" + _sv7, "writeX_B" + _sv7);
_strwriteX+='#(end macro)            divvvvvX(X,"writeX_AdivB" + _sv7, "writeX_AmodB" + _sv7, "writeX_A" + _sv7, "writeX_B" + _sv7)' + '\n';
_strwriteX+='            push    writeX_AmodB' + _sv7 + '_0' + '\n';
_strwriteX+='            pop  _stringDecimal' + _xbits + '_' + '\n';
_strwriteX+='#(begin macro)            pushvX(X,"writeX_AdivB" + _sv7)' + '\n';
_strwriteX+=pushvX(X,"writeX_AdivB" + _sv7);
_strwriteX+='#(end macro)            pushvX(X,"writeX_AdivB" + _sv7)' + '\n';
_strwriteX+='#(begin macro)            popvX(X,"writeX_A" + _sv7)' + '\n';
_strwriteX+=popvX(X,"writeX_A" + _sv7);
_strwriteX+='#(end macro)            popvX(X,"writeX_A" + _sv7)' + '\n';
_strwriteX+='            arotl _stringDecimal' + _xbits + '_' + '\n';
_strwriteX+='        endloop' + '\n';
_strwriteX+='        ' + '\n';
_strwriteX+='        push _stringDecimal' + _xbits + '_.size' + '\n';
_strwriteX+='        sbm writeXcnt' + _sv7 + '' + '\n';
_strwriteX+='        loop' + '\n';
_strwriteX+='            arotr _stringDecimal' + _xbits + '_' + '\n';
_strwriteX+='#(begin macro)            if_sup("writeXcnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)' + '\n';
_strwriteX+=if_sup("writeXcnt" + _sv7,1);
_strwriteX+='#(end macro)            if_sup("writeXcnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)' + '\n';
_strwriteX+='#(begin macro)                if_diff("_stringDecimal" + _xbits +"_",0)' + '\n';
_strwriteX+=if_diff("_stringDecimal" + _xbits +"_",0);
_strwriteX+='#(end macro)                if_diff("_stringDecimal" + _xbits +"_",0)' + '\n';
_strwriteX+='                    push _stringDecimal' + _xbits + '_' + '\n';
_strwriteX+='#(begin macro)                    popouthexa()' + '\n';
_strwriteX+=popouthexa();
_strwriteX+='#(end macro)                    popouthexa()' + '\n';
_strwriteX+='#(begin macro)                    at_set("writeXprefixzero"+_sv7,0)' + '\n';
_strwriteX+=at_set("writeXprefixzero"+_sv7,0);
_strwriteX+='#(end macro)                    at_set("writeXprefixzero"+_sv7,0)' + '\n';
_strwriteX+='                else    ' + '\n';
_strwriteX+='#(begin macro)                    if_equal("writeXprefixzero"+_sv7,0)' + '\n';
_strwriteX+=if_equal("writeXprefixzero"+_sv7,0);
_strwriteX+='#(end macro)                    if_equal("writeXprefixzero"+_sv7,0)' + '\n';
_strwriteX+='                        push _stringDecimal' + _xbits + '_' + '\n';
_strwriteX+='#(begin macro)                        popouthexa()' + '\n';
_strwriteX+=popouthexa();
_strwriteX+='#(end macro)                        popouthexa()' + '\n';
_strwriteX+='                    fi' + '\n';
_strwriteX+='                fi' + '\n';
_strwriteX+='            else' + '\n';
_strwriteX+='                push _stringDecimal' + _xbits + '_' + '\n';
_strwriteX+='#(begin macro)                popouthexa()' + '\n';
_strwriteX+=popouthexa();
_strwriteX+='#(end macro)                popouthexa()' + '\n';
_strwriteX+='            fi' + '\n';
_strwriteX+='        endloop' + '\n';
_strwriteX+='        ' + '\n';
_strwriteX+='        ' + '\n';
_strwriteX+='#(begin macro)    scope_end()' + '\n';
_strwriteX+=scope_end();
_strwriteX+='#(end macro)    scope_end()' + '\n';
return _strwriteX;
}
_str_main+='' + '\n';
_str_main+='# macro printhexaX(X,name) : print the X*8 bit variable in hexadecimal' + '\n';
var printhexaX = function(X,name){
var _strprinthexaX; 
_strprinthexaX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro printhexaX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro printhexaX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro printhexaX(X,name)[' + [X,name] +']';
_strprinthexaX+='    push    ' + name + '_c' + '\n';
_strprinthexaX+='#(begin macro)    popout8hexa()' + '\n';
_strprinthexaX+=popout8hexa();
_strprinthexaX+='#(end macro)    popout8hexa()' + '\n';
_strprinthexaX+='    push    ' + name + '_s' + '\n';
_strprinthexaX+='#(begin macro)    popout8hexa()' + '\n';
_strprinthexaX+=popout8hexa();
_strprinthexaX+='#(end macro)    popout8hexa()' + '\n';
_strprinthexaX+='#(js) for (var xx = 0 ; xx < X ; xx++) {' + '\n';
for (var xx = 0 ; xx < X ; xx++) {
_strprinthexaX+='#(js) var xx1; xx1= X-xx-1' + '\n';
var xx1; xx1= X-xx-1
_strprinthexaX+='    push    ' + name + '_' + xx1 + '' + '\n';
_strprinthexaX+='#(begin macro)    popout8hexa()' + '\n';
_strprinthexaX+=popout8hexa();
_strprinthexaX+='#(end macro)    popout8hexa()' + '\n';
_strprinthexaX+='#(js) }' + '\n';
}
return _strprinthexaX;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='#(js) var _sv1; var _sv2; var _sv3; var _sv4; var _sv5; var _sv6; var _sv7; var _sv8; var _sv9;' + '\n';
var _sv1; var _sv2; var _sv3; var _sv4; var _sv5; var _sv6; var _sv7; var _sv8; var _sv9;
_str_main+='#(js) _sv1 = 0; _sv2=0; _sv3 = 0; _sv4 = 0; _sv5 = 0; _sv6 = 0; _sv7 = 0; _sv8 = 0; _sv9 = 0;' + '\n';
_sv1 = 0; _sv2=0; _sv3 = 0; _sv4 = 0; _sv5 = 0; _sv6 = 0; _sv7 = 0; _sv8 = 0; _sv9 = 0;
_str_main+='' + '\n';
_str_main+='# declare temporary 16 bits value used for signed16.inc macros' + '\n';
var declareTmpX = function(X){
var _strdeclareTmpX; 
_strdeclareTmpX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro declareTmpX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro declareTmpX(X)[' + [X] +']';
_strdeclareTmpX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strdeclareTmpX+='#(js) var _nDecimal ; _nDecimal = ("" + (Math.pow(2,8*X)-1)).length;' + '\n';
var _nDecimal ; _nDecimal = ("" + (Math.pow(2,8*X)-1)).length;
_strdeclareTmpX+='#(begin macro)    varX(X, "__tmp" + _xbits + "__" )' + '\n';
_strdeclareTmpX+=varX(X, "__tmp" + _xbits + "__" );
_strdeclareTmpX+='#(end macro)    varX(X, "__tmp" + _xbits + "__" )' + '\n';
_strdeclareTmpX+='#(begin macro)    varX(X, "__tmp" + _xbits + "a__" )' + '\n';
_strdeclareTmpX+=varX(X, "__tmp" + _xbits + "a__" );
_strdeclareTmpX+='#(end macro)    varX(X, "__tmp" + _xbits + "a__" )' + '\n';
_strdeclareTmpX+='#(begin macro)    varX(X, "__tmp" + _xbits + "b__" )' + '\n';
_strdeclareTmpX+=varX(X, "__tmp" + _xbits + "b__" );
_strdeclareTmpX+='#(end macro)    varX(X, "__tmp" + _xbits + "b__" )' + '\n';
_strdeclareTmpX+='#(begin macro)    varX(X, "__tmp" + _xbits + "c__" )' + '\n';
_strdeclareTmpX+=varX(X, "__tmp" + _xbits + "c__" );
_strdeclareTmpX+='#(end macro)    varX(X, "__tmp" + _xbits + "c__" )' + '\n';
_strdeclareTmpX+='#(begin macro)    varX(X, "__tmp" + _xbits + "d__" )' + '\n';
_strdeclareTmpX+=varX(X, "__tmp" + _xbits + "d__" );
_strdeclareTmpX+='#(end macro)    varX(X, "__tmp" + _xbits + "d__" )' + '\n';
_strdeclareTmpX+='    var  _stringDecimal' + _xbits + '_*' + _nDecimal + '' + '\n';
return _strdeclareTmpX;
}
_str_main+='#(end include)signedX.inc' + '\n';
_str_main+='' + '\n';
_str_main+='# macro add 2 fixed point number (I+P)*8 bits in stack' + '\n';
var addFP = function(I,P){
var _straddFP; 
_straddFP='';
if (typeof I == 'undefined') throw 'Parameter I is undefined in call of  macro addFP(I,P)[' + [I,P] +']';
if (typeof P == 'undefined') throw 'Parameter P is undefined in call of  macro addFP(I,P)[' + [I,P] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro addFP(I,P)[' + [I,P] +']';
_straddFP+='#(begin macro)    addX(I+P)' + '\n';
_straddFP+=addX(I+P);
_straddFP+='#(end macro)    addX(I+P)' + '\n';
return _straddFP;
}
_str_main+='' + '\n';
_str_main+='# macro sub 2 fixed point number (I+P)*8 bits in stack' + '\n';
var subFP = function(I,P){
var _strsubFP; 
_strsubFP='';
if (typeof I == 'undefined') throw 'Parameter I is undefined in call of  macro subFP(I,P)[' + [I,P] +']';
if (typeof P == 'undefined') throw 'Parameter P is undefined in call of  macro subFP(I,P)[' + [I,P] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subFP(I,P)[' + [I,P] +']';
_strsubFP+='#(begin macro)    subX(I+P)' + '\n';
_strsubFP+=subX(I+P);
_strsubFP+='#(end macro)    subX(I+P)' + '\n';
return _strsubFP;
}
_str_main+='' + '\n';
var incFP = function(I,P){
var _strincFP; 
_strincFP='';
if (typeof I == 'undefined') throw 'Parameter I is undefined in call of  macro incFP(I,P)[' + [I,P] +']';
if (typeof P == 'undefined') throw 'Parameter P is undefined in call of  macro incFP(I,P)[' + [I,P] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro incFP(I,P)[' + [I,P] +']';
_strincFP+='#(js) _fp2++;' + '\n';
_fp2++;
_strincFP+='#(begin macro)    sbmX2(I,"_incFPinput"+_fp2,0,P)' + '\n';
_strincFP+=sbmX2(I,"_incFPinput"+_fp2,0,P);
_strincFP+='#(end macro)    sbmX2(I,"_incFPinput"+_fp2,0,P)' + '\n';
_strincFP+='#    pushvX(I,"_incFPinput"+_fp2)' + '\n';
_strincFP+='#    incX(I)' + '\n';
_strincFP+='#    popvX(I,"_incFPinput"+_fp2)' + '\n';
_strincFP+='    ' + '\n';
_strincFP+='' + '\n';
_strincFP+='#(begin macro)    incvX(I,"_incFPinput"+_fp2)' + '\n';
_strincFP+=incvX(I,"_incFPinput"+_fp2);
_strincFP+='#(end macro)    incvX(I,"_incFPinput"+_fp2)' + '\n';
return _strincFP;
}
_str_main+='' + '\n';
var decFP = function(I,P){
var _strdecFP; 
_strdecFP='';
if (typeof I == 'undefined') throw 'Parameter I is undefined in call of  macro decFP(I,P)[' + [I,P] +']';
if (typeof P == 'undefined') throw 'Parameter P is undefined in call of  macro decFP(I,P)[' + [I,P] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro decFP(I,P)[' + [I,P] +']';
_strdecFP+='#(js) _fp2++;' + '\n';
_fp2++;
_strdecFP+='#(begin macro)    sbmX2(I,"_incFPinput"+_fp2,0,P)' + '\n';
_strdecFP+=sbmX2(I,"_incFPinput"+_fp2,0,P);
_strdecFP+='#(end macro)    sbmX2(I,"_incFPinput"+_fp2,0,P)' + '\n';
_strdecFP+='#(begin macro)    decvX(I,"_incFPinput"+_fp2)' + '\n';
_strdecFP+=decvX(I,"_incFPinput"+_fp2);
_strdecFP+='#(end macro)    decvX(I,"_incFPinput"+_fp2)' + '\n';
return _strdecFP;
}
_str_main+='' + '\n';
_str_main+='# macro setFP(I,P,immValue) : set fixed point head of stack I,P (I+P)*8 bits with immediate value ' + '\n';
var setFP = function(I,P,immValue){
var _strsetFP; 
_strsetFP='';
if (typeof I == 'undefined') throw 'Parameter I is undefined in call of  macro setFP(I,P,immValue)[' + [I,P,immValue] +']';
if (typeof P == 'undefined') throw 'Parameter P is undefined in call of  macro setFP(I,P,immValue)[' + [I,P,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro setFP(I,P,immValue)[' + [I,P,immValue] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro setFP(I,P,immValue)[' + [I,P,immValue] +']';
_strsetFP+='#(js) _sv8++; ' + '\n';
_sv8++; 
_strsetFP+='#(js) var IP; IP = I+P;' + '\n';
var IP; IP = I+P;
_strsetFP+='#(js) var _sign = immValue >=0?0:1;' + '\n';
var _sign = immValue >=0?0:1;
_strsetFP+='#(js) var _abs = immValue>=0?immValue:-immValue;' + '\n';
var _abs = immValue>=0?immValue:-immValue;
_strsetFP+='#(js) var _int; _int = _abs | 0;' + '\n';
var _int; _int = _abs | 0;
_strsetFP+='#(js) var _fra; _fra = ((_abs - _int) * Math.pow(256,P)) | 0;' + '\n';
var _fra; _fra = ((_abs - _int) * Math.pow(256,P)) | 0;
_strsetFP+='#(js) var _fp; _fp = _int * Math.pow(256,P) + _fra;' + '\n';
var _fp; _fp = _int * Math.pow(256,P) + _fra;
_strsetFP+='#(js) if (_sign ==1) _fp = -_fp;' + '\n';
if (_sign ==1) _fp = -_fp;
_strsetFP+='#(begin macro)    sbmX(IP,"_instack"+_sv8,0)' + '\n';
_strsetFP+=sbmX(IP,"_instack"+_sv8,0);
_strsetFP+='#(end macro)    sbmX(IP,"_instack"+_sv8,0)' + '\n';
_strsetFP+='#(begin macro)    setvX(IP,"_instack"+_sv8, _fp)' + '\n';
_strsetFP+=setvX(IP,"_instack"+_sv8, _fp);
_strsetFP+='#(end macro)    setvX(IP,"_instack"+_sv8, _fp)' + '\n';
return _strsetFP;
}
_str_main+='' + '\n';
_str_main+='# macro pushFP(I,P,immValue) : push immediate fixed point number onto the stack ' + '\n';
var pushFP = function(I,P,immValue){
var _strpushFP; 
_strpushFP='';
if (typeof I == 'undefined') throw 'Parameter I is undefined in call of  macro pushFP(I,P,immValue)[' + [I,P,immValue] +']';
if (typeof P == 'undefined') throw 'Parameter P is undefined in call of  macro pushFP(I,P,immValue)[' + [I,P,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro pushFP(I,P,immValue)[' + [I,P,immValue] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro pushFP(I,P,immValue)[' + [I,P,immValue] +']';
_strpushFP+='#(begin macro)    pushX(I+P,0)' + '\n';
_strpushFP+=pushX(I+P,0);
_strpushFP+='#(end macro)    pushX(I+P,0)' + '\n';
_strpushFP+='#(begin macro)    setFP(I,P,immValue) ' + '\n';
_strpushFP+=setFP(I,P,immValue);
_strpushFP+='#(end macro)    setFP(I,P,immValue) ' + '\n';
return _strpushFP;
}
_str_main+='' + '\n';
_str_main+='# macro castFP(I1,P1,I2,P2) : transform head of Stack Fixed point number I1,P1 (I1+P1* 8 bits) into a Fixed point number I2,P2 (I2+P2*8 bits)' + '\n';
var castFP = function(I1,P1,I2,P2){
var _strcastFP; 
_strcastFP='';
if (typeof I1 == 'undefined') throw 'Parameter I1 is undefined in call of  macro castFP(I1,P1,I2,P2)[' + [I1,P1,I2,P2] +']';
if (typeof P1 == 'undefined') throw 'Parameter P1 is undefined in call of  macro castFP(I1,P1,I2,P2)[' + [I1,P1,I2,P2] +']';
if (typeof I2 == 'undefined') throw 'Parameter I2 is undefined in call of  macro castFP(I1,P1,I2,P2)[' + [I1,P1,I2,P2] +']';
if (typeof P2 == 'undefined') throw 'Parameter P2 is undefined in call of  macro castFP(I1,P1,I2,P2)[' + [I1,P1,I2,P2] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro castFP(I1,P1,I2,P2)[' + [I1,P1,I2,P2] +']';
_strcastFP+='#(js) _sv8++; ' + '\n';
_sv8++; 
_strcastFP+='#(js) var I1P1; I1P1 = I1+P1;' + '\n';
var I1P1; I1P1 = I1+P1;
_strcastFP+='#(js) var I2P2; I2P2 = I2+P2;' + '\n';
var I2P2; I2P2 = I2+P2;
_strcastFP+='#(begin macro)    varX(I1P1,"_instack" +_sv8)' + '\n';
_strcastFP+=varX(I1P1,"_instack" +_sv8);
_strcastFP+='#(end macro)    varX(I1P1,"_instack" +_sv8)' + '\n';
_strcastFP+='#(begin macro)    varX(I2P2,"_outstack" + _sv8)' + '\n';
_strcastFP+=varX(I2P2,"_outstack" + _sv8);
_strcastFP+='#(end macro)    varX(I2P2,"_outstack" + _sv8)' + '\n';
_strcastFP+='    ' + '\n';
_strcastFP+='#(begin macro)    popvX(I1P1,"_instack" + _sv8)' + '\n';
_strcastFP+=popvX(I1P1,"_instack" + _sv8);
_strcastFP+='#(end macro)    popvX(I1P1,"_instack" + _sv8)' + '\n';
_strcastFP+='    # reset outstack' + '\n';
_strcastFP+='#(begin macro)    setvX(I2P2, "_outstack" +_sv8, 0)' + '\n';
_strcastFP+=setvX(I2P2, "_outstack" +_sv8, 0);
_strcastFP+='#(end macro)    setvX(I2P2, "_outstack" +_sv8, 0)' + '\n';
_strcastFP+='    # sign' + '\n';
_strcastFP+='    push _instack' + _sv8 + '_s' + '\n';
_strcastFP+='    pop _outstack' + _sv8 + '_s' + '\n';
_strcastFP+='    # integer part' + '\n';
_strcastFP+='#(js) if (I1 >= I2) {' + '\n';
if (I1 >= I2) {
_strcastFP+='#(js) for (var xx = 0 ; xx < I2; xx++) {' + '\n';
for (var xx = 0 ; xx < I2; xx++) {
_strcastFP+='            push _instack' + _sv8 + '_' + (xx + P1) + '' + '\n';
_strcastFP+='            pop _outstack' + _sv8 + '_' + (xx + P2) + '' + '\n';
_strcastFP+='#(js) }' + '\n';
}
_strcastFP+='#(js) } else { // I1 < I2' + '\n';
} else { // I1 < I2
_strcastFP+='#(js) for (var xx = 0 ; xx < I1; xx++) {' + '\n';
for (var xx = 0 ; xx < I1; xx++) {
_strcastFP+='            push _instack' + _sv8 + '_' + (xx + P1) + '' + '\n';
_strcastFP+='            pop _outstack' + _sv8 + '_' + (xx + P2) + '' + '\n';
_strcastFP+='#(js) }' + '\n';
}
_strcastFP+='#(js) }' + '\n';
}
_strcastFP+='    # fract part' + '\n';
_strcastFP+='#(js) if (P1 >= P2) {' + '\n';
if (P1 >= P2) {
_strcastFP+='#(js) for (var xx = 0 ; xx <P2; xx++) {' + '\n';
for (var xx = 0 ; xx <P2; xx++) {
_strcastFP+='            push _instack' + _sv8 + '_' + (P1-xx-1) + '' + '\n';
_strcastFP+='            pop _outstack' + _sv8 + '_' + (P2-xx-1) + '' + '\n';
_strcastFP+='#(js) }' + '\n';
}
_strcastFP+='#(js) } else { // P1 < P2' + '\n';
} else { // P1 < P2
_strcastFP+='#(js) for (var xx = 0 ; xx < P1; xx++) {' + '\n';
for (var xx = 0 ; xx < P1; xx++) {
_strcastFP+='            push _instack' + _sv8 + '_' + (P1-xx-1) + '' + '\n';
_strcastFP+='            pop _outstack' + _sv8 + '_' + (P2-xx-1) + '' + '\n';
_strcastFP+='#(js) }' + '\n';
}
_strcastFP+='#(js) }' + '\n';
}
_strcastFP+='#(begin macro)    pushvX(I2P2,"_outstack" + _sv8)' + '\n';
_strcastFP+=pushvX(I2P2,"_outstack" + _sv8);
_strcastFP+='#(end macro)    pushvX(I2P2,"_outstack" + _sv8)' + '\n';
return _strcastFP;
}
_str_main+='' + '\n';
_str_main+='# macro integerFP(I,P) : transform head of stack fixed point number I,P (I+P)*8 bits , into a signed integer I*8bits' + '\n';
var integerFP = function(I,P){
var _strintegerFP; 
_strintegerFP='';
if (typeof I == 'undefined') throw 'Parameter I is undefined in call of  macro integerFP(I,P)[' + [I,P] +']';
if (typeof P == 'undefined') throw 'Parameter P is undefined in call of  macro integerFP(I,P)[' + [I,P] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro integerFP(I,P)[' + [I,P] +']';
_strintegerFP+='#(begin macro)    castFP(I,P,I,0)' + '\n';
_strintegerFP+=castFP(I,P,I,0);
_strintegerFP+='#(end macro)    castFP(I,P,I,0)' + '\n';
return _strintegerFP;
}
_str_main+='' + '\n';
var fract = function(I,P){
var _strfract; 
_strfract='';
if (typeof I == 'undefined') throw 'Parameter I is undefined in call of  macro fract(I,P)[' + [I,P] +']';
if (typeof P == 'undefined') throw 'Parameter P is undefined in call of  macro fract(I,P)[' + [I,P] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro fract(I,P)[' + [I,P] +']';
_strfract+='#(begin macro)    castFP(I,P,0,P)' + '\n';
_strfract+=castFP(I,P,0,P);
_strfract+='#(end macro)    castFP(I,P,0,P)' + '\n';
return _strfract;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# macro mul 2 fixed point number (I+P)*8 bits in stack' + '\n';
var mulFP = function(I,P){
var _strmulFP; 
_strmulFP='';
if (typeof I == 'undefined') throw 'Parameter I is undefined in call of  macro mulFP(I,P)[' + [I,P] +']';
if (typeof P == 'undefined') throw 'Parameter P is undefined in call of  macro mulFP(I,P)[' + [I,P] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro mulFP(I,P)[' + [I,P] +']';
_strmulFP+='#(js) _fp1++;' + '\n';
_fp1++;
_strmulFP+='#(js) var IP ; IP = (I+P); ' + '\n';
var IP ; IP = (I+P); 
_strmulFP+='#(js) var IP2 ; IP2 = 2 * IP;' + '\n';
var IP2 ; IP2 = 2 * IP;
_strmulFP+='#(begin macro)    sbmX(IP, "nameB"+_fp1,0)' + '\n';
_strmulFP+=sbmX(IP, "nameB"+_fp1,0);
_strmulFP+='#(end macro)    sbmX(IP, "nameB"+_fp1,0)' + '\n';
_strmulFP+='#(begin macro)    sbmX(IP, "nameA"+_fp1,1)' + '\n';
_strmulFP+=sbmX(IP, "nameA"+_fp1,1);
_strmulFP+='#(end macro)    sbmX(IP, "nameA"+_fp1,1)' + '\n';
_strmulFP+='#(begin macro)    scope_begin()' + '\n';
_strmulFP+=scope_begin();
_strmulFP+='#(end macro)    scope_begin()' + '\n';
_strmulFP+='#(begin macro)        lvarX(IP2, "nameAX"  + _fp1)' + '\n';
_strmulFP+=lvarX(IP2, "nameAX"  + _fp1);
_strmulFP+='#(end macro)        lvarX(IP2, "nameAX"  + _fp1)' + '\n';
_strmulFP+='#(begin macro)        lvarX(IP2, "nameBX"  + _fp1)' + '\n';
_strmulFP+=lvarX(IP2, "nameBX"  + _fp1);
_strmulFP+='#(end macro)        lvarX(IP2, "nameBX"  + _fp1)' + '\n';
_strmulFP+='#(begin macro)        lvarX(IP2, "resultX" + _fp1)' + '\n';
_strmulFP+=lvarX(IP2, "resultX" + _fp1);
_strmulFP+='#(end macro)        lvarX(IP2, "resultX" + _fp1)' + '\n';
_strmulFP+='        ' + '\n';
_strmulFP+='        # upcast nameA to nameAX (from I+P to (I+P) * 2)' + '\n';
_strmulFP+='#(begin macro)        pushvX(IP,"nameA"+_fp1)' + '\n';
_strmulFP+=pushvX(IP,"nameA"+_fp1);
_strmulFP+='#(end macro)        pushvX(IP,"nameA"+_fp1)' + '\n';
_strmulFP+='#(begin macro)        castX(IP,IP2)' + '\n';
_strmulFP+=castX(IP,IP2);
_strmulFP+='#(end macro)        castX(IP,IP2)' + '\n';
_strmulFP+='#(begin macro)        popvX(IP2,"nameAX"+_fp1)' + '\n';
_strmulFP+=popvX(IP2,"nameAX"+_fp1);
_strmulFP+='#(end macro)        popvX(IP2,"nameAX"+_fp1)' + '\n';
_strmulFP+='' + '\n';
_strmulFP+='        # upcast nameB to nameBX (from I+P to (I+P) * 2)' + '\n';
_strmulFP+='#(begin macro)        pushvX(IP,"nameB"+_fp1)' + '\n';
_strmulFP+=pushvX(IP,"nameB"+_fp1);
_strmulFP+='#(end macro)        pushvX(IP,"nameB"+_fp1)' + '\n';
_strmulFP+='#(begin macro)        castX(IP,IP2)' + '\n';
_strmulFP+=castX(IP,IP2);
_strmulFP+='#(end macro)        castX(IP,IP2)' + '\n';
_strmulFP+='#(begin macro)        popvX(IP2,"nameBX"+_fp1)' + '\n';
_strmulFP+=popvX(IP2,"nameBX"+_fp1);
_strmulFP+='#(end macro)        popvX(IP2,"nameBX"+_fp1)' + '\n';
_strmulFP+='        ' + '\n';
_strmulFP+='#(begin macro)        mulvvvX(IP2,"resultX"+_fp1, "nameAX"+_fp1, "nameBX"+_fp1)' + '\n';
_strmulFP+=mulvvvX(IP2,"resultX"+_fp1, "nameAX"+_fp1, "nameBX"+_fp1);
_strmulFP+='#(end macro)        mulvvvX(IP2,"resultX"+_fp1, "nameAX"+_fp1, "nameBX"+_fp1)' + '\n';
_strmulFP+='        ' + '\n';
_strmulFP+='#(begin macro)        pushvX(IP2,"resultX"+_fp1)' + '\n';
_strmulFP+=pushvX(IP2,"resultX"+_fp1);
_strmulFP+='#(end macro)        pushvX(IP2,"resultX"+_fp1)' + '\n';
_strmulFP+='#(begin macro)        castFP(I+I,P+P, I,P)' + '\n';
_strmulFP+=castFP(I+I,P+P, I,P);
_strmulFP+='#(end macro)        castFP(I+I,P+P, I,P)' + '\n';
_strmulFP+='#(begin macro)        popvX(IP,"nameA"+_fp1)' + '\n';
_strmulFP+=popvX(IP,"nameA"+_fp1);
_strmulFP+='#(end macro)        popvX(IP,"nameA"+_fp1)' + '\n';
_strmulFP+='#(begin macro)    scope_end()' + '\n';
_strmulFP+=scope_end();
_strmulFP+='#(end macro)    scope_end()' + '\n';
_strmulFP+='#(begin macro)    dropX(IP) # drop nameB' + '\n';
_strmulFP+=dropX(IP);
_strmulFP+='#(end macro)    dropX(IP) # drop nameB' + '\n';
return _strmulFP;
}
_str_main+='' + '\n';
_str_main+='#(js) var _fp1; var _fp2;' + '\n';
var _fp1; var _fp2;
_str_main+='#(js) _fp1 = 0; _fp2 = 0;' + '\n';
_fp1 = 0; _fp2 = 0;
_str_main+='#(end include)../include/fpnumber.inc' + '\n';
_str_main+='' + '\n';
var W;W='80'; W=(isNaN(W*1))?(W):(W*1); 
var H;H='40'; H=(isNaN(H*1))?(H):(H*1); 
var zoom;zoom='1'; zoom=(isNaN(zoom*1))?(zoom):(zoom*1); 
var moveX;moveX='-0.5'; moveX=(isNaN(moveX*1))?(moveX):(moveX*1); 
var moveY;moveY='0 '; moveY=(isNaN(moveY*1))?(moveY):(moveY*1); 
var maxIte;maxIte='26'; maxIte=(isNaN(maxIte*1))?(maxIte):(maxIte*1); 
var oneOnHalfZoomW;oneOnHalfZoomW='' + (1/0.5*zoom*W) + ''; oneOnHalfZoomW=(isNaN(oneOnHalfZoomW*1))?(oneOnHalfZoomW):(oneOnHalfZoomW*1); 
var oneOnHalfZoomH;oneOnHalfZoomH='' + (1/0.5*zoom*H) + ''; oneOnHalfZoomH=(isNaN(oneOnHalfZoomH*1))?(oneOnHalfZoomH):(oneOnHalfZoomH*1); 
var halfW;halfW='' + (0.5*W) + ''; halfW=(isNaN(halfW*1))?(halfW):(halfW*1); 
var halfH;halfH='' + (0.5*H) + ''; halfH=(isNaN(halfH*1))?(halfH):(halfH*1); 
_str_main+='' + '\n';
_str_main+='# 8.16 fixed number' + '\n';
_str_main+='    ## 8 = 1*8 bits' + '\n';
var FP_I;FP_I='1'; FP_I=(isNaN(FP_I*1))?(FP_I):(FP_I*1); 
_str_main+='    ## 16 = 2*8 bits' + '\n';
var FP_P;FP_P='2'; FP_P=(isNaN(FP_P*1))?(FP_P):(FP_P*1); 
_str_main+='# FP_I + FP_P' + '\n';
_str_main+='    ## 1+2 = 3 : 24 bits' + '\n';
var FP;FP='3'; FP=(isNaN(FP*1))?(FP):(FP*1); 
_str_main+='' + '\n';
_str_main+='#(begin macro)varX(FP,"pr")  # pixel real' + '\n';
_str_main+=varX(FP,"pr");
_str_main+='#(end macro)varX(FP,"pr")  # pixel real' + '\n';
_str_main+='#(begin macro)varX(FP,"pi")  # pixel imaginary' + '\n';
_str_main+=varX(FP,"pi");
_str_main+='#(end macro)varX(FP,"pi")  # pixel imaginary' + '\n';
_str_main+='#(begin macro)varX(FP,"x")    # screen coordinate horizontal' + '\n';
_str_main+=varX(FP,"x");
_str_main+='#(end macro)varX(FP,"x")    # screen coordinate horizontal' + '\n';
_str_main+='#(begin macro)varX(FP,"y")    # screen coordinate vertical' + '\n';
_str_main+=varX(FP,"y");
_str_main+='#(end macro)varX(FP,"y")    # screen coordinate vertical' + '\n';
_str_main+='#(begin macro)varX(FP,"newRe")' + '\n';
_str_main+=varX(FP,"newRe");
_str_main+='#(end macro)varX(FP,"newRe")' + '\n';
_str_main+='#(begin macro)varX(FP,"newIm")' + '\n';
_str_main+=varX(FP,"newIm");
_str_main+='#(end macro)varX(FP,"newIm")' + '\n';
_str_main+='#(begin macro)varX(FP,"oldRe")' + '\n';
_str_main+=varX(FP,"oldRe");
_str_main+='#(end macro)varX(FP,"oldRe")' + '\n';
_str_main+='#(begin macro)varX(FP,"oldIm")' + '\n';
_str_main+=varX(FP,"oldIm");
_str_main+='#(end macro)varX(FP,"oldIm")' + '\n';
_str_main+='# varX(FP,"ONE")' + '\n';
_str_main+='var     i' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)declareTmpX(FP)' + '\n';
_str_main+=declareTmpX(FP);
_str_main+='#(end macro)declareTmpX(FP)' + '\n';
_str_main+='#(begin macro)declareTmpX(FP*2)' + '\n';
_str_main+=declareTmpX(FP*2);
_str_main+='#(end macro)declareTmpX(FP*2)' + '\n';
_str_main+='' + '\n';
_str_main+='# pushFP(FP_I,FP_P,1)' + '\n';
_str_main+='# popvX(FP,"ONE")          # ONE = 1.0' + '\n';
_str_main+='' + '\n';
_str_main+='push    ' + H + '' + '\n';
_str_main+='loop' + '\n';
_str_main+='    push    ' + W + '' + '\n';
_str_main+='    loop' + '\n';
_str_main+='        # pr = 1.5 *(x - halfW) * oneOnHalfZoomW + moveX' + '\n';
_str_main+='#(begin macro)        pushFP(FP_I,FP_P,1.5)' + '\n';
_str_main+=pushFP(FP_I,FP_P,1.5);
_str_main+='#(end macro)        pushFP(FP_I,FP_P,1.5)' + '\n';
_str_main+='#(begin macro)        pushvX(FP,"x")' + '\n';
_str_main+=pushvX(FP,"x");
_str_main+='#(end macro)        pushvX(FP,"x")' + '\n';
_str_main+='#(begin macro)        pushFP(FP_I,FP_P, halfW)' + '\n';
_str_main+=pushFP(FP_I,FP_P, halfW);
_str_main+='#(end macro)        pushFP(FP_I,FP_P, halfW)' + '\n';
_str_main+='#(begin macro)        subX(FP)' + '\n';
_str_main+=subX(FP);
_str_main+='#(end macro)        subX(FP)' + '\n';
_str_main+='#(begin macro)        mulFP(FP_I,FP_P)' + '\n';
_str_main+=mulFP(FP_I,FP_P);
_str_main+='#(end macro)        mulFP(FP_I,FP_P)' + '\n';
_str_main+='#(begin macro)        pushFP(FP_I,FP_P,oneOnHalfZoomW)' + '\n';
_str_main+=pushFP(FP_I,FP_P,oneOnHalfZoomW);
_str_main+='#(end macro)        pushFP(FP_I,FP_P,oneOnHalfZoomW)' + '\n';
_str_main+='#(begin macro)        mulFP(FP_I,FP_P)' + '\n';
_str_main+=mulFP(FP_I,FP_P);
_str_main+='#(end macro)        mulFP(FP_I,FP_P)' + '\n';
_str_main+='#(begin macro)        pushFP(FP_I,FP_P,moveX)' + '\n';
_str_main+=pushFP(FP_I,FP_P,moveX);
_str_main+='#(end macro)        pushFP(FP_I,FP_P,moveX)' + '\n';
_str_main+='#(begin macro)        addX(FP)' + '\n';
_str_main+=addX(FP);
_str_main+='#(end macro)        addX(FP)' + '\n';
_str_main+='#(begin macro)        popvX(FP,"pr")' + '\n';
_str_main+=popvX(FP,"pr");
_str_main+='#(end macro)        popvX(FP,"pr")' + '\n';
_str_main+='        # pi = (y - halfH) * oneOnHalfZoomH + moveY' + '\n';
_str_main+='#(begin macro)        pushvX(FP,"y")' + '\n';
_str_main+=pushvX(FP,"y");
_str_main+='#(end macro)        pushvX(FP,"y")' + '\n';
_str_main+='#(begin macro)        pushFP(FP_I,FP_P,halfH)' + '\n';
_str_main+=pushFP(FP_I,FP_P,halfH);
_str_main+='#(end macro)        pushFP(FP_I,FP_P,halfH)' + '\n';
_str_main+='#(begin macro)        subX(FP)' + '\n';
_str_main+=subX(FP);
_str_main+='#(end macro)        subX(FP)' + '\n';
_str_main+='#(begin macro)        pushFP(FP_I,FP_P,oneOnHalfZoomW)' + '\n';
_str_main+=pushFP(FP_I,FP_P,oneOnHalfZoomW);
_str_main+='#(end macro)        pushFP(FP_I,FP_P,oneOnHalfZoomW)' + '\n';
_str_main+='#(begin macro)        mulFP(FP_I,FP_P)' + '\n';
_str_main+=mulFP(FP_I,FP_P);
_str_main+='#(end macro)        mulFP(FP_I,FP_P)' + '\n';
_str_main+='#(begin macro)        pushFP(FP_I,FP_P,moveX)' + '\n';
_str_main+=pushFP(FP_I,FP_P,moveX);
_str_main+='#(end macro)        pushFP(FP_I,FP_P,moveX)' + '\n';
_str_main+='#(begin macro)        addX(FP)' + '\n';
_str_main+=addX(FP);
_str_main+='#(end macro)        addX(FP)' + '\n';
_str_main+='#(begin macro)        popvX(FP,"pi")' + '\n';
_str_main+=popvX(FP,"pi");
_str_main+='#(end macro)        popvX(FP,"pi")' + '\n';
_str_main+='        # newRe = 0' + '\n';
_str_main+='#(begin macro)        setvX(FP,"newRe",0)' + '\n';
_str_main+=setvX(FP,"newRe",0);
_str_main+='#(end macro)        setvX(FP,"newRe",0)' + '\n';
_str_main+='        # newIm = 0' + '\n';
_str_main+='#(begin macro)        setvX(FP,"newIm",0)' + '\n';
_str_main+=setvX(FP,"newIm",0);
_str_main+='#(end macro)        setvX(FP,"newIm",0)' + '\n';
_str_main+='        # oldRe = 0' + '\n';
_str_main+='#(begin macro)        setvX(FP,"oldRe",0)' + '\n';
_str_main+=setvX(FP,"oldRe",0);
_str_main+='#(end macro)        setvX(FP,"oldRe",0)' + '\n';
_str_main+='        # oldIm = 0' + '\n';
_str_main+='#(begin macro)        setvX(FP,"oldIm",0)' + '\n';
_str_main+=setvX(FP,"oldIm",0);
_str_main+='#(end macro)        setvX(FP,"oldIm",0)' + '\n';
_str_main+='        # i = 0' + '\n';
_str_main+='#(begin macro)        at_reset("i")' + '\n';
_str_main+=at_reset("i");
_str_main+='#(end macro)        at_reset("i")' + '\n';
_str_main+='        # for (i =0 ; i < maxIte; i++) {' + '\n';
_str_main+='        push    1' + '\n';
_str_main+='        sbm     loop' + '\n';
_str_main+='        while' + '\n';
_str_main+='#(begin macro)            if_inf("i",maxIte)' + '\n';
_str_main+=if_inf("i",maxIte);
_str_main+='#(end macro)            if_inf("i",maxIte)' + '\n';
_str_main+='            #    oldRe = newRe' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"newRe")' + '\n';
_str_main+=pushvX(FP,"newRe");
_str_main+='#(end macro)                pushvX(FP,"newRe")' + '\n';
_str_main+='#(begin macro)                popvX(FP,"oldRe")' + '\n';
_str_main+=popvX(FP,"oldRe");
_str_main+='#(end macro)                popvX(FP,"oldRe")' + '\n';
_str_main+='            #    oldIm = newIm' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"newIm")' + '\n';
_str_main+=pushvX(FP,"newIm");
_str_main+='#(end macro)                pushvX(FP,"newIm")' + '\n';
_str_main+='#(begin macro)                popvX(FP,"oldIm")' + '\n';
_str_main+=popvX(FP,"oldIm");
_str_main+='#(end macro)                popvX(FP,"oldIm")' + '\n';
_str_main+='            #    newRe = oldRe * oldRe - oldIm * oldIm + pr' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"oldRe")' + '\n';
_str_main+=pushvX(FP,"oldRe");
_str_main+='#(end macro)                pushvX(FP,"oldRe")' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"oldRe")' + '\n';
_str_main+=pushvX(FP,"oldRe");
_str_main+='#(end macro)                pushvX(FP,"oldRe")' + '\n';
_str_main+='#(begin macro)                mulFP(FP_I,FP_P)' + '\n';
_str_main+=mulFP(FP_I,FP_P);
_str_main+='#(end macro)                mulFP(FP_I,FP_P)' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"oldIm")' + '\n';
_str_main+=pushvX(FP,"oldIm");
_str_main+='#(end macro)                pushvX(FP,"oldIm")' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"oldIm")' + '\n';
_str_main+=pushvX(FP,"oldIm");
_str_main+='#(end macro)                pushvX(FP,"oldIm")' + '\n';
_str_main+='#(begin macro)                mulFP(FP_I,FP_P)' + '\n';
_str_main+=mulFP(FP_I,FP_P);
_str_main+='#(end macro)                mulFP(FP_I,FP_P)' + '\n';
_str_main+='#(begin macro)                subX(FP)' + '\n';
_str_main+=subX(FP);
_str_main+='#(end macro)                subX(FP)' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"pr")' + '\n';
_str_main+=pushvX(FP,"pr");
_str_main+='#(end macro)                pushvX(FP,"pr")' + '\n';
_str_main+='#(begin macro)                addX(FP)' + '\n';
_str_main+=addX(FP);
_str_main+='#(end macro)                addX(FP)' + '\n';
_str_main+='#(begin macro)                popvX(FP,"newRe")' + '\n';
_str_main+=popvX(FP,"newRe");
_str_main+='#(end macro)                popvX(FP,"newRe")' + '\n';
_str_main+='            #    newIm = 2 * oldRe * oldIm + pi' + '\n';
_str_main+='#(begin macro)                pushFP(FP_I,FP_P,2)' + '\n';
_str_main+=pushFP(FP_I,FP_P,2);
_str_main+='#(end macro)                pushFP(FP_I,FP_P,2)' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"oldRe")' + '\n';
_str_main+=pushvX(FP,"oldRe");
_str_main+='#(end macro)                pushvX(FP,"oldRe")' + '\n';
_str_main+='#(begin macro)                mulFP(FP_I,FP_P)' + '\n';
_str_main+=mulFP(FP_I,FP_P);
_str_main+='#(end macro)                mulFP(FP_I,FP_P)' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"oldIm")' + '\n';
_str_main+=pushvX(FP,"oldIm");
_str_main+='#(end macro)                pushvX(FP,"oldIm")' + '\n';
_str_main+='#(begin macro)                mulFP(FP_I,FP_P)' + '\n';
_str_main+=mulFP(FP_I,FP_P);
_str_main+='#(end macro)                mulFP(FP_I,FP_P)' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"pi")' + '\n';
_str_main+=pushvX(FP,"pi");
_str_main+='#(end macro)                pushvX(FP,"pi")' + '\n';
_str_main+='#(begin macro)                addX(FP)' + '\n';
_str_main+=addX(FP);
_str_main+='#(end macro)                addX(FP)' + '\n';
_str_main+='#(begin macro)                popvX(FP,"newIm")' + '\n';
_str_main+=popvX(FP,"newIm");
_str_main+='#(end macro)                popvX(FP,"newIm")' + '\n';
_str_main+='            #    if (newRe *  newRe +  newIm * newIm) > 4 break for' + '\n';
_str_main+='                ## newRe *  newRe +  newIm * newIm' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"newRe")' + '\n';
_str_main+=pushvX(FP,"newRe");
_str_main+='#(end macro)                pushvX(FP,"newRe")' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"newRe")' + '\n';
_str_main+=pushvX(FP,"newRe");
_str_main+='#(end macro)                pushvX(FP,"newRe")' + '\n';
_str_main+='#(begin macro)                mulFP(FP_I,FP_P)                ' + '\n';
_str_main+=mulFP(FP_I,FP_P);
_str_main+='#(end macro)                mulFP(FP_I,FP_P)                ' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"newIm")' + '\n';
_str_main+=pushvX(FP,"newIm");
_str_main+='#(end macro)                pushvX(FP,"newIm")' + '\n';
_str_main+='#(begin macro)                pushvX(FP,"newIm")' + '\n';
_str_main+=pushvX(FP,"newIm");
_str_main+='#(end macro)                pushvX(FP,"newIm")' + '\n';
_str_main+='#(begin macro)                mulFP(FP_I,FP_P)' + '\n';
_str_main+=mulFP(FP_I,FP_P);
_str_main+='#(end macro)                mulFP(FP_I,FP_P)' + '\n';
_str_main+='#(begin macro)                addX(FP)' + '\n';
_str_main+=addX(FP);
_str_main+='#(end macro)                addX(FP)' + '\n';
_str_main+='                ## if stack FP > 4 break               ' + '\n';
_str_main+='#(begin macro)                pushFP(FP_I,FP_P, 4)' + '\n';
_str_main+=pushFP(FP_I,FP_P, 4);
_str_main+='#(end macro)                pushFP(FP_I,FP_P, 4)' + '\n';
_str_main+='#(begin macro)                supX(FP)' + '\n';
_str_main+=supX(FP);
_str_main+='#(end macro)                supX(FP)' + '\n';
_str_main+='                if' + '\n';
_str_main+='#(begin macro)                    at_reset("loop")' + '\n';
_str_main+=at_reset("loop");
_str_main+='#(end macro)                    at_reset("loop")' + '\n';
_str_main+='                else                                ' + '\n';
_str_main+='#(begin macro)                    at_inc("i")' + '\n';
_str_main+=at_inc("i");
_str_main+='#(end macro)                    at_inc("i")' + '\n';
_str_main+='                fi' + '\n';
_str_main+='            else' + '\n';
_str_main+='#(begin macro)                at_reset("loop")' + '\n';
_str_main+=at_reset("loop");
_str_main+='#(end macro)                at_reset("loop")' + '\n';
_str_main+='            fi' + '\n';
_str_main+='        # }' + '\n';
_str_main+='        wend' + '\n';
_str_main+='        # if (i >= maxIte) black point (inside mandel)' + '\n';
_str_main+='#(begin macro)        if_equal("i", maxIte)' + '\n';
_str_main+=if_equal("i", maxIte);
_str_main+='#(end macro)        if_equal("i", maxIte)' + '\n';
_str_main+='#(begin macro)            print("*")' + '\n';
_str_main+=print("*");
_str_main+='#(end macro)            print("*")' + '\n';
_str_main+='        # else // outside mandel' + '\n';
_str_main+='        else' + '\n';
_str_main+='#(begin macro)            print(".")' + '\n';
_str_main+=print(".");
_str_main+='#(end macro)            print(".")' + '\n';
_str_main+='        fi' + '\n';
_str_main+='        # x++' + '\n';
_str_main+='#(begin macro)        pushvX(FP,"x")' + '\n';
_str_main+=pushvX(FP,"x");
_str_main+='#(end macro)        pushvX(FP,"x")' + '\n';
_str_main+='#(begin macro)        incFP(FP_I,FP_P)' + '\n';
_str_main+=incFP(FP_I,FP_P);
_str_main+='#(end macro)        incFP(FP_I,FP_P)' + '\n';
_str_main+='#(begin macro)        popvX(FP,"x")' + '\n';
_str_main+=popvX(FP,"x");
_str_main+='#(end macro)        popvX(FP,"x")' + '\n';
_str_main+='        # addvvvX(FP,"x","x","ONE")' + '\n';
_str_main+='    endloop' + '\n';
_str_main+='    # x = 0' + '\n';
_str_main+='#(begin macro)    setvX(FP,"x",0)' + '\n';
_str_main+=setvX(FP,"x",0);
_str_main+='#(end macro)    setvX(FP,"x",0)' + '\n';
_str_main+='    # y++' + '\n';
_str_main+='#(begin macro)    pushvX(FP,"y")' + '\n';
_str_main+=pushvX(FP,"y");
_str_main+='#(end macro)    pushvX(FP,"y")' + '\n';
_str_main+='#(begin macro)    incFP(FP_I,FP_P)' + '\n';
_str_main+=incFP(FP_I,FP_P);
_str_main+='#(end macro)    incFP(FP_I,FP_P)' + '\n';
_str_main+='#(begin macro)    popvX(FP,"y")' + '\n';
_str_main+=popvX(FP,"y");
_str_main+='#(end macro)    popvX(FP,"y")' + '\n';
_str_main+='    #  addvvvX(FP,"y","y","ONE")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='endloop  ' + '\n';
_str_main+='' + '\n';
return _str_main;
}
_main();
