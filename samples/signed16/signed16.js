var __main; __main=0;
var _main = function(){
 __main++;
var _str_main; 
_str_main='';
if (arguments.length != 0) throw 'Too much arguments provided to macro _main()[' + [] +']';
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
var _scope_begin; _scope_begin=0;
var scope_begin = function(){
 _scope_begin++;
var _strscope_begin; 
_strscope_begin='';
if (arguments.length != 0) throw 'Too much arguments provided to macro scope_begin()[' + [] +']';
_strscope_begin+='#(js) __scope.push(0);' + '\n';
__scope.push(0);
return _strscope_begin;
}
_str_main+='' + '\n';
_str_main+='# macro scope_end : end a scope , then drop scoped local variables (drop) (usage of lvar)' + '\n';
var _scope_end; _scope_end=0;
var scope_end = function(){
 _scope_end++;
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
var _lvar; _lvar=0;
var lvar = function(vname,value){
 _lvar++;
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
var _if_diff; _if_diff=0;
var if_diff = function(a,b){
 _if_diff++;
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
var _if_equal; _if_equal=0;
var if_equal = function(a,b){
 _if_equal++;
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
var _if_sup; _if_sup=0;
var if_sup = function(a,b){
 _if_sup++;
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
var _if_inf; _if_inf=0;
var if_inf = function(a,b){
 _if_inf++;
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
var _if_supequal; _if_supequal=0;
var if_supequal = function(a,b){
 _if_supequal++;
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
var _if_infequal; _if_infequal=0;
var if_infequal = function(a,b){
 _if_infequal++;
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
var _at_2; _at_2=0;
var at_2 = function(ope, a,b){
 _at_2++;
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
var _at_1; _at_1=0;
var at_1 = function(ope, a){
 _at_1++;
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
var _at_reset; _at_reset=0;
var at_reset = function(a){
 _at_reset++;
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
var _at_inc; _at_inc=0;
var at_inc = function(a){
 _at_inc++;
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
var _at_dec; _at_dec=0;
var at_dec = function(a){
 _at_dec++;
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
var _at_in; _at_in=0;
var at_in = function(a){
 _at_in++;
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
var _at_out; _at_out=0;
var at_out = function(a){
 _at_out++;
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
var _at_add; _at_add=0;
var at_add = function(a,b){
 _at_add++;
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
var _at_sub; _at_sub=0;
var at_sub = function(a,b){
 _at_sub++;
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
var _at_set; _at_set=0;
var at_set = function(a,b){
 _at_set++;
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
var _write; _write=0;
var write = function(a){
 _write++;
var _strwrite; 
_strwrite='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro write(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro write(a)[' + [a] +']';
_strwrite+='    push    ' + a + '' + '\n';
_strwrite+='    pop     out' + '\n';
return _strwrite;
}
_str_main+='' + '\n';
var _divide; _divide=0;
var divide = function(a,b,d,r){
 _divide++;
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
var _left_rewind; _left_rewind=0;
var left_rewind = function(array){
 _left_rewind++;
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
var _right_rewind; _right_rewind=0;
var right_rewind = function(array){
 _right_rewind++;
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
var _popouthexa; _popouthexa=0;
var popouthexa = function(){
 _popouthexa++;
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
var _popout8hexa; _popout8hexa=0;
var popout8hexa = function(){
 _popout8hexa++;
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
var _print; _print=0;
var print = function(aString){
 _print++;
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
_str_main+='#(begin include)../include/signedX16.inc' + '\n';
_str_main+='# 16 bits signed integer ( 2 bytes)' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin include)signedX.inc' + '\n';
_str_main+='# X bytes : X*8 bits signed integer : ' + '\n';
_str_main+='' + '\n';
_str_main+='# macro varX(name) :declare global X * 8 bits' + '\n';
var _varX; _varX=0;
var varX = function(X,name){
 _varX++;
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
var _lvarX; _lvarX=0;
var lvarX = function(X,name){
 _lvarX++;
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
var _fixsvX; _fixsvX=0;
var fixsvX = function(X,name){
 _fixsvX++;
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
var _pushvX; _pushvX=0;
var pushvX = function(X,name){
 _pushvX++;
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
var _pushX; _pushX=0;
var pushX = function(X,immValue){
 _pushX++;
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
var _dupX; _dupX=0;
var dupX = function(X){
 _dupX++;
var _strdupX; 
_strdupX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro dupX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro dupX(X)[' + [X] +']';
_strdupX+='#(js) for (var xx = 0 ; xx < X+2 ; xx++) { // 0 to X+2-1' + '\n';
for (var xx = 0 ; xx < X+2 ; xx++) { // 0 to X+2-1
_strdupX+='        push -' + (X+2-1) + '' + '\n';
_strdupX+='#(js) }' + '\n';
}
return _strdupX;
}
_str_main+='' + '\n';
_str_main+='# macro pushsvX(X,name) : push the sign of the X*8 bits variable \'name\'' + '\n';
var _pushsvX; _pushsvX=0;
var pushsvX = function(X,name){
 _pushsvX++;
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
var _pushcvX; _pushcvX=0;
var pushcvX = function(X,name){
 _pushcvX++;
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
var _popvX; _popvX=0;
var popvX = function(X,name){
 _popvX++;
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
var _popsvX; _popsvX=0;
var popsvX = function(X,name){
 _popsvX++;
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
var _popcvX; _popcvX=0;
var popcvX = function(X,name){
 _popcvX++;
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
var _negvX; _negvX=0;
var negvX = function(X,name){
 _negvX++;
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
var _absvX; _absvX=0;
var absvX = function(X,name){
 _absvX++;
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
var _absX; _absX=0;
var absX = function(X){
 _absX++;
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
var _negX; _negX=0;
var negX = function(X){
 _negX++;
var _strnegX; 
_strnegX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro negX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro negX(X)[' + [X] +']';
_strnegX+='#(begin macro)    sbmX(X, "_negXName"+ _negX,0)' + '\n';
_strnegX+=sbmX(X, "_negXName"+ _negX,0);
_strnegX+='#(end macro)    sbmX(X, "_negXName"+ _negX,0)' + '\n';
_strnegX+='#(begin macro)    negvX(X,"_negXName"+ _negX)' + '\n';
_strnegX+=negvX(X,"_negXName"+ _negX);
_strnegX+='#(end macro)    negvX(X,"_negXName"+ _negX)' + '\n';
return _strnegX;
}
_str_main+='' + '\n';
_str_main+='# macro setcX(X) : set 1 to X*8 bits head of stack carry' + '\n';
var _setcX; _setcX=0;
var setcX = function(X){
 _setcX++;
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
var _setcvX; _setcvX=0;
var setcvX = function(X,name){
 _setcvX++;
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
var _clearcX; _clearcX=0;
var clearcX = function(X){
 _clearcX++;
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
var _clearcvX; _clearcvX=0;
var clearcvX = function(X,name){
 _clearcvX++;
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
var _dropX; _dropX=0;
var dropX = function(X){
 _dropX++;
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
var _resetX; _resetX=0;
var resetX = function(X){
 _resetX++;
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
var _resetvX; _resetvX=0;
var resetvX = function(X,name){
 _resetvX++;
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
var _setX; _setX=0;
var setX = function(X,immValue){
 _setX++;
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
var _setvX; _setvX=0;
var setvX = function(X,name,immValue){
 _setvX++;
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
var _fixsvX; _fixsvX=0;
var fixsvX = function(X,name){
 _fixsvX++;
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
var _fixsX; _fixsX=0;
var fixsX = function(X){
 _fixsX++;
var _strfixsX; 
_strfixsX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro fixsX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro fixsX(X)[' + [X] +']';
_strfixsX+='#(begin macro)    sbmX(X,"_fixsX"+_fixsX,0)' + '\n';
_strfixsX+=sbmX(X,"_fixsX"+_fixsX,0);
_strfixsX+='#(end macro)    sbmX(X,"_fixsX"+_fixsX,0)' + '\n';
_strfixsX+='#(begin macro)    fixsvX(X,"_fixsX"+_fixsX)' + '\n';
_strfixsX+=fixsvX(X,"_fixsX"+_fixsX);
_strfixsX+='#(end macro)    fixsvX(X,"_fixsX"+_fixsX)' + '\n';
return _strfixsX;
}
_str_main+='' + '\n';
_str_main+='# macro boolvX(X,name) : push on stack the bool(name) X*8 bits ' + '\n';
var _boolvX; _boolvX=0;
var boolvX = function(X,name){
 _boolvX++;
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
_str_main+='# macro boolX(X) : same as \'bool\' but with a X*8 bits value on stack' + '\n';
var _boolX; _boolX=0;
var boolX = function(X){
 _boolX++;
var _strboolX; 
_strboolX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro boolX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro boolX(X)[' + [X] +']';
_strboolX+='#(begin macro)    sbmX(X,"_boolX"+_boolX,0)' + '\n';
_strboolX+=sbmX(X,"_boolX"+_boolX,0);
_strboolX+='#(end macro)    sbmX(X,"_boolX"+_boolX,0)' + '\n';
_strboolX+='#(begin macro)    boolvX(X,"_boolX"+_boolX)' + '\n';
_strboolX+=boolvX(X,"_boolX"+_boolX);
_strboolX+='#(end macro)    boolvX(X,"_boolX"+_boolX)' + '\n';
return _strboolX;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# macro incvX(X,name) : name = name +1 (X*8 bits)' + '\n';
var _incvX; _incvX=0;
var incvX = function(X,name){
 _incvX++;
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
var _incX; _incX=0;
var incX = function(X){
 _incX++;
var _strincX; 
_strincX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro incX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro incX(X)[' + [X] +']';
_strincX+='#(begin macro)    sbmX(X,"_incX" + _incX,0)' + '\n';
_strincX+=sbmX(X,"_incX" + _incX,0);
_strincX+='#(end macro)    sbmX(X,"_incX" + _incX,0)' + '\n';
_strincX+='#(begin macro)    incvX(X,"_incX" + _incX)' + '\n';
_strincX+=incvX(X,"_incX" + _incX);
_strincX+='#(end macro)    incvX(X,"_incX" + _incX)' + '\n';
return _strincX;
}
_str_main+='' + '\n';
_str_main+='# macro decvX(X,name) : name-- (X*8 bits)' + '\n';
var _decvX; _decvX=0;
var decvX = function(X,name){
 _decvX++;
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
var _decX; _decX=0;
var decX = function(X){
 _decX++;
var _strdecX; 
_strdecX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro decX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro decX(X)[' + [X] +']';
_strdecX+='#(begin macro)    sbmX(X,"_decX"+_decX,0)' + '\n';
_strdecX+=sbmX(X,"_decX"+_decX,0);
_strdecX+='#(end macro)    sbmX(X,"_decX"+_decX,0)' + '\n';
_strdecX+='#(begin macro)    decvX(X,"_decX"+_decX)' + '\n';
_strdecX+=decvX(X,"_decX"+_decX);
_strdecX+='#(end macro)    decvX(X,"_decX"+_decX)' + '\n';
return _strdecX;
}
_str_main+='' + '\n';
_str_main+='# macro addviX(X,name, immValue) : name += immediate value' + '\n';
var _addviX; _addviX=0;
var addviX = function(X,name,immValue){
 _addviX++;
var _straddviX; 
_straddviX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
_straddviX+='#(begin macro)scope_begin()' + '\n';
_straddviX+=scope_begin();
_straddviX+='#(end macro)scope_begin()' + '\n';
_straddviX+='#(begin macro)    lvarX(X,"_addviXNameA" + _addviX)' + '\n';
_straddviX+=lvarX(X,"_addviXNameA" + _addviX);
_straddviX+='#(end macro)    lvarX(X,"_addviXNameA" + _addviX)' + '\n';
_straddviX+='#(begin macro)    lvarX(X,"_addviXNameB" + _addviX)' + '\n';
_straddviX+=lvarX(X,"_addviXNameB" + _addviX);
_straddviX+='#(end macro)    lvarX(X,"_addviXNameB" + _addviX)' + '\n';
_straddviX+='#(begin macro)    pushvX(X, name)' + '\n';
_straddviX+=pushvX(X, name);
_straddviX+='#(end macro)    pushvX(X, name)' + '\n';
_straddviX+='#(begin macro)    popvX(X, "_addviXNameA" + _addviX)' + '\n';
_straddviX+=popvX(X, "_addviXNameA" + _addviX);
_straddviX+='#(end macro)    popvX(X, "_addviXNameA" + _addviX)' + '\n';
_straddviX+='#(begin macro)    pushX(X, immValue)' + '\n';
_straddviX+=pushX(X, immValue);
_straddviX+='#(end macro)    pushX(X, immValue)' + '\n';
_straddviX+='#(begin macro)    popvX(X, "_addviXNameB" + _addviX)' + '\n';
_straddviX+=popvX(X, "_addviXNameB" + _addviX);
_straddviX+='#(end macro)    popvX(X, "_addviXNameB" + _addviX)' + '\n';
_straddviX+='#(begin macro)    addvvvX(X,name, "_addviXNameA" + _addviX, "_addviXNameB" + _addviX)' + '\n';
_straddviX+=addvvvX(X,name, "_addviXNameA" + _addviX, "_addviXNameB" + _addviX);
_straddviX+='#(end macro)    addvvvX(X,name, "_addviXNameA" + _addviX, "_addviXNameB" + _addviX)' + '\n';
_straddviX+='#(begin macro)scope_end()' + '\n';
_straddviX+=scope_end();
_straddviX+='#(end macro)scope_end()' + '\n';
return _straddviX;
}
_str_main+='' + '\n';
_str_main+='# macro addiX(X,immValue) : 16 bits head of stack value += immediate value' + '\n';
var _addiX; _addiX=0;
var addiX = function(X,immValue){
 _addiX++;
var _straddiX; 
_straddiX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addiX(X,immValue)[' + [X,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro addiX(X,immValue)[' + [X,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro addiX(X,immValue)[' + [X,immValue] +']';
_straddiX+='#(begin macro)    sbmX(X,"_addiXName" + _addiX,0)' + '\n';
_straddiX+=sbmX(X,"_addiXName" + _addiX,0);
_straddiX+='#(end macro)    sbmX(X,"_addiXName" + _addiX,0)' + '\n';
_straddiX+='#(begin macro)scope_begin()' + '\n';
_straddiX+=scope_begin();
_straddiX+='#(end macro)scope_begin()' + '\n';
_straddiX+='#(begin macro)    lvarX(X,"_addiXNameA" + _addiX)' + '\n';
_straddiX+=lvarX(X,"_addiXNameA" + _addiX);
_straddiX+='#(end macro)    lvarX(X,"_addiXNameA" + _addiX)' + '\n';
_straddiX+='#(begin macro)    lvarX(X,"_addiXNameB" + _addiX)' + '\n';
_straddiX+=lvarX(X,"_addiXNameB" + _addiX);
_straddiX+='#(end macro)    lvarX(X,"_addiXNameB" + _addiX)' + '\n';
_straddiX+='#(begin macro)    pushvX(X,"_addiXName" + _addiX)' + '\n';
_straddiX+=pushvX(X,"_addiXName" + _addiX);
_straddiX+='#(end macro)    pushvX(X,"_addiXName" + _addiX)' + '\n';
_straddiX+='#(begin macro)    popvX(X,"_addiXNameA" + _addiX)' + '\n';
_straddiX+=popvX(X,"_addiXNameA" + _addiX);
_straddiX+='#(end macro)    popvX(X,"_addiXNameA" + _addiX)' + '\n';
_straddiX+='#(begin macro)    pushX(X,immValue)' + '\n';
_straddiX+=pushX(X,immValue);
_straddiX+='#(end macro)    pushX(X,immValue)' + '\n';
_straddiX+='#(begin macro)    popvX(X,"_addiXNameB" + _addiX)' + '\n';
_straddiX+=popvX(X,"_addiXNameB" + _addiX);
_straddiX+='#(end macro)    popvX(X,"_addiXNameB" + _addiX)' + '\n';
_straddiX+='#(begin macro)    addvvvX(X,"_addiXName" + _addiX, "_addiXNameA" + _addiX, "_addiXNameB" + _addiX)' + '\n';
_straddiX+=addvvvX(X,"_addiXName" + _addiX, "_addiXNameA" + _addiX, "_addiXNameB" + _addiX);
_straddiX+='#(end macro)    addvvvX(X,"_addiXName" + _addiX, "_addiXNameA" + _addiX, "_addiXNameB" + _addiX)' + '\n';
_straddiX+='#(begin macro)scope_end()' + '\n';
_straddiX+=scope_end();
_straddiX+='#(end macro)scope_end()' + '\n';
return _straddiX;
}
_str_main+='' + '\n';
_str_main+='# macro subviX(X,name, immValue) : name -= immediate value' + '\n';
var _subviX; _subviX=0;
var subviX = function(X,name,immValue){
 _subviX++;
var _strsubviX; 
_strsubviX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
_strsubviX+='#(begin macro)    scope_begin()' + '\n';
_strsubviX+=scope_begin();
_strsubviX+='#(end macro)    scope_begin()' + '\n';
_strsubviX+='#(begin macro)        lvarX(X,"_subviXNameA" + _subviX)' + '\n';
_strsubviX+=lvarX(X,"_subviXNameA" + _subviX);
_strsubviX+='#(end macro)        lvarX(X,"_subviXNameA" + _subviX)' + '\n';
_strsubviX+='#(begin macro)        lvarX(X,"_subviXNameB" + _subviX)' + '\n';
_strsubviX+=lvarX(X,"_subviXNameB" + _subviX);
_strsubviX+='#(end macro)        lvarX(X,"_subviXNameB" + _subviX)' + '\n';
_strsubviX+='#(begin macro)        pushvX(X,name)' + '\n';
_strsubviX+=pushvX(X,name);
_strsubviX+='#(end macro)        pushvX(X,name)' + '\n';
_strsubviX+='#(begin macro)        popvX(X,"_subviXNameA" +_subviX)' + '\n';
_strsubviX+=popvX(X,"_subviXNameA" +_subviX);
_strsubviX+='#(end macro)        popvX(X,"_subviXNameA" +_subviX)' + '\n';
_strsubviX+='#(begin macro)        pushX(X, immValue)' + '\n';
_strsubviX+=pushX(X, immValue);
_strsubviX+='#(end macro)        pushX(X, immValue)' + '\n';
_strsubviX+='#(begin macro)        popvX(X, "_subviXNameB" + _subviX)' + '\n';
_strsubviX+=popvX(X, "_subviXNameB" + _subviX);
_strsubviX+='#(end macro)        popvX(X, "_subviXNameB" + _subviX)' + '\n';
_strsubviX+='#(begin macro)        subvvvX(X, name, "_subviXNameA"+ _subviX, "_subviXNameB"+ _subviX)       ' + '\n';
_strsubviX+=subvvvX(X, name, "_subviXNameA"+ _subviX, "_subviXNameB"+ _subviX);
_strsubviX+='#(end macro)        subvvvX(X, name, "_subviXNameA"+ _subviX, "_subviXNameB"+ _subviX)       ' + '\n';
_strsubviX+='#(begin macro)    scope_end()' + '\n';
_strsubviX+=scope_end();
_strsubviX+='#(end macro)    scope_end()' + '\n';
return _strsubviX;
}
_str_main+='' + '\n';
_str_main+='# macro subiX(X,immValue) : X*8 bits head of stack value -= immediate value' + '\n';
var _subiX; _subiX=0;
var subiX = function(X,immValue){
 _subiX++;
var _strsubiX; 
_strsubiX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subiX(X,immValue)[' + [X,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro subiX(X,immValue)[' + [X,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subiX(X,immValue)[' + [X,immValue] +']';
_strsubiX+='#(begin macro)    sbmX(X, "_subiXName" + _subiX,0)' + '\n';
_strsubiX+=sbmX(X, "_subiXName" + _subiX,0);
_strsubiX+='#(end macro)    sbmX(X, "_subiXName" + _subiX,0)' + '\n';
_strsubiX+='#(begin macro)    scope_begin()' + '\n';
_strsubiX+=scope_begin();
_strsubiX+='#(end macro)    scope_begin()' + '\n';
_strsubiX+='#(begin macro)        lvarX(X, "_subixNameA" + _subiX)' + '\n';
_strsubiX+=lvarX(X, "_subixNameA" + _subiX);
_strsubiX+='#(end macro)        lvarX(X, "_subixNameA" + _subiX)' + '\n';
_strsubiX+='#(begin macro)        lvarX(X, "_subixNameB" + _subiX)' + '\n';
_strsubiX+=lvarX(X, "_subixNameB" + _subiX);
_strsubiX+='#(end macro)        lvarX(X, "_subixNameB" + _subiX)' + '\n';
_strsubiX+='#(begin macro)        pushvX(X, "_subiXName" + _subiX)' + '\n';
_strsubiX+=pushvX(X, "_subiXName" + _subiX);
_strsubiX+='#(end macro)        pushvX(X, "_subiXName" + _subiX)' + '\n';
_strsubiX+='#(begin macro)        popvX(X, "_subixNameA" + _subiX)' + '\n';
_strsubiX+=popvX(X, "_subixNameA" + _subiX);
_strsubiX+='#(end macro)        popvX(X, "_subixNameA" + _subiX)' + '\n';
_strsubiX+='#(begin macro)        pushX(X, immValue)' + '\n';
_strsubiX+=pushX(X, immValue);
_strsubiX+='#(end macro)        pushX(X, immValue)' + '\n';
_strsubiX+='#(begin macro)        popvX(X,"_subixNameB" + _subiX)' + '\n';
_strsubiX+=popvX(X,"_subixNameB" + _subiX);
_strsubiX+='#(end macro)        popvX(X,"_subixNameB" + _subiX)' + '\n';
_strsubiX+='#(begin macro)        subvvvX(X, "_subiXName" + _subiX, "_subiXNameA" + _subiX, "_subiXNameB" + _subiX)' + '\n';
_strsubiX+=subvvvX(X, "_subiXName" + _subiX, "_subiXNameA" + _subiX, "_subiXNameB" + _subiX);
_strsubiX+='#(end macro)        subvvvX(X, "_subiXName" + _subiX, "_subiXNameA" + _subiX, "_subiXNameB" + _subiX)' + '\n';
_strsubiX+='#(begin macro)    scope_end()' + '\n';
_strsubiX+=scope_end();
_strsubiX+='#(end macro)    scope_end()' + '\n';
return _strsubiX;
}
_str_main+='' + '\n';
_str_main+='#macro addof() : push A, push B , replaced by Carry, A+B' + '\n';
var _addof; _addof=0;
var addof = function(){
 _addof++;
var _straddof; 
_straddof='';
if (arguments.length != 0) throw 'Too much arguments provided to macro addof()[' + [] +']';
_straddof+='    sbm _addofb' + _addof + '' + '\n';
_straddof+='    sbm _addofa' + _addof + ' - 1' + '\n';
_straddof+='#(begin macro)    scope_begin()' + '\n';
_straddof+=scope_begin();
_straddof+='#(end macro)    scope_begin()' + '\n';
_straddof+='#(begin macro)        lvar("_addofc"+_addof ,0)' + '\n';
_straddof+=lvar("_addofc"+_addof ,0);
_straddof+='#(end macro)        lvar("_addofc"+_addof ,0)' + '\n';
_straddof+='        push 1' + '\n';
_straddof+='        sbm _loopao' + _addof + '' + '\n';
_straddof+='        while' + '\n';
_straddof+='            push _addofa' + _addof + '' + '\n';
_straddof+='            if' + '\n';
_straddof+='                at _addofa' + _addof + '' + '\n';
_straddof+='                    dec' + '\n';
_straddof+='                ta ' + '\n';
_straddof+='                at _addofb' + _addof + '' + '\n';
_straddof+='                    inc' + '\n';
_straddof+='                ta' + '\n';
_straddof+='                push _addofb' + _addof + '' + '\n';
_straddof+='                not' + '\n';
_straddof+='                if ' + '\n';
_straddof+='                    at _addofc' + _addof + '' + '\n';
_straddof+='                        set 1' + '\n';
_straddof+='                    ta' + '\n';
_straddof+='                fi' + '\n';
_straddof+='            else ' + '\n';
_straddof+='                at _loopao' + _addof + '' + '\n';
_straddof+='                    reset' + '\n';
_straddof+='                ta' + '\n';
_straddof+='            fi' + '\n';
_straddof+='        wend' + '\n';
_straddof+='        push _addofc' + _addof + '' + '\n';
_straddof+='        if' + '\n';
_straddof+='            at _addofa' + _addof + '' + '\n';
_straddof+='                set 1' + '\n';
_straddof+='            ta' + '\n';
_straddof+='        fi' + '\n';
_straddof+='#(begin macro)    scope_end()' + '\n';
_straddof+=scope_end();
_straddof+='#(end macro)    scope_end()' + '\n';
return _straddof;
}
_str_main+='' + '\n';
_str_main+='# macro subof() : push A, push B , replaced by Carry, A-B' + '\n';
var _subof; _subof=0;
var subof = function(){
 _subof++;
var _strsubof; 
_strsubof='';
if (arguments.length != 0) throw 'Too much arguments provided to macro subof()[' + [] +']';
_strsubof+='    sbm _subofb' + _subof + '' + '\n';
_strsubof+='    sbm _subofa' + _subof + ' - 1' + '\n';
_strsubof+='#(begin macro)    scope_begin()' + '\n';
_strsubof+=scope_begin();
_strsubof+='#(end macro)    scope_begin()' + '\n';
_strsubof+='#(begin macro)        lvar("_subofc"+_subof ,0)' + '\n';
_strsubof+=lvar("_subofc"+_subof ,0);
_strsubof+='#(end macro)        lvar("_subofc"+_subof ,0)' + '\n';
_strsubof+='        push 1' + '\n';
_strsubof+='        sbm _loopso' + _subof + '' + '\n';
_strsubof+='        while' + '\n';
_strsubof+='            push _subofb' + _subof + '' + '\n';
_strsubof+='            if  ' + '\n';
_strsubof+='                at _subofb' + _subof + '' + '\n';
_strsubof+='                    dec' + '\n';
_strsubof+='                ta' + '\n';
_strsubof+='                at _subofa' + _subof + '' + '\n';
_strsubof+='                    dec' + '\n';
_strsubof+='                ta' + '\n';
_strsubof+='                push _subofa' + _subof + '' + '\n';
_strsubof+='                inc' + '\n';
_strsubof+='                not' + '\n';
_strsubof+='                if' + '\n';
_strsubof+='                    at _subofc' + _subof + '' + '\n';
_strsubof+='                        set 1' + '\n';
_strsubof+='                    ta' + '\n';
_strsubof+='                fi ' + '\n';
_strsubof+='            else' + '\n';
_strsubof+='                at _loopso' + _subof + '' + '\n';
_strsubof+='                    reset' + '\n';
_strsubof+='                ta' + '\n';
_strsubof+='            fi' + '\n';
_strsubof+='        wend' + '\n';
_strsubof+='        push _subofc' + _subof + '' + '\n';
_strsubof+='        if' + '\n';
_strsubof+='            at _subofb' + _subof + '' + '\n';
_strsubof+='                set 1' + '\n';
_strsubof+='            ta' + '\n';
_strsubof+='        fi' + '\n';
_strsubof+='#(begin macro)    scope_end()' + '\n';
_strsubof+=scope_end();
_strsubof+='#(end macro)    scope_end()' + '\n';
_strsubof+='    swap' + '\n';
return _strsubof;
}
_str_main+='' + '\n';
_str_main+='# macro addvvvX(X,name, nameA, nameB) : name = nameA + nameB' + '\n';
var _addvvvX; _addvvvX=0;
var addvvvX = function(X,name, nameA, nameB){
 _addvvvX++;
var _straddvvvX; 
_straddvvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro addvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro addvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
_straddvvvX+='    push    ' + nameA + '_s' + '\n';
_straddvvvX+='    push    ' + nameB + '_s' + '\n';
_straddvvvX+='    or' + '\n';
_straddvvvX+='    not' + '\n';
_straddvvvX+='    push    ' + nameA + '_s' + '\n';
_straddvvvX+='    push    ' + nameB + '_s' + '\n';
_straddvvvX+='    and' + '\n';
_straddvvvX+='    or' + '\n';
_straddvvvX+='    if      # nameA and nameB are both positive or negative' + '\n';
_straddvvvX+='        push    ' + nameA + '_s' + '\n';
_straddvvvX+='        pop     ' + name + '_s    # name has same sign of nameA and nameB' + '\n';
_straddvvvX+='        push    0' + '\n';
_straddvvvX+='#(js) for (var xx = 0 ; xx < X; xx++) {' + '\n';
for (var xx = 0 ; xx < X; xx++) {
_straddvvvX+='        push    ' + nameA + '_' + xx + '' + '\n';
_straddvvvX+='#(begin macro)        addof()' + '\n';
_straddvvvX+=addof();
_straddvvvX+='#(end macro)        addof()' + '\n';
_straddvvvX+='        pop     ' + name + '_' + xx + '' + '\n';
_straddvvvX+='        push    ' + nameB + '_' + xx + '' + '\n';
_straddvvvX+='#(begin macro)        addof()' + '\n';
_straddvvvX+=addof();
_straddvvvX+='#(end macro)        addof()' + '\n';
_straddvvvX+='        push    ' + name + '_' + xx + '' + '\n';
_straddvvvX+='#(begin macro)        addof()' + '\n';
_straddvvvX+=addof();
_straddvvvX+='#(end macro)        addof()' + '\n';
_straddvvvX+='        pop     ' + name + '_' + xx + '' + '\n';
_straddvvvX+='        add    ' + '\n';
_straddvvvX+='#(js) }' + '\n';
}
_straddvvvX+='        pop     ' + name + '_c' + '\n';
_straddvvvX+='    else  # nameA has a different sign of nameB' + '\n';
_straddvvvX+='#(begin macro)        scope_begin()' + '\n';
_straddvvvX+=scope_begin();
_straddvvvX+='#(end macro)        scope_begin()' + '\n';
_straddvvvX+='#(begin macro)            lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB' + '\n';
_straddvvvX+=lvar("_asupb"+ _addvvvX, 0);
_straddvvvX+='#(end macro)            lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB' + '\n';
_straddvvvX+='#(begin macro)            lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB ' + '\n';
_straddvvvX+=lvar("_aequb"+ _addvvvX, 0);
_straddvvvX+='#(end macro)            lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB ' + '\n';
_straddvvvX+='#(js) for (var xx = X-1 ; xx >=0; xx--) {' + '\n';
for (var xx = X-1 ; xx >=0; xx--) {
_straddvvvX+='            push    ' + nameA + '_' + xx + '' + '\n';
_straddvvvX+='            push    ' + nameB + '_' + xx + '' + '\n';
_straddvvvX+='            sup' + '\n';
_straddvvvX+='            if  ' + '\n';
_straddvvvX+='               at _asupb' + _addvvvX + '' + '\n';
_straddvvvX+='                set 1' + '\n';
_straddvvvX+='               ta' + '\n';
_straddvvvX+='            else ' + '\n';
_straddvvvX+='                push    ' + nameA + '_' + xx + '' + '\n';
_straddvvvX+='                push    ' + nameB + '_' + xx + '' + '\n';
_straddvvvX+='                diff' + '\n';
_straddvvvX+='                if' + '\n';
_straddvvvX+='                at _asupb' + _addvvvX + '' + '\n';
_straddvvvX+='                    reset' + '\n';
_straddvvvX+='                ta' + '\n';
_straddvvvX+='                else           ' + '\n';
_straddvvvX+='#(js) }' + '\n';
}
_straddvvvX+='            at _aequb' + _addvvvX + '' + '\n';
_straddvvvX+='                set 1' + '\n';
_straddvvvX+='            ta' + '\n';
_straddvvvX+='#(js) for (var xx = 0 ; xx < X ; xx++) {' + '\n';
for (var xx = 0 ; xx < X ; xx++) {
_straddvvvX+='            fi' + '\n';
_straddvvvX+='            fi' + '\n';
_straddvvvX+='#(js) }' + '\n';
}
_straddvvvX+='            push _asupb' + _addvvvX + '' + '\n';
_straddvvvX+='            if  # absA > absB : do  absA-absB with sign of A' + '\n';
_straddvvvX+='                # print("absA > absB\\n")' + '\n';
_straddvvvX+='                push    ' + nameA + '_s' + '\n';
_straddvvvX+='                pop     ' + name + '_s    # name has same sign of nameA ' + '\n';
_straddvvvX+='                push    0' + '\n';
_straddvvvX+='#(js) for (var xx = 0 ; xx < X; xx++) {' + '\n';
for (var xx = 0 ; xx < X; xx++) {
_straddvvvX+='                push    ' + nameA + '_' + xx + '' + '\n';
_straddvvvX+='                swap' + '\n';
_straddvvvX+='#(begin macro)                subof()' + '\n';
_straddvvvX+=subof();
_straddvvvX+='#(end macro)                subof()' + '\n';
_straddvvvX+='                pop     ' + name + '_' + xx + '' + '\n';
_straddvvvX+='                push    ' + nameB + '_' + xx + '' + '\n';
_straddvvvX+='                swap' + '\n';
_straddvvvX+='#(begin macro)                subof()' + '\n';
_straddvvvX+=subof();
_straddvvvX+='#(end macro)                subof()' + '\n';
_straddvvvX+='                push    ' + name + '_' + xx + '' + '\n';
_straddvvvX+='                swap' + '\n';
_straddvvvX+='#(begin macro)                subof()' + '\n';
_straddvvvX+=subof();
_straddvvvX+='#(end macro)                subof()' + '\n';
_straddvvvX+='                pop     ' + name + '_' + xx + ' ' + '\n';
_straddvvvX+='                add   ' + '\n';
_straddvvvX+='#(js) }' + '\n';
}
_straddvvvX+='                pop     ' + name + '_c' + '\n';
_straddvvvX+='            ' + '\n';
_straddvvvX+='            else # absB >= absA : ' + '\n';
_straddvvvX+='                push    _aequb' + _addvvvX + '' + '\n';
_straddvvvX+='                if # absA == absB , then name =0 (opposite sign then sum is zero)' + '\n';
_straddvvvX+='                    #print("absA == absB\\n")' + '\n';
_straddvvvX+='#(begin macro)                    setvX(X,name,0) ' + '\n';
_straddvvvX+=setvX(X,name,0);
_straddvvvX+='#(end macro)                    setvX(X,name,0) ' + '\n';
_straddvvvX+='                else # absA < absB : do   absB-absA with sign of B' + '\n';
_straddvvvX+='                    #print("absA < absB\\n")' + '\n';
_straddvvvX+='                    push    ' + nameB + '_s' + '\n';
_straddvvvX+='                    pop     ' + name + '_s    # name has same sign of nameB' + '\n';
_straddvvvX+='                    push    0' + '\n';
_straddvvvX+='#(js) for (var xx = 0 ; xx < X; xx++) {' + '\n';
for (var xx = 0 ; xx < X; xx++) {
_straddvvvX+='                    push    ' + nameB + '_' + xx + '' + '\n';
_straddvvvX+='                    swap' + '\n';
_straddvvvX+='#(begin macro)                    subof()' + '\n';
_straddvvvX+=subof();
_straddvvvX+='#(end macro)                    subof()' + '\n';
_straddvvvX+='                    pop     ' + name + '_' + xx + '' + '\n';
_straddvvvX+='                    push    ' + nameA + '_' + xx + '' + '\n';
_straddvvvX+='                    swap' + '\n';
_straddvvvX+='#(begin macro)                    subof()' + '\n';
_straddvvvX+=subof();
_straddvvvX+='#(end macro)                    subof()' + '\n';
_straddvvvX+='                    push    ' + name + '_' + xx + '' + '\n';
_straddvvvX+='                    swap' + '\n';
_straddvvvX+='#(begin macro)                    subof()' + '\n';
_straddvvvX+=subof();
_straddvvvX+='#(end macro)                    subof()' + '\n';
_straddvvvX+='                    pop     ' + name + '_' + xx + '' + '\n';
_straddvvvX+='                    add    ' + '\n';
_straddvvvX+='#(js) }' + '\n';
}
_straddvvvX+='                    pop     ' + name + '_c' + '\n';
_straddvvvX+='                fi ' + '\n';
_straddvvvX+='            fi            ' + '\n';
_straddvvvX+='#(begin macro)        scope_end()' + '\n';
_straddvvvX+=scope_end();
_straddvvvX+='#(end macro)        scope_end()' + '\n';
_straddvvvX+='    fi    ' + '\n';
return _straddvvvX;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# macro addvvX(X,name, nameA) : name += nameA' + '\n';
var _addvvX; _addvvX=0;
var addvvX = function(X,name, nameA){
 _addvvX++;
var _straddvvX; 
_straddvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
_straddvvX+='#(begin macro)    scope_begin()' + '\n';
_straddvvX+=scope_begin();
_straddvvX+='#(end macro)    scope_begin()' + '\n';
_straddvvX+='#(begin macro)        lvarX(X,"_addvvXnameB"+_addvvX)' + '\n';
_straddvvX+=lvarX(X,"_addvvXnameB"+_addvvX);
_straddvvX+='#(end macro)        lvarX(X,"_addvvXnameB"+_addvvX)' + '\n';
_straddvvX+='#(begin macro)    pushvX(X,name)' + '\n';
_straddvvX+=pushvX(X,name);
_straddvvX+='#(end macro)    pushvX(X,name)' + '\n';
_straddvvX+='#(begin macro)    popvX(X,"_addvvXnameB"+_addvvX)' + '\n';
_straddvvX+=popvX(X,"_addvvXnameB"+_addvvX);
_straddvvX+='#(end macro)    popvX(X,"_addvvXnameB"+_addvvX)' + '\n';
_straddvvX+='#(begin macro)    addvvvX(X,name, "_addvvXnameB"+_addvvX, nameA)' + '\n';
_straddvvX+=addvvvX(X,name, "_addvvXnameB"+_addvvX, nameA);
_straddvvX+='#(end macro)    addvvvX(X,name, "_addvvXnameB"+_addvvX, nameA)' + '\n';
_straddvvX+='#(begin macro)    scope_end()' + '\n';
_straddvvX+=scope_end();
_straddvvX+='#(end macro)    scope_end()' + '\n';
return _straddvvX;
}
_str_main+='' + '\n';
_str_main+='# macro addvX(X,nameA) : head stack += nameA' + '\n';
var _addvX; _addvX=0;
var addvX = function(nameA){
 _addvX++;
var _straddvX; 
_straddvX='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvX(nameA)[' + [nameA] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addvX(nameA)[' + [nameA] +']';
_straddvX+='#(begin macro)    sbmX(X, "_addvXName"+ _addvX, 0)' + '\n';
_straddvX+=sbmX(X, "_addvXName"+ _addvX, 0);
_straddvX+='#(end macro)    sbmX(X, "_addvXName"+ _addvX, 0)' + '\n';
_straddvX+='#(begin macro)    addvvX(X, "_addvXName"+ _addvX, nameA)' + '\n';
_straddvX+=addvvX(X, "_addvXName"+ _addvX, nameA);
_straddvX+='#(end macro)    addvvX(X, "_addvXName"+ _addvX, nameA)' + '\n';
return _straddvX;
}
_str_main+='' + '\n';
_str_main+='# macro addX(X) : stack-1 = stack-1 + stack ; stack--' + '\n';
var _addX; _addX=0;
var addX = function(X){
 _addX++;
var _straddX; 
_straddX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addX(X)[' + [X] +']';
_straddX+='#(begin macro)    sbmX(X, "_addXName"+ _addX, 1)' + '\n';
_straddX+=sbmX(X, "_addXName"+ _addX, 1);
_straddX+='#(end macro)    sbmX(X, "_addXName"+ _addX, 1)' + '\n';
_straddX+='#(begin macro)    sbmX(X, "_addXNameB"+ _addX, 0)' + '\n';
_straddX+=sbmX(X, "_addXNameB"+ _addX, 0);
_straddX+='#(end macro)    sbmX(X, "_addXNameB"+ _addX, 0)' + '\n';
_straddX+='#(begin macro)    scope_begin()' + '\n';
_straddX+=scope_begin();
_straddX+='#(end macro)    scope_begin()' + '\n';
_straddX+='#(begin macro)        lvarX(X,"_addXNameA"+_addX)' + '\n';
_straddX+=lvarX(X,"_addXNameA"+_addX);
_straddX+='#(end macro)        lvarX(X,"_addXNameA"+_addX)' + '\n';
_straddX+='#(begin macro)        pushvX(X,"_addXName"+_addX)' + '\n';
_straddX+=pushvX(X,"_addXName"+_addX);
_straddX+='#(end macro)        pushvX(X,"_addXName"+_addX)' + '\n';
_straddX+='#(begin macro)        popvx(X,"_addXNameA"+_addX)' + '\n';
_straddX+=popvx(X,"_addXNameA"+_addX);
_straddX+='#(end macro)        popvx(X,"_addXNameA"+_addX)' + '\n';
_straddX+='#(begin macro)        addvvvX(X, "_addXName" + _addX, "_addXNameA" + _addX, "_addXNameB" + _addX)' + '\n';
_straddX+=addvvvX(X, "_addXName" + _addX, "_addXNameA" + _addX, "_addXNameB" + _addX);
_straddX+='#(end macro)        addvvvX(X, "_addXName" + _addX, "_addXNameA" + _addX, "_addXNameB" + _addX)' + '\n';
_straddX+='#(begin macro)    scope_end()' + '\n';
_straddX+=scope_end();
_straddX+='#(end macro)    scope_end()' + '\n';
_straddX+='#(begin macro)    dropX(X)' + '\n';
_straddX+=dropX(X);
_straddX+='#(end macro)    dropX(X)' + '\n';
return _straddX;
}
_str_main+='' + '\n';
_str_main+='# macro subvvvX(X,name, nameA, nameB) : name = nameA - nameB' + '\n';
var _subvvvX; _subvvvX=0;
var subvvvX = function(X, name, nameA, nameB){
 _subvvvX++;
var _strsubvvvX; 
_strsubvvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subvvvX(X, name, nameA, nameB)[' + [X, name, nameA, nameB] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvvvX(X, name, nameA, nameB)[' + [X, name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro subvvvX(X, name, nameA, nameB)[' + [X, name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro subvvvX(X, name, nameA, nameB)[' + [X, name, nameA, nameB] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro subvvvX(X, name, nameA, nameB)[' + [X, name, nameA, nameB] +']';
_strsubvvvX+='#(begin macro)    scope_begin()' + '\n';
_strsubvvvX+=scope_begin();
_strsubvvvX+='#(end macro)    scope_begin()' + '\n';
_strsubvvvX+='#(begin macro)        lvarX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=lvarX(X,"_negNameB" + _subvvvX);
_strsubvvvX+='#(end macro)        lvarX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+='#(begin macro)        pushvX(X,nameB)' + '\n';
_strsubvvvX+=pushvX(X,nameB);
_strsubvvvX+='#(end macro)        pushvX(X,nameB)' + '\n';
_strsubvvvX+='#(begin macro)        popvX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=popvX(X,"_negNameB" + _subvvvX);
_strsubvvvX+='#(end macro)        popvX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+='#(begin macro)        negvX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=negvX(X,"_negNameB" + _subvvvX);
_strsubvvvX+='#(end macro)        negvX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+='#(begin macro)        addvvvX(X, name, nameA, "_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=addvvvX(X, name, nameA, "_negNameB" + _subvvvX);
_strsubvvvX+='#(end macro)        addvvvX(X, name, nameA, "_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+='#(begin macro)    scope_end()' + '\n';
_strsubvvvX+=scope_end();
_strsubvvvX+='#(end macro)    scope_end()' + '\n';
return _strsubvvvX;
}
_str_main+='' + '\n';
_str_main+='# macro subvvX(X,name, nameA) : name -= nameA ' + '\n';
var _subvvX; _subvvX=0;
var subvvX = function(X,name, nameA){
 _subvvX++;
var _strsubvvX; 
_strsubvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
_strsubvvX+='#(begin macro)    scope_begin()' + '\n';
_strsubvvX+=scope_begin();
_strsubvvX+='#(end macro)    scope_begin()' + '\n';
_strsubvvX+='#(begin macro)     lvarX(X, "_subvvXNameB" + _subvvX)' + '\n';
_strsubvvX+=lvarX(X, "_subvvXNameB" + _subvvX);
_strsubvvX+='#(end macro)     lvarX(X, "_subvvXNameB" + _subvvX)' + '\n';
_strsubvvX+='#(begin macro)     pushvX(X, name)' + '\n';
_strsubvvX+=pushvX(X, name);
_strsubvvX+='#(end macro)     pushvX(X, name)' + '\n';
_strsubvvX+='#(begin macro)     popvX(X, "_subvvXNameB" + _subvvX)' + '\n';
_strsubvvX+=popvX(X, "_subvvXNameB" + _subvvX);
_strsubvvX+='#(end macro)     popvX(X, "_subvvXNameB" + _subvvX)' + '\n';
_strsubvvX+='#(begin macro)     subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)' + '\n';
_strsubvvX+=subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA);
_strsubvvX+='#(end macro)     subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)' + '\n';
_strsubvvX+='#(begin macro)    scope_end()' + '\n';
_strsubvvX+=scope_end();
_strsubvvX+='#(end macro)    scope_end()' + '\n';
return _strsubvvX;
}
_str_main+='' + '\n';
_str_main+='# macro subvX(X,nameB) : head stack -= nameB' + '\n';
var _subvX; _subvX=0;
var subvX = function(X,nameB){
 _subvX++;
var _strsubvX; 
_strsubvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subvX(X,nameB)[' + [X,nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro subvX(X,nameB)[' + [X,nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subvX(X,nameB)[' + [X,nameB] +']';
_strsubvX+='#(begin macro)    sbmX(X, "_subvXName" + _subX, 0)' + '\n';
_strsubvX+=sbmX(X, "_subvXName" + _subX, 0);
_strsubvX+='#(end macro)    sbmX(X, "_subvXName" + _subX, 0)' + '\n';
_strsubvX+='#(begin macro)    scope_begin()' + '\n';
_strsubvX+=scope_begin();
_strsubvX+='#(end macro)    scope_begin()' + '\n';
_strsubvX+='#(begin macro)        lvarX(X,"_subvXNameA" + _subX)' + '\n';
_strsubvX+=lvarX(X,"_subvXNameA" + _subX);
_strsubvX+='#(end macro)        lvarX(X,"_subvXNameA" + _subX)' + '\n';
_strsubvX+='#(begin macro)        pushvX(X, "_subvXName" + _subX)' + '\n';
_strsubvX+=pushvX(X, "_subvXName" + _subX);
_strsubvX+='#(end macro)        pushvX(X, "_subvXName" + _subX)' + '\n';
_strsubvX+='#(begin macro)        popvX(X,"_subvXNameA" + _subX)' + '\n';
_strsubvX+=popvX(X,"_subvXNameA" + _subX);
_strsubvX+='#(end macro)        popvX(X,"_subvXNameA" + _subX)' + '\n';
_strsubvX+='#(begin macro)        subvvvX(X, "_subvXName" + _subX, "_subvXNameA" + _subX, nameB)' + '\n';
_strsubvX+=subvvvX(X, "_subvXName" + _subX, "_subvXNameA" + _subX, nameB);
_strsubvX+='#(end macro)        subvvvX(X, "_subvXName" + _subX, "_subvXNameA" + _subX, nameB)' + '\n';
_strsubvX+='#(begin macro)    scope_end()' + '\n';
_strsubvX+=scope_end();
_strsubvX+='#(end macro)    scope_end()' + '\n';
return _strsubvX;
}
_str_main+='' + '\n';
_str_main+='# macro subX(X) : stack-1 = stack-1 - stack ; stack--' + '\n';
var _subX; _subX=0;
var subX = function(X){
 _subX++;
var _strsubX; 
_strsubX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro subX(X)[' + [X] +']';
_strsubX+='#(begin macro)    sbmX(X, "_subXName" + _subX, 1)' + '\n';
_strsubX+=sbmX(X, "_subXName" + _subX, 1);
_strsubX+='#(end macro)    sbmX(X, "_subXName" + _subX, 1)' + '\n';
_strsubX+='#(begin macro)    sbmX(X,"_subXNameB" + _subX, 0)' + '\n';
_strsubX+=sbmX(X,"_subXNameB" + _subX, 0);
_strsubX+='#(end macro)    sbmX(X,"_subXNameB" + _subX, 0)' + '\n';
_strsubX+='#(begin macro)    scope_begin()' + '\n';
_strsubX+=scope_begin();
_strsubX+='#(end macro)    scope_begin()' + '\n';
_strsubX+='#(begin macro)        lvarX(X,"_subXNameA" + _subX)' + '\n';
_strsubX+=lvarX(X,"_subXNameA" + _subX);
_strsubX+='#(end macro)        lvarX(X,"_subXNameA" + _subX)' + '\n';
_strsubX+='#(begin macro)        pushvX(X,"_subXName" + _subX)' + '\n';
_strsubX+=pushvX(X,"_subXName" + _subX);
_strsubX+='#(end macro)        pushvX(X,"_subXName" + _subX)' + '\n';
_strsubX+='#(begin macro)        popvx(X,"_subXNameA" + _subX)' + '\n';
_strsubX+=popvx(X,"_subXNameA" + _subX);
_strsubX+='#(end macro)        popvx(X,"_subXNameA" + _subX)' + '\n';
_strsubX+='#(begin macro)        subvvvX(X,"subXName" + _subX, "subXNameA" + _subX, "subXNameB" + _subX)' + '\n';
_strsubX+=subvvvX(X,"subXName" + _subX, "subXNameA" + _subX, "subXNameB" + _subX);
_strsubX+='#(end macro)        subvvvX(X,"subXName" + _subX, "subXNameA" + _subX, "subXNameB" + _subX)' + '\n';
_strsubX+='#(begin macro)    scope_end()' + '\n';
_strsubX+=scope_end();
_strsubX+='#(end macro)    scope_end()' + '\n';
_strsubX+='#(begin macro)    dropX(X)' + '\n';
_strsubX+=dropX(X);
_strsubX+='#(end macro)    dropX(X)' + '\n';
return _strsubX;
}
_str_main+='' + '\n';
_str_main+='# macro mulvvvX(X,name, nameA, nameB) : name = nameA * nameB ' + '\n';
var _mulvvvX; _mulvvvX=0;
var mulvvvX = function(X,name, nameA, nameB){
 _mulvvvX++;
var _strmulvvvX; 
_strmulvvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro mulvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro mulvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro mulvvvX(X,name, nameA, nameB)[' + [X,name, nameA, nameB] +']';
_strmulvvvX+='#(begin macro)    scope_begin()' + '\n';
_strmulvvvX+=scope_begin();
_strmulvvvX+='#(end macro)    scope_begin()' + '\n';
_strmulvvvX+='#(begin macro)        lvarX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=lvarX(X,"_mulvvvXabsNameA" + _mulvvvX);
_strmulvvvX+='#(end macro)        lvarX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+='#(begin macro)        pushvX(X,nameA)' + '\n';
_strmulvvvX+=pushvX(X,nameA);
_strmulvvvX+='#(end macro)        pushvX(X,nameA)' + '\n';
_strmulvvvX+='#(begin macro)        popvX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=popvX(X,"_mulvvvXabsNameA" + _mulvvvX);
_strmulvvvX+='#(end macro)        popvX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+='#(begin macro)        lvar("_mulvvvXsA" + _mulvvvX, 0)' + '\n';
_strmulvvvX+=lvar("_mulvvvXsA" + _mulvvvX, 0);
_strmulvvvX+='#(end macro)        lvar("_mulvvvXsA" + _mulvvvX, 0)' + '\n';
_strmulvvvX+='#(begin macro)        pushsvX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=pushsvX(X,"_mulvvvXabsNameA" + _mulvvvX);
_strmulvvvX+='#(end macro)        pushsvX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+='        pop _mulvvvXsA' + _mulvvvX + '' + '\n';
_strmulvvvX+='#(begin macro)        absvX(X,"_mulvvvXabsNameA" + _mulvvvX)   # absNameA = abs(nameA)' + '\n';
_strmulvvvX+=absvX(X,"_mulvvvXabsNameA" + _mulvvvX);
_strmulvvvX+='#(end macro)        absvX(X,"_mulvvvXabsNameA" + _mulvvvX)   # absNameA = abs(nameA)' + '\n';
_strmulvvvX+='        ' + '\n';
_strmulvvvX+='#(begin macro)        lvarX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=lvarX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+='#(end macro)        lvarX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+='#(begin macro)        pushvX(X,nameB)' + '\n';
_strmulvvvX+=pushvX(X,nameB);
_strmulvvvX+='#(end macro)        pushvX(X,nameB)' + '\n';
_strmulvvvX+='#(begin macro)        popvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=popvX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+='#(end macro)        popvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+='#(begin macro)        lvar("_mulvvvXsB" + _mulvvvX, 0)' + '\n';
_strmulvvvX+=lvar("_mulvvvXsB" + _mulvvvX, 0);
_strmulvvvX+='#(end macro)        lvar("_mulvvvXsB" + _mulvvvX, 0)' + '\n';
_strmulvvvX+='#(begin macro)        pushsvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=pushsvX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+='#(end macro)        pushsvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+='        pop _mulvvvXsB' + _mulvvvX + '' + '\n';
_strmulvvvX+='#(begin macro)        absvX(X,"_mulvvvXabsNameB" + _mulvvvX)   # absNameB = abs(nameB)' + '\n';
_strmulvvvX+=absvX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+='#(end macro)        absvX(X,"_mulvvvXabsNameB" + _mulvvvX)   # absNameB = abs(nameB)' + '\n';
_strmulvvvX+='        ' + '\n';
_strmulvvvX+='#(begin macro)        resetvX(X,name)' + '\n';
_strmulvvvX+=resetvX(X,name);
_strmulvvvX+='#(end macro)        resetvX(X,name)' + '\n';
_strmulvvvX+='' + '\n';
_strmulvvvX+='        push    1' + '\n';
_strmulvvvX+='        sbm _mulvvvX_loop' + _mulvvvX + '' + '\n';
_strmulvvvX+='        while' + '\n';
_strmulvvvX+='#(begin macro)            boolvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=boolvX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+='#(end macro)            boolvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+='            if  # absNameB is not zero' + '\n';
_strmulvvvX+='#(begin macro)                addvvX(X,name,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=addvvX(X,name,"_mulvvvXabsNameA" + _mulvvvX);
_strmulvvvX+='#(end macro)                addvvX(X,name,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+='#(begin macro)                decvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=decvX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+='#(end macro)                decvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+='            else ' + '\n';
_strmulvvvX+='#(begin macro)                at_reset("_mulvvvX_loop"+_mulvvvX)' + '\n';
_strmulvvvX+=at_reset("_mulvvvX_loop"+_mulvvvX);
_strmulvvvX+='#(end macro)                at_reset("_mulvvvX_loop"+_mulvvvX)' + '\n';
_strmulvvvX+='            fi' + '\n';
_strmulvvvX+='        wend        ' + '\n';
_strmulvvvX+='        # resolve sign' + '\n';
_strmulvvvX+='        push _mulvvvXsA' + _mulvvvX + '' + '\n';
_strmulvvvX+='        push _mulvvvXsB' + _mulvvvX + '' + '\n';
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
_str_main+='# macro mulvvX(X,name, nameB) : name *= nameB' + '\n';
var _mulvvX; _mulvvX=0;
var mulvvX = function(X,name, nameB){
 _mulvvX++;
var _strmulvvX; 
_strmulvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulvvX(X,name, nameB)[' + [X,name, nameB] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvvX(X,name, nameB)[' + [X,name, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro mulvvX(X,name, nameB)[' + [X,name, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro mulvvX(X,name, nameB)[' + [X,name, nameB] +']';
_strmulvvX+='#(begin macro)    scope_begin()' + '\n';
_strmulvvX+=scope_begin();
_strmulvvX+='#(end macro)    scope_begin()' + '\n';
_strmulvvX+='#(begin macro)    lvarX(X, "_milvvXNameA" + _mulvvX)' + '\n';
_strmulvvX+=lvarX(X, "_milvvXNameA" + _mulvvX);
_strmulvvX+='#(end macro)    lvarX(X, "_milvvXNameA" + _mulvvX)' + '\n';
_strmulvvX+='#(begin macro)    pushvX(X,name)' + '\n';
_strmulvvX+=pushvX(X,name);
_strmulvvX+='#(end macro)    pushvX(X,name)' + '\n';
_strmulvvX+='#(begin macro)    popvX(X,"_milvvXNameA" + _mulvvX)' + '\n';
_strmulvvX+=popvX(X,"_milvvXNameA" + _mulvvX);
_strmulvvX+='#(end macro)    popvX(X,"_milvvXNameA" + _mulvvX)' + '\n';
_strmulvvX+='#(begin macro)    mulvvvX(X,name,"_milvvXNameA" + _mulvvX,nameB)' + '\n';
_strmulvvX+=mulvvvX(X,name,"_milvvXNameA" + _mulvvX,nameB);
_strmulvvX+='#(end macro)    mulvvvX(X,name,"_milvvXNameA" + _mulvvX,nameB)' + '\n';
_strmulvvX+='#(begin macro)    scope_end()' + '\n';
_strmulvvX+=scope_end();
_strmulvvX+='#(end macro)    scope_end()' + '\n';
return _strmulvvX;
}
_str_main+='' + '\n';
_str_main+='# macro mulvX(X,name) : head of stack *= name' + '\n';
var _mulvX; _mulvX=0;
var mulvX = function(X,name){
 _mulvX++;
var _strmulvX; 
_strmulvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro mulvX(X,name)[' + [X,name] +']';
_strmulvX+='#(begin macro)    sbmX(X, "_mulvXName"+ _mulvX, 0)' + '\n';
_strmulvX+=sbmX(X, "_mulvXName"+ _mulvX, 0);
_strmulvX+='#(end macro)    sbmX(X, "_mulvXName"+ _mulvX, 0)' + '\n';
_strmulvX+='#(begin macro)    mulvvX(X, "_mulvXName"+ _mulvX, name)' + '\n';
_strmulvX+=mulvvX(X, "_mulvXName"+ _mulvX, name);
_strmulvX+='#(end macro)    mulvvX(X, "_mulvXName"+ _mulvX, name)' + '\n';
return _strmulvX;
}
_str_main+='' + '\n';
_str_main+='# macro mulX(X) : stack-1 = stack-1 * stack : stack--' + '\n';
var _mulX; _mulX=0;
var mulX = function(X){
 _mulX++;
var _strmulX; 
_strmulX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro mulX(X)[' + [X] +']';
_strmulX+='#(begin macro)    sbmX(X, "_mulXName" + _mulX, 1)' + '\n';
_strmulX+=sbmX(X, "_mulXName" + _mulX, 1);
_strmulX+='#(end macro)    sbmX(X, "_mulXName" + _mulX, 1)' + '\n';
_strmulX+='#(begin macro)    sbmX(X, "_mulXNameB" + _mulX, 0)' + '\n';
_strmulX+=sbmX(X, "_mulXNameB" + _mulX, 0);
_strmulX+='#(end macro)    sbmX(X, "_mulXNameB" + _mulX, 0)' + '\n';
_strmulX+='#(begin macro)    scope_begin()' + '\n';
_strmulX+=scope_begin();
_strmulX+='#(end macro)    scope_begin()' + '\n';
_strmulX+='#(begin macro)        lvarX(X, "_mulXNameA" + _mulX)' + '\n';
_strmulX+=lvarX(X, "_mulXNameA" + _mulX);
_strmulX+='#(end macro)        lvarX(X, "_mulXNameA" + _mulX)' + '\n';
_strmulX+='#(begin macro)        pushvX(X, "_mulXName" + _mulX)' + '\n';
_strmulX+=pushvX(X, "_mulXName" + _mulX);
_strmulX+='#(end macro)        pushvX(X, "_mulXName" + _mulX)' + '\n';
_strmulX+='#(begin macro)        popvX(X, "_mulXNameA" + _mulX)' + '\n';
_strmulX+=popvX(X, "_mulXNameA" + _mulX);
_strmulX+='#(end macro)        popvX(X, "_mulXNameA" + _mulX)' + '\n';
_strmulX+='#(begin macro)        mulvvvX(X, "_mulXName" + _mulX, "_mulXNameA" + _mulX, "_mulXNameB" + _mulX)' + '\n';
_strmulX+=mulvvvX(X, "_mulXName" + _mulX, "_mulXNameA" + _mulX, "_mulXNameB" + _mulX);
_strmulX+='#(end macro)        mulvvvX(X, "_mulXName" + _mulX, "_mulXNameA" + _mulX, "_mulXNameB" + _mulX)' + '\n';
_strmulX+='#(begin macro)    scope_end()' + '\n';
_strmulX+=scope_end();
_strmulX+='#(end macro)    scope_end()' + '\n';
_strmulX+='#(begin macro)    dropX(X)' + '\n';
_strmulX+=dropX(X);
_strmulX+='#(end macro)    dropX(X)' + '\n';
return _strmulX;
}
_str_main+='' + '\n';
_str_main+='# macro equalvvX(X,nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise' + '\n';
var _equalvvX; _equalvvX=0;
var equalvvX = function(X,nameA, nameB){
 _equalvvX++;
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
var _equalX; _equalX=0;
var equalX = function(X){
 _equalX++;
var _strequalX; 
_strequalX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro equalX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro equalX(X)[' + [X] +']';
_strequalX+='#(begin macro)    sbmX(X,"_equalXA" + _equalX, 1)' + '\n';
_strequalX+=sbmX(X,"_equalXA" + _equalX, 1);
_strequalX+='#(end macro)    sbmX(X,"_equalXA" + _equalX, 1)' + '\n';
_strequalX+='#(begin macro)    sbmX(X,"_equalXB" + _equalX, 0)' + '\n';
_strequalX+=sbmX(X,"_equalXB" + _equalX, 0);
_strequalX+='#(end macro)    sbmX(X,"_equalXB" + _equalX, 0)' + '\n';
_strequalX+='    sbm _equalX' + _equalX + ' - ' + ((X+2)*2-1) + '' + '\n';
_strequalX+='#(begin macro)    equalvvX(X,"_equalXA" + _equalX, "_equalXB" + _equalX)' + '\n';
_strequalX+=equalvvX(X,"_equalXA" + _equalX, "_equalXB" + _equalX);
_strequalX+='#(end macro)    equalvvX(X,"_equalXA" + _equalX, "_equalXB" + _equalX)' + '\n';
_strequalX+='    pop _equalX' + _equalX + '' + '\n';
_strequalX+='#(js) for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strequalX+='    drop' + '\n';
_strequalX+='#(js) }' + '\n';
}
return _strequalX;
}
_str_main+='' + '\n';
_str_main+='# macro diffvvX(X,nameA, nameB) : push 1 if Name != NameB , push 0 otherwise' + '\n';
var _diffvvX; _diffvvX=0;
var diffvvX = function(X,nameA, nameB){
 _diffvvX++;
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
var _diffX; _diffX=0;
var diffX = function(X){
 _diffX++;
var _strdiffX; 
_strdiffX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro diffX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro diffX(X)[' + [X] +']';
_strdiffX+='#(begin macro)    sbmX(X,"_diffXA" + _diffX, 1)' + '\n';
_strdiffX+=sbmX(X,"_diffXA" + _diffX, 1);
_strdiffX+='#(end macro)    sbmX(X,"_diffXA" + _diffX, 1)' + '\n';
_strdiffX+='#(begin macro)    sbmX(X,"_diffXB" + _diffX, 0)' + '\n';
_strdiffX+=sbmX(X,"_diffXB" + _diffX, 0);
_strdiffX+='#(end macro)    sbmX(X,"_diffXB" + _diffX, 0)' + '\n';
_strdiffX+='    sbm _diffX' + _diffX + ' - ' + ((X+2)*2-1) + '' + '\n';
_strdiffX+='#(begin macro)    diffvvX(X,"_diffXA" + _diffX, "_diffXB" + _diffX)' + '\n';
_strdiffX+=diffvvX(X,"_diffXA" + _diffX, "_diffXB" + _diffX);
_strdiffX+='#(end macro)    diffvvX(X,"_diffXA" + _diffX, "_diffXB" + _diffX)' + '\n';
_strdiffX+='    pop _diffX' + _diffX + '' + '\n';
_strdiffX+='#(js) for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strdiffX+='    drop' + '\n';
_strdiffX+='#(js) }' + '\n';
}
return _strdiffX;
}
_str_main+='' + '\n';
_str_main+='# macro supequalvvX(X,nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise' + '\n';
var _supequalvvX; _supequalvvX=0;
var supequalvvX = function(X,nameA, nameB){
 _supequalvvX++;
var _strsupequalvvX; 
_strsupequalvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strsupequalvvX+='    push 0' + '\n';
_strsupequalvvX+='    sbm _supequalvvX' + _supequalvvX + '' + '\n';
_strsupequalvvX+='#(begin macro)    scope_begin()' + '\n';
_strsupequalvvX+=scope_begin();
_strsupequalvvX+='#(end macro)    scope_begin()' + '\n';
_strsupequalvvX+='#(begin macro)        lvarX(X, "_supequalvvXName" + _supequalvvX)' + '\n';
_strsupequalvvX+=lvarX(X, "_supequalvvXName" + _supequalvvX);
_strsupequalvvX+='#(end macro)        lvarX(X, "_supequalvvXName" + _supequalvvX)' + '\n';
_strsupequalvvX+='#(begin macro)        subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)' + '\n';
_strsupequalvvX+=subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB);
_strsupequalvvX+='#(end macro)        subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)' + '\n';
_strsupequalvvX+='        push _supequalvvXName' + _supequalvvX + '_s' + '\n';
_strsupequalvvX+='        not' + '\n';
_strsupequalvvX+='        pop _supequalvvX' + _supequalvvX + '' + '\n';
_strsupequalvvX+='#(begin macro)    scope_end()' + '\n';
_strsupequalvvX+=scope_end();
_strsupequalvvX+='#(end macro)    scope_end()' + '\n';
return _strsupequalvvX;
}
_str_main+='' + '\n';
_str_main+='# macro supequalX(X) : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 X*8 bits value from stack' + '\n';
var _supequalX; _supequalX=0;
var supequalX = function(X){
 _supequalX++;
var _strsupequalX; 
_strsupequalX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supequalX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro supequalX(X)[' + [X] +']';
_strsupequalX+='#(begin macro)    sbmX(X, "_supequalXA" + _supequalX, 1)' + '\n';
_strsupequalX+=sbmX(X, "_supequalXA" + _supequalX, 1);
_strsupequalX+='#(end macro)    sbmX(X, "_supequalXA" + _supequalX, 1)' + '\n';
_strsupequalX+='#(begin macro)    sbmX(X, "_supequalXB" + _supequalX, 0)' + '\n';
_strsupequalX+=sbmX(X, "_supequalXB" + _supequalX, 0);
_strsupequalX+='#(end macro)    sbmX(X, "_supequalXB" + _supequalX, 0)' + '\n';
_strsupequalX+='    sbm _supequalX' + _supequalX + ' - ' + ((X+2)*2-1) + '' + '\n';
_strsupequalX+='#(begin macro)    supequalvvX(X, "_supequalXA" + _supequalX, "_supequalXB" + _supequalX)' + '\n';
_strsupequalX+=supequalvvX(X, "_supequalXA" + _supequalX, "_supequalXB" + _supequalX);
_strsupequalX+='#(end macro)    supequalvvX(X, "_supequalXA" + _supequalX, "_supequalXB" + _supequalX)' + '\n';
_strsupequalX+='    pop _supequalX' + _supequalX + '' + '\n';
_strsupequalX+='#(js) for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strsupequalX+='    drop' + '\n';
_strsupequalX+='#(js) }' + '\n';
}
return _strsupequalX;
}
_str_main+='' + '\n';
_str_main+='# macro infvvX(X,nameA, nameB) : push 1 if nameA < nameB push 0 otherwise' + '\n';
var _infvvX; _infvvX=0;
var infvvX = function(X,nameA, nameB){
 _infvvX++;
var _strinfvvX; 
_strinfvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strinfvvX+='    push 0' + '\n';
_strinfvvX+='    sbm _infvvX' + _infvvX + '' + '\n';
_strinfvvX+='#(begin macro)    scope_begin()' + '\n';
_strinfvvX+=scope_begin();
_strinfvvX+='#(end macro)    scope_begin()' + '\n';
_strinfvvX+='#(begin macro)        lvarX(X, "_infvvXName" + _infvvX)' + '\n';
_strinfvvX+=lvarX(X, "_infvvXName" + _infvvX);
_strinfvvX+='#(end macro)        lvarX(X, "_infvvXName" + _infvvX)' + '\n';
_strinfvvX+='#(begin macro)        subvvvX(X,  "_infvvXName" + _infvvX, nameA, nameB)' + '\n';
_strinfvvX+=subvvvX(X,  "_infvvXName" + _infvvX, nameA, nameB);
_strinfvvX+='#(end macro)        subvvvX(X,  "_infvvXName" + _infvvX, nameA, nameB)' + '\n';
_strinfvvX+='        pop _infvvX' + _infvvX + '' + '\n';
_strinfvvX+='#(begin macro)    scope_end()' + '\n';
_strinfvvX+=scope_end();
_strinfvvX+='#(end macro)    scope_end()' + '\n';
return _strinfvvX;
}
_str_main+='' + '\n';
_str_main+='# macro infX(X) : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 X*8 bits value from stack' + '\n';
var _infX; _infX=0;
var infX = function(X){
 _infX++;
var _strinfX; 
_strinfX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro infX(X)[' + [X] +']';
_strinfX+='#(begin macro)    sbmX(X, "_infXA" + _infX, 1)' + '\n';
_strinfX+=sbmX(X, "_infXA" + _infX, 1);
_strinfX+='#(end macro)    sbmX(X, "_infXA" + _infX, 1)' + '\n';
_strinfX+='#(begin macro)    sbmX(X, "_infXB" + _infX, 0)' + '\n';
_strinfX+=sbmX(X, "_infXB" + _infX, 0);
_strinfX+='#(end macro)    sbmX(X, "_infXB" + _infX, 0)' + '\n';
_strinfX+='    sbm _infX' + _infX + ' - ' + ((X+2)*2-1) + '' + '\n';
_strinfX+='#(begin macro)    infvvX(X, "_infXA" + _infX, "_infXB" + _infX)' + '\n';
_strinfX+=infvvX(X, "_infXA" + _infX, "_infXB" + _infX);
_strinfX+='#(end macro)    infvvX(X, "_infXA" + _infX, "_infXB" + _infX)' + '\n';
_strinfX+='    pop _infX' + _infX + '' + '\n';
_strinfX+='#(js) for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strinfX+='    drop' + '\n';
_strinfX+='#(js) }' + '\n';
}
return _strinfX;
}
_str_main+='' + '\n';
_str_main+='# macro infequalvvX(X,nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise' + '\n';
var _infequalvvX; _infequalvvX=0;
var infequalvvX = function(X,nameA, nameB){
 _infequalvvX++;
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
var _infequalX; _infequalX=0;
var infequalX = function(X){
 _infequalX++;
var _strinfequalX; 
_strinfequalX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infequalX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro infequalX(X)[' + [X] +']';
_strinfequalX+='#(begin macro)    sbmX(X, "_infequalXA" + _infequalX, 1)' + '\n';
_strinfequalX+=sbmX(X, "_infequalXA" + _infequalX, 1);
_strinfequalX+='#(end macro)    sbmX(X, "_infequalXA" + _infequalX, 1)' + '\n';
_strinfequalX+='#(begin macro)    sbmX(X, "_infequalXB" + _infequalX, 0)' + '\n';
_strinfequalX+=sbmX(X, "_infequalXB" + _infequalX, 0);
_strinfequalX+='#(end macro)    sbmX(X, "_infequalXB" + _infequalX, 0)' + '\n';
_strinfequalX+='    sbm _infequalX' + _infequalX + ' - ' + ((X+2)*2-1) + '' + '\n';
_strinfequalX+='#(begin macro)    infequalvvX(X, "_infequalXA" + _infequalX, "_infequalXB" + _infequalX)' + '\n';
_strinfequalX+=infequalvvX(X, "_infequalXA" + _infequalX, "_infequalXB" + _infequalX);
_strinfequalX+='#(end macro)    infequalvvX(X, "_infequalXA" + _infequalX, "_infequalXB" + _infequalX)' + '\n';
_strinfequalX+='    pop _infequalX' + _infequalX + '' + '\n';
_strinfequalX+='#(js) for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strinfequalX+='    drop' + '\n';
_strinfequalX+='#(js) }' + '\n';
}
return _strinfequalX;
}
_str_main+='' + '\n';
_str_main+='# macro supvvX(X,nameA , nameB) : push 1 if nameA > nameB push 0 otherwise' + '\n';
var _supvvX; _supvvX=0;
var supvvX = function(X,nameA, nameB){
 _supvvX++;
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
var _supX; _supX=0;
var supX = function(X){
 _supX++;
var _strsupX; 
_strsupX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro supX(X)[' + [X] +']';
_strsupX+='#(begin macro)    sbmX(X, "_supXA" + _supX, 1)' + '\n';
_strsupX+=sbmX(X, "_supXA" + _supX, 1);
_strsupX+='#(end macro)    sbmX(X, "_supXA" + _supX, 1)' + '\n';
_strsupX+='#(begin macro)    sbmX(X, "_supXB" + _supX, 0)' + '\n';
_strsupX+=sbmX(X, "_supXB" + _supX, 0);
_strsupX+='#(end macro)    sbmX(X, "_supXB" + _supX, 0)' + '\n';
_strsupX+='    sbm _supX' + _supX + ' - ' + ((X+2)*2-1) + '' + '\n';
_strsupX+='#(begin macro)    supvvX(X, "_supXA" + _supX, "_supXB" + _supX)' + '\n';
_strsupX+=supvvX(X, "_supXA" + _supX, "_supXB" + _supX);
_strsupX+='#(end macro)    supvvX(X, "_supXA" + _supX, "_supXB" + _supX)' + '\n';
_strsupX+='    pop _supX' + _supX + '' + '\n';
_strsupX+='#(js) for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strsupX+='    drop' + '\n';
_strsupX+='#(js) }' + '\n';
}
return _strsupX;
}
_str_main+='' + '\n';
_str_main+='# macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB' + '\n';
var _divvvvvX; _divvvvvX=0;
var divvvvvX = function(X,nameAdivB, nameAmodB, nameA, nameB){
 _divvvvvX++;
var _strdivvvvvX; 
_strdivvvvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameAdivB == 'undefined') throw 'Parameter nameAdivB is undefined in call of  macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameAmodB == 'undefined') throw 'Parameter nameAmodB is undefined in call of  macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
if (arguments.length != 5) throw 'Too much arguments provided to macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB)[' + [X,nameAdivB, nameAmodB, nameA, nameB] +']';
_strdivvvvvX+='#(begin macro)    scope_begin()' + '\n';
_strdivvvvvX+=scope_begin();
_strdivvvvvX+='#(end macro)    scope_begin()' + '\n';
_strdivvvvvX+='#(begin macro)        lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=lvarX(X,"_divvvvvXabsNameA" + _divvvvvX);
_strdivvvvvX+='#(end macro)        lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+='#(begin macro)        pushvX(X,nameA)' + '\n';
_strdivvvvvX+=pushvX(X,nameA);
_strdivvvvvX+='#(end macro)        pushvX(X,nameA)' + '\n';
_strdivvvvvX+='#(begin macro)        popvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=popvX(X,"_divvvvvXabsNameA" + _divvvvvX);
_strdivvvvvX+='#(end macro)        popvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+='#(begin macro)        lvar("_divvvvvXsA" + _divvvvvX, 0)' + '\n';
_strdivvvvvX+=lvar("_divvvvvXsA" + _divvvvvX, 0);
_strdivvvvvX+='#(end macro)        lvar("_divvvvvXsA" + _divvvvvX, 0)' + '\n';
_strdivvvvvX+='        push ' + nameA + '_s' + '\n';
_strdivvvvvX+='        pop _divvvvvXsA' + _divvvvvX + '' + '\n';
_strdivvvvvX+='#(begin macro)        absvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=absvX(X,"_divvvvvXabsNameA" + _divvvvvX);
_strdivvvvvX+='#(end macro)        absvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+='        ' + '\n';
_strdivvvvvX+='#(begin macro)        lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=lvarX(X,"_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+='#(end macro)        lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+='#(begin macro)        pushvX(X,nameB)' + '\n';
_strdivvvvvX+=pushvX(X,nameB);
_strdivvvvvX+='#(end macro)        pushvX(X,nameB)' + '\n';
_strdivvvvvX+='#(begin macro)        popvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=popvX(X,"_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+='#(end macro)        popvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+='#(begin macro)        lvar("_divvvvvXsB" + _divvvvvX, 0)' + '\n';
_strdivvvvvX+=lvar("_divvvvvXsB" + _divvvvvX, 0);
_strdivvvvvX+='#(end macro)        lvar("_divvvvvXsB" + _divvvvvX, 0)' + '\n';
_strdivvvvvX+='        push ' + nameB + '_s' + '\n';
_strdivvvvvX+='        pop _divvvvvXsB' + _divvvvvX + '' + '\n';
_strdivvvvvX+='#(begin macro)        absvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=absvX(X,"_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+='#(end macro)        absvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+='        ' + '\n';
_strdivvvvvX+='#(begin macro)        pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=pushvX(X,"_divvvvvXabsNameA" + _divvvvvX);
_strdivvvvvX+='#(end macro)        pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+='#(begin macro)        popvX(X,nameAmodB)' + '\n';
_strdivvvvvX+=popvX(X,nameAmodB);
_strdivvvvvX+='#(end macro)        popvX(X,nameAmodB)' + '\n';
_strdivvvvvX+='        ' + '\n';
_strdivvvvvX+='#(begin macro)        resetvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=resetvX(X,nameAdivB);
_strdivvvvvX+='#(end macro)        resetvX(X,nameAdivB)' + '\n';
_strdivvvvvX+='        ' + '\n';
_strdivvvvvX+='#(begin macro)        boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=boolvX(X,"_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+='#(end macro)        boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+='        if' + '\n';
_strdivvvvvX+='            push    1' + '\n';
_strdivvvvvX+='            sbm     _divvvvvX_g' + _divvvvvX + '' + '\n';
_strdivvvvvX+='            while' + '\n';
_strdivvvvvX+='#(begin macro)                supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+='#(end macro)                supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+='                if' + '\n';
_strdivvvvvX+='#(begin macro)                    incvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=incvX(X,nameAdivB);
_strdivvvvvX+='#(end macro)                    incvX(X,nameAdivB)' + '\n';
_strdivvvvvX+='#(begin macro)                    subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+='#(end macro)                    subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+='                else' + '\n';
_strdivvvvvX+='#(begin macro)                    at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend' + '\n';
_strdivvvvvX+=at_reset("_divvvvvX_g" + _divvvvvX);
_strdivvvvvX+='#(end macro)                    at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend' + '\n';
_strdivvvvvX+='                fi' + '\n';
_strdivvvvvX+='            wend' + '\n';
_strdivvvvvX+='            ' + '\n';
_strdivvvvvX+='            # treat sign of nameAmodB and nameAdivB' + '\n';
_strdivvvvvX+='            push    _divvvvvXsA' + _divvvvvX + '' + '\n';
_strdivvvvvX+='            pop     ' + nameAmodB + '_s   # sign of nameAmodB is sign of nameA' + '\n';
_strdivvvvvX+='            push    _divvvvvXsA' + _divvvvvX + '' + '\n';
_strdivvvvvX+='            push    _divvvvvXsB' + _divvvvvX + '' + '\n';
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
var _divvvX; _divvvX=0;
var divvvX = function(X,nameA, nameB){
 _divvvX++;
var _strdivvvX; 
_strdivvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strdivvvX+='#(begin macro)    pushX(X, 0)' + '\n';
_strdivvvX+=pushX(X, 0);
_strdivvvX+='#(end macro)    pushX(X, 0)' + '\n';
_strdivvvX+='#(begin macro)    sbmX(X, "_divvvXB" + _divvvX, 0) # nameA mod nameB' + '\n';
_strdivvvX+=sbmX(X, "_divvvXB" + _divvvX, 0);
_strdivvvX+='#(end macro)    sbmX(X, "_divvvXB" + _divvvX, 0) # nameA mod nameB' + '\n';
_strdivvvX+='#(begin macro)    pushX(X, 0)' + '\n';
_strdivvvX+=pushX(X, 0);
_strdivvvX+='#(end macro)    pushX(X, 0)' + '\n';
_strdivvvX+='#(begin macro)    sbmX(X, "_divvvXA" + _divvvX, 0) # nameA div nameB' + '\n';
_strdivvvX+=sbmX(X, "_divvvXA" + _divvvX, 0);
_strdivvvX+='#(end macro)    sbmX(X, "_divvvXA" + _divvvX, 0) # nameA div nameB' + '\n';
_strdivvvX+='#(begin macro)    divvvvvX(X, "_divvvXA" + _divvvX, "_divvvXB" + _divvvX, nameA, nameB)' + '\n';
_strdivvvX+=divvvvvX(X, "_divvvXA" + _divvvX, "_divvvXB" + _divvvX, nameA, nameB);
_strdivvvX+='#(end macro)    divvvvvX(X, "_divvvXA" + _divvvX, "_divvvXB" + _divvvX, nameA, nameB)' + '\n';
return _strdivvvX;
}
_str_main+='' + '\n';
_str_main+='# macro divX(X) : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B' + '\n';
var _divX; _divX=0;
var divX = function(X){
 _divX++;
var _strdivX; 
_strdivX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro divX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro divX(X)[' + [X] +']';
_strdivX+='#(begin macro)    sbmX(X, "_divXA" + _divX, 1) # A before div, A mod B after' + '\n';
_strdivX+=sbmX(X, "_divXA" + _divX, 1);
_strdivX+='#(end macro)    sbmX(X, "_divXA" + _divX, 1) # A before div, A mod B after' + '\n';
_strdivX+='#(begin macro)    sbmX(X, "_divXB" + _divX, 0) # B before div, A div B after' + '\n';
_strdivX+=sbmX(X, "_divXB" + _divX, 0);
_strdivX+='#(end macro)    sbmX(X, "_divXB" + _divX, 0) # B before div, A div B after' + '\n';
_strdivX+='#(begin macro)    scope_begin()' + '\n';
_strdivX+=scope_begin();
_strdivX+='#(end macro)    scope_begin()' + '\n';
_strdivX+='#(begin macro)        lvarX(X, "_divXC"+ _divX)' + '\n';
_strdivX+=lvarX(X, "_divXC"+ _divX);
_strdivX+='#(end macro)        lvarX(X, "_divXC"+ _divX)' + '\n';
_strdivX+='#(begin macro)        lvarX(X, "_divXD"+ _divX)' + '\n';
_strdivX+=lvarX(X, "_divXD"+ _divX);
_strdivX+='#(end macro)        lvarX(X, "_divXD"+ _divX)' + '\n';
_strdivX+='#(begin macro)        divvvvvX(X, "_divXC"+ _divX, "_divXD"+ _divX, "_divXA"+ _divX, "_divXB"+ _divX)' + '\n';
_strdivX+=divvvvvX(X, "_divXC"+ _divX, "_divXD"+ _divX, "_divXA"+ _divX, "_divXB"+ _divX);
_strdivX+='#(end macro)        divvvvvX(X, "_divXC"+ _divX, "_divXD"+ _divX, "_divXA"+ _divX, "_divXB"+ _divX)' + '\n';
_strdivX+='#(begin macro)        pushvX(X, "_divXC"+ _divX)' + '\n';
_strdivX+=pushvX(X, "_divXC"+ _divX);
_strdivX+='#(end macro)        pushvX(X, "_divXC"+ _divX)' + '\n';
_strdivX+='#(begin macro)        popvX(X, "_divXB" + _divX)  # B = C = A div B' + '\n';
_strdivX+=popvX(X, "_divXB" + _divX);
_strdivX+='#(end macro)        popvX(X, "_divXB" + _divX)  # B = C = A div B' + '\n';
_strdivX+='#(begin macro)        pushvX(X, "_divXD"+ _divX)' + '\n';
_strdivX+=pushvX(X, "_divXD"+ _divX);
_strdivX+='#(end macro)        pushvX(X, "_divXD"+ _divX)' + '\n';
_strdivX+='#(begin macro)        popvX(X, "_divXA" + _divX)  # A = D = A mod B' + '\n';
_strdivX+=popvX(X, "_divXA" + _divX);
_strdivX+='#(end macro)        popvX(X, "_divXA" + _divX)  # A = D = A mod B' + '\n';
_strdivX+='#(begin macro)    scope_end()' + '\n';
_strdivX+=scope_end();
_strdivX+='#(end macro)    scope_end()' + '\n';
return _strdivX;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# macro castX(X1,X2) : transform stack X1*8 bits value to X2*8 bits value' + '\n';
var _castX; _castX=0;
var castX = function(X1,X2){
 _castX++;
var _strcastX; 
_strcastX='';
if (typeof X1 == 'undefined') throw 'Parameter X1 is undefined in call of  macro castX(X1,X2)[' + [X1,X2] +']';
if (typeof X2 == 'undefined') throw 'Parameter X2 is undefined in call of  macro castX(X1,X2)[' + [X1,X2] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro castX(X1,X2)[' + [X1,X2] +']';
_strcastX+='#(js) if (X1 != X2 && X1 > 0 && X2 > 0) {' + '\n';
if (X1 != X2 && X1 > 0 && X2 > 0) {
_strcastX+='#(begin macro)    sbmX(X1,"_castXInput" + _castX, 0)' + '\n';
_strcastX+=sbmX(X1,"_castXInput" + _castX, 0);
_strcastX+='#(end macro)    sbmX(X1,"_castXInput" + _castX, 0)' + '\n';
_strcastX+='#(begin macro)    varX(X2,"_castXoutput" + _castX)' + '\n';
_strcastX+=varX(X2,"_castXoutput" + _castX);
_strcastX+='#(end macro)    varX(X2,"_castXoutput" + _castX)' + '\n';
_strcastX+='#(begin macro)    scope_begin()' + '\n';
_strcastX+=scope_begin();
_strcastX+='#(end macro)    scope_begin()' + '\n';
_strcastX+='#(begin macro)        lvarX(X1,"_castXori" + _castX)' + '\n';
_strcastX+=lvarX(X1,"_castXori" + _castX);
_strcastX+='#(end macro)        lvarX(X1,"_castXori" + _castX)' + '\n';
_strcastX+='#(begin macro)        lvarX(X2,"_castXdest" + _castX)' + '\n';
_strcastX+=lvarX(X2,"_castXdest" + _castX);
_strcastX+='#(end macro)        lvarX(X2,"_castXdest" + _castX)' + '\n';
_strcastX+='' + '\n';
_strcastX+='#(begin macro)        pushvX(X1,"_castXInput"+_castX)       ' + '\n';
_strcastX+=pushvX(X1,"_castXInput"+_castX);
_strcastX+='#(end macro)        pushvX(X1,"_castXInput"+_castX)       ' + '\n';
_strcastX+='#(begin macro)        popvX(X1,"_castXori" + _castX)' + '\n';
_strcastX+=popvX(X1,"_castXori" + _castX);
_strcastX+='#(end macro)        popvX(X1,"_castXori" + _castX)' + '\n';
_strcastX+='        push    _castXori' + _castX + '_s   ' + '\n';
_strcastX+='        pop     _castXdest' + _castX + '_s  # keep sign' + '\n';
_strcastX+='#(js) if (X1 < X2) {' + '\n';
if (X1 < X2) {
_strcastX+='#(js) for (var xx = 0 ; xx < X1; xx++) {' + '\n';
for (var xx = 0 ; xx < X1; xx++) {
_strcastX+='                push    _castXori' + _castX + '_' + xx + '' + '\n';
_strcastX+='                pop     _castXdest' + _castX + '_' + xx + '' + '\n';
_strcastX+='#(js) }' + '\n';
}
_strcastX+='#(js) for (var xx = X1; xx < X2 ; xx++ ) {' + '\n';
for (var xx = X1; xx < X2 ; xx++ ) {
_strcastX+='                push    0' + '\n';
_strcastX+='                pop     _castXdest' + _castX + '_' + xx + '' + '\n';
_strcastX+='#(js) } ' + '\n';
} 
_strcastX+='#(js) } else { // if X1 > X2' + '\n';
} else { // if X1 > X2
_strcastX+='#(js) for (var xx = 0 ; xx < X2; xx++) {' + '\n';
for (var xx = 0 ; xx < X2; xx++) {
_strcastX+='                push    _castXori' + _castX + '_' + xx + '' + '\n';
_strcastX+='                pop     _castXdest' + _castX + '_' + xx + '' + '\n';
_strcastX+='#(js) }' + '\n';
}
_strcastX+='            ' + '\n';
_strcastX+='#(js) }' + '\n';
}
_strcastX+='#(begin macro)        pushvX(X2,"_castXdest" + _castX)' + '\n';
_strcastX+=pushvX(X2,"_castXdest" + _castX);
_strcastX+='#(end macro)        pushvX(X2,"_castXdest" + _castX)' + '\n';
_strcastX+='#(begin macro)        popvX(X2,"_castXoutput" + _castX)' + '\n';
_strcastX+=popvX(X2,"_castXoutput" + _castX);
_strcastX+='#(end macro)        popvX(X2,"_castXoutput" + _castX)' + '\n';
_strcastX+='#(begin macro)    scope_end()' + '\n';
_strcastX+=scope_end();
_strcastX+='#(end macro)    scope_end()' + '\n';
_strcastX+='#(begin macro)    dropX(X1)' + '\n';
_strcastX+=dropX(X1);
_strcastX+='#(end macro)    dropX(X1)' + '\n';
_strcastX+='#(begin macro)    pushvX(X2,"_castXoutput" + _castX) ' + '\n';
_strcastX+=pushvX(X2,"_castXoutput" + _castX);
_strcastX+='#(end macro)    pushvX(X2,"_castXoutput" + _castX) ' + '\n';
_strcastX+='#(js) }' + '\n';
}
return _strcastX;
}
_str_main+='' + '\n';
_str_main+='# macro sbmX2(X,name,backward,offset) : sbm a X*8 bit head of stack - (backward X*8 bits value+ offset)' + '\n';
var _sbmX2; _sbmX2=0;
var sbmX2 = function(X,name,backward,offset){
 _sbmX2++;
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
var _sbmX; _sbmX=0;
var sbmX = function(X,name,backward){
 _sbmX++;
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
var _cast8to16; _cast8to16=0;
var cast8to16 = function(){
 _cast8to16++;
var _strcast8to16; 
_strcast8to16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast8to16()[' + [] +']';
_strcast8to16+='#(begin macro)    castX(1,2)' + '\n';
_strcast8to16+=castX(1,2);
_strcast8to16+='#(end macro)    castX(1,2)' + '\n';
return _strcast8to16;
}
_str_main+='' + '\n';
var _cast8to24; _cast8to24=0;
var cast8to24 = function(){
 _cast8to24++;
var _strcast8to24; 
_strcast8to24='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast8to24()[' + [] +']';
_strcast8to24+='#(begin macro)    castX(1,3)' + '\n';
_strcast8to24+=castX(1,3);
_strcast8to24+='#(end macro)    castX(1,3)' + '\n';
return _strcast8to24;
}
_str_main+='' + '\n';
var _cast8to32; _cast8to32=0;
var cast8to32 = function(){
 _cast8to32++;
var _strcast8to32; 
_strcast8to32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast8to32()[' + [] +']';
_strcast8to32+='#(begin macro)    castX(1,4)' + '\n';
_strcast8to32+=castX(1,4);
_strcast8to32+='#(end macro)    castX(1,4)' + '\n';
return _strcast8to32;
}
_str_main+='' + '\n';
var _cast16to24; _cast16to24=0;
var cast16to24 = function(){
 _cast16to24++;
var _strcast16to24; 
_strcast16to24='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast16to24()[' + [] +']';
_strcast16to24+='#(begin macro)    castX(2,3)' + '\n';
_strcast16to24+=castX(2,3);
_strcast16to24+='#(end macro)    castX(2,3)' + '\n';
return _strcast16to24;
}
_str_main+='' + '\n';
var _cast16to32; _cast16to32=0;
var cast16to32 = function(){
 _cast16to32++;
var _strcast16to32; 
_strcast16to32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast16to32()[' + [] +']';
_strcast16to32+='#(begin macro)    castX(2,4)' + '\n';
_strcast16to32+=castX(2,4);
_strcast16to32+='#(end macro)    castX(2,4)' + '\n';
return _strcast16to32;
}
_str_main+='' + '\n';
var _cast24to32; _cast24to32=0;
var cast24to32 = function(){
 _cast24to32++;
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
var _cast16to8; _cast16to8=0;
var cast16to8 = function(){
 _cast16to8++;
var _strcast16to8; 
_strcast16to8='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast16to8()[' + [] +']';
_strcast16to8+='#(begin macro)    castX(2,1)' + '\n';
_strcast16to8+=castX(2,1);
_strcast16to8+='#(end macro)    castX(2,1)' + '\n';
return _strcast16to8;
}
_str_main+='' + '\n';
var _cast24to8; _cast24to8=0;
var cast24to8 = function(){
 _cast24to8++;
var _strcast24to8; 
_strcast24to8='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast24to8()[' + [] +']';
_strcast24to8+='#(begin macro)    castX(3,1)' + '\n';
_strcast24to8+=castX(3,1);
_strcast24to8+='#(end macro)    castX(3,1)' + '\n';
return _strcast24to8;
}
_str_main+='' + '\n';
var _cast32to8; _cast32to8=0;
var cast32to8 = function(){
 _cast32to8++;
var _strcast32to8; 
_strcast32to8='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast32to8()[' + [] +']';
_strcast32to8+='#(begin macro)    castX(4,1)' + '\n';
_strcast32to8+=castX(4,1);
_strcast32to8+='#(end macro)    castX(4,1)' + '\n';
return _strcast32to8;
}
_str_main+='' + '\n';
var _cast24to16; _cast24to16=0;
var cast24to16 = function(){
 _cast24to16++;
var _strcast24to16; 
_strcast24to16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast24to16()[' + [] +']';
_strcast24to16+='#(begin macro)    castX(3,2)' + '\n';
_strcast24to16+=castX(3,2);
_strcast24to16+='#(end macro)    castX(3,2)' + '\n';
return _strcast24to16;
}
_str_main+='' + '\n';
var _cast32to16; _cast32to16=0;
var cast32to16 = function(){
 _cast32to16++;
var _strcast32to16; 
_strcast32to16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast32to16()[' + [] +']';
_strcast32to16+='#(begin macro)    castX(3,2)' + '\n';
_strcast32to16+=castX(3,2);
_strcast32to16+='#(end macro)    castX(3,2)' + '\n';
return _strcast32to16;
}
_str_main+='' + '\n';
var _cast32to24; _cast32to24=0;
var cast32to24 = function(){
 _cast32to24++;
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
var _writeX; _writeX=0;
var writeX = function(X,name){
 _writeX++;
var _strwriteX; 
_strwriteX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro writeX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro writeX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro writeX(X,name)[' + [X,name] +']';
_strwriteX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strwriteX+='#(begin macro)    scope_begin()' + '\n';
_strwriteX+=scope_begin();
_strwriteX+='#(end macro)    scope_begin()' + '\n';
_strwriteX+='#(begin macro)        lvar("writeXprefixzero" + _writeX, 1)' + '\n';
_strwriteX+=lvar("writeXprefixzero" + _writeX, 1);
_strwriteX+='#(end macro)        lvar("writeXprefixzero" + _writeX, 1)' + '\n';
_strwriteX+='#(begin macro)        lvarX(X,"writeX_A"+_writeX)' + '\n';
_strwriteX+=lvarX(X,"writeX_A"+_writeX);
_strwriteX+='#(end macro)        lvarX(X,"writeX_A"+_writeX)' + '\n';
_strwriteX+='#(begin macro)        lvarX(X,"writeX_B"+_writeX)' + '\n';
_strwriteX+=lvarX(X,"writeX_B"+_writeX);
_strwriteX+='#(end macro)        lvarX(X,"writeX_B"+_writeX)' + '\n';
_strwriteX+='#(begin macro)        lvarX(X,"writeX_AmodB"+_writeX)' + '\n';
_strwriteX+=lvarX(X,"writeX_AmodB"+_writeX);
_strwriteX+='#(end macro)        lvarX(X,"writeX_AmodB"+_writeX)' + '\n';
_strwriteX+='#(begin macro)        lvarX(X,"writeX_AdivB"+_writeX)' + '\n';
_strwriteX+=lvarX(X,"writeX_AdivB"+_writeX);
_strwriteX+='#(end macro)        lvarX(X,"writeX_AdivB"+_writeX)' + '\n';
_strwriteX+='' + '\n';
_strwriteX+='#(begin macro)        pushvX(X,name)' + '\n';
_strwriteX+=pushvX(X,name);
_strwriteX+='#(end macro)        pushvX(X,name)' + '\n';
_strwriteX+='#(begin macro)        popvX(X,"writeX_A"+_writeX)' + '\n';
_strwriteX+=popvX(X,"writeX_A"+_writeX);
_strwriteX+='#(end macro)        popvX(X,"writeX_A"+_writeX)' + '\n';
_strwriteX+='        ' + '\n';
_strwriteX+='#(begin macro)        pushX(X,10)' + '\n';
_strwriteX+=pushX(X,10);
_strwriteX+='#(end macro)        pushX(X,10)' + '\n';
_strwriteX+='#(begin macro)        popvX(X,"writeX_B"+_writeX)' + '\n';
_strwriteX+=popvX(X,"writeX_B"+_writeX);
_strwriteX+='#(end macro)        popvX(X,"writeX_B"+_writeX)' + '\n';
_strwriteX+='        ' + '\n';
_strwriteX+='        push writeX_A' + _writeX + '_s' + '\n';
_strwriteX+='        if' + '\n';
_strwriteX+='            push    \'-\'' + '\n';
_strwriteX+='            pop     out   # write \'-\' if name < 0' + '\n';
_strwriteX+='        fi' + '\n';
_strwriteX+='        ' + '\n';
_strwriteX+='        push _stringDecimal' + _xbits + '_.size' + '\n';
_strwriteX+='        loop' + '\n';
_strwriteX+='            # output = input mod 10 ; input = input div 10' + '\n';
_strwriteX+='#(begin macro)            divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)' + '\n';
_strwriteX+=divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX);
_strwriteX+='#(end macro)            divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)' + '\n';
_strwriteX+='            push    writeX_AmodB' + _writeX + '_0' + '\n';
_strwriteX+='            pop  _stringDecimal' + _xbits + '_' + '\n';
_strwriteX+='#(begin macro)            pushvX(X,"writeX_AdivB" + _writeX)' + '\n';
_strwriteX+=pushvX(X,"writeX_AdivB" + _writeX);
_strwriteX+='#(end macro)            pushvX(X,"writeX_AdivB" + _writeX)' + '\n';
_strwriteX+='#(begin macro)            popvX(X,"writeX_A" + _writeX)' + '\n';
_strwriteX+=popvX(X,"writeX_A" + _writeX);
_strwriteX+='#(end macro)            popvX(X,"writeX_A" + _writeX)' + '\n';
_strwriteX+='            arotl _stringDecimal' + _xbits + '_' + '\n';
_strwriteX+='        endloop' + '\n';
_strwriteX+='        ' + '\n';
_strwriteX+='        push _stringDecimal' + _xbits + '_.size' + '\n';
_strwriteX+='        sbm writeXcnt' + _writeX + '' + '\n';
_strwriteX+='        loop' + '\n';
_strwriteX+='            arotr _stringDecimal' + _xbits + '_' + '\n';
_strwriteX+='#(begin macro)            if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)' + '\n';
_strwriteX+=if_sup("writeXcnt" + _writeX, 1);
_strwriteX+='#(end macro)            if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)' + '\n';
_strwriteX+='#(begin macro)                if_diff("_stringDecimal" + _xbits +"_", 0)' + '\n';
_strwriteX+=if_diff("_stringDecimal" + _xbits +"_", 0);
_strwriteX+='#(end macro)                if_diff("_stringDecimal" + _xbits +"_", 0)' + '\n';
_strwriteX+='                    push _stringDecimal' + _xbits + '_' + '\n';
_strwriteX+='#(begin macro)                    popouthexa()' + '\n';
_strwriteX+=popouthexa();
_strwriteX+='#(end macro)                    popouthexa()' + '\n';
_strwriteX+='#(begin macro)                    at_set("writeXprefixzero"+_writeX, 0)' + '\n';
_strwriteX+=at_set("writeXprefixzero"+_writeX, 0);
_strwriteX+='#(end macro)                    at_set("writeXprefixzero"+_writeX, 0)' + '\n';
_strwriteX+='                else    ' + '\n';
_strwriteX+='#(begin macro)                    if_equal("writeXprefixzero"+_writeX, 0)' + '\n';
_strwriteX+=if_equal("writeXprefixzero"+_writeX, 0);
_strwriteX+='#(end macro)                    if_equal("writeXprefixzero"+_writeX, 0)' + '\n';
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
_strwriteX+='#(begin macro)    scope_end()' + '\n';
_strwriteX+=scope_end();
_strwriteX+='#(end macro)    scope_end()' + '\n';
return _strwriteX;
}
_str_main+='' + '\n';
_str_main+='# macro printhexaX(X,name) : print the X*8 bit variable in hexadecimal' + '\n';
var _printhexaX; _printhexaX=0;
var printhexaX = function(X,name){
 _printhexaX++;
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
_str_main+='# declare temporary 16 bits value used for signed16.inc macros' + '\n';
var _declareTmpX; _declareTmpX=0;
var declareTmpX = function(X){
 _declareTmpX++;
var _strdeclareTmpX; 
_strdeclareTmpX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro declareTmpX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro declareTmpX(X)[' + [X] +']';
_strdeclareTmpX+='#(js) var _xbits; _xbits = X * 8;' + '\n';
var _xbits; _xbits = X * 8;
_strdeclareTmpX+='#(js) var _nDecimal ; _nDecimal = ("" + (Math.pow(2,8*X)-1)).length;' + '\n';
var _nDecimal ; _nDecimal = ("" + (Math.pow(2,8*X)-1)).length;
_strdeclareTmpX+='    var  _stringDecimal' + _xbits + '_*' + _nDecimal + '' + '\n';
return _strdeclareTmpX;
}
_str_main+='#(end include)signedX.inc' + '\n';
_str_main+='' + '\n';
_str_main+='# macro var16(name) :declare global 16 bits' + '\n';
var _var16; _var16=0;
var var16 = function(name){
 _var16++;
var _strvar16; 
_strvar16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro var16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro var16(name)[' + [name] +']';
_strvar16+='#(begin macro)    varX(2,name)' + '\n';
_strvar16+=varX(2,name);
_strvar16+='#(end macro)    varX(2,name)' + '\n';
return _strvar16;
}
_str_main+='' + '\n';
_str_main+='# macro lvar16(name) : declare local 16 bits' + '\n';
var _lvar16; _lvar16=0;
var lvar16 = function(name){
 _lvar16++;
var _strlvar16; 
_strlvar16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro lvar16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro lvar16(name)[' + [name] +']';
_strlvar16+='#(begin macro)    lvarX(2,name)' + '\n';
_strlvar16+=lvarX(2,name);
_strlvar16+='#(end macro)    lvarX(2,name)' + '\n';
return _strlvar16;
}
_str_main+='' + '\n';
_str_main+='# macro fixsv16(name) : be sure that name is positive if equal to zero' + '\n';
var _fixsv16; _fixsv16=0;
var fixsv16 = function(name){
 _fixsv16++;
var _strfixsv16; 
_strfixsv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro fixsv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro fixsv16(name)[' + [name] +']';
_strfixsv16+='#(begin macro)    fixsvX(2,name)' + '\n';
_strfixsv16+=fixsvX(2,name);
_strfixsv16+='#(end macro)    fixsvX(2,name)' + '\n';
return _strfixsv16;
}
_str_main+='' + '\n';
_str_main+='# macro pushv16(name) : push 16 bits name on stack' + '\n';
var _pushv16; _pushv16=0;
var pushv16 = function(name){
 _pushv16++;
var _strpushv16; 
_strpushv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro pushv16(name)[' + [name] +']';
_strpushv16+='#(begin macro)    pushvX(2,name)' + '\n';
_strpushv16+=pushvX(2,name);
_strpushv16+='#(end macro)    pushvX(2,name)' + '\n';
return _strpushv16;
}
_str_main+='' + '\n';
_str_main+='# macro push16(immValue) : push immediate16 bits value on the stack' + '\n';
var _push16; _push16=0;
var push16 = function(immValue){
 _push16++;
var _strpush16; 
_strpush16='';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro push16(immValue)[' + [immValue] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro push16(immValue)[' + [immValue] +']';
_strpush16+='#(begin macro)    pushX(2, immValue) ' + '\n';
_strpush16+=pushX(2, immValue);
_strpush16+='#(end macro)    pushX(2, immValue) ' + '\n';
return _strpush16;
}
_str_main+='' + '\n';
_str_main+='# macro dup16() : duplicate 16bits value on stack' + '\n';
var _dup16; _dup16=0;
var dup16 = function(){
 _dup16++;
var _strdup16; 
_strdup16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro dup16()[' + [] +']';
_strdup16+='#(begin macro)    dupX(2)' + '\n';
_strdup16+=dupX(2);
_strdup16+='#(end macro)    dupX(2)' + '\n';
return _strdup16;
}
_str_main+='' + '\n';
_str_main+='# macro pushsv16(name) : push the sign of the 16 bits variable \'name\'' + '\n';
var _pushsv16; _pushsv16=0;
var pushsv16 = function(name){
 _pushsv16++;
var _strpushsv16; 
_strpushsv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushsv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro pushsv16(name)[' + [name] +']';
_strpushsv16+='#(begin macro)    pushsvX(2,name)' + '\n';
_strpushsv16+=pushsvX(2,name);
_strpushsv16+='#(end macro)    pushsvX(2,name)' + '\n';
return _strpushsv16;
}
_str_main+='' + '\n';
_str_main+='# macro pushcv16(name) : push the carry of the 16 bits variable \'name\'' + '\n';
var _pushcv16; _pushcv16=0;
var pushcv16 = function(name){
 _pushcv16++;
var _strpushcv16; 
_strpushcv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushcv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro pushcv16(name)[' + [name] +']';
_strpushcv16+='#(begin macro)    pushcvX(2,name)' + '\n';
_strpushcv16+=pushcvX(2,name);
_strpushcv16+='#(end macro)    pushcvX(2,name)' + '\n';
return _strpushcv16;
}
_str_main+='' + '\n';
_str_main+='# macro popv16(name) : pop the stack to the 16 bits variable \'name\'' + '\n';
var _popv16; _popv16=0;
var popv16 = function(name){
 _popv16++;
var _strpopv16; 
_strpopv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro popv16(name)[' + [name] +']';
_strpopv16+='#(begin macro)    popvX(2,name)' + '\n';
_strpopv16+=popvX(2,name);
_strpopv16+='#(end macro)    popvX(2,name)' + '\n';
return _strpopv16;
}
_str_main+='' + '\n';
_str_main+='# macro popsv16(name) : pop the sign(8 bits 0/1) to the 16 bits variable \'name\'' + '\n';
var _popsv16; _popsv16=0;
var popsv16 = function(name){
 _popsv16++;
var _strpopsv16; 
_strpopsv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popsv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro popsv16(name)[' + [name] +']';
_strpopsv16+='#(begin macro)    popsvX(2,name)' + '\n';
_strpopsv16+=popsvX(2,name);
_strpopsv16+='#(end macro)    popsvX(2,name)' + '\n';
return _strpopsv16;
}
_str_main+='' + '\n';
_str_main+='# macro popcv16(name) : pop the carry(8 bit 0/1) to the 16 bits variable \'name\'' + '\n';
var _popcv16; _popcv16=0;
var popcv16 = function(name){
 _popcv16++;
var _strpopcv16; 
_strpopcv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popcv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro popcv16(name)[' + [name] +']';
_strpopcv16+='#(begin macro)    popcvX(2,name)' + '\n';
_strpopcv16+=popcvX(2,name);
_strpopcv16+='#(end macro)    popcvX(2,name)' + '\n';
return _strpopcv16;
}
_str_main+='' + '\n';
_str_main+='# macro negv16(name) : name = -name' + '\n';
var _negv16; _negv16=0;
var negv16 = function(name){
 _negv16++;
var _strnegv16; 
_strnegv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro negv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro negv16(name)[' + [name] +']';
_strnegv16+='#(begin macro)    negvX(2,name)' + '\n';
_strnegv16+=negvX(2,name);
_strnegv16+='#(end macro)    negvX(2,name)' + '\n';
return _strnegv16;
}
_str_main+='' + '\n';
_str_main+='# macro absv16(name) : name = abs(name)' + '\n';
var _absv16; _absv16=0;
var absv16 = function(name){
 _absv16++;
var _strabsv16; 
_strabsv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro absv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro absv16(name)[' + [name] +']';
_strabsv16+='#(begin macro)    absvX(2,name)' + '\n';
_strabsv16+=absvX(2,name);
_strabsv16+='#(end macro)    absvX(2,name)' + '\n';
return _strabsv16;
}
_str_main+='' + '\n';
_str_main+='# macro abs16() : 16 bits head of stack = abs(16 bits head of stack)' + '\n';
var _abs16; _abs16=0;
var abs16 = function(){
 _abs16++;
var _strabs16; 
_strabs16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro abs16()[' + [] +']';
_strabs16+='#(begin macro)    absX(2)' + '\n';
_strabs16+=absX(2);
_strabs16+='#(end macro)    absX(2)' + '\n';
return _strabs16;
}
_str_main+='' + '\n';
_str_main+='# macro neg16() : 16 bits head of stack = - (16 bits head of stack)    ' + '\n';
var _neg16; _neg16=0;
var neg16 = function(){
 _neg16++;
var _strneg16; 
_strneg16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro neg16()[' + [] +']';
_strneg16+='#(begin macro)    negX(2)' + '\n';
_strneg16+=negX(2);
_strneg16+='#(end macro)    negX(2)' + '\n';
return _strneg16;
}
_str_main+='' + '\n';
_str_main+='# macro setc16() : set 1 to 16 bits head of stack carry' + '\n';
var _setc16; _setc16=0;
var setc16 = function(){
 _setc16++;
var _strsetc16; 
_strsetc16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro setc16()[' + [] +']';
_strsetc16+='#(begin macro)    setcX(2)' + '\n';
_strsetc16+=setcX(2);
_strsetc16+='#(end macro)    setcX(2)' + '\n';
return _strsetc16;
}
_str_main+='' + '\n';
_str_main+='# macro setcv16(name) : set 1 to 16 bits variable \'name\' carry' + '\n';
var _setcv16; _setcv16=0;
var setcv16 = function(name){
 _setcv16++;
var _strsetcv16; 
_strsetcv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro setcv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro setcv16(name)[' + [name] +']';
_strsetcv16+='#(begin macro)    setcvX(2,name)' + '\n';
_strsetcv16+=setcvX(2,name);
_strsetcv16+='#(end macro)    setcvX(2,name)' + '\n';
return _strsetcv16;
}
_str_main+='' + '\n';
_str_main+='# macro clearc16() : set 0 to 16 bits head of stack carry' + '\n';
var _clearc16; _clearc16=0;
var clearc16 = function(){
 _clearc16++;
var _strclearc16; 
_strclearc16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro clearc16()[' + [] +']';
_strclearc16+='#(begin macro)    clearcX(2)' + '\n';
_strclearc16+=clearcX(2);
_strclearc16+='#(end macro)    clearcX(2)' + '\n';
return _strclearc16;
}
_str_main+='' + '\n';
_str_main+='# macro clearcv16(name) : set 0 to 16 bits variable \'name\' carry' + '\n';
var _clearcv16; _clearcv16=0;
var clearcv16 = function(name){
 _clearcv16++;
var _strclearcv16; 
_strclearcv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro clearcv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro clearcv16(name)[' + [name] +']';
_strclearcv16+='#(begin macro)    clearcvX(2,name)' + '\n';
_strclearcv16+=clearcvX(2,name);
_strclearcv16+='#(end macro)    clearcvX(2,name)' + '\n';
return _strclearcv16;
}
_str_main+='' + '\n';
_str_main+='# macro drop16() : drop 16 bits value from stack' + '\n';
var _drop16; _drop16=0;
var drop16 = function(){
 _drop16++;
var _strdrop16; 
_strdrop16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro drop16()[' + [] +']';
_strdrop16+='#(begin macro)    dropX(2)' + '\n';
_strdrop16+=dropX(2);
_strdrop16+='#(end macro)    dropX(2)' + '\n';
return _strdrop16;
}
_str_main+='' + '\n';
_str_main+='# macro reset16() : reset 16 bits value of the head of stack' + '\n';
var _reset16; _reset16=0;
var reset16 = function(){
 _reset16++;
var _strreset16; 
_strreset16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro reset16()[' + [] +']';
_strreset16+='#(begin macro)    resetX(2)' + '\n';
_strreset16+=resetX(2);
_strreset16+='#(end macro)    resetX(2)' + '\n';
return _strreset16;
}
_str_main+='' + '\n';
_str_main+='# macro resetv16(name) : reset 16 bits variable \'name\'' + '\n';
var _resetv16; _resetv16=0;
var resetv16 = function(name){
 _resetv16++;
var _strresetv16; 
_strresetv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro resetv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro resetv16(name)[' + [name] +']';
_strresetv16+='#(begin macro)    resetvX(2,name)' + '\n';
_strresetv16+=resetvX(2,name);
_strresetv16+='#(end macro)    resetvX(2,name)' + '\n';
return _strresetv16;
}
_str_main+='' + '\n';
_str_main+='# macro set16(immValue) : set 16 bits value on the head of stack' + '\n';
var _set16; _set16=0;
var set16 = function(immValue){
 _set16++;
var _strset16; 
_strset16='';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro set16(immValue)[' + [immValue] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro set16(immValue)[' + [immValue] +']';
_strset16+='#(begin macro)    setX(2,immValue)' + '\n';
_strset16+=setX(2,immValue);
_strset16+='#(end macro)    setX(2,immValue)' + '\n';
return _strset16;
}
_str_main+='' + '\n';
_str_main+='# macro setv16(name, immValue) : set 16 bits immediate value to a 16 bits variable \'name\' ' + '\n';
var _setv16; _setv16=0;
var setv16 = function(name,immValue){
 _setv16++;
var _strsetv16; 
_strsetv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro setv16(name,immValue)[' + [name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro setv16(name,immValue)[' + [name,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro setv16(name,immValue)[' + [name,immValue] +']';
_strsetv16+='#(begin macro)    setvX(2,name, immValue)' + '\n';
_strsetv16+=setvX(2,name, immValue);
_strsetv16+='#(end macro)    setvX(2,name, immValue)' + '\n';
return _strsetv16;
}
_str_main+='' + '\n';
_str_main+='# macro fixsv16(name) : be sure to have sign to zero if 16 bits variable \'name\' is zero' + '\n';
var _fixsv16; _fixsv16=0;
var fixsv16 = function(name){
 _fixsv16++;
var _strfixsv16; 
_strfixsv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro fixsv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro fixsv16(name)[' + [name] +']';
_strfixsv16+='#(begin macro)    fixsvX(2,name)' + '\n';
_strfixsv16+=fixsvX(2,name);
_strfixsv16+='#(end macro)    fixsvX(2,name)' + '\n';
return _strfixsv16;
}
_str_main+='' + '\n';
_str_main+='# macro fixs16() : be sure to have sign to zero if 16 bits head of stack value is zero' + '\n';
var _fixs16; _fixs16=0;
var fixs16 = function(){
 _fixs16++;
var _strfixs16; 
_strfixs16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro fixs16()[' + [] +']';
_strfixs16+='#(begin macro)    fixsX(2)' + '\n';
_strfixs16+=fixsX(2);
_strfixs16+='#(end macro)    fixsX(2)' + '\n';
return _strfixs16;
}
_str_main+='' + '\n';
_str_main+='# macro bool16() : same as \'bool\' but with a 16 bits value on stack' + '\n';
var _bool16; _bool16=0;
var bool16 = function(){
 _bool16++;
var _strbool16; 
_strbool16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro bool16()[' + [] +']';
_strbool16+='#(begin macro)    boolX(2)' + '\n';
_strbool16+=boolX(2);
_strbool16+='#(end macro)    boolX(2)' + '\n';
return _strbool16;
}
_str_main+='' + '\n';
_str_main+='# macro boolv16(name) : push on stack the bool(name) 16 bits ' + '\n';
var _boolv16; _boolv16=0;
var boolv16 = function(name){
 _boolv16++;
var _strboolv16; 
_strboolv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro boolv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro boolv16(name)[' + [name] +']';
_strboolv16+='#(begin macro)    boolvX(2,name)' + '\n';
_strboolv16+=boolvX(2,name);
_strboolv16+='#(end macro)    boolvX(2,name)' + '\n';
return _strboolv16;
}
_str_main+='' + '\n';
_str_main+='# macro incv16(name) : name = name +1 (16 bits)' + '\n';
var _incv16; _incv16=0;
var incv16 = function(name){
 _incv16++;
var _strincv16; 
_strincv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro incv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro incv16(name)[' + [name] +']';
_strincv16+='#(begin macro)    incvX(2,name)' + '\n';
_strincv16+=incvX(2,name);
_strincv16+='#(end macro)    incvX(2,name)' + '\n';
return _strincv16;
}
_str_main+='' + '\n';
_str_main+='# macro inc16() : 16 bits head of stack value incremented' + '\n';
var _inc16; _inc16=0;
var inc16 = function(){
 _inc16++;
var _strinc16; 
_strinc16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro inc16()[' + [] +']';
_strinc16+='#(begin macro)    incX(2)' + '\n';
_strinc16+=incX(2);
_strinc16+='#(end macro)    incX(2)' + '\n';
return _strinc16;
}
_str_main+='' + '\n';
_str_main+='# macro decv16(name) : name-- (16 bits)' + '\n';
var _decv16; _decv16=0;
var decv16 = function(name){
 _decv16++;
var _strdecv16; 
_strdecv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro decv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro decv16(name)[' + [name] +']';
_strdecv16+='#(begin macro)    decvX(2,name)' + '\n';
_strdecv16+=decvX(2,name);
_strdecv16+='#(end macro)    decvX(2,name)' + '\n';
return _strdecv16;
}
_str_main+='' + '\n';
_str_main+='# macro dec16() : 16 bits head of stack value decrement' + '\n';
var _dec16; _dec16=0;
var dec16 = function(){
 _dec16++;
var _strdec16; 
_strdec16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro dec16()[' + [] +']';
_strdec16+='#(begin macro)    decX(2)' + '\n';
_strdec16+=decX(2);
_strdec16+='#(end macro)    decX(2)' + '\n';
return _strdec16;
}
_str_main+='' + '\n';
_str_main+='# macro addvi16(name, immValue) : name += immediate value' + '\n';
var _addvi16; _addvi16=0;
var addvi16 = function(name,immValue){
 _addvi16++;
var _straddvi16; 
_straddvi16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvi16(name,immValue)[' + [name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro addvi16(name,immValue)[' + [name,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro addvi16(name,immValue)[' + [name,immValue] +']';
_straddvi16+='#(begin macro)    addviX(2,name,immValue)' + '\n';
_straddvi16+=addviX(2,name,immValue);
_straddvi16+='#(end macro)    addviX(2,name,immValue)' + '\n';
return _straddvi16;
}
_str_main+='' + '\n';
_str_main+='# macro addi16(immValue) : 16 bits head of stack value += immediate value' + '\n';
var _addi16; _addi16=0;
var addi16 = function(immValue){
 _addi16++;
var _straddi16; 
_straddi16='';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro addi16(immValue)[' + [immValue] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addi16(immValue)[' + [immValue] +']';
_straddi16+='#(begin macro)    addiX(2,immValue)' + '\n';
_straddi16+=addiX(2,immValue);
_straddi16+='#(end macro)    addiX(2,immValue)' + '\n';
return _straddi16;
}
_str_main+='' + '\n';
_str_main+='# macro subvi16(name, immValue) : name -= immediate value' + '\n';
var _subvi16; _subvi16=0;
var subvi16 = function(name,immValue){
 _subvi16++;
var _strsubvi16; 
_strsubvi16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvi16(name,immValue)[' + [name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro subvi16(name,immValue)[' + [name,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subvi16(name,immValue)[' + [name,immValue] +']';
_strsubvi16+='#(begin macro)    subviX(2,name,immValue)' + '\n';
_strsubvi16+=subviX(2,name,immValue);
_strsubvi16+='#(end macro)    subviX(2,name,immValue)' + '\n';
return _strsubvi16;
}
_str_main+='' + '\n';
_str_main+='# macro subi16(immValue) : 16 bits head of stack value -= immediate value' + '\n';
var _subi16; _subi16=0;
var subi16 = function(immValue){
 _subi16++;
var _strsubi16; 
_strsubi16='';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro subi16(immValue)[' + [immValue] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro subi16(immValue)[' + [immValue] +']';
_strsubi16+='#(begin macro)    subiX(2,immValue)' + '\n';
_strsubi16+=subiX(2,immValue);
_strsubi16+='#(end macro)    subiX(2,immValue)' + '\n';
return _strsubi16;
}
_str_main+='' + '\n';
_str_main+='# macro addvvv16(name, nameA, nameB) : name = nameA + nameB' + '\n';
var _addvvv16; _addvvv16=0;
var addvvv16 = function(name, nameA, nameB){
 _addvvv16++;
var _straddvvv16; 
_straddvvv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro addvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro addvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
_straddvvv16+='#(begin macro)    addvvvX(2,name,nameA,nameB)' + '\n';
_straddvvv16+=addvvvX(2,name,nameA,nameB);
_straddvvv16+='#(end macro)    addvvvX(2,name,nameA,nameB)' + '\n';
return _straddvvv16;
}
_str_main+='' + '\n';
_str_main+='# macro addvv16(name, nameA) : name += nameA' + '\n';
var _addvv16; _addvv16=0;
var addvv16 = function(name, nameA){
 _addvv16++;
var _straddvv16; 
_straddvv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvv16(name, nameA)[' + [name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvv16(name, nameA)[' + [name, nameA] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro addvv16(name, nameA)[' + [name, nameA] +']';
_straddvv16+='#(begin macro)    addvvX(2,name,nameA)' + '\n';
_straddvv16+=addvvX(2,name,nameA);
_straddvv16+='#(end macro)    addvvX(2,name,nameA)' + '\n';
return _straddvv16;
}
_str_main+='' + '\n';
_str_main+='# macro addv16(nameA) : head stack += nameA' + '\n';
var _addv16; _addv16=0;
var addv16 = function(nameA){
 _addv16++;
var _straddv16; 
_straddv16='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addv16(nameA)[' + [nameA] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addv16(nameA)[' + [nameA] +']';
_straddv16+='#(begin macro)    addvX(2,nameA)' + '\n';
_straddv16+=addvX(2,nameA);
_straddv16+='#(end macro)    addvX(2,nameA)' + '\n';
return _straddv16;
}
_str_main+='' + '\n';
_str_main+='# macro add16() : stack-1 = stack-1 + stack ; stack--' + '\n';
var _add16; _add16=0;
var add16 = function(){
 _add16++;
var _stradd16; 
_stradd16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro add16()[' + [] +']';
_stradd16+='#(begin macro)    addX(2)' + '\n';
_stradd16+=addX(2);
_stradd16+='#(end macro)    addX(2)' + '\n';
return _stradd16;
}
_str_main+='' + '\n';
_str_main+='# macro subvvv16(name, nameA, nameB) : name = nameA - nameB' + '\n';
var _subvvv16; _subvvv16=0;
var subvvv16 = function(name, nameA, nameB){
 _subvvv16++;
var _strsubvvv16; 
_strsubvvv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro subvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro subvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro subvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
_strsubvvv16+='#(begin macro)    subvvvX(2,name,nameA,nameB)' + '\n';
_strsubvvv16+=subvvvX(2,name,nameA,nameB);
_strsubvvv16+='#(end macro)    subvvvX(2,name,nameA,nameB)' + '\n';
return _strsubvvv16;
}
_str_main+='' + '\n';
_str_main+='# macro subvv16(name, nameA) : name -= nameA ' + '\n';
var _subvv16; _subvv16=0;
var subvv16 = function(name, nameA){
 _subvv16++;
var _strsubvv16; 
_strsubvv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvv16(name, nameA)[' + [name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro subvv16(name, nameA)[' + [name, nameA] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subvv16(name, nameA)[' + [name, nameA] +']';
_strsubvv16+='#(begin macro)    subvvX(2,name,nameA)' + '\n';
_strsubvv16+=subvvX(2,name,nameA);
_strsubvv16+='#(end macro)    subvvX(2,name,nameA)' + '\n';
return _strsubvv16;
}
_str_main+='' + '\n';
_str_main+='# macro subv16(nameA) : head stack -= nameA' + '\n';
var _addv16; _addv16=0;
var addv16 = function(nameA){
 _addv16++;
var _straddv16; 
_straddv16='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addv16(nameA)[' + [nameA] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addv16(nameA)[' + [nameA] +']';
_straddv16+='#(begin macro)    addvX(2,nameA)' + '\n';
_straddv16+=addvX(2,nameA);
_straddv16+='#(end macro)    addvX(2,nameA)' + '\n';
return _straddv16;
}
_str_main+='' + '\n';
_str_main+='# macro sub16() : stack-1 = stack-1 - stack ; stack--' + '\n';
var _sub16; _sub16=0;
var sub16 = function(){
 _sub16++;
var _strsub16; 
_strsub16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro sub16()[' + [] +']';
_strsub16+='#(begin macro)    subX(2)' + '\n';
_strsub16+=subX(2);
_strsub16+='#(end macro)    subX(2)' + '\n';
return _strsub16;
}
_str_main+='' + '\n';
_str_main+='# macro mulvvv16(name, nameA, nameB) : name = nameA * nameB ' + '\n';
var _mulvvv16; _mulvvv16=0;
var mulvvv16 = function(name, nameA, nameB){
 _mulvvv16++;
var _strmulvvv16; 
_strmulvvv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro mulvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro mulvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro mulvvv16(name, nameA, nameB)[' + [name, nameA, nameB] +']';
_strmulvvv16+='#(begin macro)    mulvvvX(2, name, nameA, nameB)' + '\n';
_strmulvvv16+=mulvvvX(2, name, nameA, nameB);
_strmulvvv16+='#(end macro)    mulvvvX(2, name, nameA, nameB)' + '\n';
return _strmulvvv16;
}
_str_main+='' + '\n';
_str_main+='# macro mulvv16(name, nameA) : name *= nameA' + '\n';
var _mulvv16; _mulvv16=0;
var mulvv16 = function(name, nameA){
 _mulvv16++;
var _strmulvv16; 
_strmulvv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvv16(name, nameA)[' + [name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro mulvv16(name, nameA)[' + [name, nameA] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro mulvv16(name, nameA)[' + [name, nameA] +']';
_strmulvv16+='#(begin macro)    mulvvX(2,name,nameA)' + '\n';
_strmulvv16+=mulvvX(2,name,nameA);
_strmulvv16+='#(end macro)    mulvvX(2,name,nameA)' + '\n';
return _strmulvv16;
}
_str_main+='' + '\n';
_str_main+='# macro mulv16(name) : head of stack *= name' + '\n';
var _mulv16; _mulv16=0;
var mulv16 = function(name){
 _mulv16++;
var _strmulv16; 
_strmulv16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulv16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro mulv16(name)[' + [name] +']';
_strmulv16+='#(begin macro)    mulvX(2,name)' + '\n';
_strmulv16+=mulvX(2,name);
_strmulv16+='#(end macro)    mulvX(2,name)' + '\n';
return _strmulv16;
}
_str_main+='' + '\n';
_str_main+='# macro mul16() : stack-1 = stack-1 * stack : stack--' + '\n';
var _mul16; _mul16=0;
var mul16 = function(){
 _mul16++;
var _strmul16; 
_strmul16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro mul16()[' + [] +']';
_strmul16+='#(begin macro)    mulX(2)' + '\n';
_strmul16+=mulX(2);
_strmul16+='#(end macro)    mulX(2)' + '\n';
return _strmul16;
}
_str_main+='' + '\n';
_str_main+='# macro equalvv16(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise' + '\n';
var _equalvv16; _equalvv16=0;
var equalvv16 = function(nameA, nameB){
 _equalvv16++;
var _strequalvv16; 
_strequalvv16='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro equalvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro equalvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro equalvv16(nameA, nameB)[' + [nameA, nameB] +']';
_strequalvv16+='#(begin macro)    equalvvX(2, nameA, nameB)' + '\n';
_strequalvv16+=equalvvX(2, nameA, nameB);
_strequalvv16+='#(end macro)    equalvvX(2, nameA, nameB)' + '\n';
return _strequalvv16;
}
_str_main+='' + '\n';
_str_main+='# macro equal16() : same as "equal" but with 16 bits value in stack' + '\n';
var _equal16; _equal16=0;
var equal16 = function(){
 _equal16++;
var _strequal16; 
_strequal16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro equal16()[' + [] +']';
_strequal16+='#(begin macro)    equalX(2)' + '\n';
_strequal16+=equalX(2);
_strequal16+='#(end macro)    equalX(2)' + '\n';
return _strequal16;
}
_str_main+='' + '\n';
_str_main+='# macro diffvv16(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise' + '\n';
var _diffvv16; _diffvv16=0;
var diffvv16 = function(nameA, nameB){
 _diffvv16++;
var _strdiffvv16; 
_strdiffvv16='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro diffvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro diffvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro diffvv16(nameA, nameB)[' + [nameA, nameB] +']';
_strdiffvv16+='#(begin macro)    diffvvX(2, nameA, nameB)' + '\n';
_strdiffvv16+=diffvvX(2, nameA, nameB);
_strdiffvv16+='#(end macro)    diffvvX(2, nameA, nameB)' + '\n';
return _strdiffvv16;
}
_str_main+='' + '\n';
_str_main+='# macro diff16() : same as "diff" but with 16 bits value in stack' + '\n';
var _diff16; _diff16=0;
var diff16 = function(){
 _diff16++;
var _strdiff16; 
_strdiff16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro diff16()[' + [] +']';
return _strdiff16;
}
_str_main+='' + '\n';
_str_main+='# macro supequalvv16(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise' + '\n';
var _supequalvv16; _supequalvv16=0;
var supequalvv16 = function(nameA, nameB){
 _supequalvv16++;
var _strsupequalvv16; 
_strsupequalvv16='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro supequalvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro supequalvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro supequalvv16(nameA, nameB)[' + [nameA, nameB] +']';
_strsupequalvv16+='#(begin macro)    supequalvvX(2,nameA, nameB)' + '\n';
_strsupequalvv16+=supequalvvX(2,nameA, nameB);
_strsupequalvv16+='#(end macro)    supequalvvX(2,nameA, nameB)' + '\n';
return _strsupequalvv16;
}
_str_main+='' + '\n';
_str_main+='# macro supequal16() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 16 bits value from stack' + '\n';
var _supequal16; _supequal16=0;
var supequal16 = function(){
 _supequal16++;
var _strsupequal16; 
_strsupequal16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro supequal16()[' + [] +']';
_strsupequal16+='#(begin macro)    supequalX(2)' + '\n';
_strsupequal16+=supequalX(2);
_strsupequal16+='#(end macro)    supequalX(2)' + '\n';
return _strsupequal16;
}
_str_main+='' + '\n';
_str_main+='# macro infvv16(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise' + '\n';
var _infvv16; _infvv16=0;
var infvv16 = function(nameA, nameB){
 _infvv16++;
var _strinfvv16; 
_strinfvv16='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro infvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro infvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro infvv16(nameA, nameB)[' + [nameA, nameB] +']';
_strinfvv16+='#(begin macro)    infvvX(2, nameA, nameB)' + '\n';
_strinfvv16+=infvvX(2, nameA, nameB);
_strinfvv16+='#(end macro)    infvvX(2, nameA, nameB)' + '\n';
return _strinfvv16;
}
_str_main+='' + '\n';
_str_main+='# macro inf16() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 16 bits value from stack' + '\n';
var _inf16; _inf16=0;
var inf16 = function(){
 _inf16++;
var _strinf16; 
_strinf16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro inf16()[' + [] +']';
_strinf16+='#(begin macro)    infX(2)' + '\n';
_strinf16+=infX(2);
_strinf16+='#(end macro)    infX(2)' + '\n';
return _strinf16;
}
_str_main+='' + '\n';
_str_main+='# macro infequalvv16(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise' + '\n';
var _infequalvv16; _infequalvv16=0;
var infequalvv16 = function(nameA, nameB){
 _infequalvv16++;
var _strinfequalvv16; 
_strinfequalvv16='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro infequalvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro infequalvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro infequalvv16(nameA, nameB)[' + [nameA, nameB] +']';
_strinfequalvv16+='#(begin macro)    infequalvvX(2,nameA,nameB)' + '\n';
_strinfequalvv16+=infequalvvX(2,nameA,nameB);
_strinfequalvv16+='#(end macro)    infequalvvX(2,nameA,nameB)' + '\n';
return _strinfequalvv16;
}
_str_main+='' + '\n';
_str_main+='# macro infequal16() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 16 bits value from stack ' + '\n';
var _infequal16; _infequal16=0;
var infequal16 = function(){
 _infequal16++;
var _strinfequal16; 
_strinfequal16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro infequal16()[' + [] +']';
_strinfequal16+='#(begin macro)    infequalX(2)' + '\n';
_strinfequal16+=infequalX(2);
_strinfequal16+='#(end macro)    infequalX(2)' + '\n';
return _strinfequal16;
}
_str_main+='' + '\n';
_str_main+='# macro supvv16(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise' + '\n';
var _supvv16; _supvv16=0;
var supvv16 = function(nameA, nameB){
 _supvv16++;
var _strsupvv16; 
_strsupvv16='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro supvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro supvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro supvv16(nameA, nameB)[' + [nameA, nameB] +']';
_strsupvv16+='#(begin macro)    supvvX(2,nameA,nameB)' + '\n';
_strsupvv16+=supvvX(2,nameA,nameB);
_strsupvv16+='#(end macro)    supvvX(2,nameA,nameB)' + '\n';
return _strsupvv16;
}
_str_main+='' + '\n';
_str_main+='# macro sup16() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 16 bits value from stack ' + '\n';
var _sup16; _sup16=0;
var sup16 = function(){
 _sup16++;
var _strsup16; 
_strsup16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro sup16()[' + [] +']';
_strsup16+='#(begin macro)    supX(2)' + '\n';
_strsup16+=supX(2);
_strsup16+='#(end macro)    supX(2)' + '\n';
return _strsup16;
}
_str_main+='' + '\n';
_str_main+='# macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB' + '\n';
var _divvvvv16; _divvvvv16=0;
var divvvvv16 = function(nameAdivB, nameAmodB, nameA, nameB){
 _divvvvv16++;
var _strdivvvvv16; 
_strdivvvvv16='';
if (typeof nameAdivB == 'undefined') throw 'Parameter nameAdivB is undefined in call of  macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB)[' + [nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameAmodB == 'undefined') throw 'Parameter nameAmodB is undefined in call of  macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB)[' + [nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB)[' + [nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB)[' + [nameAdivB, nameAmodB, nameA, nameB] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB)[' + [nameAdivB, nameAmodB, nameA, nameB] +']';
_strdivvvvv16+='#(begin macro)    divvvvvX(2,nameAdivB, nameAmodB, nameA, nameB)' + '\n';
_strdivvvvv16+=divvvvvX(2,nameAdivB, nameAmodB, nameA, nameB);
_strdivvvvv16+='#(end macro)    divvvvvX(2,nameAdivB, nameAmodB, nameA, nameB)' + '\n';
return _strdivvvvv16;
}
_str_main+='' + '\n';
_str_main+='# macro divvv16(nameA, nameB) : Push 2 16 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB ' + '\n';
var _divvv16; _divvv16=0;
var divvv16 = function(nameA, nameB){
 _divvv16++;
var _strdivvv16; 
_strdivvv16='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro divvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro divvv16(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro divvv16(nameA, nameB)[' + [nameA, nameB] +']';
_strdivvv16+='#(begin macro)    divvvX(2,nameA,nameB)' + '\n';
_strdivvv16+=divvvX(2,nameA,nameB);
_strdivvv16+='#(end macro)    divvvX(2,nameA,nameB)' + '\n';
return _strdivvv16;
}
_str_main+='' + '\n';
_str_main+='# macro div16() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B' + '\n';
var _div16; _div16=0;
var div16 = function(){
 _div16++;
var _strdiv16; 
_strdiv16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro div16()[' + [] +']';
_strdiv16+='#(begin macro)    divX(2)' + '\n';
_strdiv16+=divX(2);
_strdiv16+='#(end macro)    divX(2)' + '\n';
return _strdiv16;
}
_str_main+='' + '\n';
_str_main+='# macro write16(name) : print out the decimal value (signed)' + '\n';
var _write16; _write16=0;
var write16 = function(name){
 _write16++;
var _strwrite16; 
_strwrite16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro write16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro write16(name)[' + [name] +']';
_strwrite16+='#(begin macro)    writeX(2,name)' + '\n';
_strwrite16+=writeX(2,name);
_strwrite16+='#(end macro)    writeX(2,name)' + '\n';
return _strwrite16;
}
_str_main+='' + '\n';
_str_main+='# macro printhexa16(name) : print the 16 bit variable in hexadecimal' + '\n';
var _printhexa16; _printhexa16=0;
var printhexa16 = function(name){
 _printhexa16++;
var _strprinthexa16; 
_strprinthexa16='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro printhexa16(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro printhexa16(name)[' + [name] +']';
_strprinthexa16+='#(begin macro)    printhexaX(2,name)' + '\n';
_strprinthexa16+=printhexaX(2,name);
_strprinthexa16+='#(end macro)    printhexaX(2,name)' + '\n';
return _strprinthexa16;
}
_str_main+='' + '\n';
_str_main+='#(begin macro)declareTmpX(2)' + '\n';
_str_main+=declareTmpX(2);
_str_main+='#(end macro)declareTmpX(2)' + '\n';
_str_main+='' + '\n';
_str_main+='#(end include)../include/signedX16.inc' + '\n';
_str_main+='' + '\n';
_str_main+='# display a number' + '\n';
_str_main+='#(begin macro)var16("number1")' + '\n';
_str_main+=var16("number1");
_str_main+='#(end macro)var16("number1")' + '\n';
_str_main+='' + '\n';
_str_main+='push    0' + '\n';
_str_main+='#(begin macro)setv16("number1", 10384)' + '\n';
_str_main+=setv16("number1", 10384);
_str_main+='#(end macro)setv16("number1", 10384)' + '\n';
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)scope_begin()' + '\n';
_str_main+=scope_begin();
_str_main+='#(end macro)scope_begin()' + '\n';
_str_main+='#(begin macro)    lvar16("number2")' + '\n';
_str_main+=lvar16("number2");
_str_main+='#(end macro)    lvar16("number2")' + '\n';
_str_main+='#(begin macro)    set16(-1024)' + '\n';
_str_main+=set16(-1024);
_str_main+='#(end macro)    set16(-1024)' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)    print("16 bits Hexa dump\\n")' + '\n';
_str_main+=print("16 bits Hexa dump\n");
_str_main+='#(end macro)    print("16 bits Hexa dump\\n")' + '\n';
_str_main+='#(begin macro)    print("c : carry , overflow or underflow\\n")    ' + '\n';
_str_main+=print("c : carry , overflow or underflow\n");
_str_main+='#(end macro)    print("c : carry , overflow or underflow\\n")    ' + '\n';
_str_main+='#(begin macro)    print("s : sign , 00 positive, 01 negative\\n")    ' + '\n';
_str_main+=print("s : sign , 00 positive, 01 negative\n");
_str_main+='#(end macro)    print("s : sign , 00 positive, 01 negative\\n")    ' + '\n';
_str_main+='#(begin macro)    print("1 : most significant byte\\n")    ' + '\n';
_str_main+=print("1 : most significant byte\n");
_str_main+='#(end macro)    print("1 : most significant byte\\n")    ' + '\n';
_str_main+='#(begin macro)    print("0 : less significant byte\\n")    ' + '\n';
_str_main+=print("0 : less significant byte\n");
_str_main+='#(end macro)    print("0 : less significant byte\\n")    ' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)    print("[number1]")' + '\n';
_str_main+=print("[number1]");
_str_main+='#(end macro)    print("[number1]")' + '\n';
_str_main+='#(begin macro)    printhexa16("number1")' + '\n';
_str_main+=printhexa16("number1");
_str_main+='#(end macro)    printhexa16("number1")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='#(begin macro)    print("          c s 1 0\\n")' + '\n';
_str_main+=print("          c s 1 0\n");
_str_main+='#(end macro)    print("          c s 1 0\\n")' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)    print("[number2]")' + '\n';
_str_main+=print("[number2]");
_str_main+='#(end macro)    print("[number2]")' + '\n';
_str_main+='#(begin macro)    printhexa16("number2")' + '\n';
_str_main+=printhexa16("number2");
_str_main+='#(end macro)    printhexa16("number2")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='#(begin macro)    print("          c s 1 0\\n\\n")' + '\n';
_str_main+=print("          c s 1 0\n\n");
_str_main+='#(end macro)    print("          c s 1 0\\n\\n")' + '\n';
_str_main+='    ' + '\n';
_str_main+='#(begin macro)    print("[decimal number1]")' + '\n';
_str_main+=print("[decimal number1]");
_str_main+='#(end macro)    print("[decimal number1]")' + '\n';
_str_main+='#(begin macro)    write16("number1")' + '\n';
_str_main+=write16("number1");
_str_main+='#(end macro)    write16("number1")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='#(begin macro)    print("[decimal number2]")' + '\n';
_str_main+=print("[decimal number2]");
_str_main+='#(end macro)    print("[decimal number2]")' + '\n';
_str_main+='#(begin macro)    write16("number2")' + '\n';
_str_main+=write16("number2");
_str_main+='#(end macro)    write16("number2")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)    addvv16("number1","number2")' + '\n';
_str_main+=addvv16("number1","number2");
_str_main+='#(end macro)    addvv16("number1","number2")' + '\n';
_str_main+='#(begin macro)    print("[number1+=number2]")' + '\n';
_str_main+=print("[number1+=number2]");
_str_main+='#(end macro)    print("[number1+=number2]")' + '\n';
_str_main+='#(begin macro)    write16("number1")' + '\n';
_str_main+=write16("number1");
_str_main+='#(end macro)    write16("number1")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='    ' + '\n';
_str_main+='#(begin macro)    subvv16("number1","number2")' + '\n';
_str_main+=subvv16("number1","number2");
_str_main+='#(end macro)    subvv16("number1","number2")' + '\n';
_str_main+='#(begin macro)    print("[number1-=number2]")' + '\n';
_str_main+=print("[number1-=number2]");
_str_main+='#(end macro)    print("[number1-=number2]")' + '\n';
_str_main+='#(begin macro)    write16("number1")' + '\n';
_str_main+=write16("number1");
_str_main+='#(end macro)    write16("number1")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)    print("[number1]")' + '\n';
_str_main+=print("[number1]");
_str_main+='#(end macro)    print("[number1]")' + '\n';
_str_main+='#(begin macro)    printhexa16("number1")' + '\n';
_str_main+=printhexa16("number1");
_str_main+='#(end macro)    printhexa16("number1")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='#(begin macro)    print("          c s 1 0\\n")' + '\n';
_str_main+=print("          c s 1 0\n");
_str_main+='#(end macro)    print("          c s 1 0\\n")' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)    print("[number2]")' + '\n';
_str_main+=print("[number2]");
_str_main+='#(end macro)    print("[number2]")' + '\n';
_str_main+='#(begin macro)    printhexa16("number2")' + '\n';
_str_main+=printhexa16("number2");
_str_main+='#(end macro)    printhexa16("number2")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='#(begin macro)    print("          c s 1 0\\n\\n")' + '\n';
_str_main+=print("          c s 1 0\n\n");
_str_main+='#(end macro)    print("          c s 1 0\\n\\n")' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)    addvv16("number2","number1")' + '\n';
_str_main+=addvv16("number2","number1");
_str_main+='#(end macro)    addvv16("number2","number1")' + '\n';
_str_main+='#(begin macro)    print("[number2+=number1]") ' + '\n';
_str_main+=print("[number2+=number1]");
_str_main+='#(end macro)    print("[number2+=number1]") ' + '\n';
_str_main+='#(begin macro)    write16("number2")' + '\n';
_str_main+=write16("number2");
_str_main+='#(end macro)    write16("number2")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='    ' + '\n';
_str_main+='#(begin macro)    subvv16("number2","number1")' + '\n';
_str_main+=subvv16("number2","number1");
_str_main+='#(end macro)    subvv16("number2","number1")' + '\n';
_str_main+='#(begin macro)    print("[number2-=number1]")' + '\n';
_str_main+=print("[number2-=number1]");
_str_main+='#(end macro)    print("[number2-=number1]")' + '\n';
_str_main+='#(begin macro)    write16("number2")' + '\n';
_str_main+=write16("number2");
_str_main+='#(end macro)    write16("number2")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)    print("[number1]")' + '\n';
_str_main+=print("[number1]");
_str_main+='#(end macro)    print("[number1]")' + '\n';
_str_main+='#(begin macro)    printhexa16("number1")' + '\n';
_str_main+=printhexa16("number1");
_str_main+='#(end macro)    printhexa16("number1")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='#(begin macro)    print("          c s 1 0\\n")' + '\n';
_str_main+=print("          c s 1 0\n");
_str_main+='#(end macro)    print("          c s 1 0\\n")' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin macro)    print("[number2]")' + '\n';
_str_main+=print("[number2]");
_str_main+='#(end macro)    print("[number2]")' + '\n';
_str_main+='#(begin macro)    printhexa16("number2")' + '\n';
_str_main+=printhexa16("number2");
_str_main+='#(end macro)    printhexa16("number2")' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='#(begin macro)    print("          c s 1 0\\n\\n")' + '\n';
_str_main+=print("          c s 1 0\n\n");
_str_main+='#(end macro)    print("          c s 1 0\\n\\n")' + '\n';
_str_main+='#(begin macro)scope_end()' + '\n';
_str_main+=scope_end();
_str_main+='#(end macro)scope_end()' + '\n';
_str_main+='' + '\n';
_str_main+='drop' + '\n';
_str_main+='' + '\n';
return _str_main;
}
_main();
