var __blockLevel__; __blockLevel__ = 0;
function __indent() { var __result; __result = '';
for (var _i=0 ; _i < __blockLevel__ ; _i++) __result+= '  ';
 return __result;}
var __main; __main=0;
var _main = function(){
 __main++;
var _str_main; 
_str_main='';
if (arguments.length != 0) throw 'Too much arguments provided to macro _main()[' + [] +']';
_str_main+=__indent() +'# Fibonacci in Brainfuck' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# C sample used to generate this program' + '\n';
_str_main+=__indent() +'#int Fibonacci(int n) {' + '\n';
_str_main+=__indent() +'#if(n <= 0) return 0;' + '\n';
_str_main+=__indent() +'#if(n > 0 && n < 3) return 1;' + '\n';
_str_main+=__indent() +'#' + '\n';
_str_main+=__indent() +'#int result = 0;' + '\n';
_str_main+=__indent() +'#int preOldResult = 1;' + '\n';
_str_main+=__indent() +'#int oldResult = 1;' + '\n';
_str_main+=__indent() +'#' + '\n';
_str_main+=__indent() +'#for (int i=2;i<n;i++) {' + '\n';
_str_main+=__indent() +'#    result = preOldResult + oldResult;' + '\n';
_str_main+=__indent() +'#    preOldResult = oldResult;' + '\n';
_str_main+=__indent() +'#    oldResult = result;' + '\n';
_str_main+=__indent() +'#}' + '\n';
_str_main+=__indent() +'#' + '\n';
_str_main+=__indent() +'#return result;}' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'#(begin include)../include/macro.inc' + '\n';
_str_main+=__indent() +'# Common macros' + '\n';
_str_main+=__indent() +'# scope variables' + '\n';
var __scope; var __idx;
__scope=[0]; __idx = 0;
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro scope_begin : start a new scope for local variable (usage of macro lvar)' + '\n';
var _scope_begin; _scope_begin=0;
var scope_begin = function(){
 _scope_begin++;
var _strscope_begin; 
_strscope_begin='';
if (arguments.length != 0) throw 'Too much arguments provided to macro scope_begin()[' + [] +']';
__scope.push(0);
return _strscope_begin;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro scope_end : end a scope , then drop scoped local variables (drop) (usage of lvar)' + '\n';
var _scope_end; _scope_end=0;
var scope_end = function(){
 _scope_end++;
var _strscope_end; 
_strscope_end='';
if (arguments.length != 0) throw 'Too much arguments provided to macro scope_end()[' + [] +']';
if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
_strscope_end+=__indent() +'drop' + '\n';
}
if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
return _strscope_end;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro lvar(vname,value) : declare  in scope, a local variable named vname with an assigned value (stored in stack)' + '\n';
var _lvar; _lvar=0;
var lvar = function(vname,value){
 _lvar++;
var _strlvar; 
_strlvar='';
if (typeof vname == 'undefined') throw 'Parameter vname is undefined in call of  macro lvar(vname,value)[' + [vname,value] +']';
if (typeof value == 'undefined') throw 'Parameter value is undefined in call of  macro lvar(vname,value)[' + [vname,value] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro lvar(vname,value)[' + [vname,value] +']';
_strlvar+=__indent() +'push ' + (value) + '' + '\n';
_strlvar+=__indent() +'sbm ' + (vname) + '' + '\n';
__scope[__scope.length-1]++;
return _strlvar;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro if_diff(a,b) : if (a != b) {' + '\n';
var _if_diff; _if_diff=0;
var if_diff = function(a,b){
 _if_diff++;
var _strif_diff; 
_strif_diff='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_diff(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_diff(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_diff(a,b)[' + [a,b] +']';
_strif_diff+=__indent() +'push ' + (a) + '' + '\n';
_strif_diff+=__indent() +'push ' + (b) + '' + '\n';
_strif_diff+=__indent() +'diff' + '\n';
_strif_diff+=__indent() +'if' + '\n';
__blockLevel__++;
return _strif_diff;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro if_equal(a,b) : if (a == b) {' + '\n';
var _if_equal; _if_equal=0;
var if_equal = function(a,b){
 _if_equal++;
var _strif_equal; 
_strif_equal='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_equal(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_equal(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_equal(a,b)[' + [a,b] +']';
_strif_equal+=__indent() +'push ' + (a) + '' + '\n';
_strif_equal+=__indent() +'push ' + (b) + '' + '\n';
_strif_equal+=__indent() +'equal' + '\n';
_strif_equal+=__indent() +'if' + '\n';
__blockLevel__++;
return _strif_equal;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro if_sup(a,b) : if (a > b) {' + '\n';
var _if_sup; _if_sup=0;
var if_sup = function(a,b){
 _if_sup++;
var _strif_sup; 
_strif_sup='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_sup(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_sup(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_sup(a,b)[' + [a,b] +']';
_strif_sup+=__indent() +'push ' + (a) + '' + '\n';
_strif_sup+=__indent() +'push ' + (b) + '' + '\n';
_strif_sup+=__indent() +'sup' + '\n';
_strif_sup+=__indent() +'if' + '\n';
__blockLevel__++;
return _strif_sup;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro if_inf(a,b) : if (a < b) {' + '\n';
var _if_inf; _if_inf=0;
var if_inf = function(a,b){
 _if_inf++;
var _strif_inf; 
_strif_inf='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_inf(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_inf(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_inf(a,b)[' + [a,b] +']';
_strif_inf+=__indent() +'push ' + (a) + '' + '\n';
_strif_inf+=__indent() +'push ' + (b) + '' + '\n';
_strif_inf+=__indent() +'inf' + '\n';
_strif_inf+=__indent() +'if' + '\n';
__blockLevel__++;
return _strif_inf;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro if_supequal(a,b) : if (a >= b) {' + '\n';
var _if_supequal; _if_supequal=0;
var if_supequal = function(a,b){
 _if_supequal++;
var _strif_supequal; 
_strif_supequal='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_supequal(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_supequal(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_supequal(a,b)[' + [a,b] +']';
_strif_supequal+=__indent() +'push ' + (a) + '' + '\n';
_strif_supequal+=__indent() +'push ' + (b) + '' + '\n';
_strif_supequal+=__indent() +'inf' + '\n';
_strif_supequal+=__indent() +'not' + '\n';
_strif_supequal+=__indent() +'if' + '\n';
__blockLevel__++;
return _strif_supequal;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro if_infequal(a,b) : if (a <= b) {' + '\n';
var _if_infequal; _if_infequal=0;
var if_infequal = function(a,b){
 _if_infequal++;
var _strif_infequal; 
_strif_infequal='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro if_infequal(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro if_infequal(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro if_infequal(a,b)[' + [a,b] +']';
_strif_infequal+=__indent() +'push ' + (a) + '' + '\n';
_strif_infequal+=__indent() +'push ' + (b) + '' + '\n';
_strif_infequal+=__indent() +'sup' + '\n';
_strif_infequal+=__indent() +'not' + '\n';
_strif_infequal+=__indent() +'if' + '\n';
__blockLevel__++;
return _strif_infequal;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro at_2' + '\n';
var _at_2; _at_2=0;
var at_2 = function(ope, a,b){
 _at_2++;
var _strat_2; 
_strat_2='';
if (typeof ope == 'undefined') throw 'Parameter ope is undefined in call of  macro at_2(ope, a,b)[' + [ope, a,b] +']';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_2(ope, a,b)[' + [ope, a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro at_2(ope, a,b)[' + [ope, a,b] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro at_2(ope, a,b)[' + [ope, a,b] +']';
_strat_2+=__indent() +'at ' + (a) + '' + '\n';
__blockLevel__++;
_strat_2+=__indent() +'' + (ope) + ' ' + (b) + '' + '\n';
__blockLevel__--;
_strat_2+=__indent() +'ta' + '\n';
return _strat_2;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro at_1' + '\n';
var _at_1; _at_1=0;
var at_1 = function(ope, a){
 _at_1++;
var _strat_1; 
_strat_1='';
if (typeof ope == 'undefined') throw 'Parameter ope is undefined in call of  macro at_1(ope, a)[' + [ope, a] +']';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_1(ope, a)[' + [ope, a] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro at_1(ope, a)[' + [ope, a] +']';
_strat_1+=__indent() +'#(begin macro)at_2(ope,a,"")' + '\n';
_strat_1+=at_2(ope,a,"");
_strat_1+=__indent() +'#(end macro)at_2(ope,a,"")' + '\n';
return _strat_1;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro at_reset(a) : a=0' + '\n';
var _at_reset; _at_reset=0;
var at_reset = function(a){
 _at_reset++;
var _strat_reset; 
_strat_reset='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_reset(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro at_reset(a)[' + [a] +']';
_strat_reset+=__indent() +'#(begin macro)at_1("reset",a)' + '\n';
_strat_reset+=at_1("reset",a);
_strat_reset+=__indent() +'#(end macro)at_1("reset",a)' + '\n';
return _strat_reset;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro at_inc(a) : a++' + '\n';
var _at_inc; _at_inc=0;
var at_inc = function(a){
 _at_inc++;
var _strat_inc; 
_strat_inc='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_inc(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro at_inc(a)[' + [a] +']';
_strat_inc+=__indent() +'#(begin macro)at_1("inc",a)' + '\n';
_strat_inc+=at_1("inc",a);
_strat_inc+=__indent() +'#(end macro)at_1("inc",a)' + '\n';
return _strat_inc;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro at_dec(a) : a--' + '\n';
var _at_dec; _at_dec=0;
var at_dec = function(a){
 _at_dec++;
var _strat_dec; 
_strat_dec='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_dec(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro at_dec(a)[' + [a] +']';
_strat_dec+=__indent() +'#(begin macro)at_1("dec",a)' + '\n';
_strat_dec+=at_1("dec",a);
_strat_dec+=__indent() +'#(end macro)at_1("dec",a)' + '\n';
return _strat_dec;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro at_in(a)  : a= readchar()' + '\n';
var _at_in; _at_in=0;
var at_in = function(a){
 _at_in++;
var _strat_in; 
_strat_in='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_in(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro at_in(a)[' + [a] +']';
_strat_in+=__indent() +'#(begin macro)at_1("in",a)' + '\n';
_strat_in+=at_1("in",a);
_strat_in+=__indent() +'#(end macro)at_1("in",a)' + '\n';
return _strat_in;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro at_out(a) : write(a)' + '\n';
var _at_out; _at_out=0;
var at_out = function(a){
 _at_out++;
var _strat_out; 
_strat_out='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_out(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro at_out(a)[' + [a] +']';
_strat_out+=__indent() +'#(begin macro)at_1("out",a)' + '\n';
_strat_out+=at_1("out",a);
_strat_out+=__indent() +'#(end macro)at_1("out",a)' + '\n';
return _strat_out;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro at_add(a,b) : a += b (immediate)' + '\n';
var _at_add; _at_add=0;
var at_add = function(a,b){
 _at_add++;
var _strat_add; 
_strat_add='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_add(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro at_add(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro at_add(a,b)[' + [a,b] +']';
_strat_add+=__indent() +'#(begin macro)at_2("add",a,b)' + '\n';
_strat_add+=at_2("add",a,b);
_strat_add+=__indent() +'#(end macro)at_2("add",a,b)' + '\n';
return _strat_add;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro at_sub(a,b) : a -= b (immediate)' + '\n';
var _at_sub; _at_sub=0;
var at_sub = function(a,b){
 _at_sub++;
var _strat_sub; 
_strat_sub='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_sub(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro at_sub(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro at_sub(a,b)[' + [a,b] +']';
_strat_sub+=__indent() +'#(begin macro)at_2("sub",a,b)' + '\n';
_strat_sub+=at_2("sub",a,b);
_strat_sub+=__indent() +'#(end macro)at_2("sub",a,b)' + '\n';
return _strat_sub;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro at_set(a,b) : a = b (immediate)' + '\n';
var _at_set; _at_set=0;
var at_set = function(a,b){
 _at_set++;
var _strat_set; 
_strat_set='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro at_set(a,b)[' + [a,b] +']';
if (typeof b == 'undefined') throw 'Parameter b is undefined in call of  macro at_set(a,b)[' + [a,b] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro at_set(a,b)[' + [a,b] +']';
_strat_set+=__indent() +'#(begin macro)at_2("set",a,b)' + '\n';
_strat_set+=at_2("set",a,b);
_strat_set+=__indent() +'#(end macro)at_2("set",a,b)' + '\n';
return _strat_set;
}
_str_main+=__indent() +'' + '\n';
var _write; _write=0;
var write = function(a){
 _write++;
var _strwrite; 
_strwrite='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro write(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro write(a)[' + [a] +']';
_strwrite+=__indent() +'push    ' + (a) + '' + '\n';
_strwrite+=__indent() +'pop     out' + '\n';
return _strwrite;
}
_str_main+=__indent() +'' + '\n';
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
_strdivide+=__indent() +'push ' + (a) + '' + '\n';
_strdivide+=__indent() +'push ' + (b) + '' + '\n';
_strdivide+=__indent() +'div' + '\n';
_strdivide+=__indent() +'pop ' + (d) + '' + '\n';
_strdivide+=__indent() +'pop ' + (r) + '' + '\n';
return _strdivide;
}
_str_main+=__indent() +'' + '\n';
var _left_rewind; _left_rewind=0;
var left_rewind = function(array){
 _left_rewind++;
var _strleft_rewind; 
_strleft_rewind='';
if (typeof array == 'undefined') throw 'Parameter array is undefined in call of  macro left_rewind(array)[' + [array] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro left_rewind(array)[' + [array] +']';
_strleft_rewind+=__indent() +'push 1' + '\n';
_strleft_rewind+=__indent() +'sbm __looprewind' + '\n';
_strleft_rewind+=__indent() +'while' + '\n';
__blockLevel__++;
_strleft_rewind+=__indent() +'#(begin macro)if_diff("' + (array) + '.pos",0)' + '\n';
_strleft_rewind+=if_diff("array.pos",0);
_strleft_rewind+=__indent() +'#(end macro)if_diff("' + (array) + '.pos",0)' + '\n';
_strleft_rewind+=__indent() +'arotl ' + (array) + '' + '\n';
__blockLevel__--;
_strleft_rewind+=__indent() +'else' + '\n';
__blockLevel__++;
_strleft_rewind+=__indent() +'#(begin macro)at_reset("__looprewind")' + '\n';
_strleft_rewind+=at_reset("__looprewind");
_strleft_rewind+=__indent() +'#(end macro)at_reset("__looprewind")' + '\n';
__blockLevel__--;
_strleft_rewind+=__indent() +'fi' + '\n';
__blockLevel__--;
_strleft_rewind+=__indent() +'wend' + '\n';
return _strleft_rewind;
}
_str_main+=__indent() +'' + '\n';
var _right_rewind; _right_rewind=0;
var right_rewind = function(array){
 _right_rewind++;
var _strright_rewind; 
_strright_rewind='';
if (typeof array == 'undefined') throw 'Parameter array is undefined in call of  macro right_rewind(array)[' + [array] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro right_rewind(array)[' + [array] +']';
_strright_rewind+=__indent() +'push ' + (array) + '.pos' + '\n';
_strright_rewind+=__indent() +'loop' + '\n';
__blockLevel__++;
_strright_rewind+=__indent() +'arotr ' + (array) + '' + '\n';
__blockLevel__--;
_strright_rewind+=__indent() +'endloop' + '\n';
return _strright_rewind;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro popouthexa() : from head of stack value (from 0 to 15) write out hexa (from 0 to 9 and A to F)' + '\n';
var _popouthexa; _popouthexa=0;
var popouthexa = function(){
 _popouthexa++;
var _strpopouthexa; 
_strpopouthexa='';
if (arguments.length != 0) throw 'Too much arguments provided to macro popouthexa()[' + [] +']';
__idx++;
_strpopouthexa+=__indent() +'sbm _input' + (__idx) + '' + '\n';
_strpopouthexa+=__indent() +'#(begin macro)if_sup("_input" + __idx,9)' + '\n';
_strpopouthexa+=if_sup("_input" + __idx,9);
_strpopouthexa+=__indent() +'#(end macro)if_sup("_input" + __idx,9)' + '\n';
_strpopouthexa+=__indent() +'#(begin macro)at_add("_input" + __idx, "\'7\'")' + '\n';
_strpopouthexa+=at_add("_input" + __idx, "'7'");
_strpopouthexa+=__indent() +'#(end macro)at_add("_input" + __idx, "\'7\'")' + '\n';
__blockLevel__--;
_strpopouthexa+=__indent() +'else' + '\n';
__blockLevel__++;
_strpopouthexa+=__indent() +'#(begin macro)at_add("_input" + __idx, "\'0\'")' + '\n';
_strpopouthexa+=at_add("_input" + __idx, "'0'");
_strpopouthexa+=__indent() +'#(end macro)at_add("_input" + __idx, "\'0\'")' + '\n';
__blockLevel__--;
_strpopouthexa+=__indent() +'fi' + '\n';
_strpopouthexa+=__indent() +'pop out' + '\n';
return _strpopouthexa;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro popout8hexa() : from head of stack the 8 bit value is write out in hexa' + '\n';
var _popout8hexa; _popout8hexa=0;
var popout8hexa = function(){
 _popout8hexa++;
var _strpopout8hexa; 
_strpopout8hexa='';
if (arguments.length != 0) throw 'Too much arguments provided to macro popout8hexa()[' + [] +']';
_strpopout8hexa+=__indent() +'push    16' + '\n';
_strpopout8hexa+=__indent() +'div' + '\n';
_strpopout8hexa+=__indent() +'#(begin macro)popouthexa() # output most significant hexa character from head of stack value, then drop' + '\n';
_strpopout8hexa+=popouthexa();
_strpopout8hexa+=__indent() +'#(end macro)popouthexa() # output most significant hexa character from head of stack value, then drop' + '\n';
_strpopout8hexa+=__indent() +'#(begin macro)popouthexa() # output less significant hexa character from head of stack value, then drop' + '\n';
_strpopout8hexa+=popouthexa();
_strpopout8hexa+=__indent() +'#(end macro)popouthexa() # output less significant hexa character from head of stack value, then drop' + '\n';
return _strpopout8hexa;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro print(aString) : print out a string' + '\n';
var _print; _print=0;
var print = function(aString){
 _print++;
var _strprint; 
_strprint='';
if (typeof aString == 'undefined') throw 'Parameter aString is undefined in call of  macro print(aString)[' + [aString] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro print(aString)[' + [aString] +']';
_strprint+=__indent() +'push    0' + '\n';
var __prev; __prev = 0;
for (var istr=0; istr < aString.length ; istr++) {
var __ascii; __ascii = aString[istr].charCodeAt(0);
var __move; __move = __ascii - __prev;
var __dist ; __dist = (__move > 0)?__move:-__move;
if (__dist < __ascii) { // shorter to move
if (__move > 0 ) {
_strprint+=__indent() +'add     ' + (__dist) + '' + '\n';
} else {
if (__dist != 0) {
_strprint+=__indent() +'sub     ' + (__dist) + '' + '\n';
}
}
} else {
_strprint+=__indent() +'set     ' + (__ascii) + '' + '\n';
}
_strprint+=__indent() +'out             # ' + ((aString[istr].charCodeAt(0)>31?("\'"+aString[istr]+"\'"):"")) + '' + '\n';
__prev  = __ascii;
}
_strprint+=__indent() +'drop' + '\n';
return _strprint;
}
_str_main+=__indent() +'#(end include)../include/macro.inc' + '\n';
_str_main+=__indent() +'#(begin include)../include/signedX32.inc' + '\n';
_str_main+=__indent() +'# 32 bits signed integer ( 4 bytes)' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'#(begin include)signedX.inc' + '\n';
_str_main+=__indent() +'# X bytes : X*8 bits signed integer :' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro varX(name) :declare global X * 8 bits' + '\n';
var _varX; _varX=0;
var varX = function(X,name){
 _varX++;
var _strvarX; 
_strvarX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro varX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro varX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro varX(X,name)[' + [X,name] +']';
for (var xx=0 ; xx < X ; xx++) {
_strvarX+=__indent() +'var ' + (name) + '_' + (xx) + '    # ' + (xx) + ' byte of ' + (name) + '' + '\n';
}
_strvarX+=__indent() +'var ' + (name) + '_s    # Sign of ' + (name) + '' + '\n';
_strvarX+=__indent() +'var ' + (name) + '_c    # carry of ' + (name) + '' + '\n';
return _strvarX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro lvarX(X,name) : declare local X * 8 bits' + '\n';
var _lvarX; _lvarX=0;
var lvarX = function(X,name){
 _lvarX++;
var _strlvarX; 
_strlvarX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro lvarX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro lvarX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro lvarX(X,name)[' + [X,name] +']';
_strlvarX+=__indent() +'#(begin macro)lvar(name + "_c",0)' + '\n';
_strlvarX+=lvar(name + "_c",0);
_strlvarX+=__indent() +'#(end macro)lvar(name + "_c",0)' + '\n';
_strlvarX+=__indent() +'#(begin macro)lvar(name + "_s",0)' + '\n';
_strlvarX+=lvar(name + "_s",0);
_strlvarX+=__indent() +'#(end macro)lvar(name + "_s",0)' + '\n';
for (var xx =0 ; xx < X ; xx++) {
var xx1; xx1 = X-xx-1; // X-1 to 0
_strlvarX+=__indent() +'#(begin macro)lvar(name + "_"+ xx1,0)' + '\n';
_strlvarX+=lvar(name + "_"+ xx1,0);
_strlvarX+=__indent() +'#(end macro)lvar(name + "_"+ xx1,0)' + '\n';
}
return _strlvarX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro fixsvX(X,name) : be sure that name is positive if equal to zero' + '\n';
var _fixsvX; _fixsvX=0;
var fixsvX = function(X,name){
 _fixsvX++;
var _strfixsvX; 
_strfixsvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro fixsvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro fixsvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro fixsvX(X,name)[' + [X,name] +']';
_strfixsvX+=__indent() +'push    ' + (name) + '_s' + '\n';
_strfixsvX+=__indent() +'if    # if name is negative' + '\n';
__blockLevel__++;
for (var xx = 0; xx < X ; xx++) {
_strfixsvX+=__indent() +'#(begin macro)if_equal(name +"_" + xx, 0)' + '\n';
_strfixsvX+=if_equal(name +"_" + xx, 0);
_strfixsvX+=__indent() +'#(end macro)if_equal(name +"_" + xx, 0)' + '\n';
}
_strfixsvX+=__indent() +'#(begin macro)at_reset(name + "_s")   # set sign to positive' + '\n';
_strfixsvX+=at_reset(name + "_s");
_strfixsvX+=__indent() +'#(end macro)at_reset(name + "_s")   # set sign to positive' + '\n';
for ( var xx = 0 ; xx < X ; xx++) {
__blockLevel__--;
_strfixsvX+=__indent() +'fi' + '\n';
}
__blockLevel__--;
_strfixsvX+=__indent() +'fi' + '\n';
return _strfixsvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro fixsX(X) : be sure to have sign to zero if X*8 bits head of stack value is zero' + '\n';
var _fixsX; _fixsX=0;
var fixsX = function(X){
 _fixsX++;
var _strfixsX; 
_strfixsX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro fixsX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro fixsX(X)[' + [X] +']';
_strfixsX+=__indent() +'#(begin macro)sbmX(X,"_fixsX"+_fixsX,0)' + '\n';
_strfixsX+=sbmX(X,"_fixsX"+_fixsX,0);
_strfixsX+=__indent() +'#(end macro)sbmX(X,"_fixsX"+_fixsX,0)' + '\n';
_strfixsX+=__indent() +'#(begin macro)fixsvX(X,"_fixsX"+_fixsX)' + '\n';
_strfixsX+=fixsvX(X,"_fixsX"+_fixsX);
_strfixsX+=__indent() +'#(end macro)fixsvX(X,"_fixsX"+_fixsX)' + '\n';
return _strfixsX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro pushvX(X,name) : push X*8 bits name on stack' + '\n';
var _pushvX; _pushvX=0;
var pushvX = function(X,name){
 _pushvX++;
var _strpushvX; 
_strpushvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro pushvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro pushvX(X,name)[' + [X,name] +']';
_strpushvX+=__indent() +'push    ' + (name) + '_c' + '\n';
_strpushvX+=__indent() +'push    ' + (name) + '_s' + '\n';
for (var xx =0 ; xx < X ; xx++) {
var xx1; xx1 = X-xx-1; // X-1 to 0
_strpushvX+=__indent() +'push    ' + (name) + '_' + (xx1) + '' + '\n';
}
return _strpushvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro pushX(X,immValue) : push immediate X*8 bits value on the stack' + '\n';
var _pushX; _pushX=0;
var pushX = function(X,immValue){
 _pushX++;
var _strpushX; 
_strpushX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro pushX(X,immValue)[' + [X,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro pushX(X,immValue)[' + [X,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro pushX(X,immValue)[' + [X,immValue] +']';
_strpushX+=__indent() +'push    0' + '\n';
_strpushX+=__indent() +'push    ' + ((immValue>=0?0:1)) + '' + '\n';
var absImmValue; absImmValue = immValue>=0?immValue:-immValue;
for (var xx = 0 ; xx < X ; xx++) {
var xx1; xx1 = X-xx-1; // X-1 to 0
absImmValue = absImmValue % Math.pow(256,xx1+1);
_strpushX+=__indent() +'push    ' + (((absImmValue/Math.pow(256,xx1)) | 0)) + '' + '\n';
}
return _strpushX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro dupX(X) : duplicate X * 8 bits value on stack' + '\n';
var _dupX; _dupX=0;
var dupX = function(X){
 _dupX++;
var _strdupX; 
_strdupX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro dupX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro dupX(X)[' + [X] +']';
for (var xx = 0 ; xx < X+2 ; xx++) { // 0 to X+2-1
_strdupX+=__indent() +'push -' + ((X+2-1)) + '' + '\n';
}
return _strdupX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro pushsvX(X,name) : push the sign of the X*8 bits variable \'name\'' + '\n';
var _pushsvX; _pushsvX=0;
var pushsvX = function(X,name){
 _pushsvX++;
var _strpushsvX; 
_strpushsvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro pushsvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushsvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro pushsvX(X,name)[' + [X,name] +']';
_strpushsvX+=__indent() +'push    ' + (name) + '_s' + '\n';
return _strpushsvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro pushcvX(X,name) : push the carry of the X*8 bits variable \'name\'' + '\n';
var _pushcvX; _pushcvX=0;
var pushcvX = function(X,name){
 _pushcvX++;
var _strpushcvX; 
_strpushcvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro pushcvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushcvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro pushcvX(X,name)[' + [X,name] +']';
_strpushcvX+=__indent() +'push    ' + (name) + '_c' + '\n';
return _strpushcvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro popvX(X,name) : pop the stack to the X*8 bits variable \'name\'' + '\n';
var _popvX; _popvX=0;
var popvX = function(X,name){
 _popvX++;
var _strpopvX; 
_strpopvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro popvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro popvX(X,name)[' + [X,name] +']';
for (var xx=0; xx < X; xx++) {
_strpopvX+=__indent() +'pop     ' + (name) + '_' + (xx) + '' + '\n';
}
_strpopvX+=__indent() +'pop     ' + (name) + '_s' + '\n';
_strpopvX+=__indent() +'pop     ' + (name) + '_c' + '\n';
return _strpopvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro popsvX(X,name) : pop the sign(8 bits 0/1) to the X*8 bits variable \'name\'' + '\n';
var _popsvX; _popsvX=0;
var popsvX = function(X,name){
 _popsvX++;
var _strpopsvX; 
_strpopsvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro popsvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popsvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro popsvX(X,name)[' + [X,name] +']';
_strpopsvX+=__indent() +'POP    ' + (name) + '_s' + '\n';
return _strpopsvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro popcvX(X,name) : pop the carry(8 bit 0/1) to the X*8 bits variable \'name\'' + '\n';
var _popcvX; _popcvX=0;
var popcvX = function(X,name){
 _popcvX++;
var _strpopcvX; 
_strpopcvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro popcvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popcvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro popcvX(X,name)[' + [X,name] +']';
_strpopcvX+=__indent() +'POP    ' + (name) + '_c' + '\n';
return _strpopcvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro negvX(X,name) : name = -name' + '\n';
var _negvX; _negvX=0;
var negvX = function(X,name){
 _negvX++;
var _strnegvX; 
_strnegvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro negvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro negvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro negvX(X,name)[' + [X,name] +']';
_strnegvX+=__indent() +'push    ' + (name) + '_s' + '\n';
_strnegvX+=__indent() +'dec' + '\n';
_strnegvX+=__indent() +'bool' + '\n';
_strnegvX+=__indent() +'dup' + '\n';
_strnegvX+=__indent() +'if    # if name is now negative' + '\n';
__blockLevel__++;
for (var xx = 0; xx < X ; xx++) {
_strnegvX+=__indent() +'#(begin macro)if_equal(name +"_"+xx, 0)' + '\n';
_strnegvX+=if_equal(name +"_"+xx, 0);
_strnegvX+=__indent() +'#(end macro)if_equal(name +"_"+xx, 0)' + '\n';
}
_strnegvX+=__indent() +'#(begin macro)at_reset(name + "_s")   # set sign to positive if name==0' + '\n';
_strnegvX+=at_reset(name + "_s");
_strnegvX+=__indent() +'#(end macro)at_reset(name + "_s")   # set sign to positive if name==0' + '\n';
for (var xx = 0 ; xx < X ; xx++) {
__blockLevel__--;
_strnegvX+=__indent() +'fi' + '\n';
}
__blockLevel__--;
_strnegvX+=__indent() +'fi' + '\n';
_strnegvX+=__indent() +'pop     ' + (name) + '_s' + '\n';
return _strnegvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro absvX(X,name) : name = abs(name)' + '\n';
var _absvX; _absvX=0;
var absvX = function(X,name){
 _absvX++;
var _strabsvX; 
_strabsvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro absvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro absvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro absvX(X,name)[' + [X,name] +']';
_strabsvX+=__indent() +'push    0' + '\n';
_strabsvX+=__indent() +'pop     ' + (name) + '_s' + '\n';
return _strabsvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro absX(X) : X*8 bits head of stack = abs(X*8 bits head of stack)' + '\n';
var _absX; _absX=0;
var absX = function(X){
 _absX++;
var _strabsX; 
_strabsX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro absX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro absX(X)[' + [X] +']';
_strabsX+=__indent() +'sbm _absXSign' + (_absX) + ' - ' + (X) + '' + '\n';
_strabsX+=__indent() +'#(begin macro)at_reset("_absXSign' + (_absX) + '")' + '\n';
_strabsX+=at_reset("_absXSign_absX");
_strabsX+=__indent() +'#(end macro)at_reset("_absXSign' + (_absX) + '")' + '\n';
return _strabsX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro negX(X) : X*8 bits head of stack = - (X*8 bits head of stack)' + '\n';
var _negX; _negX=0;
var negX = function(X){
 _negX++;
var _strnegX; 
_strnegX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro negX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro negX(X)[' + [X] +']';
_strnegX+=__indent() +'#(begin macro)sbmX(X, "_negXName"+ _negX,0)' + '\n';
_strnegX+=sbmX(X, "_negXName"+ _negX,0);
_strnegX+=__indent() +'#(end macro)sbmX(X, "_negXName"+ _negX,0)' + '\n';
_strnegX+=__indent() +'#(begin macro)negvX(X,"_negXName"+ _negX)' + '\n';
_strnegX+=negvX(X,"_negXName"+ _negX);
_strnegX+=__indent() +'#(end macro)negvX(X,"_negXName"+ _negX)' + '\n';
return _strnegX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro setcX(X) : set 1 to X*8 bits head of stack carry' + '\n';
var _setcX; _setcX=0;
var setcX = function(X){
 _setcX++;
var _strsetcX; 
_strsetcX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro setcX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro setcX(X)[' + [X] +']';
for (var xx=0 ; xx < X+1 ; xx++) {
_strsetcX+=__indent() +'bf <' + '\n';
}
_strsetcX+=__indent() +'set     1' + '\n';
for (var xx=0 ; xx < X+1 ; xx++) {
_strsetcX+=__indent() +'bf >' + '\n';
}
return _strsetcX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro setcvX(X,name) : set 1 to X*8 bits variable \'name\' carry' + '\n';
var _setcvX; _setcvX=0;
var setcvX = function(X,name){
 _setcvX++;
var _strsetcvX; 
_strsetcvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro setcvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro setcvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro setcvX(X,name)[' + [X,name] +']';
_strsetcvX+=__indent() +'#(begin macro)at_set(name+"_c",1)' + '\n';
_strsetcvX+=at_set(name+"_c",1);
_strsetcvX+=__indent() +'#(end macro)at_set(name+"_c",1)' + '\n';
return _strsetcvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro clearcX(X) : set 0 to 8*X bits head of stack carry' + '\n';
var _clearcX; _clearcX=0;
var clearcX = function(X){
 _clearcX++;
var _strclearcX; 
_strclearcX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro clearcX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro clearcX(X)[' + [X] +']';
for (var xx=0 ; xx < X+1 ; xx++) {
_strclearcX+=__indent() +'bf <' + '\n';
}
_strclearcX+=__indent() +'reset' + '\n';
for (var xx=0 ; xx < X+1 ; xx++) {
_strclearcX+=__indent() +'bf >' + '\n';
}
return _strclearcX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro clearcvX(X,name) : set 0 to X*8 bits variable \'name\' carry' + '\n';
var _clearcvX; _clearcvX=0;
var clearcvX = function(X,name){
 _clearcvX++;
var _strclearcvX; 
_strclearcvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro clearcvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro clearcvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro clearcvX(X,name)[' + [X,name] +']';
_strclearcvX+=__indent() +'#(begin macro)at_reset(name+"_c")' + '\n';
_strclearcvX+=at_reset(name+"_c");
_strclearcvX+=__indent() +'#(end macro)at_reset(name+"_c")' + '\n';
return _strclearcvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro dropX(X) : drop 8*X bits value from stack' + '\n';
var _dropX; _dropX=0;
var dropX = function(X){
 _dropX++;
var _strdropX; 
_strdropX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro dropX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro dropX(X)[' + [X] +']';
for (var xx = 0; xx < X+2 ; xx++) {
_strdropX+=__indent() +'drop' + '\n';
}
return _strdropX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro resetX(X) : reset X*8 bits value of the head of stack' + '\n';
var _resetX; _resetX=0;
var resetX = function(X){
 _resetX++;
var _strresetX; 
_strresetX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro resetX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro resetX(X)[' + [X] +']';
for (var xx= 0; xx < X+1 ; xx++) {
_strresetX+=__indent() +'bf <' + '\n';
}
_strresetX+=__indent() +'bf [-]' + '\n';
for (var xx= 0; xx < X+1 ; xx++) {
_strresetX+=__indent() +'bf >[-]' + '\n';
}
return _strresetX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro resetvX(X,name) : reset X*8 bits variable \'name\'' + '\n';
var _resetvX; _resetvX=0;
var resetvX = function(X,name){
 _resetvX++;
var _strresetvX; 
_strresetvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro resetvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro resetvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro resetvX(X,name)[' + [X,name] +']';
_strresetvX+=__indent() +'at ' + (name) + '_0' + '\n';
__blockLevel__++;
_strresetvX+=__indent() +'#(begin macro)resetX(X)' + '\n';
_strresetvX+=resetX(X);
_strresetvX+=__indent() +'#(end macro)resetX(X)' + '\n';
__blockLevel__--;
_strresetvX+=__indent() +'ta' + '\n';
return _strresetvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro setX(X,immValue) : set X*8 bits value on the head of stack' + '\n';
var _setX; _setX=0;
var setX = function(X,immValue){
 _setX++;
var _strsetX; 
_strsetX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro setX(X,immValue)[' + [X,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro setX(X,immValue)[' + [X,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro setX(X,immValue)[' + [X,immValue] +']';
for (var xx=0; xx < X+1; xx++) {
_strsetX+=__indent() +'bf <' + '\n';
}
_strsetX+=__indent() +'reset' + '\n';
_strsetX+=__indent() +'bf  >' + '\n';
_strsetX+=__indent() +'set ' + ((immValue>=0?0:1)) + '' + '\n';
var absImmValue ; absImmValue = immValue>0?immValue:-immValue;
for (var xx = 0 ; xx < X ; xx++) {
var xx1; xx1 = X-xx-1; // X-1 to 0
absImmValue = absImmValue % Math.pow(256,xx1+1);
_strsetX+=__indent() +'bf >' + '\n';
_strsetX+=__indent() +'set    ' + (((absImmValue/Math.pow(256,xx1)) | 0)) + '' + '\n';
}
return _strsetX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro setvX(X,name, immValue) : set X*8 bits immediate value to a X*8 bits variable \'name\'' + '\n';
var _setvX; _setvX=0;
var setvX = function(X,name,immValue){
 _setvX++;
var _strsetvX; 
_strsetvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro setvX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro setvX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro setvX(X,name,immValue)[' + [X,name,immValue] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro setvX(X,name,immValue)[' + [X,name,immValue] +']';
_strsetvX+=__indent() +'at ' + (name) + '_0' + '\n';
__blockLevel__++;
_strsetvX+=__indent() +'#(begin macro)setX(X,immValue)' + '\n';
_strsetvX+=setX(X,immValue);
_strsetvX+=__indent() +'#(end macro)setX(X,immValue)' + '\n';
__blockLevel__--;
_strsetvX+=__indent() +'ta' + '\n';
return _strsetvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro boolvX(X,name) : push on stack the bool(name) X*8 bits' + '\n';
var _boolvX; _boolvX=0;
var boolvX = function(X,name){
 _boolvX++;
var _strboolvX; 
_strboolvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro boolvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro boolvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro boolvX(X,name)[' + [X,name] +']';
for (var xx = 0 ; xx < X; xx++) {
_strboolvX+=__indent() +'push ' + (name) + '_' + (xx) + '' + '\n';
_strboolvX+=__indent() +'bool' + '\n';
}
for (var xx = 0 ; xx < X-1; xx++) {
_strboolvX+=__indent() +'or' + '\n';
}
return _strboolvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro boolX(X) : same as \'bool\' but with a X*8 bits value on stack' + '\n';
var _boolX; _boolX=0;
var boolX = function(X){
 _boolX++;
var _strboolX; 
_strboolX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro boolX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro boolX(X)[' + [X] +']';
_strboolX+=__indent() +'#(begin macro)sbmX(X,"_boolX"+_boolX,0)' + '\n';
_strboolX+=sbmX(X,"_boolX"+_boolX,0);
_strboolX+=__indent() +'#(end macro)sbmX(X,"_boolX"+_boolX,0)' + '\n';
_strboolX+=__indent() +'#(begin macro)boolvX(X,"_boolX"+_boolX)' + '\n';
_strboolX+=boolvX(X,"_boolX"+_boolX);
_strboolX+=__indent() +'#(end macro)boolvX(X,"_boolX"+_boolX)' + '\n';
return _strboolX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro incvX(X,name) : name = name +1 (X*8 bits)' + '\n';
var _incvX; _incvX=0;
var incvX = function(X,name){
 _incvX++;
var _strincvX; 
_strincvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro incvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro incvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro incvX(X,name)[' + [X,name] +']';
_strincvX+=__indent() +'#(begin macro)if_equal(name +"_s",0)  # positive number' + '\n';
_strincvX+=if_equal(name +"_s",0);
_strincvX+=__indent() +'#(end macro)if_equal(name +"_s",0)  # positive number' + '\n';
for (var xx=0; xx < X; xx++) {
_strincvX+=__indent() +'#(begin macro)at_inc(name + "_" + xx)' + '\n';
_strincvX+=at_inc(name + "_" + xx);
_strincvX+=__indent() +'#(end macro)at_inc(name + "_" + xx)' + '\n';
_strincvX+=__indent() +'#(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)' + '\n';
_strincvX+=if_equal( name + "_" + xx,0);
_strincvX+=__indent() +'#(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)' + '\n';
}
_strincvX+=__indent() +'#(begin macro)setcvX(X, name) ## set carry (overflow)' + '\n';
_strincvX+=setcvX(X, name);
_strincvX+=__indent() +'#(end macro)setcvX(X, name) ## set carry (overflow)' + '\n';
for (var xx=0; xx < X; xx++) {
__blockLevel__--;
_strincvX+=__indent() +'fi' + '\n';
}
__blockLevel__--;
_strincvX+=__indent() +'else    # negative number' + '\n';
__blockLevel__++;
for (var xx=0; xx < X; xx++) {
_strincvX+=__indent() +'#(begin macro)at_dec(name + "_" + xx)' + '\n';
_strincvX+=at_dec(name + "_" + xx);
_strincvX+=__indent() +'#(end macro)at_dec(name + "_" + xx)' + '\n';
_strincvX+=__indent() +'#(begin macro)if_equal(name +"_" + xx,255) # reduced' + '\n';
_strincvX+=if_equal(name +"_" + xx,255);
_strincvX+=__indent() +'#(end macro)if_equal(name +"_" + xx,255) # reduced' + '\n';
}
_strincvX+=__indent() +'#(begin macro)setvX(X,name,1)' + '\n';
_strincvX+=setvX(X,name,1);
_strincvX+=__indent() +'#(end macro)setvX(X,name,1)' + '\n';
for (var xx=0; xx < X; xx++) {
__blockLevel__--;
_strincvX+=__indent() +'fi' + '\n';
}
_strincvX+=__indent() +'#(begin macro)fixsvX(X,name)' + '\n';
_strincvX+=fixsvX(X,name);
_strincvX+=__indent() +'#(end macro)fixsvX(X,name)' + '\n';
__blockLevel__--;
_strincvX+=__indent() +'fi' + '\n';
return _strincvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro incX(X) : X*8 bits head of stack value incremented' + '\n';
var _incX; _incX=0;
var incX = function(X){
 _incX++;
var _strincX; 
_strincX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro incX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro incX(X)[' + [X] +']';
_strincX+=__indent() +'#(begin macro)sbmX(X,"_incX" + _incX,0)' + '\n';
_strincX+=sbmX(X,"_incX" + _incX,0);
_strincX+=__indent() +'#(end macro)sbmX(X,"_incX" + _incX,0)' + '\n';
_strincX+=__indent() +'#(begin macro)incvX(X,"_incX" + _incX)' + '\n';
_strincX+=incvX(X,"_incX" + _incX);
_strincX+=__indent() +'#(end macro)incvX(X,"_incX" + _incX)' + '\n';
return _strincX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro decvX(X,name) : name-- (X*8 bits)' + '\n';
var _decvX; _decvX=0;
var decvX = function(X,name){
 _decvX++;
var _strdecvX; 
_strdecvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro decvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro decvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro decvX(X,name)[' + [X,name] +']';
_strdecvX+=__indent() +'#(begin macro)if_equal(name +"_s",1)  # negative number' + '\n';
_strdecvX+=if_equal(name +"_s",1);
_strdecvX+=__indent() +'#(end macro)if_equal(name +"_s",1)  # negative number' + '\n';
for (var xx=0; xx < X; xx++) {
_strdecvX+=__indent() +'#(begin macro)at_inc(name + "_" + xx)' + '\n';
_strdecvX+=at_inc(name + "_" + xx);
_strdecvX+=__indent() +'#(end macro)at_inc(name + "_" + xx)' + '\n';
_strdecvX+=__indent() +'#(begin macro)if_equal( name + "_" + xx,0) # reach zero (roll over)' + '\n';
_strdecvX+=if_equal( name + "_" + xx,0);
_strdecvX+=__indent() +'#(end macro)if_equal( name + "_" + xx,0) # reach zero (roll over)' + '\n';
}
_strdecvX+=__indent() +'#(begin macro)setcvX(X, name) ## set carry (overflow)' + '\n';
_strdecvX+=setcvX(X, name);
_strdecvX+=__indent() +'#(end macro)setcvX(X, name) ## set carry (overflow)' + '\n';
for (var xx=0; xx < X; xx++) {
__blockLevel__--;
_strdecvX+=__indent() +'fi' + '\n';
}
__blockLevel__--;
_strdecvX+=__indent() +'else    # positive number' + '\n';
__blockLevel__++;
for (var xx=0; xx < X; xx++) {
_strdecvX+=__indent() +'#(begin macro)at_dec(name + "_" + xx)' + '\n';
_strdecvX+=at_dec(name + "_" + xx);
_strdecvX+=__indent() +'#(end macro)at_dec(name + "_" + xx)' + '\n';
_strdecvX+=__indent() +'#(begin macro)if_equal(name +"_" + xx,255) # reduced' + '\n';
_strdecvX+=if_equal(name +"_" + xx,255);
_strdecvX+=__indent() +'#(end macro)if_equal(name +"_" + xx,255) # reduced' + '\n';
}
_strdecvX+=__indent() +'#(begin macro)setvX(X,name,-1)' + '\n';
_strdecvX+=setvX(X,name,-1);
_strdecvX+=__indent() +'#(end macro)setvX(X,name,-1)' + '\n';
for (var xx=0; xx < X; xx++) {
__blockLevel__--;
_strdecvX+=__indent() +'fi' + '\n';
}
__blockLevel__--;
_strdecvX+=__indent() +'fi' + '\n';
return _strdecvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro decX(X) : X*8 bits head of stack value decrement' + '\n';
var _decX; _decX=0;
var decX = function(X){
 _decX++;
var _strdecX; 
_strdecX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro decX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro decX(X)[' + [X] +']';
_strdecX+=__indent() +'#(begin macro)sbmX(X,"_decX"+_decX,0)' + '\n';
_strdecX+=sbmX(X,"_decX"+_decX,0);
_strdecX+=__indent() +'#(end macro)sbmX(X,"_decX"+_decX,0)' + '\n';
_strdecX+=__indent() +'#(begin macro)decvX(X,"_decX"+_decX)' + '\n';
_strdecX+=decvX(X,"_decX"+_decX);
_strdecX+=__indent() +'#(end macro)decvX(X,"_decX"+_decX)' + '\n';
return _strdecX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addviX(X,name, immValue) : name += immediate value' + '\n';
var _addviX; _addviX=0;
var addviX = function(X,name,immValue){
 _addviX++;
var _straddviX; 
_straddviX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro addviX(X,name,immValue)[' + [X,name,immValue] +']';
_straddviX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_straddviX+=scope_begin();
_straddviX+=__indent() +'#(end macro)scope_begin()' + '\n';
_straddviX+=__indent() +'#(begin macro)lvarX(X,"_addviXNameA" + _addviX)' + '\n';
_straddviX+=lvarX(X,"_addviXNameA" + _addviX);
_straddviX+=__indent() +'#(end macro)lvarX(X,"_addviXNameA" + _addviX)' + '\n';
_straddviX+=__indent() +'#(begin macro)lvarX(X,"_addviXNameB" + _addviX)' + '\n';
_straddviX+=lvarX(X,"_addviXNameB" + _addviX);
_straddviX+=__indent() +'#(end macro)lvarX(X,"_addviXNameB" + _addviX)' + '\n';
_straddviX+=__indent() +'#(begin macro)pushvX(X, name)' + '\n';
_straddviX+=pushvX(X, name);
_straddviX+=__indent() +'#(end macro)pushvX(X, name)' + '\n';
_straddviX+=__indent() +'#(begin macro)popvX(X, "_addviXNameA" + _addviX)' + '\n';
_straddviX+=popvX(X, "_addviXNameA" + _addviX);
_straddviX+=__indent() +'#(end macro)popvX(X, "_addviXNameA" + _addviX)' + '\n';
_straddviX+=__indent() +'#(begin macro)pushX(X, immValue)' + '\n';
_straddviX+=pushX(X, immValue);
_straddviX+=__indent() +'#(end macro)pushX(X, immValue)' + '\n';
_straddviX+=__indent() +'#(begin macro)popvX(X, "_addviXNameB" + _addviX)' + '\n';
_straddviX+=popvX(X, "_addviXNameB" + _addviX);
_straddviX+=__indent() +'#(end macro)popvX(X, "_addviXNameB" + _addviX)' + '\n';
_straddviX+=__indent() +'#(begin macro)addvvvX(X,name, "_addviXNameA" + _addviX, "_addviXNameB" + _addviX)' + '\n';
_straddviX+=addvvvX(X,name, "_addviXNameA" + _addviX, "_addviXNameB" + _addviX);
_straddviX+=__indent() +'#(end macro)addvvvX(X,name, "_addviXNameA" + _addviX, "_addviXNameB" + _addviX)' + '\n';
_straddviX+=__indent() +'#(begin macro)scope_end()' + '\n';
_straddviX+=scope_end();
_straddviX+=__indent() +'#(end macro)scope_end()' + '\n';
return _straddviX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addiX(X,immValue) : X*8 bits head of stack value += immediate value' + '\n';
var _addiX; _addiX=0;
var addiX = function(X,immValue){
 _addiX++;
var _straddiX; 
_straddiX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addiX(X,immValue)[' + [X,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro addiX(X,immValue)[' + [X,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro addiX(X,immValue)[' + [X,immValue] +']';
_straddiX+=__indent() +'#(begin macro)sbmX(X,"_addiXName" + _addiX,0)' + '\n';
_straddiX+=sbmX(X,"_addiXName" + _addiX,0);
_straddiX+=__indent() +'#(end macro)sbmX(X,"_addiXName" + _addiX,0)' + '\n';
_straddiX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_straddiX+=scope_begin();
_straddiX+=__indent() +'#(end macro)scope_begin()' + '\n';
_straddiX+=__indent() +'#(begin macro)lvarX(X,"_addiXNameA" + _addiX)' + '\n';
_straddiX+=lvarX(X,"_addiXNameA" + _addiX);
_straddiX+=__indent() +'#(end macro)lvarX(X,"_addiXNameA" + _addiX)' + '\n';
_straddiX+=__indent() +'#(begin macro)lvarX(X,"_addiXNameB" + _addiX)' + '\n';
_straddiX+=lvarX(X,"_addiXNameB" + _addiX);
_straddiX+=__indent() +'#(end macro)lvarX(X,"_addiXNameB" + _addiX)' + '\n';
_straddiX+=__indent() +'#(begin macro)pushvX(X,"_addiXName" + _addiX)' + '\n';
_straddiX+=pushvX(X,"_addiXName" + _addiX);
_straddiX+=__indent() +'#(end macro)pushvX(X,"_addiXName" + _addiX)' + '\n';
_straddiX+=__indent() +'#(begin macro)popvX(X,"_addiXNameA" + _addiX)' + '\n';
_straddiX+=popvX(X,"_addiXNameA" + _addiX);
_straddiX+=__indent() +'#(end macro)popvX(X,"_addiXNameA" + _addiX)' + '\n';
_straddiX+=__indent() +'#(begin macro)pushX(X,immValue)' + '\n';
_straddiX+=pushX(X,immValue);
_straddiX+=__indent() +'#(end macro)pushX(X,immValue)' + '\n';
_straddiX+=__indent() +'#(begin macro)popvX(X,"_addiXNameB" + _addiX)' + '\n';
_straddiX+=popvX(X,"_addiXNameB" + _addiX);
_straddiX+=__indent() +'#(end macro)popvX(X,"_addiXNameB" + _addiX)' + '\n';
_straddiX+=__indent() +'#(begin macro)addvvvX(X,"_addiXName" + _addiX, "_addiXNameA" + _addiX, "_addiXNameB" + _addiX)' + '\n';
_straddiX+=addvvvX(X,"_addiXName" + _addiX, "_addiXNameA" + _addiX, "_addiXNameB" + _addiX);
_straddiX+=__indent() +'#(end macro)addvvvX(X,"_addiXName" + _addiX, "_addiXNameA" + _addiX, "_addiXNameB" + _addiX)' + '\n';
_straddiX+=__indent() +'#(begin macro)scope_end()' + '\n';
_straddiX+=scope_end();
_straddiX+=__indent() +'#(end macro)scope_end()' + '\n';
return _straddiX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subviX(X,name, immValue) : name -= immediate value' + '\n';
var _subviX; _subviX=0;
var subviX = function(X,name,immValue){
 _subviX++;
var _strsubviX; 
_strsubviX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro subviX(X,name,immValue)[' + [X,name,immValue] +']';
_strsubviX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strsubviX+=scope_begin();
_strsubviX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strsubviX+=__indent() +'#(begin macro)lvarX(X,"_subviXNameA" + _subviX)' + '\n';
_strsubviX+=lvarX(X,"_subviXNameA" + _subviX);
_strsubviX+=__indent() +'#(end macro)lvarX(X,"_subviXNameA" + _subviX)' + '\n';
_strsubviX+=__indent() +'#(begin macro)lvarX(X,"_subviXNameB" + _subviX)' + '\n';
_strsubviX+=lvarX(X,"_subviXNameB" + _subviX);
_strsubviX+=__indent() +'#(end macro)lvarX(X,"_subviXNameB" + _subviX)' + '\n';
_strsubviX+=__indent() +'#(begin macro)pushvX(X,name)' + '\n';
_strsubviX+=pushvX(X,name);
_strsubviX+=__indent() +'#(end macro)pushvX(X,name)' + '\n';
_strsubviX+=__indent() +'#(begin macro)popvX(X,"_subviXNameA" +_subviX)' + '\n';
_strsubviX+=popvX(X,"_subviXNameA" +_subviX);
_strsubviX+=__indent() +'#(end macro)popvX(X,"_subviXNameA" +_subviX)' + '\n';
_strsubviX+=__indent() +'#(begin macro)pushX(X, immValue)' + '\n';
_strsubviX+=pushX(X, immValue);
_strsubviX+=__indent() +'#(end macro)pushX(X, immValue)' + '\n';
_strsubviX+=__indent() +'#(begin macro)popvX(X, "_subviXNameB" + _subviX)' + '\n';
_strsubviX+=popvX(X, "_subviXNameB" + _subviX);
_strsubviX+=__indent() +'#(end macro)popvX(X, "_subviXNameB" + _subviX)' + '\n';
_strsubviX+=__indent() +'#(begin macro)subvvvX(X, name, "_subviXNameA"+ _subviX, "_subviXNameB"+ _subviX)' + '\n';
_strsubviX+=subvvvX(X, name, "_subviXNameA"+ _subviX, "_subviXNameB"+ _subviX);
_strsubviX+=__indent() +'#(end macro)subvvvX(X, name, "_subviXNameA"+ _subviX, "_subviXNameB"+ _subviX)' + '\n';
_strsubviX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strsubviX+=scope_end();
_strsubviX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strsubviX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subiX(X,immValue) : X*8 bits head of stack value -= immediate value' + '\n';
var _subiX; _subiX=0;
var subiX = function(X,immValue){
 _subiX++;
var _strsubiX; 
_strsubiX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subiX(X,immValue)[' + [X,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro subiX(X,immValue)[' + [X,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subiX(X,immValue)[' + [X,immValue] +']';
_strsubiX+=__indent() +'#(begin macro)sbmX(X, "_subiXName" + _subiX,0)' + '\n';
_strsubiX+=sbmX(X, "_subiXName" + _subiX,0);
_strsubiX+=__indent() +'#(end macro)sbmX(X, "_subiXName" + _subiX,0)' + '\n';
_strsubiX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strsubiX+=scope_begin();
_strsubiX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strsubiX+=__indent() +'#(begin macro)lvarX(X, "_subixNameA" + _subiX)' + '\n';
_strsubiX+=lvarX(X, "_subixNameA" + _subiX);
_strsubiX+=__indent() +'#(end macro)lvarX(X, "_subixNameA" + _subiX)' + '\n';
_strsubiX+=__indent() +'#(begin macro)lvarX(X, "_subixNameB" + _subiX)' + '\n';
_strsubiX+=lvarX(X, "_subixNameB" + _subiX);
_strsubiX+=__indent() +'#(end macro)lvarX(X, "_subixNameB" + _subiX)' + '\n';
_strsubiX+=__indent() +'#(begin macro)pushvX(X, "_subiXName" + _subiX)' + '\n';
_strsubiX+=pushvX(X, "_subiXName" + _subiX);
_strsubiX+=__indent() +'#(end macro)pushvX(X, "_subiXName" + _subiX)' + '\n';
_strsubiX+=__indent() +'#(begin macro)popvX(X, "_subixNameA" + _subiX)' + '\n';
_strsubiX+=popvX(X, "_subixNameA" + _subiX);
_strsubiX+=__indent() +'#(end macro)popvX(X, "_subixNameA" + _subiX)' + '\n';
_strsubiX+=__indent() +'#(begin macro)pushX(X, immValue)' + '\n';
_strsubiX+=pushX(X, immValue);
_strsubiX+=__indent() +'#(end macro)pushX(X, immValue)' + '\n';
_strsubiX+=__indent() +'#(begin macro)popvX(X,"_subixNameB" + _subiX)' + '\n';
_strsubiX+=popvX(X,"_subixNameB" + _subiX);
_strsubiX+=__indent() +'#(end macro)popvX(X,"_subixNameB" + _subiX)' + '\n';
_strsubiX+=__indent() +'#(begin macro)subvvvX(X, "_subiXName" + _subiX, "_subiXNameA" + _subiX, "_subiXNameB" + _subiX)' + '\n';
_strsubiX+=subvvvX(X, "_subiXName" + _subiX, "_subiXNameA" + _subiX, "_subiXNameB" + _subiX);
_strsubiX+=__indent() +'#(end macro)subvvvX(X, "_subiXName" + _subiX, "_subiXNameA" + _subiX, "_subiXNameB" + _subiX)' + '\n';
_strsubiX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strsubiX+=scope_end();
_strsubiX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strsubiX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'#macro addof() : push A, push B , replaced by Carry, A+B' + '\n';
var _addof; _addof=0;
var addof = function(){
 _addof++;
var _straddof; 
_straddof='';
if (arguments.length != 0) throw 'Too much arguments provided to macro addof()[' + [] +']';
_straddof+=__indent() +'sbm _addofb' + (_addof) + '' + '\n';
_straddof+=__indent() +'sbm _addofa' + (_addof) + ' - 1' + '\n';
_straddof+=__indent() +'#(begin macro)scope_begin()' + '\n';
_straddof+=scope_begin();
_straddof+=__indent() +'#(end macro)scope_begin()' + '\n';
_straddof+=__indent() +'#(begin macro)lvar("_addofc"+_addof ,0)' + '\n';
_straddof+=lvar("_addofc"+_addof ,0);
_straddof+=__indent() +'#(end macro)lvar("_addofc"+_addof ,0)' + '\n';
_straddof+=__indent() +'push 1' + '\n';
_straddof+=__indent() +'sbm _loopao' + (_addof) + '' + '\n';
_straddof+=__indent() +'while' + '\n';
__blockLevel__++;
_straddof+=__indent() +'push _addofa' + (_addof) + '' + '\n';
_straddof+=__indent() +'if' + '\n';
__blockLevel__++;
_straddof+=__indent() +'at _addofa' + (_addof) + '' + '\n';
__blockLevel__++;
_straddof+=__indent() +'dec' + '\n';
__blockLevel__--;
_straddof+=__indent() +'ta' + '\n';
_straddof+=__indent() +'at _addofb' + (_addof) + '' + '\n';
__blockLevel__++;
_straddof+=__indent() +'inc' + '\n';
__blockLevel__--;
_straddof+=__indent() +'ta' + '\n';
_straddof+=__indent() +'push _addofb' + (_addof) + '' + '\n';
_straddof+=__indent() +'not' + '\n';
_straddof+=__indent() +'if' + '\n';
__blockLevel__++;
_straddof+=__indent() +'at _addofc' + (_addof) + '' + '\n';
__blockLevel__++;
_straddof+=__indent() +'set 1' + '\n';
__blockLevel__--;
_straddof+=__indent() +'ta' + '\n';
__blockLevel__--;
_straddof+=__indent() +'fi' + '\n';
__blockLevel__--;
_straddof+=__indent() +'else' + '\n';
__blockLevel__++;
_straddof+=__indent() +'at _loopao' + (_addof) + '' + '\n';
__blockLevel__++;
_straddof+=__indent() +'reset' + '\n';
__blockLevel__--;
_straddof+=__indent() +'ta' + '\n';
__blockLevel__--;
_straddof+=__indent() +'fi' + '\n';
__blockLevel__--;
_straddof+=__indent() +'wend' + '\n';
_straddof+=__indent() +'push _addofc' + (_addof) + '' + '\n';
_straddof+=__indent() +'if' + '\n';
__blockLevel__++;
_straddof+=__indent() +'at _addofa' + (_addof) + '' + '\n';
__blockLevel__++;
_straddof+=__indent() +'set 1' + '\n';
__blockLevel__--;
_straddof+=__indent() +'ta' + '\n';
__blockLevel__--;
_straddof+=__indent() +'fi' + '\n';
_straddof+=__indent() +'#(begin macro)scope_end()' + '\n';
_straddof+=scope_end();
_straddof+=__indent() +'#(end macro)scope_end()' + '\n';
return _straddof;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subof() : push A, push B , replaced by Carry, A-B' + '\n';
var _subof; _subof=0;
var subof = function(){
 _subof++;
var _strsubof; 
_strsubof='';
if (arguments.length != 0) throw 'Too much arguments provided to macro subof()[' + [] +']';
_strsubof+=__indent() +'sbm _subofb' + (_subof) + '' + '\n';
_strsubof+=__indent() +'sbm _subofa' + (_subof) + ' - 1' + '\n';
_strsubof+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strsubof+=scope_begin();
_strsubof+=__indent() +'#(end macro)scope_begin()' + '\n';
_strsubof+=__indent() +'#(begin macro)lvar("_subofc"+_subof ,0)' + '\n';
_strsubof+=lvar("_subofc"+_subof ,0);
_strsubof+=__indent() +'#(end macro)lvar("_subofc"+_subof ,0)' + '\n';
_strsubof+=__indent() +'push 1' + '\n';
_strsubof+=__indent() +'sbm _loopso' + (_subof) + '' + '\n';
_strsubof+=__indent() +'while' + '\n';
__blockLevel__++;
_strsubof+=__indent() +'push _subofb' + (_subof) + '' + '\n';
_strsubof+=__indent() +'if' + '\n';
__blockLevel__++;
_strsubof+=__indent() +'at _subofb' + (_subof) + '' + '\n';
__blockLevel__++;
_strsubof+=__indent() +'dec' + '\n';
__blockLevel__--;
_strsubof+=__indent() +'ta' + '\n';
_strsubof+=__indent() +'at _subofa' + (_subof) + '' + '\n';
__blockLevel__++;
_strsubof+=__indent() +'dec' + '\n';
__blockLevel__--;
_strsubof+=__indent() +'ta' + '\n';
_strsubof+=__indent() +'push _subofa' + (_subof) + '' + '\n';
_strsubof+=__indent() +'inc' + '\n';
_strsubof+=__indent() +'not' + '\n';
_strsubof+=__indent() +'if' + '\n';
__blockLevel__++;
_strsubof+=__indent() +'at _subofc' + (_subof) + '' + '\n';
__blockLevel__++;
_strsubof+=__indent() +'set 1' + '\n';
__blockLevel__--;
_strsubof+=__indent() +'ta' + '\n';
__blockLevel__--;
_strsubof+=__indent() +'fi' + '\n';
__blockLevel__--;
_strsubof+=__indent() +'else' + '\n';
__blockLevel__++;
_strsubof+=__indent() +'at _loopso' + (_subof) + '' + '\n';
__blockLevel__++;
_strsubof+=__indent() +'reset' + '\n';
__blockLevel__--;
_strsubof+=__indent() +'ta' + '\n';
__blockLevel__--;
_strsubof+=__indent() +'fi' + '\n';
__blockLevel__--;
_strsubof+=__indent() +'wend' + '\n';
_strsubof+=__indent() +'push _subofc' + (_subof) + '' + '\n';
_strsubof+=__indent() +'if' + '\n';
__blockLevel__++;
_strsubof+=__indent() +'at _subofb' + (_subof) + '' + '\n';
__blockLevel__++;
_strsubof+=__indent() +'set 1' + '\n';
__blockLevel__--;
_strsubof+=__indent() +'ta' + '\n';
__blockLevel__--;
_strsubof+=__indent() +'fi' + '\n';
_strsubof+=__indent() +'#(begin macro)scope_end()' + '\n';
_strsubof+=scope_end();
_strsubof+=__indent() +'#(end macro)scope_end()' + '\n';
_strsubof+=__indent() +'swap' + '\n';
return _strsubof;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addvvvX(X,name, nameA, nameB) : name = nameA + nameB' + '\n';
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
_straddvvvX+=__indent() +'push    ' + (nameA) + '_s' + '\n';
_straddvvvX+=__indent() +'push    ' + (nameB) + '_s' + '\n';
_straddvvvX+=__indent() +'or' + '\n';
_straddvvvX+=__indent() +'not' + '\n';
_straddvvvX+=__indent() +'push    ' + (nameA) + '_s' + '\n';
_straddvvvX+=__indent() +'push    ' + (nameB) + '_s' + '\n';
_straddvvvX+=__indent() +'and' + '\n';
_straddvvvX+=__indent() +'or' + '\n';
_straddvvvX+=__indent() +'if      # nameA and nameB are both positive or negative' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'push    ' + (nameA) + '_s' + '\n';
_straddvvvX+=__indent() +'pop     ' + (name) + '_s    # name has same sign of nameA and nameB' + '\n';
_straddvvvX+=__indent() +'push    0' + '\n';
for (var xx = 0 ; xx < X; xx++) {
_straddvvvX+=__indent() +'push    ' + (nameA) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'#(begin macro)addof()' + '\n';
_straddvvvX+=addof();
_straddvvvX+=__indent() +'#(end macro)addof()' + '\n';
_straddvvvX+=__indent() +'pop     ' + (name) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'push    ' + (nameB) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'#(begin macro)addof()' + '\n';
_straddvvvX+=addof();
_straddvvvX+=__indent() +'#(end macro)addof()' + '\n';
_straddvvvX+=__indent() +'push    ' + (name) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'#(begin macro)addof()' + '\n';
_straddvvvX+=addof();
_straddvvvX+=__indent() +'#(end macro)addof()' + '\n';
_straddvvvX+=__indent() +'pop     ' + (name) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'add' + '\n';
}
_straddvvvX+=__indent() +'pop     ' + (name) + '_c' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'else  # nameA has a different sign of nameB' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_straddvvvX+=scope_begin();
_straddvvvX+=__indent() +'#(end macro)scope_begin()' + '\n';
_straddvvvX+=__indent() +'#(begin macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB' + '\n';
_straddvvvX+=lvar("_asupb"+ _addvvvX, 0);
_straddvvvX+=__indent() +'#(end macro)lvar("_asupb"+ _addvvvX, 0)  # by default absA is not sup to absB' + '\n';
_straddvvvX+=__indent() +'#(begin macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB' + '\n';
_straddvvvX+=lvar("_aequb"+ _addvvvX, 0);
_straddvvvX+=__indent() +'#(end macro)lvar("_aequb"+ _addvvvX, 0)  # by default absA is not equal to absB' + '\n';
for (var xx = X-1 ; xx >=0; xx--) {
_straddvvvX+=__indent() +'push    ' + (nameA) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'push    ' + (nameB) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'sup' + '\n';
_straddvvvX+=__indent() +'if' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'at _asupb' + (_addvvvX) + '' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'set 1' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'ta' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'else' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'push    ' + (nameA) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'push    ' + (nameB) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'diff' + '\n';
_straddvvvX+=__indent() +'if' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'at _asupb' + (_addvvvX) + '' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'reset' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'ta' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'else' + '\n';
__blockLevel__++;
}
_straddvvvX+=__indent() +'at _aequb' + (_addvvvX) + '' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'set 1' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'ta' + '\n';
for (var xx = 0 ; xx < X ; xx++) {
__blockLevel__--;
_straddvvvX+=__indent() +'fi' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'fi' + '\n';
}
_straddvvvX+=__indent() +'push _asupb' + (_addvvvX) + '' + '\n';
_straddvvvX+=__indent() +'if  # absA > absB : do  absA-absB with sign of A' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'# print("absA > absB\\n")' + '\n';
_straddvvvX+=__indent() +'push    ' + (nameA) + '_s' + '\n';
_straddvvvX+=__indent() +'pop     ' + (name) + '_s    # name has same sign of nameA' + '\n';
_straddvvvX+=__indent() +'' + '\n';
_straddvvvX+=__indent() +'push    0' + '\n';
_straddvvvX+=__indent() +'sbm     _addvvvXCarry' + (_addvvvX) + '' + '\n';
for (var xx = 0 ; xx < X; xx++) {
_straddvvvX+=__indent() +'push    ' + (nameA) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'push    ' + (nameB) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'#(begin macro)subof()' + '\n';
_straddvvvX+=subof();
_straddvvvX+=__indent() +'#(end macro)subof()' + '\n';
_straddvvvX+=__indent() +'push    _addvvvXCarry' + (_addvvvX) + '' + '\n';
_straddvvvX+=__indent() +'#(begin macro)subof()' + '\n';
_straddvvvX+=subof();
_straddvvvX+=__indent() +'#(end macro)subof()' + '\n';
_straddvvvX+=__indent() +'pop     ' + (name) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'add' + '\n';
_straddvvvX+=__indent() +'pop     _addvvvXCarry' + (_addvvvX) + '' + '\n';
}
_straddvvvX+=__indent() +'pop     ' + (name) + '_c' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'else # absB >= absA :' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'push    _aequb' + (_addvvvX) + '' + '\n';
_straddvvvX+=__indent() +'if # absA == absB , then name =0 (opposite sign then sum is zero)' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'#print("absA == absB\\n")' + '\n';
_straddvvvX+=__indent() +'#(begin macro)setvX(X,name,0)' + '\n';
_straddvvvX+=setvX(X,name,0);
_straddvvvX+=__indent() +'#(end macro)setvX(X,name,0)' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'else # absA < absB : do   absB-absA with sign of B' + '\n';
__blockLevel__++;
_straddvvvX+=__indent() +'#print("absA < absB\\n")' + '\n';
_straddvvvX+=__indent() +'push    ' + (nameB) + '_s' + '\n';
_straddvvvX+=__indent() +'pop     ' + (name) + '_s    # name has same sign of nameB' + '\n';
_straddvvvX+=__indent() +'' + '\n';
_straddvvvX+=__indent() +'push    0' + '\n';
_straddvvvX+=__indent() +'sbm     _addvvvXCarry' + (_addvvvX) + '' + '\n';
for (var xx = 0 ; xx < X; xx++) {
_straddvvvX+=__indent() +'push    ' + (nameB) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'push    ' + (nameA) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'#(begin macro)subof()' + '\n';
_straddvvvX+=subof();
_straddvvvX+=__indent() +'#(end macro)subof()' + '\n';
_straddvvvX+=__indent() +'push    _addvvvXCarry' + (_addvvvX) + '' + '\n';
_straddvvvX+=__indent() +'#(begin macro)subof()' + '\n';
_straddvvvX+=subof();
_straddvvvX+=__indent() +'#(end macro)subof()' + '\n';
_straddvvvX+=__indent() +'pop     ' + (name) + '_' + (xx) + '' + '\n';
_straddvvvX+=__indent() +'add' + '\n';
_straddvvvX+=__indent() +'pop     _addvvvXCarry' + (_addvvvX) + '' + '\n';
}
_straddvvvX+=__indent() +'pop     ' + (name) + '_c' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'fi' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'fi' + '\n';
_straddvvvX+=__indent() +'#(begin macro)scope_end()' + '\n';
_straddvvvX+=scope_end();
_straddvvvX+=__indent() +'#(end macro)scope_end()' + '\n';
__blockLevel__--;
_straddvvvX+=__indent() +'fi' + '\n';
return _straddvvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addvvX(X,name, nameA) : name += nameA' + '\n';
var _addvvX; _addvvX=0;
var addvvX = function(X,name, nameA){
 _addvvX++;
var _straddvvX; 
_straddvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro addvvX(X,name, nameA)[' + [X,name, nameA] +']';
_straddvvX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_straddvvX+=scope_begin();
_straddvvX+=__indent() +'#(end macro)scope_begin()' + '\n';
_straddvvX+=__indent() +'#(begin macro)lvarX(X,"_addvvXnameB"+_addvvX)' + '\n';
_straddvvX+=lvarX(X,"_addvvXnameB"+_addvvX);
_straddvvX+=__indent() +'#(end macro)lvarX(X,"_addvvXnameB"+_addvvX)' + '\n';
_straddvvX+=__indent() +'#(begin macro)pushvX(X,name)' + '\n';
_straddvvX+=pushvX(X,name);
_straddvvX+=__indent() +'#(end macro)pushvX(X,name)' + '\n';
_straddvvX+=__indent() +'#(begin macro)popvX(X,"_addvvXnameB"+_addvvX)' + '\n';
_straddvvX+=popvX(X,"_addvvXnameB"+_addvvX);
_straddvvX+=__indent() +'#(end macro)popvX(X,"_addvvXnameB"+_addvvX)' + '\n';
_straddvvX+=__indent() +'#(begin macro)addvvvX(X,name, "_addvvXnameB"+_addvvX, nameA)' + '\n';
_straddvvX+=addvvvX(X,name, "_addvvXnameB"+_addvvX, nameA);
_straddvvX+=__indent() +'#(end macro)addvvvX(X,name, "_addvvXnameB"+_addvvX, nameA)' + '\n';
_straddvvX+=__indent() +'#(begin macro)scope_end()' + '\n';
_straddvvX+=scope_end();
_straddvvX+=__indent() +'#(end macro)scope_end()' + '\n';
return _straddvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addvX(X,nameA) : head stack += nameA' + '\n';
var _addvX; _addvX=0;
var addvX = function(nameA){
 _addvX++;
var _straddvX; 
_straddvX='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvX(nameA)[' + [nameA] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addvX(nameA)[' + [nameA] +']';
_straddvX+=__indent() +'#(begin macro)sbmX(X, "_addvXName"+ _addvX, 0)' + '\n';
_straddvX+=sbmX(X, "_addvXName"+ _addvX, 0);
_straddvX+=__indent() +'#(end macro)sbmX(X, "_addvXName"+ _addvX, 0)' + '\n';
_straddvX+=__indent() +'#(begin macro)addvvX(X, "_addvXName"+ _addvX, nameA)' + '\n';
_straddvX+=addvvX(X, "_addvXName"+ _addvX, nameA);
_straddvX+=__indent() +'#(end macro)addvvX(X, "_addvXName"+ _addvX, nameA)' + '\n';
return _straddvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addX(X) : stack-1 = stack-1 + stack ; stack--' + '\n';
var _addX; _addX=0;
var addX = function(X){
 _addX++;
var _straddX; 
_straddX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro addX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addX(X)[' + [X] +']';
_straddX+=__indent() +'#(begin macro)sbmX(X, "_addXName"+ _addX, 1)' + '\n';
_straddX+=sbmX(X, "_addXName"+ _addX, 1);
_straddX+=__indent() +'#(end macro)sbmX(X, "_addXName"+ _addX, 1)' + '\n';
_straddX+=__indent() +'#(begin macro)sbmX(X, "_addXNameB"+ _addX, 0)' + '\n';
_straddX+=sbmX(X, "_addXNameB"+ _addX, 0);
_straddX+=__indent() +'#(end macro)sbmX(X, "_addXNameB"+ _addX, 0)' + '\n';
_straddX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_straddX+=scope_begin();
_straddX+=__indent() +'#(end macro)scope_begin()' + '\n';
_straddX+=__indent() +'#(begin macro)lvarX(X,"_addXNameA"+_addX)' + '\n';
_straddX+=lvarX(X,"_addXNameA"+_addX);
_straddX+=__indent() +'#(end macro)lvarX(X,"_addXNameA"+_addX)' + '\n';
_straddX+=__indent() +'#(begin macro)pushvX(X,"_addXName"+_addX)' + '\n';
_straddX+=pushvX(X,"_addXName"+_addX);
_straddX+=__indent() +'#(end macro)pushvX(X,"_addXName"+_addX)' + '\n';
_straddX+=__indent() +'#(begin macro)popvX(X,"_addXNameA"+_addX)' + '\n';
_straddX+=popvX(X,"_addXNameA"+_addX);
_straddX+=__indent() +'#(end macro)popvX(X,"_addXNameA"+_addX)' + '\n';
_straddX+=__indent() +'#(begin macro)addvvvX(X, "_addXName" + _addX, "_addXNameA" + _addX, "_addXNameB" + _addX)' + '\n';
_straddX+=addvvvX(X, "_addXName" + _addX, "_addXNameA" + _addX, "_addXNameB" + _addX);
_straddX+=__indent() +'#(end macro)addvvvX(X, "_addXName" + _addX, "_addXNameA" + _addX, "_addXNameB" + _addX)' + '\n';
_straddX+=__indent() +'#(begin macro)scope_end()' + '\n';
_straddX+=scope_end();
_straddX+=__indent() +'#(end macro)scope_end()' + '\n';
_straddX+=__indent() +'#(begin macro)dropX(X)' + '\n';
_straddX+=dropX(X);
_straddX+=__indent() +'#(end macro)dropX(X)' + '\n';
return _straddX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subvvvX(X,name, nameA, nameB) : name = nameA - nameB' + '\n';
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
_strsubvvvX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strsubvvvX+=scope_begin();
_strsubvvvX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strsubvvvX+=__indent() +'#(begin macro)lvarX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=lvarX(X,"_negNameB" + _subvvvX);
_strsubvvvX+=__indent() +'#(end macro)lvarX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=__indent() +'#(begin macro)pushvX(X,nameB)' + '\n';
_strsubvvvX+=pushvX(X,nameB);
_strsubvvvX+=__indent() +'#(end macro)pushvX(X,nameB)' + '\n';
_strsubvvvX+=__indent() +'#(begin macro)popvX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=popvX(X,"_negNameB" + _subvvvX);
_strsubvvvX+=__indent() +'#(end macro)popvX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=__indent() +'#(begin macro)negvX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=negvX(X,"_negNameB" + _subvvvX);
_strsubvvvX+=__indent() +'#(end macro)negvX(X,"_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=__indent() +'#(begin macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=addvvvX(X, name, nameA, "_negNameB" + _subvvvX);
_strsubvvvX+=__indent() +'#(end macro)addvvvX(X, name, nameA, "_negNameB" + _subvvvX)' + '\n';
_strsubvvvX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strsubvvvX+=scope_end();
_strsubvvvX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strsubvvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subvvX(X,name, nameA) : name -= nameA' + '\n';
var _subvvX; _subvvX=0;
var subvvX = function(X,name, nameA){
 _subvvX++;
var _strsubvvX; 
_strsubvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro subvvX(X,name, nameA)[' + [X,name, nameA] +']';
_strsubvvX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strsubvvX+=scope_begin();
_strsubvvX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strsubvvX+=__indent() +'#(begin macro)lvarX(X, "_subvvXNameB" + _subvvX)' + '\n';
_strsubvvX+=lvarX(X, "_subvvXNameB" + _subvvX);
_strsubvvX+=__indent() +'#(end macro)lvarX(X, "_subvvXNameB" + _subvvX)' + '\n';
_strsubvvX+=__indent() +'#(begin macro)pushvX(X, name)' + '\n';
_strsubvvX+=pushvX(X, name);
_strsubvvX+=__indent() +'#(end macro)pushvX(X, name)' + '\n';
_strsubvvX+=__indent() +'#(begin macro)popvX(X, "_subvvXNameB" + _subvvX)' + '\n';
_strsubvvX+=popvX(X, "_subvvXNameB" + _subvvX);
_strsubvvX+=__indent() +'#(end macro)popvX(X, "_subvvXNameB" + _subvvX)' + '\n';
_strsubvvX+=__indent() +'#(begin macro)subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)' + '\n';
_strsubvvX+=subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA);
_strsubvvX+=__indent() +'#(end macro)subvvvX(X, name, "_subvvXNameB" + _subvvX, nameA)' + '\n';
_strsubvvX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strsubvvX+=scope_end();
_strsubvvX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strsubvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subvX(X,nameB) : head stack -= nameB' + '\n';
var _subvX; _subvX=0;
var subvX = function(X,nameB){
 _subvX++;
var _strsubvX; 
_strsubvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subvX(X,nameB)[' + [X,nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro subvX(X,nameB)[' + [X,nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subvX(X,nameB)[' + [X,nameB] +']';
_strsubvX+=__indent() +'#(begin macro)sbmX(X, "_subvXName" + _subX, 0)' + '\n';
_strsubvX+=sbmX(X, "_subvXName" + _subX, 0);
_strsubvX+=__indent() +'#(end macro)sbmX(X, "_subvXName" + _subX, 0)' + '\n';
_strsubvX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strsubvX+=scope_begin();
_strsubvX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strsubvX+=__indent() +'#(begin macro)lvarX(X,"_subvXNameA" + _subX)' + '\n';
_strsubvX+=lvarX(X,"_subvXNameA" + _subX);
_strsubvX+=__indent() +'#(end macro)lvarX(X,"_subvXNameA" + _subX)' + '\n';
_strsubvX+=__indent() +'#(begin macro)pushvX(X, "_subvXName" + _subX)' + '\n';
_strsubvX+=pushvX(X, "_subvXName" + _subX);
_strsubvX+=__indent() +'#(end macro)pushvX(X, "_subvXName" + _subX)' + '\n';
_strsubvX+=__indent() +'#(begin macro)popvX(X,"_subvXNameA" + _subX)' + '\n';
_strsubvX+=popvX(X,"_subvXNameA" + _subX);
_strsubvX+=__indent() +'#(end macro)popvX(X,"_subvXNameA" + _subX)' + '\n';
_strsubvX+=__indent() +'#(begin macro)subvvvX(X, "_subvXName" + _subX, "_subvXNameA" + _subX, nameB)' + '\n';
_strsubvX+=subvvvX(X, "_subvXName" + _subX, "_subvXNameA" + _subX, nameB);
_strsubvX+=__indent() +'#(end macro)subvvvX(X, "_subvXName" + _subX, "_subvXNameA" + _subX, nameB)' + '\n';
_strsubvX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strsubvX+=scope_end();
_strsubvX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strsubvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subX(X) : stack-1 = stack-1 - stack ; stack--' + '\n';
var _subX; _subX=0;
var subX = function(X){
 _subX++;
var _strsubX; 
_strsubX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro subX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro subX(X)[' + [X] +']';
_strsubX+=__indent() +'#(begin macro)sbmX(X, "_subXName" + _subX, 1)' + '\n';
_strsubX+=sbmX(X, "_subXName" + _subX, 1);
_strsubX+=__indent() +'#(end macro)sbmX(X, "_subXName" + _subX, 1)' + '\n';
_strsubX+=__indent() +'#(begin macro)sbmX(X,"_subXNameB" + _subX, 0)' + '\n';
_strsubX+=sbmX(X,"_subXNameB" + _subX, 0);
_strsubX+=__indent() +'#(end macro)sbmX(X,"_subXNameB" + _subX, 0)' + '\n';
_strsubX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strsubX+=scope_begin();
_strsubX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strsubX+=__indent() +'#(begin macro)lvarX(X,"_subXNameA" + _subX)' + '\n';
_strsubX+=lvarX(X,"_subXNameA" + _subX);
_strsubX+=__indent() +'#(end macro)lvarX(X,"_subXNameA" + _subX)' + '\n';
_strsubX+=__indent() +'#(begin macro)pushvX(X,"_subXName" + _subX)' + '\n';
_strsubX+=pushvX(X,"_subXName" + _subX);
_strsubX+=__indent() +'#(end macro)pushvX(X,"_subXName" + _subX)' + '\n';
_strsubX+=__indent() +'#(begin macro)popvX(X,"_subXNameA" + _subX)' + '\n';
_strsubX+=popvX(X,"_subXNameA" + _subX);
_strsubX+=__indent() +'#(end macro)popvX(X,"_subXNameA" + _subX)' + '\n';
_strsubX+=__indent() +'#(begin macro)subvvvX(X,"_subXName" + _subX, "_subXNameA" + _subX, "_subXNameB" + _subX)' + '\n';
_strsubX+=subvvvX(X,"_subXName" + _subX, "_subXNameA" + _subX, "_subXNameB" + _subX);
_strsubX+=__indent() +'#(end macro)subvvvX(X,"_subXName" + _subX, "_subXNameA" + _subX, "_subXNameB" + _subX)' + '\n';
_strsubX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strsubX+=scope_end();
_strsubX+=__indent() +'#(end macro)scope_end()' + '\n';
_strsubX+=__indent() +'#(begin macro)dropX(X)' + '\n';
_strsubX+=dropX(X);
_strsubX+=__indent() +'#(end macro)dropX(X)' + '\n';
return _strsubX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro mulvvvX(X,name, nameA, nameB) : name = nameA * nameB' + '\n';
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
_strmulvvvX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strmulvvvX+=scope_begin();
_strmulvvvX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)lvarX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=lvarX(X,"_mulvvvXabsNameA" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)lvarX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)pushvX(X,nameA)' + '\n';
_strmulvvvX+=pushvX(X,nameA);
_strmulvvvX+=__indent() +'#(end macro)pushvX(X,nameA)' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)popvX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=popvX(X,"_mulvvvXabsNameA" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)popvX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)lvar("_mulvvvXsA" + _mulvvvX, 0)' + '\n';
_strmulvvvX+=lvar("_mulvvvXsA" + _mulvvvX, 0);
_strmulvvvX+=__indent() +'#(end macro)lvar("_mulvvvXsA" + _mulvvvX, 0)' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)pushsvX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=pushsvX(X,"_mulvvvXabsNameA" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)pushsvX(X,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=__indent() +'pop _mulvvvXsA' + (_mulvvvX) + '' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)absvX(X,"_mulvvvXabsNameA" + _mulvvvX)   # absNameA = abs(nameA)' + '\n';
_strmulvvvX+=absvX(X,"_mulvvvXabsNameA" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)absvX(X,"_mulvvvXabsNameA" + _mulvvvX)   # absNameA = abs(nameA)' + '\n';
_strmulvvvX+=__indent() +'' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)lvarX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=lvarX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)lvarX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)pushvX(X,nameB)' + '\n';
_strmulvvvX+=pushvX(X,nameB);
_strmulvvvX+=__indent() +'#(end macro)pushvX(X,nameB)' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)popvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=popvX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)popvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)lvar("_mulvvvXsB" + _mulvvvX, 0)' + '\n';
_strmulvvvX+=lvar("_mulvvvXsB" + _mulvvvX, 0);
_strmulvvvX+=__indent() +'#(end macro)lvar("_mulvvvXsB" + _mulvvvX, 0)' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)pushsvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=pushsvX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)pushsvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=__indent() +'pop _mulvvvXsB' + (_mulvvvX) + '' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)absvX(X,"_mulvvvXabsNameB" + _mulvvvX)   # absNameB = abs(nameB)' + '\n';
_strmulvvvX+=absvX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)absvX(X,"_mulvvvXabsNameB" + _mulvvvX)   # absNameB = abs(nameB)' + '\n';
_strmulvvvX+=__indent() +'' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)resetvX(X,name)' + '\n';
_strmulvvvX+=resetvX(X,name);
_strmulvvvX+=__indent() +'#(end macro)resetvX(X,name)' + '\n';
_strmulvvvX+=__indent() +'' + '\n';
_strmulvvvX+=__indent() +'push    1' + '\n';
_strmulvvvX+=__indent() +'sbm _mulvvvX_loop' + (_mulvvvX) + '' + '\n';
_strmulvvvX+=__indent() +'while' + '\n';
__blockLevel__++;
_strmulvvvX+=__indent() +'#(begin macro)boolvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=boolvX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)boolvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=__indent() +'if  # absNameB is not zero' + '\n';
__blockLevel__++;
_strmulvvvX+=__indent() +'#(begin macro)addvvX(X,name,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=addvvX(X,name,"_mulvvvXabsNameA" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)addvvX(X,name,"_mulvvvXabsNameA" + _mulvvvX)' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)decvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
_strmulvvvX+=decvX(X,"_mulvvvXabsNameB" + _mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)decvX(X,"_mulvvvXabsNameB" + _mulvvvX)' + '\n';
__blockLevel__--;
_strmulvvvX+=__indent() +'else' + '\n';
__blockLevel__++;
_strmulvvvX+=__indent() +'#(begin macro)at_reset("_mulvvvX_loop"+_mulvvvX)' + '\n';
_strmulvvvX+=at_reset("_mulvvvX_loop"+_mulvvvX);
_strmulvvvX+=__indent() +'#(end macro)at_reset("_mulvvvX_loop"+_mulvvvX)' + '\n';
__blockLevel__--;
_strmulvvvX+=__indent() +'fi' + '\n';
__blockLevel__--;
_strmulvvvX+=__indent() +'wend' + '\n';
_strmulvvvX+=__indent() +'# resolve sign' + '\n';
_strmulvvvX+=__indent() +'push _mulvvvXsA' + (_mulvvvX) + '' + '\n';
_strmulvvvX+=__indent() +'push _mulvvvXsB' + (_mulvvvX) + '' + '\n';
_strmulvvvX+=__indent() +'diff    # if sign(nameA) <> sign(nameB) then name is negative' + '\n';
_strmulvvvX+=__indent() +'if' + '\n';
__blockLevel__++;
_strmulvvvX+=__indent() +'#(begin macro)at_set(name +"_s",1)' + '\n';
_strmulvvvX+=at_set(name +"_s",1);
_strmulvvvX+=__indent() +'#(end macro)at_set(name +"_s",1)' + '\n';
__blockLevel__--;
_strmulvvvX+=__indent() +'fi' + '\n';
_strmulvvvX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strmulvvvX+=scope_end();
_strmulvvvX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strmulvvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro mulvvX(X,name, nameB) : name *= nameB' + '\n';
var _mulvvX; _mulvvX=0;
var mulvvX = function(X,name, nameB){
 _mulvvX++;
var _strmulvvX; 
_strmulvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulvvX(X,name, nameB)[' + [X,name, nameB] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvvX(X,name, nameB)[' + [X,name, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro mulvvX(X,name, nameB)[' + [X,name, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro mulvvX(X,name, nameB)[' + [X,name, nameB] +']';
_strmulvvX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strmulvvX+=scope_begin();
_strmulvvX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strmulvvX+=__indent() +'#(begin macro)lvarX(X, "_milvvXNameA" + _mulvvX)' + '\n';
_strmulvvX+=lvarX(X, "_milvvXNameA" + _mulvvX);
_strmulvvX+=__indent() +'#(end macro)lvarX(X, "_milvvXNameA" + _mulvvX)' + '\n';
_strmulvvX+=__indent() +'#(begin macro)pushvX(X,name)' + '\n';
_strmulvvX+=pushvX(X,name);
_strmulvvX+=__indent() +'#(end macro)pushvX(X,name)' + '\n';
_strmulvvX+=__indent() +'#(begin macro)popvX(X,"_milvvXNameA" + _mulvvX)' + '\n';
_strmulvvX+=popvX(X,"_milvvXNameA" + _mulvvX);
_strmulvvX+=__indent() +'#(end macro)popvX(X,"_milvvXNameA" + _mulvvX)' + '\n';
_strmulvvX+=__indent() +'#(begin macro)mulvvvX(X,name,"_milvvXNameA" + _mulvvX,nameB)' + '\n';
_strmulvvX+=mulvvvX(X,name,"_milvvXNameA" + _mulvvX,nameB);
_strmulvvX+=__indent() +'#(end macro)mulvvvX(X,name,"_milvvXNameA" + _mulvvX,nameB)' + '\n';
_strmulvvX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strmulvvX+=scope_end();
_strmulvvX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strmulvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro mulvX(X,name) : head of stack *= name' + '\n';
var _mulvX; _mulvX=0;
var mulvX = function(X,name){
 _mulvX++;
var _strmulvX; 
_strmulvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulvX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro mulvX(X,name)[' + [X,name] +']';
_strmulvX+=__indent() +'#(begin macro)sbmX(X, "_mulvXName"+ _mulvX, 0)' + '\n';
_strmulvX+=sbmX(X, "_mulvXName"+ _mulvX, 0);
_strmulvX+=__indent() +'#(end macro)sbmX(X, "_mulvXName"+ _mulvX, 0)' + '\n';
_strmulvX+=__indent() +'#(begin macro)mulvvX(X, "_mulvXName"+ _mulvX, name)' + '\n';
_strmulvX+=mulvvX(X, "_mulvXName"+ _mulvX, name);
_strmulvX+=__indent() +'#(end macro)mulvvX(X, "_mulvXName"+ _mulvX, name)' + '\n';
return _strmulvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro mulX(X) : stack-1 = stack-1 * stack : stack--' + '\n';
var _mulX; _mulX=0;
var mulX = function(X){
 _mulX++;
var _strmulX; 
_strmulX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro mulX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro mulX(X)[' + [X] +']';
_strmulX+=__indent() +'#(begin macro)sbmX(X, "_mulXName" + _mulX, 1)' + '\n';
_strmulX+=sbmX(X, "_mulXName" + _mulX, 1);
_strmulX+=__indent() +'#(end macro)sbmX(X, "_mulXName" + _mulX, 1)' + '\n';
_strmulX+=__indent() +'#(begin macro)sbmX(X, "_mulXNameB" + _mulX, 0)' + '\n';
_strmulX+=sbmX(X, "_mulXNameB" + _mulX, 0);
_strmulX+=__indent() +'#(end macro)sbmX(X, "_mulXNameB" + _mulX, 0)' + '\n';
_strmulX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strmulX+=scope_begin();
_strmulX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strmulX+=__indent() +'#(begin macro)lvarX(X, "_mulXNameA" + _mulX)' + '\n';
_strmulX+=lvarX(X, "_mulXNameA" + _mulX);
_strmulX+=__indent() +'#(end macro)lvarX(X, "_mulXNameA" + _mulX)' + '\n';
_strmulX+=__indent() +'#(begin macro)pushvX(X, "_mulXName" + _mulX)' + '\n';
_strmulX+=pushvX(X, "_mulXName" + _mulX);
_strmulX+=__indent() +'#(end macro)pushvX(X, "_mulXName" + _mulX)' + '\n';
_strmulX+=__indent() +'#(begin macro)popvX(X, "_mulXNameA" + _mulX)' + '\n';
_strmulX+=popvX(X, "_mulXNameA" + _mulX);
_strmulX+=__indent() +'#(end macro)popvX(X, "_mulXNameA" + _mulX)' + '\n';
_strmulX+=__indent() +'#(begin macro)mulvvvX(X, "_mulXName" + _mulX, "_mulXNameA" + _mulX, "_mulXNameB" + _mulX)' + '\n';
_strmulX+=mulvvvX(X, "_mulXName" + _mulX, "_mulXNameA" + _mulX, "_mulXNameB" + _mulX);
_strmulX+=__indent() +'#(end macro)mulvvvX(X, "_mulXName" + _mulX, "_mulXNameA" + _mulX, "_mulXNameB" + _mulX)' + '\n';
_strmulX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strmulX+=scope_end();
_strmulX+=__indent() +'#(end macro)scope_end()' + '\n';
_strmulX+=__indent() +'#(begin macro)dropX(X)' + '\n';
_strmulX+=dropX(X);
_strmulX+=__indent() +'#(end macro)dropX(X)' + '\n';
return _strmulX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro equalvvX(X,nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise' + '\n';
var _equalvvX; _equalvvX=0;
var equalvvX = function(X,nameA, nameB){
 _equalvvX++;
var _strequalvvX; 
_strequalvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro equalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro equalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro equalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro equalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strequalvvX+=__indent() +'push ' + (nameA) + '_s' + '\n';
_strequalvvX+=__indent() +'push ' + (nameB) + '_s' + '\n';
_strequalvvX+=__indent() +'equal' + '\n';
for (var xx = 0 ; xx< X ; xx++) {
_strequalvvX+=__indent() +'push ' + (nameA) + '_' + (xx) + '' + '\n';
_strequalvvX+=__indent() +'push ' + (nameB) + '_' + (xx) + '' + '\n';
_strequalvvX+=__indent() +'equal' + '\n';
}
for (var xx = 0 ; xx < X-1 ; xx++) {
_strequalvvX+=__indent() +'and' + '\n';
}
_strequalvvX+=__indent() +'and' + '\n';
return _strequalvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro equalX(X) : same as "equal" but with X*8 bits value in stack' + '\n';
var _equalX; _equalX=0;
var equalX = function(X){
 _equalX++;
var _strequalX; 
_strequalX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro equalX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro equalX(X)[' + [X] +']';
_strequalX+=__indent() +'#(begin macro)sbmX(X,"_equalXA" + _equalX, 1)' + '\n';
_strequalX+=sbmX(X,"_equalXA" + _equalX, 1);
_strequalX+=__indent() +'#(end macro)sbmX(X,"_equalXA" + _equalX, 1)' + '\n';
_strequalX+=__indent() +'#(begin macro)sbmX(X,"_equalXB" + _equalX, 0)' + '\n';
_strequalX+=sbmX(X,"_equalXB" + _equalX, 0);
_strequalX+=__indent() +'#(end macro)sbmX(X,"_equalXB" + _equalX, 0)' + '\n';
_strequalX+=__indent() +'sbm _equalX' + (_equalX) + ' - ' + (((X+2)*2-1)) + '' + '\n';
_strequalX+=__indent() +'#(begin macro)equalvvX(X,"_equalXA" + _equalX, "_equalXB" + _equalX)' + '\n';
_strequalX+=equalvvX(X,"_equalXA" + _equalX, "_equalXB" + _equalX);
_strequalX+=__indent() +'#(end macro)equalvvX(X,"_equalXA" + _equalX, "_equalXB" + _equalX)' + '\n';
_strequalX+=__indent() +'pop _equalX' + (_equalX) + '' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strequalX+=__indent() +'drop' + '\n';
}
return _strequalX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro diffvvX(X,nameA, nameB) : push 1 if Name != NameB , push 0 otherwise' + '\n';
var _diffvvX; _diffvvX=0;
var diffvvX = function(X,nameA, nameB){
 _diffvvX++;
var _strdiffvvX; 
_strdiffvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro diffvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro diffvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro diffvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro diffvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strdiffvvX+=__indent() +'#(begin macro)equalvvX(X,nameA, nameB)' + '\n';
_strdiffvvX+=equalvvX(X,nameA, nameB);
_strdiffvvX+=__indent() +'#(end macro)equalvvX(X,nameA, nameB)' + '\n';
_strdiffvvX+=__indent() +'not' + '\n';
return _strdiffvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro diffX(X) : same as "diff" but with X*8 bits value in stack' + '\n';
var _diffX; _diffX=0;
var diffX = function(X){
 _diffX++;
var _strdiffX; 
_strdiffX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro diffX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro diffX(X)[' + [X] +']';
_strdiffX+=__indent() +'#(begin macro)sbmX(X,"_diffXA" + _diffX, 1)' + '\n';
_strdiffX+=sbmX(X,"_diffXA" + _diffX, 1);
_strdiffX+=__indent() +'#(end macro)sbmX(X,"_diffXA" + _diffX, 1)' + '\n';
_strdiffX+=__indent() +'#(begin macro)sbmX(X,"_diffXB" + _diffX, 0)' + '\n';
_strdiffX+=sbmX(X,"_diffXB" + _diffX, 0);
_strdiffX+=__indent() +'#(end macro)sbmX(X,"_diffXB" + _diffX, 0)' + '\n';
_strdiffX+=__indent() +'sbm _diffX' + (_diffX) + ' - ' + (((X+2)*2-1)) + '' + '\n';
_strdiffX+=__indent() +'#(begin macro)diffvvX(X,"_diffXA" + _diffX, "_diffXB" + _diffX)' + '\n';
_strdiffX+=diffvvX(X,"_diffXA" + _diffX, "_diffXB" + _diffX);
_strdiffX+=__indent() +'#(end macro)diffvvX(X,"_diffXA" + _diffX, "_diffXB" + _diffX)' + '\n';
_strdiffX+=__indent() +'pop _diffX' + (_diffX) + '' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strdiffX+=__indent() +'drop' + '\n';
}
return _strdiffX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro supequalvvX(X,nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise' + '\n';
var _supequalvvX; _supequalvvX=0;
var supequalvvX = function(X,nameA, nameB){
 _supequalvvX++;
var _strsupequalvvX; 
_strsupequalvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro supequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strsupequalvvX+=__indent() +'push 0' + '\n';
_strsupequalvvX+=__indent() +'sbm _supequalvvX' + (_supequalvvX) + '' + '\n';
_strsupequalvvX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strsupequalvvX+=scope_begin();
_strsupequalvvX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strsupequalvvX+=__indent() +'#(begin macro)lvarX(X, "_supequalvvXName" + _supequalvvX)' + '\n';
_strsupequalvvX+=lvarX(X, "_supequalvvXName" + _supequalvvX);
_strsupequalvvX+=__indent() +'#(end macro)lvarX(X, "_supequalvvXName" + _supequalvvX)' + '\n';
_strsupequalvvX+=__indent() +'#(begin macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)' + '\n';
_strsupequalvvX+=subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB);
_strsupequalvvX+=__indent() +'#(end macro)subvvvX(X, "_supequalvvXName" + _supequalvvX, nameA, nameB)' + '\n';
_strsupequalvvX+=__indent() +'push _supequalvvXName' + (_supequalvvX) + '_s' + '\n';
_strsupequalvvX+=__indent() +'not' + '\n';
_strsupequalvvX+=__indent() +'pop _supequalvvX' + (_supequalvvX) + '' + '\n';
_strsupequalvvX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strsupequalvvX+=scope_end();
_strsupequalvvX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strsupequalvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro supequalX(X) : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 X*8 bits value from stack' + '\n';
var _supequalX; _supequalX=0;
var supequalX = function(X){
 _supequalX++;
var _strsupequalX; 
_strsupequalX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supequalX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro supequalX(X)[' + [X] +']';
_strsupequalX+=__indent() +'#(begin macro)sbmX(X, "_supequalXA" + _supequalX, 1)' + '\n';
_strsupequalX+=sbmX(X, "_supequalXA" + _supequalX, 1);
_strsupequalX+=__indent() +'#(end macro)sbmX(X, "_supequalXA" + _supequalX, 1)' + '\n';
_strsupequalX+=__indent() +'#(begin macro)sbmX(X, "_supequalXB" + _supequalX, 0)' + '\n';
_strsupequalX+=sbmX(X, "_supequalXB" + _supequalX, 0);
_strsupequalX+=__indent() +'#(end macro)sbmX(X, "_supequalXB" + _supequalX, 0)' + '\n';
_strsupequalX+=__indent() +'sbm _supequalX' + (_supequalX) + ' - ' + (((X+2)*2-1)) + '' + '\n';
_strsupequalX+=__indent() +'#(begin macro)supequalvvX(X, "_supequalXA" + _supequalX, "_supequalXB" + _supequalX)' + '\n';
_strsupequalX+=supequalvvX(X, "_supequalXA" + _supequalX, "_supequalXB" + _supequalX);
_strsupequalX+=__indent() +'#(end macro)supequalvvX(X, "_supequalXA" + _supequalX, "_supequalXB" + _supequalX)' + '\n';
_strsupequalX+=__indent() +'pop _supequalX' + (_supequalX) + '' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strsupequalX+=__indent() +'drop' + '\n';
}
return _strsupequalX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro infvvX(X,nameA, nameB) : push 1 if nameA < nameB push 0 otherwise' + '\n';
var _infvvX; _infvvX=0;
var infvvX = function(X,nameA, nameB){
 _infvvX++;
var _strinfvvX; 
_strinfvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro infvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strinfvvX+=__indent() +'push 0' + '\n';
_strinfvvX+=__indent() +'sbm _infvvX' + (_infvvX) + '' + '\n';
_strinfvvX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strinfvvX+=scope_begin();
_strinfvvX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strinfvvX+=__indent() +'#(begin macro)lvarX(X, "_infvvXName" + _infvvX)' + '\n';
_strinfvvX+=lvarX(X, "_infvvXName" + _infvvX);
_strinfvvX+=__indent() +'#(end macro)lvarX(X, "_infvvXName" + _infvvX)' + '\n';
_strinfvvX+=__indent() +'#(begin macro)subvvvX(X,  "_infvvXName" + _infvvX, nameA, nameB)' + '\n';
_strinfvvX+=subvvvX(X,  "_infvvXName" + _infvvX, nameA, nameB);
_strinfvvX+=__indent() +'#(end macro)subvvvX(X,  "_infvvXName" + _infvvX, nameA, nameB)' + '\n';
_strinfvvX+=__indent() +'push _infvvXName' + (_infvvX) + '_s' + '\n';
_strinfvvX+=__indent() +'pop _infvvX' + (_infvvX) + '' + '\n';
_strinfvvX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strinfvvX+=scope_end();
_strinfvvX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strinfvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro infX(X) : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 X*8 bits value from stack' + '\n';
var _infX; _infX=0;
var infX = function(X){
 _infX++;
var _strinfX; 
_strinfX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro infX(X)[' + [X] +']';
_strinfX+=__indent() +'#(begin macro)sbmX(X, "_infXA" + _infX, 1)' + '\n';
_strinfX+=sbmX(X, "_infXA" + _infX, 1);
_strinfX+=__indent() +'#(end macro)sbmX(X, "_infXA" + _infX, 1)' + '\n';
_strinfX+=__indent() +'#(begin macro)sbmX(X, "_infXB" + _infX, 0)' + '\n';
_strinfX+=sbmX(X, "_infXB" + _infX, 0);
_strinfX+=__indent() +'#(end macro)sbmX(X, "_infXB" + _infX, 0)' + '\n';
_strinfX+=__indent() +'sbm _infX' + (_infX) + ' - ' + (((X+2)*2-1)) + '' + '\n';
_strinfX+=__indent() +'#(begin macro)infvvX(X, "_infXA" + _infX, "_infXB" + _infX)' + '\n';
_strinfX+=infvvX(X, "_infXA" + _infX, "_infXB" + _infX);
_strinfX+=__indent() +'#(end macro)infvvX(X, "_infXA" + _infX, "_infXB" + _infX)' + '\n';
_strinfX+=__indent() +'pop _infX' + (_infX) + '' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strinfX+=__indent() +'drop' + '\n';
}
return _strinfX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro infequalvvX(X,nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise' + '\n';
var _infequalvvX; _infequalvvX=0;
var infequalvvX = function(X,nameA, nameB){
 _infequalvvX++;
var _strinfequalvvX; 
_strinfequalvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro infequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro infequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro infequalvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strinfequalvvX+=__indent() +'#(begin macro)supequalvvX(X,nameB, nameA)' + '\n';
_strinfequalvvX+=supequalvvX(X,nameB, nameA);
_strinfequalvvX+=__indent() +'#(end macro)supequalvvX(X,nameB, nameA)' + '\n';
return _strinfequalvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro infequalX(X) : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 X*8 bits value from stack' + '\n';
var _infequalX; _infequalX=0;
var infequalX = function(X){
 _infequalX++;
var _strinfequalX; 
_strinfequalX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro infequalX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro infequalX(X)[' + [X] +']';
_strinfequalX+=__indent() +'#(begin macro)sbmX(X, "_infequalXA" + _infequalX, 1)' + '\n';
_strinfequalX+=sbmX(X, "_infequalXA" + _infequalX, 1);
_strinfequalX+=__indent() +'#(end macro)sbmX(X, "_infequalXA" + _infequalX, 1)' + '\n';
_strinfequalX+=__indent() +'#(begin macro)sbmX(X, "_infequalXB" + _infequalX, 0)' + '\n';
_strinfequalX+=sbmX(X, "_infequalXB" + _infequalX, 0);
_strinfequalX+=__indent() +'#(end macro)sbmX(X, "_infequalXB" + _infequalX, 0)' + '\n';
_strinfequalX+=__indent() +'sbm _infequalX' + (_infequalX) + ' - ' + (((X+2)*2-1)) + '' + '\n';
_strinfequalX+=__indent() +'#(begin macro)infequalvvX(X, "_infequalXA" + _infequalX, "_infequalXB" + _infequalX)' + '\n';
_strinfequalX+=infequalvvX(X, "_infequalXA" + _infequalX, "_infequalXB" + _infequalX);
_strinfequalX+=__indent() +'#(end macro)infequalvvX(X, "_infequalXA" + _infequalX, "_infequalXB" + _infequalX)' + '\n';
_strinfequalX+=__indent() +'pop _infequalX' + (_infequalX) + '' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strinfequalX+=__indent() +'drop' + '\n';
}
return _strinfequalX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro supvvX(X,nameA , nameB) : push 1 if nameA > nameB push 0 otherwise' + '\n';
var _supvvX; _supvvX=0;
var supvvX = function(X,nameA, nameB){
 _supvvX++;
var _strsupvvX; 
_strsupvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro supvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro supvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro supvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strsupvvX+=__indent() +'#(begin macro)infvvX(X,nameB, nameA)' + '\n';
_strsupvvX+=infvvX(X,nameB, nameA);
_strsupvvX+=__indent() +'#(end macro)infvvX(X,nameB, nameA)' + '\n';
return _strsupvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro supX(X) : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 X*8 bits value from stack' + '\n';
var _supX; _supX=0;
var supX = function(X){
 _supX++;
var _strsupX; 
_strsupX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro supX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro supX(X)[' + [X] +']';
_strsupX+=__indent() +'#(begin macro)sbmX(X, "_supXA" + _supX, 1)' + '\n';
_strsupX+=sbmX(X, "_supXA" + _supX, 1);
_strsupX+=__indent() +'#(end macro)sbmX(X, "_supXA" + _supX, 1)' + '\n';
_strsupX+=__indent() +'#(begin macro)sbmX(X, "_supXB" + _supX, 0)' + '\n';
_strsupX+=sbmX(X, "_supXB" + _supX, 0);
_strsupX+=__indent() +'#(end macro)sbmX(X, "_supXB" + _supX, 0)' + '\n';
_strsupX+=__indent() +'sbm _supX' + (_supX) + ' - ' + (((X+2)*2-1)) + '' + '\n';
_strsupX+=__indent() +'#(begin macro)supvvX(X, "_supXA" + _supX, "_supXB" + _supX)' + '\n';
_strsupX+=supvvX(X, "_supXA" + _supX, "_supXB" + _supX);
_strsupX+=__indent() +'#(end macro)supvvX(X, "_supXA" + _supX, "_supXB" + _supX)' + '\n';
_strsupX+=__indent() +'pop _supX' + (_supX) + '' + '\n';
for (var xx=0 ; xx < (X+2)*2-1 ; xx++) {
_strsupX+=__indent() +'drop' + '\n';
}
return _strsupX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro divvvvvX(X,nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB' + '\n';
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
_strdivvvvvX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strdivvvvvX+=scope_begin();
_strdivvvvvX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=lvarX(X,"_divvvvvXabsNameA" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)lvarX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)pushvX(X,nameA)' + '\n';
_strdivvvvvX+=pushvX(X,nameA);
_strdivvvvvX+=__indent() +'#(end macro)pushvX(X,nameA)' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)popvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=popvX(X,"_divvvvvXabsNameA" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)popvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)lvar("_divvvvvXsA" + _divvvvvX, 0)' + '\n';
_strdivvvvvX+=lvar("_divvvvvXsA" + _divvvvvX, 0);
_strdivvvvvX+=__indent() +'#(end macro)lvar("_divvvvvXsA" + _divvvvvX, 0)' + '\n';
_strdivvvvvX+=__indent() +'push ' + (nameA) + '_s' + '\n';
_strdivvvvvX+=__indent() +'pop _divvvvvXsA' + (_divvvvvX) + '' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)absvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=absvX(X,"_divvvvvXabsNameA" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)absvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=__indent() +'' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=lvarX(X,"_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)lvarX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)pushvX(X,nameB)' + '\n';
_strdivvvvvX+=pushvX(X,nameB);
_strdivvvvvX+=__indent() +'#(end macro)pushvX(X,nameB)' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)popvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=popvX(X,"_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)popvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)lvar("_divvvvvXsB" + _divvvvvX, 0)' + '\n';
_strdivvvvvX+=lvar("_divvvvvXsB" + _divvvvvX, 0);
_strdivvvvvX+=__indent() +'#(end macro)lvar("_divvvvvXsB" + _divvvvvX, 0)' + '\n';
_strdivvvvvX+=__indent() +'push ' + (nameB) + '_s' + '\n';
_strdivvvvvX+=__indent() +'pop _divvvvvXsB' + (_divvvvvX) + '' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)absvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=absvX(X,"_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)absvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=__indent() +'' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=pushvX(X,"_divvvvvXabsNameA" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)pushvX(X,"_divvvvvXabsNameA" + _divvvvvX)' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)popvX(X,nameAmodB)' + '\n';
_strdivvvvvX+=popvX(X,nameAmodB);
_strdivvvvvX+=__indent() +'#(end macro)popvX(X,nameAmodB)' + '\n';
_strdivvvvvX+=__indent() +'' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)resetvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=resetvX(X,nameAdivB);
_strdivvvvvX+=__indent() +'#(end macro)resetvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=__indent() +'' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=boolvX(X,"_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)boolvX(X,"_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=__indent() +'if' + '\n';
__blockLevel__++;
_strdivvvvvX+=__indent() +'push    1' + '\n';
_strdivvvvvX+=__indent() +'sbm     _divvvvvX_g' + (_divvvvvX) + '' + '\n';
_strdivvvvvX+=__indent() +'while' + '\n';
__blockLevel__++;
_strdivvvvvX+=__indent() +'#(begin macro)supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)supequalvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=__indent() +'if' + '\n';
__blockLevel__++;
_strdivvvvvX+=__indent() +'#(begin macro)incvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=incvX(X,nameAdivB);
_strdivvvvvX+=__indent() +'#(end macro)incvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)' + '\n';
_strdivvvvvX+=subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)subvvX(X,nameAmodB, "_divvvvvXabsNameB" + _divvvvvX)' + '\n';
__blockLevel__--;
_strdivvvvvX+=__indent() +'else' + '\n';
__blockLevel__++;
_strdivvvvvX+=__indent() +'#(begin macro)at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend' + '\n';
_strdivvvvvX+=at_reset("_divvvvvX_g" + _divvvvvX);
_strdivvvvvX+=__indent() +'#(end macro)at_reset("_divvvvvX_g" + _divvvvvX) # break while/wend' + '\n';
__blockLevel__--;
_strdivvvvvX+=__indent() +'fi' + '\n';
__blockLevel__--;
_strdivvvvvX+=__indent() +'wend' + '\n';
_strdivvvvvX+=__indent() +'# treat sign of nameAmodB and nameAdivB' + '\n';
_strdivvvvvX+=__indent() +'push    _divvvvvXsA' + (_divvvvvX) + '' + '\n';
_strdivvvvvX+=__indent() +'pop     ' + (nameAmodB) + '_s   # sign of nameAmodB is sign of nameA' + '\n';
_strdivvvvvX+=__indent() +'push    _divvvvvXsA' + (_divvvvvX) + '' + '\n';
_strdivvvvvX+=__indent() +'push    _divvvvvXsB' + (_divvvvvX) + '' + '\n';
_strdivvvvvX+=__indent() +'diff' + '\n';
_strdivvvvvX+=__indent() +'if' + '\n';
__blockLevel__++;
_strdivvvvvX+=__indent() +'push    1' + '\n';
_strdivvvvvX+=__indent() +'pop     ' + (nameAdivB) + '_s # nameAdivB is negative if sign NameA <> sign nameB' + '\n';
__blockLevel__--;
_strdivvvvvX+=__indent() +'fi' + '\n';
__blockLevel__--;
_strdivvvvvX+=__indent() +'else' + '\n';
__blockLevel__++;
_strdivvvvvX+=__indent() +'#(begin macro)setcvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=setcvX(X,nameAdivB);
_strdivvvvvX+=__indent() +'#(end macro)setcvX(X,nameAdivB)' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)setcvX(X,nameAmodB)' + '\n';
_strdivvvvvX+=setcvX(X,nameAmodB);
_strdivvvvvX+=__indent() +'#(end macro)setcvX(X,nameAmodB)' + '\n';
__blockLevel__--;
_strdivvvvvX+=__indent() +'fi' + '\n';
_strdivvvvvX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strdivvvvvX+=scope_end();
_strdivvvvvX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strdivvvvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro divvvX(X,nameA, nameB) : Push 2 X*8 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB' + '\n';
var _divvvX; _divvvX=0;
var divvvX = function(X,nameA, nameB){
 _divvvX++;
var _strdivvvX; 
_strdivvvX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro divvvX(X,nameA, nameB)[' + [X,nameA, nameB] +']';
_strdivvvX+=__indent() +'#(begin macro)pushX(X, 0)' + '\n';
_strdivvvX+=pushX(X, 0);
_strdivvvX+=__indent() +'#(end macro)pushX(X, 0)' + '\n';
_strdivvvX+=__indent() +'#(begin macro)sbmX(X, "_divvvXB" + _divvvX, 0) # nameA mod nameB' + '\n';
_strdivvvX+=sbmX(X, "_divvvXB" + _divvvX, 0);
_strdivvvX+=__indent() +'#(end macro)sbmX(X, "_divvvXB" + _divvvX, 0) # nameA mod nameB' + '\n';
_strdivvvX+=__indent() +'#(begin macro)pushX(X, 0)' + '\n';
_strdivvvX+=pushX(X, 0);
_strdivvvX+=__indent() +'#(end macro)pushX(X, 0)' + '\n';
_strdivvvX+=__indent() +'#(begin macro)sbmX(X, "_divvvXA" + _divvvX, 0) # nameA div nameB' + '\n';
_strdivvvX+=sbmX(X, "_divvvXA" + _divvvX, 0);
_strdivvvX+=__indent() +'#(end macro)sbmX(X, "_divvvXA" + _divvvX, 0) # nameA div nameB' + '\n';
_strdivvvX+=__indent() +'#(begin macro)divvvvvX(X, "_divvvXA" + _divvvX, "_divvvXB" + _divvvX, nameA, nameB)' + '\n';
_strdivvvX+=divvvvvX(X, "_divvvXA" + _divvvX, "_divvvXB" + _divvvX, nameA, nameB);
_strdivvvX+=__indent() +'#(end macro)divvvvvX(X, "_divvvXA" + _divvvX, "_divvvXB" + _divvvX, nameA, nameB)' + '\n';
return _strdivvvX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro divX(X) : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B' + '\n';
var _divX; _divX=0;
var divX = function(X){
 _divX++;
var _strdivX; 
_strdivX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro divX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro divX(X)[' + [X] +']';
_strdivX+=__indent() +'#(begin macro)sbmX(X, "_divXA" + _divX, 1) # A before div, A mod B after' + '\n';
_strdivX+=sbmX(X, "_divXA" + _divX, 1);
_strdivX+=__indent() +'#(end macro)sbmX(X, "_divXA" + _divX, 1) # A before div, A mod B after' + '\n';
_strdivX+=__indent() +'#(begin macro)sbmX(X, "_divXB" + _divX, 0) # B before div, A div B after' + '\n';
_strdivX+=sbmX(X, "_divXB" + _divX, 0);
_strdivX+=__indent() +'#(end macro)sbmX(X, "_divXB" + _divX, 0) # B before div, A div B after' + '\n';
_strdivX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strdivX+=scope_begin();
_strdivX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strdivX+=__indent() +'#(begin macro)lvarX(X, "_divXC"+ _divX)' + '\n';
_strdivX+=lvarX(X, "_divXC"+ _divX);
_strdivX+=__indent() +'#(end macro)lvarX(X, "_divXC"+ _divX)' + '\n';
_strdivX+=__indent() +'#(begin macro)lvarX(X, "_divXD"+ _divX)' + '\n';
_strdivX+=lvarX(X, "_divXD"+ _divX);
_strdivX+=__indent() +'#(end macro)lvarX(X, "_divXD"+ _divX)' + '\n';
_strdivX+=__indent() +'#(begin macro)divvvvvX(X, "_divXC"+ _divX, "_divXD"+ _divX, "_divXA"+ _divX, "_divXB"+ _divX)' + '\n';
_strdivX+=divvvvvX(X, "_divXC"+ _divX, "_divXD"+ _divX, "_divXA"+ _divX, "_divXB"+ _divX);
_strdivX+=__indent() +'#(end macro)divvvvvX(X, "_divXC"+ _divX, "_divXD"+ _divX, "_divXA"+ _divX, "_divXB"+ _divX)' + '\n';
_strdivX+=__indent() +'#(begin macro)pushvX(X, "_divXC"+ _divX)' + '\n';
_strdivX+=pushvX(X, "_divXC"+ _divX);
_strdivX+=__indent() +'#(end macro)pushvX(X, "_divXC"+ _divX)' + '\n';
_strdivX+=__indent() +'#(begin macro)popvX(X, "_divXB" + _divX)  # B = C = A div B' + '\n';
_strdivX+=popvX(X, "_divXB" + _divX);
_strdivX+=__indent() +'#(end macro)popvX(X, "_divXB" + _divX)  # B = C = A div B' + '\n';
_strdivX+=__indent() +'#(begin macro)pushvX(X, "_divXD"+ _divX)' + '\n';
_strdivX+=pushvX(X, "_divXD"+ _divX);
_strdivX+=__indent() +'#(end macro)pushvX(X, "_divXD"+ _divX)' + '\n';
_strdivX+=__indent() +'#(begin macro)popvX(X, "_divXA" + _divX)  # A = D = A mod B' + '\n';
_strdivX+=popvX(X, "_divXA" + _divX);
_strdivX+=__indent() +'#(end macro)popvX(X, "_divXA" + _divX)  # A = D = A mod B' + '\n';
_strdivX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strdivX+=scope_end();
_strdivX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strdivX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro castX(X1,X2) : transform stack X1*8 bits value to X2*8 bits value' + '\n';
var _castX; _castX=0;
var castX = function(X1,X2){
 _castX++;
var _strcastX; 
_strcastX='';
if (typeof X1 == 'undefined') throw 'Parameter X1 is undefined in call of  macro castX(X1,X2)[' + [X1,X2] +']';
if (typeof X2 == 'undefined') throw 'Parameter X2 is undefined in call of  macro castX(X1,X2)[' + [X1,X2] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro castX(X1,X2)[' + [X1,X2] +']';
if (X1 != X2 && X1 > 0 && X2 > 0) {
_strcastX+=__indent() +'#(begin macro)sbmX(X1,"_castXInput" + _castX, 0)' + '\n';
_strcastX+=sbmX(X1,"_castXInput" + _castX, 0);
_strcastX+=__indent() +'#(end macro)sbmX(X1,"_castXInput" + _castX, 0)' + '\n';
_strcastX+=__indent() +'#(begin macro)varX(X2,"_castXoutput" + _castX)' + '\n';
_strcastX+=varX(X2,"_castXoutput" + _castX);
_strcastX+=__indent() +'#(end macro)varX(X2,"_castXoutput" + _castX)' + '\n';
_strcastX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strcastX+=scope_begin();
_strcastX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strcastX+=__indent() +'#(begin macro)lvarX(X1,"_castXori" + _castX)' + '\n';
_strcastX+=lvarX(X1,"_castXori" + _castX);
_strcastX+=__indent() +'#(end macro)lvarX(X1,"_castXori" + _castX)' + '\n';
_strcastX+=__indent() +'#(begin macro)lvarX(X2,"_castXdest" + _castX)' + '\n';
_strcastX+=lvarX(X2,"_castXdest" + _castX);
_strcastX+=__indent() +'#(end macro)lvarX(X2,"_castXdest" + _castX)' + '\n';
_strcastX+=__indent() +'' + '\n';
_strcastX+=__indent() +'#(begin macro)pushvX(X1,"_castXInput"+_castX)' + '\n';
_strcastX+=pushvX(X1,"_castXInput"+_castX);
_strcastX+=__indent() +'#(end macro)pushvX(X1,"_castXInput"+_castX)' + '\n';
_strcastX+=__indent() +'#(begin macro)popvX(X1,"_castXori" + _castX)' + '\n';
_strcastX+=popvX(X1,"_castXori" + _castX);
_strcastX+=__indent() +'#(end macro)popvX(X1,"_castXori" + _castX)' + '\n';
_strcastX+=__indent() +'push    _castXori' + (_castX) + '_s' + '\n';
_strcastX+=__indent() +'pop     _castXdest' + (_castX) + '_s  # keep sign' + '\n';
if (X1 < X2) {
for (var xx = 0 ; xx < X1; xx++) {
_strcastX+=__indent() +'push    _castXori' + (_castX) + '_' + (xx) + '' + '\n';
_strcastX+=__indent() +'pop     _castXdest' + (_castX) + '_' + (xx) + '' + '\n';
}
for (var xx = X1; xx < X2 ; xx++ ) {
_strcastX+=__indent() +'push    0' + '\n';
_strcastX+=__indent() +'pop     _castXdest' + (_castX) + '_' + (xx) + '' + '\n';
}
} else { // if X1 > X2
for (var xx = 0 ; xx < X2; xx++) {
_strcastX+=__indent() +'push    _castXori' + (_castX) + '_' + (xx) + '' + '\n';
_strcastX+=__indent() +'pop     _castXdest' + (_castX) + '_' + (xx) + '' + '\n';
}
_strcastX+=__indent() +'' + '\n';
}
_strcastX+=__indent() +'#(begin macro)pushvX(X2,"_castXdest" + _castX)' + '\n';
_strcastX+=pushvX(X2,"_castXdest" + _castX);
_strcastX+=__indent() +'#(end macro)pushvX(X2,"_castXdest" + _castX)' + '\n';
_strcastX+=__indent() +'#(begin macro)popvX(X2,"_castXoutput" + _castX)' + '\n';
_strcastX+=popvX(X2,"_castXoutput" + _castX);
_strcastX+=__indent() +'#(end macro)popvX(X2,"_castXoutput" + _castX)' + '\n';
_strcastX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strcastX+=scope_end();
_strcastX+=__indent() +'#(end macro)scope_end()' + '\n';
_strcastX+=__indent() +'#(begin macro)dropX(X1)' + '\n';
_strcastX+=dropX(X1);
_strcastX+=__indent() +'#(end macro)dropX(X1)' + '\n';
_strcastX+=__indent() +'#(begin macro)pushvX(X2,"_castXoutput" + _castX)' + '\n';
_strcastX+=pushvX(X2,"_castXoutput" + _castX);
_strcastX+=__indent() +'#(end macro)pushvX(X2,"_castXoutput" + _castX)' + '\n';
}
return _strcastX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro sbmX2(X,name,backward,offset) : sbm a X*8 bit head of stack - (backward X*8 bits value+ offset)' + '\n';
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
for (var xx=0; xx <X ; xx++) {
_strsbmX2+=__indent() +'sbm ' + (name) + '_' + (xx) + ' - ' + ((backward*(X+2)+xx+offset)) + '' + '\n';
}
_strsbmX2+=__indent() +'sbm ' + (name) + '_s - ' + ((backward*(X+2)+X+offset)) + '' + '\n';
_strsbmX2+=__indent() +'sbm ' + (name) + '_c - ' + ((backward*(X+2)+X+1+offset)) + '' + '\n';
return _strsbmX2;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro sbmX(X,name,backward) : sbm a X*8 bit head of stack - (backward X*8 bits value)' + '\n';
var _sbmX; _sbmX=0;
var sbmX = function(X,name,backward){
 _sbmX++;
var _strsbmX; 
_strsbmX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro sbmX(X,name,backward)[' + [X,name,backward] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro sbmX(X,name,backward)[' + [X,name,backward] +']';
if (typeof backward == 'undefined') throw 'Parameter backward is undefined in call of  macro sbmX(X,name,backward)[' + [X,name,backward] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro sbmX(X,name,backward)[' + [X,name,backward] +']';
_strsbmX+=__indent() +'#(begin macro)sbmX2(X,name,backward,0)' + '\n';
_strsbmX+=sbmX2(X,name,backward,0);
_strsbmX+=__indent() +'#(end macro)sbmX2(X,name,backward,0)' + '\n';
return _strsbmX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# upcast macro' + '\n';
var _cast8to16; _cast8to16=0;
var cast8to16 = function(){
 _cast8to16++;
var _strcast8to16; 
_strcast8to16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast8to16()[' + [] +']';
_strcast8to16+=__indent() +'#(begin macro)castX(1,2)' + '\n';
_strcast8to16+=castX(1,2);
_strcast8to16+=__indent() +'#(end macro)castX(1,2)' + '\n';
return _strcast8to16;
}
_str_main+=__indent() +'' + '\n';
var _cast8to24; _cast8to24=0;
var cast8to24 = function(){
 _cast8to24++;
var _strcast8to24; 
_strcast8to24='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast8to24()[' + [] +']';
_strcast8to24+=__indent() +'#(begin macro)castX(1,3)' + '\n';
_strcast8to24+=castX(1,3);
_strcast8to24+=__indent() +'#(end macro)castX(1,3)' + '\n';
return _strcast8to24;
}
_str_main+=__indent() +'' + '\n';
var _cast8to32; _cast8to32=0;
var cast8to32 = function(){
 _cast8to32++;
var _strcast8to32; 
_strcast8to32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast8to32()[' + [] +']';
_strcast8to32+=__indent() +'#(begin macro)castX(1,4)' + '\n';
_strcast8to32+=castX(1,4);
_strcast8to32+=__indent() +'#(end macro)castX(1,4)' + '\n';
return _strcast8to32;
}
_str_main+=__indent() +'' + '\n';
var _cast16to24; _cast16to24=0;
var cast16to24 = function(){
 _cast16to24++;
var _strcast16to24; 
_strcast16to24='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast16to24()[' + [] +']';
_strcast16to24+=__indent() +'#(begin macro)castX(2,3)' + '\n';
_strcast16to24+=castX(2,3);
_strcast16to24+=__indent() +'#(end macro)castX(2,3)' + '\n';
return _strcast16to24;
}
_str_main+=__indent() +'' + '\n';
var _cast16to32; _cast16to32=0;
var cast16to32 = function(){
 _cast16to32++;
var _strcast16to32; 
_strcast16to32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast16to32()[' + [] +']';
_strcast16to32+=__indent() +'#(begin macro)castX(2,4)' + '\n';
_strcast16to32+=castX(2,4);
_strcast16to32+=__indent() +'#(end macro)castX(2,4)' + '\n';
return _strcast16to32;
}
_str_main+=__indent() +'' + '\n';
var _cast24to32; _cast24to32=0;
var cast24to32 = function(){
 _cast24to32++;
var _strcast24to32; 
_strcast24to32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast24to32()[' + [] +']';
_strcast24to32+=__indent() +'#(begin macro)castX(3,4)' + '\n';
_strcast24to32+=castX(3,4);
_strcast24to32+=__indent() +'#(end macro)castX(3,4)' + '\n';
return _strcast24to32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# downcast macro' + '\n';
var _cast16to8; _cast16to8=0;
var cast16to8 = function(){
 _cast16to8++;
var _strcast16to8; 
_strcast16to8='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast16to8()[' + [] +']';
_strcast16to8+=__indent() +'#(begin macro)castX(2,1)' + '\n';
_strcast16to8+=castX(2,1);
_strcast16to8+=__indent() +'#(end macro)castX(2,1)' + '\n';
return _strcast16to8;
}
_str_main+=__indent() +'' + '\n';
var _cast24to8; _cast24to8=0;
var cast24to8 = function(){
 _cast24to8++;
var _strcast24to8; 
_strcast24to8='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast24to8()[' + [] +']';
_strcast24to8+=__indent() +'#(begin macro)castX(3,1)' + '\n';
_strcast24to8+=castX(3,1);
_strcast24to8+=__indent() +'#(end macro)castX(3,1)' + '\n';
return _strcast24to8;
}
_str_main+=__indent() +'' + '\n';
var _cast32to8; _cast32to8=0;
var cast32to8 = function(){
 _cast32to8++;
var _strcast32to8; 
_strcast32to8='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast32to8()[' + [] +']';
_strcast32to8+=__indent() +'#(begin macro)castX(4,1)' + '\n';
_strcast32to8+=castX(4,1);
_strcast32to8+=__indent() +'#(end macro)castX(4,1)' + '\n';
return _strcast32to8;
}
_str_main+=__indent() +'' + '\n';
var _cast24to16; _cast24to16=0;
var cast24to16 = function(){
 _cast24to16++;
var _strcast24to16; 
_strcast24to16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast24to16()[' + [] +']';
_strcast24to16+=__indent() +'#(begin macro)castX(3,2)' + '\n';
_strcast24to16+=castX(3,2);
_strcast24to16+=__indent() +'#(end macro)castX(3,2)' + '\n';
return _strcast24to16;
}
_str_main+=__indent() +'' + '\n';
var _cast32to16; _cast32to16=0;
var cast32to16 = function(){
 _cast32to16++;
var _strcast32to16; 
_strcast32to16='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast32to16()[' + [] +']';
_strcast32to16+=__indent() +'#(begin macro)castX(3,2)' + '\n';
_strcast32to16+=castX(3,2);
_strcast32to16+=__indent() +'#(end macro)castX(3,2)' + '\n';
return _strcast32to16;
}
_str_main+=__indent() +'' + '\n';
var _cast32to24; _cast32to24=0;
var cast32to24 = function(){
 _cast32to24++;
var _strcast32to24; 
_strcast32to24='';
if (arguments.length != 0) throw 'Too much arguments provided to macro cast32to24()[' + [] +']';
_strcast32to24+=__indent() +'#(begin macro)castX(4,3)' + '\n';
_strcast32to24+=castX(4,3);
_strcast32to24+=__indent() +'#(end macro)castX(4,3)' + '\n';
return _strcast32to24;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro writeX(X,name) : print out the decimal value (signed)' + '\n';
var _writeX; _writeX=0;
var writeX = function(X,name){
 _writeX++;
var _strwriteX; 
_strwriteX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro writeX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro writeX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro writeX(X,name)[' + [X,name] +']';
var _xbits; _xbits = X * 8;
_strwriteX+=__indent() +'#(begin macro)scope_begin()' + '\n';
_strwriteX+=scope_begin();
_strwriteX+=__indent() +'#(end macro)scope_begin()' + '\n';
_strwriteX+=__indent() +'#(begin macro)lvar("writeXprefixzero" + _writeX, 1)' + '\n';
_strwriteX+=lvar("writeXprefixzero" + _writeX, 1);
_strwriteX+=__indent() +'#(end macro)lvar("writeXprefixzero" + _writeX, 1)' + '\n';
_strwriteX+=__indent() +'#(begin macro)lvarX(X,"writeX_A"+_writeX)' + '\n';
_strwriteX+=lvarX(X,"writeX_A"+_writeX);
_strwriteX+=__indent() +'#(end macro)lvarX(X,"writeX_A"+_writeX)' + '\n';
_strwriteX+=__indent() +'#(begin macro)lvarX(X,"writeX_B"+_writeX)' + '\n';
_strwriteX+=lvarX(X,"writeX_B"+_writeX);
_strwriteX+=__indent() +'#(end macro)lvarX(X,"writeX_B"+_writeX)' + '\n';
_strwriteX+=__indent() +'#(begin macro)lvarX(X,"writeX_AmodB"+_writeX)' + '\n';
_strwriteX+=lvarX(X,"writeX_AmodB"+_writeX);
_strwriteX+=__indent() +'#(end macro)lvarX(X,"writeX_AmodB"+_writeX)' + '\n';
_strwriteX+=__indent() +'#(begin macro)lvarX(X,"writeX_AdivB"+_writeX)' + '\n';
_strwriteX+=lvarX(X,"writeX_AdivB"+_writeX);
_strwriteX+=__indent() +'#(end macro)lvarX(X,"writeX_AdivB"+_writeX)' + '\n';
_strwriteX+=__indent() +'' + '\n';
_strwriteX+=__indent() +'#(begin macro)pushvX(X,name)' + '\n';
_strwriteX+=pushvX(X,name);
_strwriteX+=__indent() +'#(end macro)pushvX(X,name)' + '\n';
_strwriteX+=__indent() +'#(begin macro)popvX(X,"writeX_A"+_writeX)' + '\n';
_strwriteX+=popvX(X,"writeX_A"+_writeX);
_strwriteX+=__indent() +'#(end macro)popvX(X,"writeX_A"+_writeX)' + '\n';
_strwriteX+=__indent() +'' + '\n';
_strwriteX+=__indent() +'#pushX(X,10)' + '\n';
_strwriteX+=__indent() +'#popvX(X,"writeX_B"+_writeX)' + '\n';
_strwriteX+=__indent() +'#(begin macro)setvX(X,"writeX_B"+_writeX, 10)' + '\n';
_strwriteX+=setvX(X,"writeX_B"+_writeX, 10);
_strwriteX+=__indent() +'#(end macro)setvX(X,"writeX_B"+_writeX, 10)' + '\n';
_strwriteX+=__indent() +'' + '\n';
_strwriteX+=__indent() +'push writeX_A' + (_writeX) + '_s' + '\n';
_strwriteX+=__indent() +'if' + '\n';
__blockLevel__++;
_strwriteX+=__indent() +'push    \'-\'' + '\n';
_strwriteX+=__indent() +'pop     out   # write \'-\' if name < 0' + '\n';
__blockLevel__--;
_strwriteX+=__indent() +'fi' + '\n';
_strwriteX+=__indent() +'' + '\n';
_strwriteX+=__indent() +'push _stringDecimal' + (_xbits) + '_.size' + '\n';
_strwriteX+=__indent() +'loop' + '\n';
__blockLevel__++;
_strwriteX+=__indent() +'# output = input mod 10 ; input = input div 10' + '\n';
_strwriteX+=__indent() +'#(begin macro)divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)' + '\n';
_strwriteX+=divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX);
_strwriteX+=__indent() +'#(end macro)divvvvvX(X,"writeX_AdivB" + _writeX, "writeX_AmodB" + _writeX, "writeX_A" + _writeX, "writeX_B" + _writeX)' + '\n';
_strwriteX+=__indent() +'push    writeX_AmodB' + (_writeX) + '_0' + '\n';
_strwriteX+=__indent() +'pop  _stringDecimal' + (_xbits) + '_' + '\n';
_strwriteX+=__indent() +'#(begin macro)pushvX(X,"writeX_AdivB" + _writeX)' + '\n';
_strwriteX+=pushvX(X,"writeX_AdivB" + _writeX);
_strwriteX+=__indent() +'#(end macro)pushvX(X,"writeX_AdivB" + _writeX)' + '\n';
_strwriteX+=__indent() +'#(begin macro)popvX(X,"writeX_A" + _writeX)' + '\n';
_strwriteX+=popvX(X,"writeX_A" + _writeX);
_strwriteX+=__indent() +'#(end macro)popvX(X,"writeX_A" + _writeX)' + '\n';
_strwriteX+=__indent() +'arotl _stringDecimal' + (_xbits) + '_' + '\n';
__blockLevel__--;
_strwriteX+=__indent() +'endloop' + '\n';
_strwriteX+=__indent() +'' + '\n';
_strwriteX+=__indent() +'push _stringDecimal' + (_xbits) + '_.size' + '\n';
_strwriteX+=__indent() +'sbm writeXcnt' + (_writeX) + '' + '\n';
_strwriteX+=__indent() +'loop' + '\n';
__blockLevel__++;
_strwriteX+=__indent() +'arotr _stringDecimal' + (_xbits) + '_' + '\n';
_strwriteX+=__indent() +'#(begin macro)if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)' + '\n';
_strwriteX+=if_sup("writeXcnt" + _writeX, 1);
_strwriteX+=__indent() +'#(end macro)if_sup("writeXcnt" + _writeX, 1)   # cnt > 1 (5, 4 , 3 or 2)' + '\n';
_strwriteX+=__indent() +'#(begin macro)if_diff("_stringDecimal" + _xbits +"_", 0)' + '\n';
_strwriteX+=if_diff("_stringDecimal" + _xbits +"_", 0);
_strwriteX+=__indent() +'#(end macro)if_diff("_stringDecimal" + _xbits +"_", 0)' + '\n';
_strwriteX+=__indent() +'push _stringDecimal' + (_xbits) + '_' + '\n';
_strwriteX+=__indent() +'#(begin macro)popouthexa()' + '\n';
_strwriteX+=popouthexa();
_strwriteX+=__indent() +'#(end macro)popouthexa()' + '\n';
_strwriteX+=__indent() +'#(begin macro)at_set("writeXprefixzero"+_writeX, 0)' + '\n';
_strwriteX+=at_set("writeXprefixzero"+_writeX, 0);
_strwriteX+=__indent() +'#(end macro)at_set("writeXprefixzero"+_writeX, 0)' + '\n';
__blockLevel__--;
_strwriteX+=__indent() +'else' + '\n';
__blockLevel__++;
_strwriteX+=__indent() +'#(begin macro)if_equal("writeXprefixzero"+_writeX, 0)' + '\n';
_strwriteX+=if_equal("writeXprefixzero"+_writeX, 0);
_strwriteX+=__indent() +'#(end macro)if_equal("writeXprefixzero"+_writeX, 0)' + '\n';
_strwriteX+=__indent() +'push _stringDecimal' + (_xbits) + '_' + '\n';
_strwriteX+=__indent() +'#(begin macro)popouthexa()' + '\n';
_strwriteX+=popouthexa();
_strwriteX+=__indent() +'#(end macro)popouthexa()' + '\n';
__blockLevel__--;
_strwriteX+=__indent() +'fi' + '\n';
__blockLevel__--;
_strwriteX+=__indent() +'fi' + '\n';
__blockLevel__--;
_strwriteX+=__indent() +'else' + '\n';
__blockLevel__++;
_strwriteX+=__indent() +'push _stringDecimal' + (_xbits) + '_' + '\n';
_strwriteX+=__indent() +'#(begin macro)popouthexa()' + '\n';
_strwriteX+=popouthexa();
_strwriteX+=__indent() +'#(end macro)popouthexa()' + '\n';
__blockLevel__--;
_strwriteX+=__indent() +'fi' + '\n';
__blockLevel__--;
_strwriteX+=__indent() +'endloop' + '\n';
_strwriteX+=__indent() +'#(begin macro)scope_end()' + '\n';
_strwriteX+=scope_end();
_strwriteX+=__indent() +'#(end macro)scope_end()' + '\n';
return _strwriteX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro printhexaX(X,name) : print the X*8 bit variable in hexadecimal' + '\n';
var _printhexaX; _printhexaX=0;
var printhexaX = function(X,name){
 _printhexaX++;
var _strprinthexaX; 
_strprinthexaX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro printhexaX(X,name)[' + [X,name] +']';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro printhexaX(X,name)[' + [X,name] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro printhexaX(X,name)[' + [X,name] +']';
_strprinthexaX+=__indent() +'push    ' + (name) + '_c' + '\n';
_strprinthexaX+=__indent() +'#(begin macro)popout8hexa()' + '\n';
_strprinthexaX+=popout8hexa();
_strprinthexaX+=__indent() +'#(end macro)popout8hexa()' + '\n';
_strprinthexaX+=__indent() +'push    ' + (name) + '_s' + '\n';
_strprinthexaX+=__indent() +'#(begin macro)popout8hexa()' + '\n';
_strprinthexaX+=popout8hexa();
_strprinthexaX+=__indent() +'#(end macro)popout8hexa()' + '\n';
for (var xx = 0 ; xx < X ; xx++) {
var xx1; xx1= X-xx-1
_strprinthexaX+=__indent() +'push    ' + (name) + '_' + (xx1) + '' + '\n';
_strprinthexaX+=__indent() +'#(begin macro)popout8hexa()' + '\n';
_strprinthexaX+=popout8hexa();
_strprinthexaX+=__indent() +'#(end macro)popout8hexa()' + '\n';
}
return _strprinthexaX;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# declare temporary X*8 bits value used for signedX.inc macros' + '\n';
var _declareTmpX; _declareTmpX=0;
var declareTmpX = function(X){
 _declareTmpX++;
var _strdeclareTmpX; 
_strdeclareTmpX='';
if (typeof X == 'undefined') throw 'Parameter X is undefined in call of  macro declareTmpX(X)[' + [X] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro declareTmpX(X)[' + [X] +']';
var _xbits; _xbits = X * 8;
var _nDecimal ; _nDecimal = ("" + (Math.pow(2,8*X)-1)).length;
_strdeclareTmpX+=__indent() +'var  _stringDecimal' + (_xbits) + '_*' + (_nDecimal) + '' + '\n';
_strdeclareTmpX+=__indent() +'' + '\n';
return _strdeclareTmpX;
}
_str_main+=__indent() +'#(end include)signedX.inc' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro var32(name) :declare global 32 bits' + '\n';
var _var32; _var32=0;
var var32 = function(name){
 _var32++;
var _strvar32; 
_strvar32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro var32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro var32(name)[' + [name] +']';
_strvar32+=__indent() +'#(begin macro)varX(4,name)' + '\n';
_strvar32+=varX(4,name);
_strvar32+=__indent() +'#(end macro)varX(4,name)' + '\n';
return _strvar32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro lvar32(name) : declare local 32 bits' + '\n';
var _lvar32; _lvar32=0;
var lvar32 = function(name){
 _lvar32++;
var _strlvar32; 
_strlvar32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro lvar32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro lvar32(name)[' + [name] +']';
_strlvar32+=__indent() +'#(begin macro)lvarX(4,name)' + '\n';
_strlvar32+=lvarX(4,name);
_strlvar32+=__indent() +'#(end macro)lvarX(4,name)' + '\n';
return _strlvar32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro fixsv32(name) : be sure that name is positive if equal to zero' + '\n';
var _fixsv32; _fixsv32=0;
var fixsv32 = function(name){
 _fixsv32++;
var _strfixsv32; 
_strfixsv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro fixsv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro fixsv32(name)[' + [name] +']';
_strfixsv32+=__indent() +'#(begin macro)fixsvX(4,name)' + '\n';
_strfixsv32+=fixsvX(4,name);
_strfixsv32+=__indent() +'#(end macro)fixsvX(4,name)' + '\n';
return _strfixsv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro pushv32(name) : push 32 bits name on stack' + '\n';
var _pushv32; _pushv32=0;
var pushv32 = function(name){
 _pushv32++;
var _strpushv32; 
_strpushv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro pushv32(name)[' + [name] +']';
_strpushv32+=__indent() +'#(begin macro)pushvX(4,name)' + '\n';
_strpushv32+=pushvX(4,name);
_strpushv32+=__indent() +'#(end macro)pushvX(4,name)' + '\n';
return _strpushv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro push32(immValue) : push immediate32 bits value on the stack' + '\n';
var _push32; _push32=0;
var push32 = function(immValue){
 _push32++;
var _strpush32; 
_strpush32='';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro push32(immValue)[' + [immValue] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro push32(immValue)[' + [immValue] +']';
_strpush32+=__indent() +'#(begin macro)pushX(4, immValue)' + '\n';
_strpush32+=pushX(4, immValue);
_strpush32+=__indent() +'#(end macro)pushX(4, immValue)' + '\n';
return _strpush32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro dup32() : duplicate 32bits value on stack' + '\n';
var _dup32; _dup32=0;
var dup32 = function(){
 _dup32++;
var _strdup32; 
_strdup32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro dup32()[' + [] +']';
_strdup32+=__indent() +'#(begin macro)dupX(4)' + '\n';
_strdup32+=dupX(4);
_strdup32+=__indent() +'#(end macro)dupX(4)' + '\n';
return _strdup32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro pushsv32(name) : push the sign of the 32 bits variable \'name\'' + '\n';
var _pushsv32; _pushsv32=0;
var pushsv32 = function(name){
 _pushsv32++;
var _strpushsv32; 
_strpushsv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushsv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro pushsv32(name)[' + [name] +']';
_strpushsv32+=__indent() +'#(begin macro)pushsvX(4,name)' + '\n';
_strpushsv32+=pushsvX(4,name);
_strpushsv32+=__indent() +'#(end macro)pushsvX(4,name)' + '\n';
return _strpushsv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro pushcv32(name) : push the carry of the 32 bits variable \'name\'' + '\n';
var _pushcv32; _pushcv32=0;
var pushcv32 = function(name){
 _pushcv32++;
var _strpushcv32; 
_strpushcv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro pushcv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro pushcv32(name)[' + [name] +']';
_strpushcv32+=__indent() +'#(begin macro)pushcvX(4,name)' + '\n';
_strpushcv32+=pushcvX(4,name);
_strpushcv32+=__indent() +'#(end macro)pushcvX(4,name)' + '\n';
return _strpushcv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro popv32(name) : pop the stack to the 32 bits variable \'name\'' + '\n';
var _popv32; _popv32=0;
var popv32 = function(name){
 _popv32++;
var _strpopv32; 
_strpopv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro popv32(name)[' + [name] +']';
_strpopv32+=__indent() +'#(begin macro)popvX(4,name)' + '\n';
_strpopv32+=popvX(4,name);
_strpopv32+=__indent() +'#(end macro)popvX(4,name)' + '\n';
return _strpopv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro popsv32(name) : pop the sign(8 bits 0/1) to the 32 bits variable \'name\'' + '\n';
var _popsv32; _popsv32=0;
var popsv32 = function(name){
 _popsv32++;
var _strpopsv32; 
_strpopsv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popsv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro popsv32(name)[' + [name] +']';
_strpopsv32+=__indent() +'#(begin macro)popsvX(4,name)' + '\n';
_strpopsv32+=popsvX(4,name);
_strpopsv32+=__indent() +'#(end macro)popsvX(4,name)' + '\n';
return _strpopsv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro popcv32(name) : pop the carry(8 bit 0/1) to the 32 bits variable \'name\'' + '\n';
var _popcv32; _popcv32=0;
var popcv32 = function(name){
 _popcv32++;
var _strpopcv32; 
_strpopcv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro popcv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro popcv32(name)[' + [name] +']';
_strpopcv32+=__indent() +'#(begin macro)popcvX(4,name)' + '\n';
_strpopcv32+=popcvX(4,name);
_strpopcv32+=__indent() +'#(end macro)popcvX(4,name)' + '\n';
return _strpopcv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro negv32(name) : name = -name' + '\n';
var _negv32; _negv32=0;
var negv32 = function(name){
 _negv32++;
var _strnegv32; 
_strnegv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro negv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro negv32(name)[' + [name] +']';
_strnegv32+=__indent() +'#(begin macro)negvX(4,name)' + '\n';
_strnegv32+=negvX(4,name);
_strnegv32+=__indent() +'#(end macro)negvX(4,name)' + '\n';
return _strnegv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro absv32(name) : name = abs(name)' + '\n';
var _absv32; _absv32=0;
var absv32 = function(name){
 _absv32++;
var _strabsv32; 
_strabsv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro absv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro absv32(name)[' + [name] +']';
_strabsv32+=__indent() +'#(begin macro)absvX(4,name)' + '\n';
_strabsv32+=absvX(4,name);
_strabsv32+=__indent() +'#(end macro)absvX(4,name)' + '\n';
return _strabsv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro abs32() : 32 bits head of stack = abs(32 bits head of stack)' + '\n';
var _abs32; _abs32=0;
var abs32 = function(){
 _abs32++;
var _strabs32; 
_strabs32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro abs32()[' + [] +']';
_strabs32+=__indent() +'#(begin macro)absX(4)' + '\n';
_strabs32+=absX(4);
_strabs32+=__indent() +'#(end macro)absX(4)' + '\n';
return _strabs32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro neg32() : 32 bits head of stack = - (32 bits head of stack)' + '\n';
var _neg32; _neg32=0;
var neg32 = function(){
 _neg32++;
var _strneg32; 
_strneg32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro neg32()[' + [] +']';
_strneg32+=__indent() +'#(begin macro)negX(4)' + '\n';
_strneg32+=negX(4);
_strneg32+=__indent() +'#(end macro)negX(4)' + '\n';
return _strneg32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro setc32() : set 1 to 32 bits head of stack carry' + '\n';
var _setc32; _setc32=0;
var setc32 = function(){
 _setc32++;
var _strsetc32; 
_strsetc32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro setc32()[' + [] +']';
_strsetc32+=__indent() +'#(begin macro)setcX(4)' + '\n';
_strsetc32+=setcX(4);
_strsetc32+=__indent() +'#(end macro)setcX(4)' + '\n';
return _strsetc32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro setcv32(name) : set 1 to 32 bits variable \'name\' carry' + '\n';
var _setcv32; _setcv32=0;
var setcv32 = function(name){
 _setcv32++;
var _strsetcv32; 
_strsetcv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro setcv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro setcv32(name)[' + [name] +']';
_strsetcv32+=__indent() +'#(begin macro)setcvX(4,name)' + '\n';
_strsetcv32+=setcvX(4,name);
_strsetcv32+=__indent() +'#(end macro)setcvX(4,name)' + '\n';
return _strsetcv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro clearc32() : set 0 to 32 bits head of stack carry' + '\n';
var _clearc32; _clearc32=0;
var clearc32 = function(){
 _clearc32++;
var _strclearc32; 
_strclearc32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro clearc32()[' + [] +']';
_strclearc32+=__indent() +'#(begin macro)clearcX(4)' + '\n';
_strclearc32+=clearcX(4);
_strclearc32+=__indent() +'#(end macro)clearcX(4)' + '\n';
return _strclearc32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro clearcv32(name) : set 0 to 32 bits variable \'name\' carry' + '\n';
var _clearcv32; _clearcv32=0;
var clearcv32 = function(name){
 _clearcv32++;
var _strclearcv32; 
_strclearcv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro clearcv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro clearcv32(name)[' + [name] +']';
_strclearcv32+=__indent() +'#(begin macro)clearcvX(4,name)' + '\n';
_strclearcv32+=clearcvX(4,name);
_strclearcv32+=__indent() +'#(end macro)clearcvX(4,name)' + '\n';
return _strclearcv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro drop32() : drop 32 bits value from stack' + '\n';
var _drop32; _drop32=0;
var drop32 = function(){
 _drop32++;
var _strdrop32; 
_strdrop32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro drop32()[' + [] +']';
_strdrop32+=__indent() +'#(begin macro)dropX(4)' + '\n';
_strdrop32+=dropX(4);
_strdrop32+=__indent() +'#(end macro)dropX(4)' + '\n';
return _strdrop32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro reset32() : reset 32 bits value of the head of stack' + '\n';
var _reset32; _reset32=0;
var reset32 = function(){
 _reset32++;
var _strreset32; 
_strreset32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro reset32()[' + [] +']';
_strreset32+=__indent() +'#(begin macro)resetX(4)' + '\n';
_strreset32+=resetX(4);
_strreset32+=__indent() +'#(end macro)resetX(4)' + '\n';
return _strreset32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro resetv32(name) : reset 32 bits variable \'name\'' + '\n';
var _resetv32; _resetv32=0;
var resetv32 = function(name){
 _resetv32++;
var _strresetv32; 
_strresetv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro resetv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro resetv32(name)[' + [name] +']';
_strresetv32+=__indent() +'#(begin macro)resetvX(4,name)' + '\n';
_strresetv32+=resetvX(4,name);
_strresetv32+=__indent() +'#(end macro)resetvX(4,name)' + '\n';
return _strresetv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro set32(immValue) : set 32 bits value on the head of stack' + '\n';
var _set32; _set32=0;
var set32 = function(immValue){
 _set32++;
var _strset32; 
_strset32='';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro set32(immValue)[' + [immValue] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro set32(immValue)[' + [immValue] +']';
_strset32+=__indent() +'#(begin macro)setX(4,immValue)' + '\n';
_strset32+=setX(4,immValue);
_strset32+=__indent() +'#(end macro)setX(4,immValue)' + '\n';
return _strset32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro setv32(name, immValue) : set 32 bits immediate value to a 32 bits variable \'name\'' + '\n';
var _setv32; _setv32=0;
var setv32 = function(name,immValue){
 _setv32++;
var _strsetv32; 
_strsetv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro setv32(name,immValue)[' + [name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro setv32(name,immValue)[' + [name,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro setv32(name,immValue)[' + [name,immValue] +']';
_strsetv32+=__indent() +'#(begin macro)setvX(4,name, immValue)' + '\n';
_strsetv32+=setvX(4,name, immValue);
_strsetv32+=__indent() +'#(end macro)setvX(4,name, immValue)' + '\n';
return _strsetv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro fixsv32(name) : be sure to have sign to zero if 32 bits variable \'name\' is zero' + '\n';
var _fixsv32; _fixsv32=0;
var fixsv32 = function(name){
 _fixsv32++;
var _strfixsv32; 
_strfixsv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro fixsv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro fixsv32(name)[' + [name] +']';
_strfixsv32+=__indent() +'#(begin macro)fixsvX(4,name)' + '\n';
_strfixsv32+=fixsvX(4,name);
_strfixsv32+=__indent() +'#(end macro)fixsvX(4,name)' + '\n';
return _strfixsv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro fixs32() : be sure to have sign to zero if 32 bits head of stack value is zero' + '\n';
var _fixs32; _fixs32=0;
var fixs32 = function(){
 _fixs32++;
var _strfixs32; 
_strfixs32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro fixs32()[' + [] +']';
_strfixs32+=__indent() +'#(begin macro)fixsX(4)' + '\n';
_strfixs32+=fixsX(4);
_strfixs32+=__indent() +'#(end macro)fixsX(4)' + '\n';
return _strfixs32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro bool32() : same as \'bool\' but with a 32 bits value on stack' + '\n';
var _bool32; _bool32=0;
var bool32 = function(){
 _bool32++;
var _strbool32; 
_strbool32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro bool32()[' + [] +']';
_strbool32+=__indent() +'#(begin macro)boolX(4)' + '\n';
_strbool32+=boolX(4);
_strbool32+=__indent() +'#(end macro)boolX(4)' + '\n';
return _strbool32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro boolv32(name) : push on stack the bool(name) 32 bits' + '\n';
var _boolv32; _boolv32=0;
var boolv32 = function(name){
 _boolv32++;
var _strboolv32; 
_strboolv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro boolv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro boolv32(name)[' + [name] +']';
_strboolv32+=__indent() +'#(begin macro)boolvX(4,name)' + '\n';
_strboolv32+=boolvX(4,name);
_strboolv32+=__indent() +'#(end macro)boolvX(4,name)' + '\n';
return _strboolv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro incv32(name) : name = name +1 (32 bits)' + '\n';
var _incv32; _incv32=0;
var incv32 = function(name){
 _incv32++;
var _strincv32; 
_strincv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro incv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro incv32(name)[' + [name] +']';
_strincv32+=__indent() +'#(begin macro)incvX(4,name)' + '\n';
_strincv32+=incvX(4,name);
_strincv32+=__indent() +'#(end macro)incvX(4,name)' + '\n';
return _strincv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro inc32() : 32 bits head of stack value incremented' + '\n';
var _inc32; _inc32=0;
var inc32 = function(){
 _inc32++;
var _strinc32; 
_strinc32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro inc32()[' + [] +']';
_strinc32+=__indent() +'#(begin macro)incX(4)' + '\n';
_strinc32+=incX(4);
_strinc32+=__indent() +'#(end macro)incX(4)' + '\n';
return _strinc32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro decv32(name) : name-- (32 bits)' + '\n';
var _decv32; _decv32=0;
var decv32 = function(name){
 _decv32++;
var _strdecv32; 
_strdecv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro decv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro decv32(name)[' + [name] +']';
_strdecv32+=__indent() +'#(begin macro)decvX(4,name)' + '\n';
_strdecv32+=decvX(4,name);
_strdecv32+=__indent() +'#(end macro)decvX(4,name)' + '\n';
return _strdecv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro dec32() : 32 bits head of stack value decrement' + '\n';
var _dec32; _dec32=0;
var dec32 = function(){
 _dec32++;
var _strdec32; 
_strdec32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro dec32()[' + [] +']';
_strdec32+=__indent() +'#(begin macro)decX(4)' + '\n';
_strdec32+=decX(4);
_strdec32+=__indent() +'#(end macro)decX(4)' + '\n';
return _strdec32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addvi32(name, immValue) : name += immediate value' + '\n';
var _addvi32; _addvi32=0;
var addvi32 = function(name,immValue){
 _addvi32++;
var _straddvi32; 
_straddvi32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvi32(name,immValue)[' + [name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro addvi32(name,immValue)[' + [name,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro addvi32(name,immValue)[' + [name,immValue] +']';
_straddvi32+=__indent() +'#(begin macro)addviX(4,name,immValue)' + '\n';
_straddvi32+=addviX(4,name,immValue);
_straddvi32+=__indent() +'#(end macro)addviX(4,name,immValue)' + '\n';
return _straddvi32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addi32(immValue) : 32 bits head of stack value += immediate value' + '\n';
var _addi32; _addi32=0;
var addi32 = function(immValue){
 _addi32++;
var _straddi32; 
_straddi32='';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro addi32(immValue)[' + [immValue] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addi32(immValue)[' + [immValue] +']';
_straddi32+=__indent() +'#(begin macro)addiX(4,immValue)' + '\n';
_straddi32+=addiX(4,immValue);
_straddi32+=__indent() +'#(end macro)addiX(4,immValue)' + '\n';
return _straddi32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subvi32(name, immValue) : name -= immediate value' + '\n';
var _subvi32; _subvi32=0;
var subvi32 = function(name,immValue){
 _subvi32++;
var _strsubvi32; 
_strsubvi32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvi32(name,immValue)[' + [name,immValue] +']';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro subvi32(name,immValue)[' + [name,immValue] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subvi32(name,immValue)[' + [name,immValue] +']';
_strsubvi32+=__indent() +'#(begin macro)subviX(4,name,immValue)' + '\n';
_strsubvi32+=subviX(4,name,immValue);
_strsubvi32+=__indent() +'#(end macro)subviX(4,name,immValue)' + '\n';
return _strsubvi32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subi32(immValue) : 32 bits head of stack value -= immediate value' + '\n';
var _subi32; _subi32=0;
var subi32 = function(immValue){
 _subi32++;
var _strsubi32; 
_strsubi32='';
if (typeof immValue == 'undefined') throw 'Parameter immValue is undefined in call of  macro subi32(immValue)[' + [immValue] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro subi32(immValue)[' + [immValue] +']';
_strsubi32+=__indent() +'#(begin macro)subiX(4,immValue)' + '\n';
_strsubi32+=subiX(4,immValue);
_strsubi32+=__indent() +'#(end macro)subiX(4,immValue)' + '\n';
return _strsubi32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addvvv32(name, nameA, nameB) : name = nameA + nameB' + '\n';
var _addvvv32; _addvvv32=0;
var addvvv32 = function(name, nameA, nameB){
 _addvvv32++;
var _straddvvv32; 
_straddvvv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro addvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro addvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
_straddvvv32+=__indent() +'#(begin macro)addvvvX(4,name,nameA,nameB)' + '\n';
_straddvvv32+=addvvvX(4,name,nameA,nameB);
_straddvvv32+=__indent() +'#(end macro)addvvvX(4,name,nameA,nameB)' + '\n';
return _straddvvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addvv32(name, nameA) : name += nameA' + '\n';
var _addvv32; _addvv32=0;
var addvv32 = function(name, nameA){
 _addvv32++;
var _straddvv32; 
_straddvv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro addvv32(name, nameA)[' + [name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addvv32(name, nameA)[' + [name, nameA] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro addvv32(name, nameA)[' + [name, nameA] +']';
_straddvv32+=__indent() +'#(begin macro)addvvX(4,name,nameA)' + '\n';
_straddvv32+=addvvX(4,name,nameA);
_straddvv32+=__indent() +'#(end macro)addvvX(4,name,nameA)' + '\n';
return _straddvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro addv32(nameA) : head stack += nameA' + '\n';
var _addv32; _addv32=0;
var addv32 = function(nameA){
 _addv32++;
var _straddv32; 
_straddv32='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addv32(nameA)[' + [nameA] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addv32(nameA)[' + [nameA] +']';
_straddv32+=__indent() +'#(begin macro)addvX(4,nameA)' + '\n';
_straddv32+=addvX(4,nameA);
_straddv32+=__indent() +'#(end macro)addvX(4,nameA)' + '\n';
return _straddv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro add32() : stack-1 = stack-1 + stack ; stack--' + '\n';
var _add32; _add32=0;
var add32 = function(){
 _add32++;
var _stradd32; 
_stradd32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro add32()[' + [] +']';
_stradd32+=__indent() +'#(begin macro)addX(4)' + '\n';
_stradd32+=addX(4);
_stradd32+=__indent() +'#(end macro)addX(4)' + '\n';
return _stradd32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subvvv32(name, nameA, nameB) : name = nameA - nameB' + '\n';
var _subvvv32; _subvvv32=0;
var subvvv32 = function(name, nameA, nameB){
 _subvvv32++;
var _strsubvvv32; 
_strsubvvv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro subvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro subvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro subvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
_strsubvvv32+=__indent() +'#(begin macro)subvvvX(4,name,nameA,nameB)' + '\n';
_strsubvvv32+=subvvvX(4,name,nameA,nameB);
_strsubvvv32+=__indent() +'#(end macro)subvvvX(4,name,nameA,nameB)' + '\n';
return _strsubvvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subvv32(name, nameA) : name -= nameA' + '\n';
var _subvv32; _subvv32=0;
var subvv32 = function(name, nameA){
 _subvv32++;
var _strsubvv32; 
_strsubvv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro subvv32(name, nameA)[' + [name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro subvv32(name, nameA)[' + [name, nameA] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro subvv32(name, nameA)[' + [name, nameA] +']';
_strsubvv32+=__indent() +'#(begin macro)subvvX(4,name,nameA)' + '\n';
_strsubvv32+=subvvX(4,name,nameA);
_strsubvv32+=__indent() +'#(end macro)subvvX(4,name,nameA)' + '\n';
return _strsubvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro subv32(nameA) : head stack -= nameA' + '\n';
var _addv32; _addv32=0;
var addv32 = function(nameA){
 _addv32++;
var _straddv32; 
_straddv32='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro addv32(nameA)[' + [nameA] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro addv32(nameA)[' + [nameA] +']';
_straddv32+=__indent() +'#(begin macro)addvX(4,nameA)' + '\n';
_straddv32+=addvX(4,nameA);
_straddv32+=__indent() +'#(end macro)addvX(4,nameA)' + '\n';
return _straddv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro sub32() : stack-1 = stack-1 - stack ; stack--' + '\n';
var _sub32; _sub32=0;
var sub32 = function(){
 _sub32++;
var _strsub32; 
_strsub32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro sub32()[' + [] +']';
_strsub32+=__indent() +'#(begin macro)subX(4)' + '\n';
_strsub32+=subX(4);
_strsub32+=__indent() +'#(end macro)subX(4)' + '\n';
return _strsub32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro mulvvv32(name, nameA, nameB) : name = nameA * nameB' + '\n';
var _mulvvv32; _mulvvv32=0;
var mulvvv32 = function(name, nameA, nameB){
 _mulvvv32++;
var _strmulvvv32; 
_strmulvvv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro mulvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro mulvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
if (arguments.length != 3) throw 'Too much arguments provided to macro mulvvv32(name, nameA, nameB)[' + [name, nameA, nameB] +']';
_strmulvvv32+=__indent() +'#(begin macro)mulvvvX(4, name, nameA, nameB)' + '\n';
_strmulvvv32+=mulvvvX(4, name, nameA, nameB);
_strmulvvv32+=__indent() +'#(end macro)mulvvvX(4, name, nameA, nameB)' + '\n';
return _strmulvvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro mulvv32(name, nameA) : name *= nameA' + '\n';
var _mulvv32; _mulvv32=0;
var mulvv32 = function(name, nameA){
 _mulvv32++;
var _strmulvv32; 
_strmulvv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulvv32(name, nameA)[' + [name, nameA] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro mulvv32(name, nameA)[' + [name, nameA] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro mulvv32(name, nameA)[' + [name, nameA] +']';
_strmulvv32+=__indent() +'#(begin macro)mulvvX(4,name,nameA)' + '\n';
_strmulvv32+=mulvvX(4,name,nameA);
_strmulvv32+=__indent() +'#(end macro)mulvvX(4,name,nameA)' + '\n';
return _strmulvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro mulv32(name) : head of stack *= name' + '\n';
var _mulv32; _mulv32=0;
var mulv32 = function(name){
 _mulv32++;
var _strmulv32; 
_strmulv32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro mulv32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro mulv32(name)[' + [name] +']';
_strmulv32+=__indent() +'#(begin macro)mulvX(4,name)' + '\n';
_strmulv32+=mulvX(4,name);
_strmulv32+=__indent() +'#(end macro)mulvX(4,name)' + '\n';
return _strmulv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro mul32() : stack-1 = stack-1 * stack : stack--' + '\n';
var _mul32; _mul32=0;
var mul32 = function(){
 _mul32++;
var _strmul32; 
_strmul32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro mul32()[' + [] +']';
_strmul32+=__indent() +'#(begin macro)mulX(4)' + '\n';
_strmul32+=mulX(4);
_strmul32+=__indent() +'#(end macro)mulX(4)' + '\n';
return _strmul32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro equalvv32(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise' + '\n';
var _equalvv32; _equalvv32=0;
var equalvv32 = function(nameA, nameB){
 _equalvv32++;
var _strequalvv32; 
_strequalvv32='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro equalvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro equalvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro equalvv32(nameA, nameB)[' + [nameA, nameB] +']';
_strequalvv32+=__indent() +'#(begin macro)equalvvX(4, nameA, nameB)' + '\n';
_strequalvv32+=equalvvX(4, nameA, nameB);
_strequalvv32+=__indent() +'#(end macro)equalvvX(4, nameA, nameB)' + '\n';
return _strequalvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro equal32() : same as "equal" but with 32 bits value in stack' + '\n';
var _equal32; _equal32=0;
var equal32 = function(){
 _equal32++;
var _strequal32; 
_strequal32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro equal32()[' + [] +']';
_strequal32+=__indent() +'#(begin macro)equalX(4)' + '\n';
_strequal32+=equalX(4);
_strequal32+=__indent() +'#(end macro)equalX(4)' + '\n';
return _strequal32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro diffvv32(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise' + '\n';
var _diffvv32; _diffvv32=0;
var diffvv32 = function(nameA, nameB){
 _diffvv32++;
var _strdiffvv32; 
_strdiffvv32='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro diffvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro diffvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro diffvv32(nameA, nameB)[' + [nameA, nameB] +']';
_strdiffvv32+=__indent() +'#(begin macro)diffvvX(4, nameA, nameB)' + '\n';
_strdiffvv32+=diffvvX(4, nameA, nameB);
_strdiffvv32+=__indent() +'#(end macro)diffvvX(4, nameA, nameB)' + '\n';
return _strdiffvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro diff32() : same as "diff" but with 32 bits value in stack' + '\n';
var _diff32; _diff32=0;
var diff32 = function(){
 _diff32++;
var _strdiff32; 
_strdiff32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro diff32()[' + [] +']';
_strdiff32+=__indent() +'#(begin macro)diffX(4)' + '\n';
_strdiff32+=diffX(4);
_strdiff32+=__indent() +'#(end macro)diffX(4)' + '\n';
return _strdiff32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro supequalvv32(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise' + '\n';
var _supequalvv32; _supequalvv32=0;
var supequalvv32 = function(nameA, nameB){
 _supequalvv32++;
var _strsupequalvv32; 
_strsupequalvv32='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro supequalvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro supequalvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro supequalvv32(nameA, nameB)[' + [nameA, nameB] +']';
_strsupequalvv32+=__indent() +'#(begin macro)supequalvvX(4,nameA, nameB)' + '\n';
_strsupequalvv32+=supequalvvX(4,nameA, nameB);
_strsupequalvv32+=__indent() +'#(end macro)supequalvvX(4,nameA, nameB)' + '\n';
return _strsupequalvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro supequal32() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 32 bits value from stack' + '\n';
var _supequal32; _supequal32=0;
var supequal32 = function(){
 _supequal32++;
var _strsupequal32; 
_strsupequal32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro supequal32()[' + [] +']';
_strsupequal32+=__indent() +'#(begin macro)supequalX(4)' + '\n';
_strsupequal32+=supequalX(4);
_strsupequal32+=__indent() +'#(end macro)supequalX(4)' + '\n';
return _strsupequal32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro infvv32(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise' + '\n';
var _infvv32; _infvv32=0;
var infvv32 = function(nameA, nameB){
 _infvv32++;
var _strinfvv32; 
_strinfvv32='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro infvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro infvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro infvv32(nameA, nameB)[' + [nameA, nameB] +']';
_strinfvv32+=__indent() +'#(begin macro)infvvX(4, nameA, nameB)' + '\n';
_strinfvv32+=infvvX(4, nameA, nameB);
_strinfvv32+=__indent() +'#(end macro)infvvX(4, nameA, nameB)' + '\n';
return _strinfvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro inf32() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 32 bits value from stack' + '\n';
var _inf32; _inf32=0;
var inf32 = function(){
 _inf32++;
var _strinf32; 
_strinf32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro inf32()[' + [] +']';
_strinf32+=__indent() +'#(begin macro)infX(4)' + '\n';
_strinf32+=infX(4);
_strinf32+=__indent() +'#(end macro)infX(4)' + '\n';
return _strinf32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro infequalvv32(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise' + '\n';
var _infequalvv32; _infequalvv32=0;
var infequalvv32 = function(nameA, nameB){
 _infequalvv32++;
var _strinfequalvv32; 
_strinfequalvv32='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro infequalvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro infequalvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro infequalvv32(nameA, nameB)[' + [nameA, nameB] +']';
_strinfequalvv32+=__indent() +'#(begin macro)infequalvvX(4,nameA,nameB)' + '\n';
_strinfequalvv32+=infequalvvX(4,nameA,nameB);
_strinfequalvv32+=__indent() +'#(end macro)infequalvvX(4,nameA,nameB)' + '\n';
return _strinfequalvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro infequal32() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 32 bits value from stack' + '\n';
var _infequal32; _infequal32=0;
var infequal32 = function(){
 _infequal32++;
var _strinfequal32; 
_strinfequal32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro infequal32()[' + [] +']';
_strinfequal32+=__indent() +'#(begin macro)infequalX(4)' + '\n';
_strinfequal32+=infequalX(4);
_strinfequal32+=__indent() +'#(end macro)infequalX(4)' + '\n';
return _strinfequal32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro supvv32(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise' + '\n';
var _supvv32; _supvv32=0;
var supvv32 = function(nameA, nameB){
 _supvv32++;
var _strsupvv32; 
_strsupvv32='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro supvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro supvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro supvv32(nameA, nameB)[' + [nameA, nameB] +']';
_strsupvv32+=__indent() +'#(begin macro)supvvX(4,nameA,nameB)' + '\n';
_strsupvv32+=supvvX(4,nameA,nameB);
_strsupvv32+=__indent() +'#(end macro)supvvX(4,nameA,nameB)' + '\n';
return _strsupvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro sup32() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 32 bits value from stack' + '\n';
var _sup32; _sup32=0;
var sup32 = function(){
 _sup32++;
var _strsup32; 
_strsup32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro sup32()[' + [] +']';
_strsup32+=__indent() +'#(begin macro)supX(4)' + '\n';
_strsup32+=supX(4);
_strsup32+=__indent() +'#(end macro)supX(4)' + '\n';
return _strsup32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro divvvvv32(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB' + '\n';
var _divvvvv32; _divvvvv32=0;
var divvvvv32 = function(nameAdivB, nameAmodB, nameA, nameB){
 _divvvvv32++;
var _strdivvvvv32; 
_strdivvvvv32='';
if (typeof nameAdivB == 'undefined') throw 'Parameter nameAdivB is undefined in call of  macro divvvvv32(nameAdivB, nameAmodB, nameA, nameB)[' + [nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameAmodB == 'undefined') throw 'Parameter nameAmodB is undefined in call of  macro divvvvv32(nameAdivB, nameAmodB, nameA, nameB)[' + [nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro divvvvv32(nameAdivB, nameAmodB, nameA, nameB)[' + [nameAdivB, nameAmodB, nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro divvvvv32(nameAdivB, nameAmodB, nameA, nameB)[' + [nameAdivB, nameAmodB, nameA, nameB] +']';
if (arguments.length != 4) throw 'Too much arguments provided to macro divvvvv32(nameAdivB, nameAmodB, nameA, nameB)[' + [nameAdivB, nameAmodB, nameA, nameB] +']';
_strdivvvvv32+=__indent() +'#(begin macro)divvvvvX(4,nameAdivB, nameAmodB, nameA, nameB)' + '\n';
_strdivvvvv32+=divvvvvX(4,nameAdivB, nameAmodB, nameA, nameB);
_strdivvvvv32+=__indent() +'#(end macro)divvvvvX(4,nameAdivB, nameAmodB, nameA, nameB)' + '\n';
return _strdivvvvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro divvv32(nameA, nameB) : Push 2 32 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB' + '\n';
var _divvv32; _divvv32=0;
var divvv32 = function(nameA, nameB){
 _divvv32++;
var _strdivvv32; 
_strdivvv32='';
if (typeof nameA == 'undefined') throw 'Parameter nameA is undefined in call of  macro divvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (typeof nameB == 'undefined') throw 'Parameter nameB is undefined in call of  macro divvv32(nameA, nameB)[' + [nameA, nameB] +']';
if (arguments.length != 2) throw 'Too much arguments provided to macro divvv32(nameA, nameB)[' + [nameA, nameB] +']';
_strdivvv32+=__indent() +'#(begin macro)divvvX(4,nameA,nameB)' + '\n';
_strdivvv32+=divvvX(4,nameA,nameB);
_strdivvv32+=__indent() +'#(end macro)divvvX(4,nameA,nameB)' + '\n';
return _strdivvv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro div32() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B' + '\n';
var _div32; _div32=0;
var div32 = function(){
 _div32++;
var _strdiv32; 
_strdiv32='';
if (arguments.length != 0) throw 'Too much arguments provided to macro div32()[' + [] +']';
_strdiv32+=__indent() +'#(begin macro)divX(4)' + '\n';
_strdiv32+=divX(4);
_strdiv32+=__indent() +'#(end macro)divX(4)' + '\n';
return _strdiv32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro write32(name) : print out the decimal value (signed)' + '\n';
var _write32; _write32=0;
var write32 = function(name){
 _write32++;
var _strwrite32; 
_strwrite32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro write32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro write32(name)[' + [name] +']';
_strwrite32+=__indent() +'#(begin macro)writeX(4,name)' + '\n';
_strwrite32+=writeX(4,name);
_strwrite32+=__indent() +'#(end macro)writeX(4,name)' + '\n';
return _strwrite32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'# macro printhexa32(name) : print the 32 bit variable in hexadecimal' + '\n';
var _printhexa32; _printhexa32=0;
var printhexa32 = function(name){
 _printhexa32++;
var _strprinthexa32; 
_strprinthexa32='';
if (typeof name == 'undefined') throw 'Parameter name is undefined in call of  macro printhexa32(name)[' + [name] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro printhexa32(name)[' + [name] +']';
_strprinthexa32+=__indent() +'#(begin macro)printhexaX(4,name)' + '\n';
_strprinthexa32+=printhexaX(4,name);
_strprinthexa32+=__indent() +'#(end macro)printhexaX(4,name)' + '\n';
return _strprinthexa32;
}
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'#(begin macro)declareTmpX(4)' + '\n';
_str_main+=declareTmpX(4);
_str_main+=__indent() +'#(end macro)declareTmpX(4)' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'#(end include)../include/signedX32.inc' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'#(begin macro)print("Brainfuck Fibonacci with 32bits signed integer\\n")' + '\n';
_str_main+=print("Brainfuck Fibonacci with 32bits signed integer\n");
_str_main+=__indent() +'#(end macro)print("Brainfuck Fibonacci with 32bits signed integer\\n")' + '\n';
_str_main+=__indent() +'#(begin macro)print("Slowness is due to the memory to decimal display routine\\n")' + '\n';
_str_main+=print("Slowness is due to the memory to decimal display routine\n");
_str_main+=__indent() +'#(end macro)print("Slowness is due to the memory to decimal display routine\\n")' + '\n';
_str_main+=__indent() +'#(begin macro)print("Show Fibonacci numbers from 0 to 39\\n\\n")' + '\n';
_str_main+=print("Show Fibonacci numbers from 0 to 39\n\n");
_str_main+=__indent() +'#(end macro)print("Show Fibonacci numbers from 0 to 39\\n\\n")' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'#(begin macro)var32   fiboN' + '\n';
_str_main+=var32(((isNaN(('fiboN')*1))?('fiboN'):(('fiboN')*1)));
_str_main+=__indent() +'#(end macro)var32   fiboN' + '\n';
_str_main+=__indent() +'#(begin macro)setv32  fiboN,  0' + '\n';
_str_main+=setv32(((isNaN(('fiboN')*1))?('fiboN'):(('fiboN')*1)),((isNaN(('0')*1))?('0'):(('0')*1)));
_str_main+=__indent() +'#(end macro)setv32  fiboN,  0' + '\n';
_str_main+=__indent() +'push    1' + '\n';
_str_main+=__indent() +'sbm     looper' + '\n';
_str_main+=__indent() +'while' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)pushv32 fiboN' + '\n';
_str_main+=pushv32(((isNaN(('fiboN')*1))?('fiboN'):(('fiboN')*1)));
_str_main+=__indent() +'#(end macro)pushv32 fiboN' + '\n';
_str_main+=__indent() +'#(begin macro)push32  40   # from 0 to 39' + '\n';
_str_main+=push32(((isNaN(('40')*1))?('40'):(('40')*1)));
_str_main+=__indent() +'#(end macro)push32  40   # from 0 to 39' + '\n';
_str_main+=__indent() +'#(begin macro)diff32' + '\n';
_str_main+=diff32();
_str_main+=__indent() +'#(end macro)diff32' + '\n';
_str_main+=__indent() +'if' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)scope_begin' + '\n';
_str_main+=scope_begin();
_str_main+=__indent() +'#(end macro)scope_begin' + '\n';
_str_main+=__indent() +'#(begin macro)lvar32  N' + '\n';
_str_main+=lvar32(((isNaN(('N')*1))?('N'):(('N')*1)));
_str_main+=__indent() +'#(end macro)lvar32  N' + '\n';
_str_main+=__indent() +'#(begin macro)lvar32  cnt' + '\n';
_str_main+=lvar32(((isNaN(('cnt')*1))?('cnt'):(('cnt')*1)));
_str_main+=__indent() +'#(end macro)lvar32  cnt' + '\n';
_str_main+=__indent() +'#(begin macro)lvar32  result' + '\n';
_str_main+=lvar32(((isNaN(('result')*1))?('result'):(('result')*1)));
_str_main+=__indent() +'#(end macro)lvar32  result' + '\n';
_str_main+=__indent() +'#(begin macro)lvar32  oldResult' + '\n';
_str_main+=lvar32(((isNaN(('oldResult')*1))?('oldResult'):(('oldResult')*1)));
_str_main+=__indent() +'#(end macro)lvar32  oldResult' + '\n';
_str_main+=__indent() +'#(begin macro)lvar32  preOldResult' + '\n';
_str_main+=lvar32(((isNaN(('preOldResult')*1))?('preOldResult'):(('preOldResult')*1)));
_str_main+=__indent() +'#(end macro)lvar32  preOldResult' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'#(begin macro)pushv32 fiboN' + '\n';
_str_main+=pushv32(((isNaN(('fiboN')*1))?('fiboN'):(('fiboN')*1)));
_str_main+=__indent() +'#(end macro)pushv32 fiboN' + '\n';
_str_main+=__indent() +'#(begin macro)popv32  N' + '\n';
_str_main+=popv32(((isNaN(('N')*1))?('N'):(('N')*1)));
_str_main+=__indent() +'#(end macro)popv32  N' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'#(begin macro)pushv32 N' + '\n';
_str_main+=pushv32(((isNaN(('N')*1))?('N'):(('N')*1)));
_str_main+=__indent() +'#(end macro)pushv32 N' + '\n';
_str_main+=__indent() +'#(begin macro)push32  0' + '\n';
_str_main+=push32(((isNaN(('0')*1))?('0'):(('0')*1)));
_str_main+=__indent() +'#(end macro)push32  0' + '\n';
_str_main+=__indent() +'#(begin macro)infequal32' + '\n';
_str_main+=infequal32();
_str_main+=__indent() +'#(end macro)infequal32' + '\n';
_str_main+=__indent() +'if' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)print("f[")' + '\n';
_str_main+=print("f[");
_str_main+=__indent() +'#(end macro)print("f[")' + '\n';
_str_main+=__indent() +'#(begin macro)write32 N' + '\n';
_str_main+=write32(((isNaN(('N')*1))?('N'):(('N')*1)));
_str_main+=__indent() +'#(end macro)write32 N' + '\n';
_str_main+=__indent() +'#(begin macro)print("]=0\\n")' + '\n';
_str_main+=print("]=0\n");
_str_main+=__indent() +'#(end macro)print("]=0\\n")' + '\n';
__blockLevel__--;
_str_main+=__indent() +'else' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)pushv32 N' + '\n';
_str_main+=pushv32(((isNaN(('N')*1))?('N'):(('N')*1)));
_str_main+=__indent() +'#(end macro)pushv32 N' + '\n';
_str_main+=__indent() +'#(begin macro)push32  3' + '\n';
_str_main+=push32(((isNaN(('3')*1))?('3'):(('3')*1)));
_str_main+=__indent() +'#(end macro)push32  3' + '\n';
_str_main+=__indent() +'#(begin macro)inf32' + '\n';
_str_main+=inf32();
_str_main+=__indent() +'#(end macro)inf32' + '\n';
_str_main+=__indent() +'if' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)print("f[")' + '\n';
_str_main+=print("f[");
_str_main+=__indent() +'#(end macro)print("f[")' + '\n';
_str_main+=__indent() +'#(begin macro)write32 N' + '\n';
_str_main+=write32(((isNaN(('N')*1))?('N'):(('N')*1)));
_str_main+=__indent() +'#(end macro)write32 N' + '\n';
_str_main+=__indent() +'#(begin macro)print("]=1\\n")' + '\n';
_str_main+=print("]=1\n");
_str_main+=__indent() +'#(end macro)print("]=1\\n")' + '\n';
__blockLevel__--;
_str_main+=__indent() +'else' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)setv32  result, 0' + '\n';
_str_main+=setv32(((isNaN(('result')*1))?('result'):(('result')*1)),((isNaN(('0')*1))?('0'):(('0')*1)));
_str_main+=__indent() +'#(end macro)setv32  result, 0' + '\n';
_str_main+=__indent() +'#(begin macro)setv32  oldResult, 1' + '\n';
_str_main+=setv32(((isNaN(('oldResult')*1))?('oldResult'):(('oldResult')*1)),((isNaN(('1')*1))?('1'):(('1')*1)));
_str_main+=__indent() +'#(end macro)setv32  oldResult, 1' + '\n';
_str_main+=__indent() +'#(begin macro)setv32  preOldResult,   1' + '\n';
_str_main+=setv32(((isNaN(('preOldResult')*1))?('preOldResult'):(('preOldResult')*1)),((isNaN(('1')*1))?('1'):(('1')*1)));
_str_main+=__indent() +'#(end macro)setv32  preOldResult,   1' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'#(begin macro)pushv32 N' + '\n';
_str_main+=pushv32(((isNaN(('N')*1))?('N'):(('N')*1)));
_str_main+=__indent() +'#(end macro)pushv32 N' + '\n';
_str_main+=__indent() +'#(begin macro)push32  2' + '\n';
_str_main+=push32(((isNaN(('2')*1))?('2'):(('2')*1)));
_str_main+=__indent() +'#(end macro)push32  2' + '\n';
_str_main+=__indent() +'#(begin macro)sub32' + '\n';
_str_main+=sub32();
_str_main+=__indent() +'#(end macro)sub32' + '\n';
_str_main+=__indent() +'#(begin macro)popv32  cnt' + '\n';
_str_main+=popv32(((isNaN(('cnt')*1))?('cnt'):(('cnt')*1)));
_str_main+=__indent() +'#(end macro)popv32  cnt' + '\n';
_str_main+=__indent() +'push    1' + '\n';
_str_main+=__indent() +'sbm     looper2' + '\n';
_str_main+=__indent() +'while' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)pushv32 cnt' + '\n';
_str_main+=pushv32(((isNaN(('cnt')*1))?('cnt'):(('cnt')*1)));
_str_main+=__indent() +'#(end macro)pushv32 cnt' + '\n';
_str_main+=__indent() +'#(begin macro)push32  0' + '\n';
_str_main+=push32(((isNaN(('0')*1))?('0'):(('0')*1)));
_str_main+=__indent() +'#(end macro)push32  0' + '\n';
_str_main+=__indent() +'#(begin macro)equal32' + '\n';
_str_main+=equal32();
_str_main+=__indent() +'#(end macro)equal32' + '\n';
_str_main+=__indent() +'if' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)at_reset    looper2' + '\n';
_str_main+=at_reset(((isNaN(('looper2')*1))?('looper2'):(('looper2')*1)));
_str_main+=__indent() +'#(end macro)at_reset    looper2' + '\n';
__blockLevel__--;
_str_main+=__indent() +'else' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)addvvv32    result, preOldResult,   oldResult' + '\n';
_str_main+=addvvv32(((isNaN(('result')*1))?('result'):(('result')*1)),((isNaN(('preOldResult')*1))?('preOldResult'):(('preOldResult')*1)),((isNaN(('oldResult')*1))?('oldResult'):(('oldResult')*1)));
_str_main+=__indent() +'#(end macro)addvvv32    result, preOldResult,   oldResult' + '\n';
_str_main+=__indent() +'#(begin macro)pushv32     oldResult' + '\n';
_str_main+=pushv32(((isNaN(('oldResult')*1))?('oldResult'):(('oldResult')*1)));
_str_main+=__indent() +'#(end macro)pushv32     oldResult' + '\n';
_str_main+=__indent() +'#(begin macro)popv32      preOldResult' + '\n';
_str_main+=popv32(((isNaN(('preOldResult')*1))?('preOldResult'):(('preOldResult')*1)));
_str_main+=__indent() +'#(end macro)popv32      preOldResult' + '\n';
_str_main+=__indent() +'#(begin macro)pushv32     result' + '\n';
_str_main+=pushv32(((isNaN(('result')*1))?('result'):(('result')*1)));
_str_main+=__indent() +'#(end macro)pushv32     result' + '\n';
_str_main+=__indent() +'#(begin macro)popv32      oldResult' + '\n';
_str_main+=popv32(((isNaN(('oldResult')*1))?('oldResult'):(('oldResult')*1)));
_str_main+=__indent() +'#(end macro)popv32      oldResult' + '\n';
_str_main+=__indent() +'#(begin macro)decv32      cnt' + '\n';
_str_main+=decv32(((isNaN(('cnt')*1))?('cnt'):(('cnt')*1)));
_str_main+=__indent() +'#(end macro)decv32      cnt' + '\n';
__blockLevel__--;
_str_main+=__indent() +'fi' + '\n';
__blockLevel__--;
_str_main+=__indent() +'wend' + '\n';
_str_main+=__indent() +'#(begin macro)print("f[")' + '\n';
_str_main+=print("f[");
_str_main+=__indent() +'#(end macro)print("f[")' + '\n';
_str_main+=__indent() +'#(begin macro)write32 N' + '\n';
_str_main+=write32(((isNaN(('N')*1))?('N'):(('N')*1)));
_str_main+=__indent() +'#(end macro)write32 N' + '\n';
_str_main+=__indent() +'#(begin macro)print("]=")' + '\n';
_str_main+=print("]=");
_str_main+=__indent() +'#(end macro)print("]=")' + '\n';
_str_main+=__indent() +'#(begin macro)write32 result' + '\n';
_str_main+=write32(((isNaN(('result')*1))?('result'):(('result')*1)));
_str_main+=__indent() +'#(end macro)write32 result' + '\n';
_str_main+=__indent() +'#(begin macro)print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+=__indent() +'#(end macro)print("\\n")' + '\n';
__blockLevel__--;
_str_main+=__indent() +'fi' + '\n';
__blockLevel__--;
_str_main+=__indent() +'fi' + '\n';
_str_main+=__indent() +'#(begin macro)scope_end' + '\n';
_str_main+=scope_end();
_str_main+=__indent() +'#(end macro)scope_end' + '\n';
_str_main+=__indent() +'#(begin macro)incv32  fiboN' + '\n';
_str_main+=incv32(((isNaN(('fiboN')*1))?('fiboN'):(('fiboN')*1)));
_str_main+=__indent() +'#(end macro)incv32  fiboN' + '\n';
__blockLevel__--;
_str_main+=__indent() +'else' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)at_reset    looper # break main loop' + '\n';
_str_main+=at_reset(((isNaN(('looper')*1))?('looper'):(('looper')*1)));
_str_main+=__indent() +'#(end macro)at_reset    looper # break main loop' + '\n';
__blockLevel__--;
_str_main+=__indent() +'fi' + '\n';
__blockLevel__--;
_str_main+=__indent() +'wend' + '\n';
return _str_main;
}
_main();
