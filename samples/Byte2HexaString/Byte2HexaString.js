var _main = function(){
var _str_main;
_str_main='';
_str_main+='#    ____        _         ____    _   _                ____  _        _             ' + '\n';
_str_main+='#   | __ ) _   _| |_ ___  |___ \\  | | | | _____  ____ _/ ___|| |_ _ __(_)_ __   __ _ ' + '\n';
_str_main+='#   |  _ \\| | | | __/ _ \\   __) | | |_| |/ _ \\ \\/ / _` \\___ \\| __| \'__| | \'_ \\ / _` |' + '\n';
_str_main+='#   | |_) | |_| | ||  __/  / __/  |  _  |  __/>  < (_| |___) | |_| |  | | | | | (_| |' + '\n';
_str_main+='#   |____/ \\__, |\\__\\___| |_____| |_| |_|\\___/_/\\_\\__,_|____/ \\__|_|  |_|_| |_|\\__, |' + '\n';
_str_main+='#          |___/                                                               |___/ ' + '\n';
_str_main+='# Read input byte and output it as hexa string' + '\n';
_str_main+='# this sample do use macro' + '\n';
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='#(begin include)../include/macro.inc' + '\n';
_str_main+='# Common macros' + '\n';
_str_main+='# scope variables' + '\n';
_str_main+='#(js) var __scope;' + '\n';
var __scope;
_str_main+='#(js) __scope=[0];' + '\n';
__scope=[0];
_str_main+='' + '\n';
_str_main+='# macro scope_begin : start a new scope for local variable (usage of macro lvar)' + '\n';
var scope_begin = function(){
var _strscope_begin;
_strscope_begin='';
_strscope_begin+='#(js) __scope.push(0);' + '\n';
__scope.push(0);
return _strscope_begin;
}
_str_main+='' + '\n';
_str_main+='# macro scope_end : end a scope , then drop scoped local variables (drop) (usage of lvar)' + '\n';
var scope_end = function(){
var _strscope_end;
_strscope_end='';
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
_strif_infequal+='    push ' + a + '' + '\n';
_strif_infequal+='    push ' + ba + '' + '\n';
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
_strat_set+='#(begin macro)    at_2("set",a,b)' + '\n';
_strat_set+=at_2("set",a,b);
_strat_set+='#(end macro)    at_2("set",a,b)' + '\n';
return _strat_set;
}
_str_main+='' + '\n';
var write = function(a){
var _strwrite;
_strwrite='';
_strwrite+='    push    ' + a + '' + '\n';
_strwrite+='    pop     out' + '\n';
return _strwrite;
}
_str_main+='' + '\n';
var divide = function(a,b,d,r){
var _strdivide;
_strdivide='';
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
_strright_rewind+='    push ' + array + '.pos' + '\n';
_strright_rewind+='    loop' + '\n';
_strright_rewind+='        arotr ' + array + '' + '\n';
_strright_rewind+='    endloop' + '\n';
return _strright_rewind;
}
_str_main+='#(end include)../include/macro.inc' + '\n';
_str_main+='' + '\n';
_str_main+='#(js) var whIdx; whIdx = 0;' + '\n';
var whIdx; whIdx = 0;
_str_main+='' + '\n';
var writeHexa = function(){
var _strwriteHexa;
_strwriteHexa='';
_strwriteHexa+='#(js) whIdx++;' + '\n';
whIdx++;
_strwriteHexa+='    sbm _input' + whIdx + '' + '\n';
_strwriteHexa+='#(begin macro)    if_sup("_input" + whIdx,9)' + '\n';
_strwriteHexa+=if_sup("_input" + whIdx,9);
_strwriteHexa+='#(end macro)    if_sup("_input" + whIdx,9)' + '\n';
_strwriteHexa+='#(begin macro)        at_add("_input" + whIdx, "\'7\'")' + '\n';
_strwriteHexa+=at_add("_input" + whIdx, "'7'");
_strwriteHexa+='#(end macro)        at_add("_input" + whIdx, "\'7\'")' + '\n';
_strwriteHexa+='    else' + '\n';
_strwriteHexa+='#(begin macro)        at_add("_input" + whIdx, "\'0\'")' + '\n';
_strwriteHexa+=at_add("_input" + whIdx, "'0'");
_strwriteHexa+='#(end macro)        at_add("_input" + whIdx, "\'0\'")' + '\n';
_strwriteHexa+='    fi' + '\n';
_strwriteHexa+='    pop out' + '\n';
return _strwriteHexa;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='push    1' + '\n';
_str_main+='while' + '\n';
_str_main+='    push    in' + '\n';
_str_main+='    push    16' + '\n';
_str_main+='    div' + '\n';
_str_main+='#(begin macro)    writeHexa() # output most significant hexa character from head of stack value, then drop' + '\n';
_str_main+=writeHexa();
_str_main+='#(end macro)    writeHexa() # output most significant hexa character from head of stack value, then drop' + '\n';
_str_main+='#(begin macro)    writeHexa() # output less significant hexa character from head of stack value, then drop' + '\n';
_str_main+=writeHexa();
_str_main+='#(end macro)    writeHexa() # output less significant hexa character from head of stack value, then drop' + '\n';
_str_main+='wend' + '\n';
return _str_main;
}
_main();