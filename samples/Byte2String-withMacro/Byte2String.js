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
_str_main+=__indent() +'#    ____        _         ____    ____  _        _' + '\n';
_str_main+=__indent() +'#   | __ ) _   _| |_ ___  |___ \\  / ___|| |_ _ __(_)_ __   __ _' + '\n';
_str_main+=__indent() +'#   |  _ \\| | | | __/ _ \\   __) | \\___ \\| __| \'__| | \'_ \\ / _` |' + '\n';
_str_main+=__indent() +'#   | |_) | |_| | ||  __/  / __/   ___) | |_| |  | | | | | (_| |' + '\n';
_str_main+=__indent() +'#   |____/ \\__, |\\__\\___| |_____| |____/ \\__|_|  |_|_| |_|\\__, |' + '\n';
_str_main+=__indent() +'#          |___/                                          |___/' + '\n';
_str_main+=__indent() +'# Read input byte and output it as decimal number string separated by comma' + '\n';
_str_main+=__indent() +'# this sample do use macro' + '\n';
_str_main+=__indent() +'# this version does not keep \'0\' prefix' + '\n';
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
_str_main+=__indent() +'' + '\n';
var _writeDigit; _writeDigit=0;
var writeDigit = function(a){
 _writeDigit++;
var _strwriteDigit; 
_strwriteDigit='';
if (typeof a == 'undefined') throw 'Parameter a is undefined in call of  macro writeDigit(a)[' + [a] +']';
if (arguments.length != 1) throw 'Too much arguments provided to macro writeDigit(a)[' + [a] +']';
_strwriteDigit+=__indent() +'push    ' + (a) + '' + '\n';
_strwriteDigit+=__indent() +'add     \'0\'' + '\n';
_strwriteDigit+=__indent() +'pop     out' + '\n';
return _strwriteDigit;
}
_str_main+=__indent() +'' + '\n';
var DECIMALSIZE;DECIMALSIZE='3'; DECIMALSIZE=(isNaN(DECIMALSIZE*1))?(DECIMALSIZE):(DECIMALSIZE*1); 
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'var input' + '\n';
_str_main+=__indent() +'var output*' + (DECIMALSIZE) + '' + '\n';
_str_main+=__indent() +'' + '\n';
_str_main+=__indent() +'push    1' + '\n';
_str_main+=__indent() +'sbm count' + '\n';
_str_main+=__indent() +'while' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)at_in("input")' + '\n';
_str_main+=at_in("input");
_str_main+=__indent() +'#(end macro)at_in("input")' + '\n';
_str_main+=__indent() +'#(begin macro)if_equal("count",1)' + '\n';
_str_main+=if_equal("count",1);
_str_main+=__indent() +'#(end macro)if_equal("count",1)' + '\n';
_str_main+=__indent() +'#(begin macro)at_set("count",2)' + '\n';
_str_main+=at_set("count",2);
_str_main+=__indent() +'#(end macro)at_set("count",2)' + '\n';
__blockLevel__--;
_str_main+=__indent() +'else' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)write("\',\'")' + '\n';
_str_main+=write("','");
_str_main+=__indent() +'#(end macro)write("\',\'")' + '\n';
__blockLevel__--;
_str_main+=__indent() +'fi' + '\n';
_str_main+=__indent() +'push ' + (DECIMALSIZE) + '' + '\n';
_str_main+=__indent() +'loop' + '\n';
__blockLevel__++;
_str_main+=__indent() +'# output = input mod 10 ; input = input div 10' + '\n';
_str_main+=__indent() +'#(begin macro)divide("input",10,"input","output")' + '\n';
_str_main+=divide("input",10,"input","output");
_str_main+=__indent() +'#(end macro)divide("input",10,"input","output")' + '\n';
_str_main+=__indent() +'arotl output' + '\n';
__blockLevel__--;
_str_main+=__indent() +'endloop' + '\n';
_str_main+=__indent() +'#(begin macro)scope_begin()' + '\n';
_str_main+=scope_begin();
_str_main+=__indent() +'#(end macro)scope_begin()' + '\n';
_str_main+=__indent() +'#(begin macro)lvar("prefixzero",1)' + '\n';
_str_main+=lvar("prefixzero",1);
_str_main+=__indent() +'#(end macro)lvar("prefixzero",1)' + '\n';
_str_main+=__indent() +'push ' + (DECIMALSIZE) + '' + '\n';
_str_main+=__indent() +'sbm cnt' + '\n';
_str_main+=__indent() +'loop' + '\n';
__blockLevel__++;
_str_main+=__indent() +'arotr output' + '\n';
_str_main+=__indent() +'#(begin macro)if_sup("cnt",1)   # cnt == 3 or cnt == 2' + '\n';
_str_main+=if_sup("cnt",1);
_str_main+=__indent() +'#(end macro)if_sup("cnt",1)   # cnt == 3 or cnt == 2' + '\n';
_str_main+=__indent() +'#(begin macro)if_diff("output",0)' + '\n';
_str_main+=if_diff("output",0);
_str_main+=__indent() +'#(end macro)if_diff("output",0)' + '\n';
_str_main+=__indent() +'#(begin macro)writeDigit("output")' + '\n';
_str_main+=writeDigit("output");
_str_main+=__indent() +'#(end macro)writeDigit("output")' + '\n';
_str_main+=__indent() +'#(begin macro)at_set("prefixzero",0)' + '\n';
_str_main+=at_set("prefixzero",0);
_str_main+=__indent() +'#(end macro)at_set("prefixzero",0)' + '\n';
__blockLevel__--;
_str_main+=__indent() +'else' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)if_equal("prefixzero",0)' + '\n';
_str_main+=if_equal("prefixzero",0);
_str_main+=__indent() +'#(end macro)if_equal("prefixzero",0)' + '\n';
_str_main+=__indent() +'#(begin macro)writeDigit("output")' + '\n';
_str_main+=writeDigit("output");
_str_main+=__indent() +'#(end macro)writeDigit("output")' + '\n';
__blockLevel__--;
_str_main+=__indent() +'fi' + '\n';
__blockLevel__--;
_str_main+=__indent() +'fi' + '\n';
__blockLevel__--;
_str_main+=__indent() +'else' + '\n';
__blockLevel__++;
_str_main+=__indent() +'#(begin macro)writeDigit("output")' + '\n';
_str_main+=writeDigit("output");
_str_main+=__indent() +'#(end macro)writeDigit("output")' + '\n';
__blockLevel__--;
_str_main+=__indent() +'fi' + '\n';
__blockLevel__--;
_str_main+=__indent() +'endloop' + '\n';
_str_main+=__indent() +'#(begin macro)scope_end()' + '\n';
_str_main+=scope_end();
_str_main+=__indent() +'#(end macro)scope_end()' + '\n';
__blockLevel__--;
_str_main+=__indent() +'wend' + '\n';
return _str_main;
}
_main();
