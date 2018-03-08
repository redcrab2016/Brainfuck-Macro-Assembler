var _main = function(){
var _str_main;
_str_main='';
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
_str_main+='' + '\n';
_str_main+='# macro popouthexa() : from head of stack value (from 0 to 15) write out hexa (from 0 to 9 and A to F)' + '\n';
var popouthexa = function(){
var _strpopouthexa;
_strpopouthexa='';
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
_str_main+='#(begin include)../include/signed16.inc' + '\n';
_str_main+='# 16 bits signed integer' + '\n';
_str_main+='' + '\n';
_str_main+='# macro var16(name) :declare global 16 bits' + '\n';
var var16 = function(name){
var _strvar16;
_strvar16='';
_strvar16+='    var ' + name + '_0    # LSB of ' + name + '' + '\n';
_strvar16+='    var ' + name + '_1    # MSB of ' + name + '' + '\n';
_strvar16+='    var ' + name + '_s    # Sign of ' + name + '' + '\n';
_strvar16+='    var ' + name + '_c    # carry of ' + name + ' ' + '\n';
return _strvar16;
}
_str_main+='' + '\n';
_str_main+='# macro lvar16(name) : declare local 16 bits' + '\n';
var lvar16 = function(name){
var _strlvar16;
_strlvar16='';
_strlvar16+='#(begin macro)    lvar(name + "_c",0)' + '\n';
_strlvar16+=lvar(name + "_c",0);
_strlvar16+='#(end macro)    lvar(name + "_c",0)' + '\n';
_strlvar16+='#(begin macro)    lvar(name + "_s",0)' + '\n';
_strlvar16+=lvar(name + "_s",0);
_strlvar16+='#(end macro)    lvar(name + "_s",0)' + '\n';
_strlvar16+='#(begin macro)    lvar(name + "_1",0)' + '\n';
_strlvar16+=lvar(name + "_1",0);
_strlvar16+='#(end macro)    lvar(name + "_1",0)' + '\n';
_strlvar16+='#(begin macro)    lvar(name + "_0",0)' + '\n';
_strlvar16+=lvar(name + "_0",0);
_strlvar16+='#(end macro)    lvar(name + "_0",0)' + '\n';
return _strlvar16;
}
_str_main+='' + '\n';
_str_main+='# macro fixsv16(name) : be sure that name is positive if equal to zero' + '\n';
var fixsv16 = function(name){
var _strfixsv16;
_strfixsv16='';
_strfixsv16+='    push    ' + name + '_s' + '\n';
_strfixsv16+='    IF    # if name is negative' + '\n';
_strfixsv16+='#(begin macro)        if_equal(name +"_0", 0)' + '\n';
_strfixsv16+=if_equal(name +"_0", 0);
_strfixsv16+='#(end macro)        if_equal(name +"_0", 0)' + '\n';
_strfixsv16+='#(begin macro)            if_equal(name +"_1", 0)' + '\n';
_strfixsv16+=if_equal(name +"_1", 0);
_strfixsv16+='#(end macro)            if_equal(name +"_1", 0)' + '\n';
_strfixsv16+='#(begin macro)                at_reset(name + "_s")   # set sign to positive' + '\n';
_strfixsv16+=at_reset(name + "_s");
_strfixsv16+='#(end macro)                at_reset(name + "_s")   # set sign to positive' + '\n';
_strfixsv16+='            fi' + '\n';
_strfixsv16+='        fi' + '\n';
_strfixsv16+='    fi' + '\n';
return _strfixsv16;
}
_str_main+='' + '\n';
_str_main+='# macro pushv16(name) : push 16 bits name on stack' + '\n';
var pushv16 = function(name){
var _strpushv16;
_strpushv16='';
_strpushv16+='    push    ' + name + '_c' + '\n';
_strpushv16+='    push    ' + name + '_s' + '\n';
_strpushv16+='    push    ' + name + '_1' + '\n';
_strpushv16+='    push    ' + name + '_0' + '\n';
return _strpushv16;
}
_str_main+='' + '\n';
_str_main+='# macro push16(immValue) : push immediate16 bits value on the stack' + '\n';
var push16 = function(immValue){
var _strpush16;
_strpush16='';
_strpush16+='    push    0' + '\n';
_strpush16+='    push    ' + (immValue>=0?0:1) + '' + '\n';
_strpush16+='    push    ' + (immValue>=0?((immValue/256) | 0):((-immValue/256) | 0)) + '' + '\n';
_strpush16+='    push    ' + (immValue>=0?(immValue%256):((-immValue)%256)) + '' + '\n';
return _strpush16;
}
_str_main+='' + '\n';
_str_main+='# macro dup16() : duplicate 16bits value on stack' + '\n';
var dup16 = function(){
var _strdup16;
_strdup16='';
_strdup16+='    push    -3' + '\n';
_strdup16+='    push    -3' + '\n';
_strdup16+='    push    -3' + '\n';
_strdup16+='    push    -3' + '\n';
return _strdup16;
}
_str_main+='' + '\n';
_str_main+='# macro pushsv16(name) : push the sign of the 16 bits variable \'name\'' + '\n';
var pushsv16 = function(name){
var _strpushsv16;
_strpushsv16='';
_strpushsv16+='    push    ' + name + '_s' + '\n';
return _strpushsv16;
}
_str_main+='' + '\n';
_str_main+='# macro pushcv16(name) : push the carry of the 16 bits variable \'name\'' + '\n';
var pushcv16 = function(name){
var _strpushcv16;
_strpushcv16='';
_strpushcv16+='    PUSH    ' + name + '_c' + '\n';
return _strpushcv16;
}
_str_main+='' + '\n';
_str_main+='# macro popv16(name) : pop the stack to the 16 bits variable \'name\'' + '\n';
var popv16 = function(name){
var _strpopv16;
_strpopv16='';
_strpopv16+='    pop     ' + name + '_0' + '\n';
_strpopv16+='    pop     ' + name + '_1' + '\n';
_strpopv16+='    pop     ' + name + '_s' + '\n';
_strpopv16+='    pop     ' + name + '_c' + '\n';
return _strpopv16;
}
_str_main+='' + '\n';
_str_main+='# macro popsv16(name) : pop the sign(8 bits 0/1) to the 16 bits variable \'name\'' + '\n';
var popsv16 = function(name){
var _strpopsv16;
_strpopsv16='';
_strpopsv16+='    POP    ' + name + '_s' + '\n';
return _strpopsv16;
}
_str_main+='' + '\n';
_str_main+='# macro popcv16(name) : pop the carry(8 bit 0/1) to the 16 bits variable \'name\'' + '\n';
var popcv16 = function(name){
var _strpopcv16;
_strpopcv16='';
_strpopcv16+='    POP    ' + name + '_c' + '\n';
return _strpopcv16;
}
_str_main+='' + '\n';
_str_main+='# macro negv16(name) : name = -name' + '\n';
var negv16 = function(name){
var _strnegv16;
_strnegv16='';
_strnegv16+='    push    ' + name + '_s' + '\n';
_strnegv16+='    dec' + '\n';
_strnegv16+='    bool' + '\n';
_strnegv16+='    dup' + '\n';
_strnegv16+='    if    # if name is now negative' + '\n';
_strnegv16+='#(begin macro)        if_equal(name +"_0", 0)' + '\n';
_strnegv16+=if_equal(name +"_0", 0);
_strnegv16+='#(end macro)        if_equal(name +"_0", 0)' + '\n';
_strnegv16+='#(begin macro)            if_equal(name +"_1", 0)' + '\n';
_strnegv16+=if_equal(name +"_1", 0);
_strnegv16+='#(end macro)            if_equal(name +"_1", 0)' + '\n';
_strnegv16+='#(begin macro)                at_reset(name + "_s")   # set sign to positive if name==0' + '\n';
_strnegv16+=at_reset(name + "_s");
_strnegv16+='#(end macro)                at_reset(name + "_s")   # set sign to positive if name==0' + '\n';
_strnegv16+='            fi' + '\n';
_strnegv16+='        fi' + '\n';
_strnegv16+='    fi' + '\n';
_strnegv16+='    pop     ' + name + '_s' + '\n';
return _strnegv16;
}
_str_main+='' + '\n';
_str_main+='# macro absv16(name) : name = abs(name)' + '\n';
var absv16 = function(name){
var _strabsv16;
_strabsv16='';
_strabsv16+='    push    0' + '\n';
_strabsv16+='    pop     ' + name + '_s' + '\n';
return _strabsv16;
}
_str_main+='' + '\n';
_str_main+='# macro abs16() : 16 bits head of stack = abs(16 bits head of stack)' + '\n';
var abs16 = function(){
var _strabs16;
_strabs16='';
_strabs16+='    bf <<' + '\n';
_strabs16+='    reset' + '\n';
_strabs16+='    bf >>' + '\n';
return _strabs16;
}
_str_main+='' + '\n';
_str_main+='# macro neg16() : 16 bits head of stack = - (16 bits head of stack)    ' + '\n';
var neg16 = function(){
var _strneg16;
_strneg16='';
_strneg16+='#(begin macro)    popv16("__tmp16__")' + '\n';
_strneg16+=popv16("__tmp16__");
_strneg16+='#(end macro)    popv16("__tmp16__")' + '\n';
_strneg16+='#(begin macro)    negv16("__tmp16__")' + '\n';
_strneg16+=negv16("__tmp16__");
_strneg16+='#(end macro)    negv16("__tmp16__")' + '\n';
_strneg16+='#(begin macro)    pushv16("__tmp16__")' + '\n';
_strneg16+=pushv16("__tmp16__");
_strneg16+='#(end macro)    pushv16("__tmp16__")' + '\n';
return _strneg16;
}
_str_main+='' + '\n';
_str_main+='# macro setc16() : set 1 to 16 bits head of stack carry' + '\n';
var setc16 = function(){
var _strsetc16;
_strsetc16='';
_strsetc16+='    bf <<<' + '\n';
_strsetc16+='    set     1' + '\n';
_strsetc16+='    bf >>>' + '\n';
return _strsetc16;
}
_str_main+='' + '\n';
_str_main+='# macro setcv16(name) : set 1 to 16 bits variable \'name\' carry' + '\n';
var setcv16 = function(name){
var _strsetcv16;
_strsetcv16='';
_strsetcv16+='#(begin macro)    at_set(name+"_c",1)' + '\n';
_strsetcv16+=at_set(name+"_c",1);
_strsetcv16+='#(end macro)    at_set(name+"_c",1)' + '\n';
return _strsetcv16;
}
_str_main+='' + '\n';
_str_main+='# macro clearc16() : set 0 to 16 bits head of stack carry' + '\n';
var clearc16 = function(){
var _strclearc16;
_strclearc16='';
_strclearc16+='    bf <<<' + '\n';
_strclearc16+='    reset' + '\n';
_strclearc16+='    bf >>>' + '\n';
return _strclearc16;
}
_str_main+='' + '\n';
_str_main+='# macro clearcv16(name) : set 0 to 16 bits variable \'name\' carry' + '\n';
var clearcv16 = function(name){
var _strclearcv16;
_strclearcv16='';
_strclearcv16+='#(begin macro)    at_reset(name+"_c")' + '\n';
_strclearcv16+=at_reset(name+"_c");
_strclearcv16+='#(end macro)    at_reset(name+"_c")' + '\n';
return _strclearcv16;
}
_str_main+='' + '\n';
_str_main+='# macro drop16() : drop 16 bits value from stack' + '\n';
var drop16 = function(){
var _strdrop16;
_strdrop16='';
_strdrop16+='    drop' + '\n';
_strdrop16+='    drop' + '\n';
_strdrop16+='    drop' + '\n';
_strdrop16+='    drop' + '\n';
return _strdrop16;
}
_str_main+='' + '\n';
_str_main+='# macro reset16() : reset 16 bits value of the head of stack' + '\n';
var reset16 = function(){
var _strreset16;
_strreset16='';
_strreset16+='    bf  <<<[-]>[-]>[-]>[-]' + '\n';
return _strreset16;
}
_str_main+='' + '\n';
_str_main+='# macro resetv16(name) : reset 16 bits variable \'name\'' + '\n';
var resetv16 = function(name){
var _strresetv16;
_strresetv16='';
_strresetv16+='    at ' + name + '_0' + '\n';
_strresetv16+='#(begin macro)        reset16()' + '\n';
_strresetv16+=reset16();
_strresetv16+='#(end macro)        reset16()' + '\n';
_strresetv16+='    ta' + '\n';
return _strresetv16;
}
_str_main+='' + '\n';
_str_main+='# macro set16(immValue) : set 16 bits value on the head of stack' + '\n';
var set16 = function(immValue){
var _strset16;
_strset16='';
_strset16+='    bf  <<<' + '\n';
_strset16+='    reset' + '\n';
_strset16+='    bf  >' + '\n';
_strset16+='    set ' + (immValue>=0?0:1) + '' + '\n';
_strset16+='    bf  >' + '\n';
_strset16+='    set ' + (immValue>=0?((immValue/256) | 0):((-immValue/256) | 0)) + '' + '\n';
_strset16+='    bf  >' + '\n';
_strset16+='    set ' + (immValue>=0?(immValue%256):((-immValue)%256)) + '' + '\n';
return _strset16;
}
_str_main+='' + '\n';
_str_main+='# macro setv16(name, immValue) : set 16 bits immediate value to a 16 bits variable \'name\' ' + '\n';
var setv16 = function(name,immValue){
var _strsetv16;
_strsetv16='';
_strsetv16+='    at ' + name + '_0' + '\n';
_strsetv16+='#(begin macro)        set16(immValue)' + '\n';
_strsetv16+=set16(immValue);
_strsetv16+='#(end macro)        set16(immValue)' + '\n';
_strsetv16+='    ta' + '\n';
return _strsetv16;
}
_str_main+='' + '\n';
_str_main+='# macro fixsv16(name) : be sure to have sign to zero if 16 bits variable \'name\' is zero' + '\n';
var fixsv16 = function(name){
var _strfixsv16;
_strfixsv16='';
_strfixsv16+='    push    ' + name + '_s' + '\n';
_strfixsv16+='    IF    # if name is negative' + '\n';
_strfixsv16+='#(begin macro)        if_equal(name +"_0", 0)' + '\n';
_strfixsv16+=if_equal(name +"_0", 0);
_strfixsv16+='#(end macro)        if_equal(name +"_0", 0)' + '\n';
_strfixsv16+='#(begin macro)            if_equal(name +"_1", 0)' + '\n';
_strfixsv16+=if_equal(name +"_1", 0);
_strfixsv16+='#(end macro)            if_equal(name +"_1", 0)' + '\n';
_strfixsv16+='#(begin macro)                at_reset(name + "_s")   # set sign to positive' + '\n';
_strfixsv16+=at_reset(name + "_s");
_strfixsv16+='#(end macro)                at_reset(name + "_s")   # set sign to positive' + '\n';
_strfixsv16+='            fi' + '\n';
_strfixsv16+='        fi' + '\n';
_strfixsv16+='    fi' + '\n';
return _strfixsv16;
}
_str_main+='' + '\n';
_str_main+='# macro fixs16() : be sure to have sign to zero if 16 bits head of stack value is zero' + '\n';
var fixs16 = function(){
var _strfixs16;
_strfixs16='';
_strfixs16+='#(begin macro)    popv16("__tmp16__")' + '\n';
_strfixs16+=popv16("__tmp16__");
_strfixs16+='#(end macro)    popv16("__tmp16__")' + '\n';
_strfixs16+='#(begin macro)    fixsv16("__tmp16__")' + '\n';
_strfixs16+=fixsv16("__tmp16__");
_strfixs16+='#(end macro)    fixsv16("__tmp16__")' + '\n';
_strfixs16+='#(begin macro)    pushv16("__tmp16__")' + '\n';
_strfixs16+=pushv16("__tmp16__");
_strfixs16+='#(end macro)    pushv16("__tmp16__")' + '\n';
return _strfixs16;
}
_str_main+='' + '\n';
_str_main+='# macro bool16() : same as \'bool\' but with a 16 bits value on stack' + '\n';
var bool16 = function(){
var _strbool16;
_strbool16='';
_strbool16+='#(begin macro)    popv16("__tmp16__")' + '\n';
_strbool16+=popv16("__tmp16__");
_strbool16+='#(end macro)    popv16("__tmp16__")' + '\n';
_strbool16+='    push __tmp16___0' + '\n';
_strbool16+='    bool' + '\n';
_strbool16+='    push __tmp16___1' + '\n';
_strbool16+='    bool' + '\n';
_strbool16+='    or' + '\n';
return _strbool16;
}
_str_main+='' + '\n';
_str_main+='# macro boolv16(name) : push on stack the bool(name) 16 bits ' + '\n';
var boolv16 = function(name){
var _strboolv16;
_strboolv16='';
_strboolv16+='    push ' + name + '_0' + '\n';
_strboolv16+='    bool' + '\n';
_strboolv16+='    push ' + name + '_1' + '\n';
_strboolv16+='    bool' + '\n';
_strboolv16+='    or' + '\n';
return _strboolv16;
}
_str_main+='' + '\n';
_str_main+='# macro incv16(name) : name = name +1 (16 bits)' + '\n';
var incv16 = function(name){
var _strincv16;
_strincv16='';
_strincv16+='#(begin macro)    if_equal(name +"_s",0)  # positive number' + '\n';
_strincv16+=if_equal(name +"_s",0);
_strincv16+='#(end macro)    if_equal(name +"_s",0)  # positive number' + '\n';
_strincv16+='#(begin macro)        at_inc(name + "_0")' + '\n';
_strincv16+=at_inc(name + "_0");
_strincv16+='#(end macro)        at_inc(name + "_0")' + '\n';
_strincv16+='#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)' + '\n';
_strincv16+=if_equal(name + "_0",0);
_strincv16+='#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)' + '\n';
_strincv16+='#(begin macro)            at_inc(name + "_1")' + '\n';
_strincv16+=at_inc(name + "_1");
_strincv16+='#(end macro)            at_inc(name + "_1")' + '\n';
_strincv16+='#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero \'roll over' + '\n';
_strincv16+=if_equal( name + "_1", 0 );
_strincv16+='#(end macro)            if_equal( name + "_1", 0 ) @ reach zero \'roll over' + '\n';
_strincv16+='#(begin macro)                setcv16( name ) ## set carry (overflow)' + '\n';
_strincv16+=setcv16( name );
_strincv16+='#(end macro)                setcv16( name ) ## set carry (overflow)' + '\n';
_strincv16+='            fi ' + '\n';
_strincv16+='        fi' + '\n';
_strincv16+='    else    # negative number' + '\n';
_strincv16+='#(begin macro)        at_dec(name + "_0")' + '\n';
_strincv16+=at_dec(name + "_0");
_strincv16+='#(end macro)        at_dec(name + "_0")' + '\n';
_strincv16+='#(begin macro)        if_equal(name +"_0",255) # reduced' + '\n';
_strincv16+=if_equal(name +"_0",255);
_strincv16+='#(end macro)        if_equal(name +"_0",255) # reduced' + '\n';
_strincv16+='#(begin macro)            at_dec(name +"_1")' + '\n';
_strincv16+=at_dec(name +"_1");
_strincv16+='#(end macro)            at_dec(name +"_1")' + '\n';
_strincv16+='#(begin macro)            if_equal(name + "_1",255)' + '\n';
_strincv16+=if_equal(name + "_1",255);
_strincv16+='#(end macro)            if_equal(name + "_1",255)' + '\n';
_strincv16+='#(begin macro)                setv16(name, 1)' + '\n';
_strincv16+=setv16(name, 1);
_strincv16+='#(end macro)                setv16(name, 1)' + '\n';
_strincv16+='            fi' + '\n';
_strincv16+='        fi' + '\n';
_strincv16+='#(begin macro)        fixsv16(name)' + '\n';
_strincv16+=fixsv16(name);
_strincv16+='#(end macro)        fixsv16(name)' + '\n';
_strincv16+='    fi' + '\n';
return _strincv16;
}
_str_main+='' + '\n';
_str_main+='# macro inc16() : 16 bits head of stack value incremented' + '\n';
var inc16 = function(){
var _strinc16;
_strinc16='';
_strinc16+='#(begin macro)    popv16("__tmp16__")' + '\n';
_strinc16+=popv16("__tmp16__");
_strinc16+='#(end macro)    popv16("__tmp16__")' + '\n';
_strinc16+='#(begin macro)    incv16("__tmp16__")' + '\n';
_strinc16+=incv16("__tmp16__");
_strinc16+='#(end macro)    incv16("__tmp16__")' + '\n';
_strinc16+='#(begin macro)    pushv16("__tmp16__")' + '\n';
_strinc16+=pushv16("__tmp16__");
_strinc16+='#(end macro)    pushv16("__tmp16__")' + '\n';
return _strinc16;
}
_str_main+='' + '\n';
_str_main+='# macro decv16(name) : name-- (16 bits)' + '\n';
var decv16 = function(name){
var _strdecv16;
_strdecv16='';
_strdecv16+='#(begin macro)    if_equal(name +"_s",1)  # negative number' + '\n';
_strdecv16+=if_equal(name +"_s",1);
_strdecv16+='#(end macro)    if_equal(name +"_s",1)  # negative number' + '\n';
_strdecv16+='#(begin macro)        at_inc(name + "_0")' + '\n';
_strdecv16+=at_inc(name + "_0");
_strdecv16+='#(end macro)        at_inc(name + "_0")' + '\n';
_strdecv16+='#(begin macro)        if_equal(name + "_0",0) # reach zero (roll over)' + '\n';
_strdecv16+=if_equal(name + "_0",0);
_strdecv16+='#(end macro)        if_equal(name + "_0",0) # reach zero (roll over)' + '\n';
_strdecv16+='#(begin macro)            at_inc(name + "_1")' + '\n';
_strdecv16+=at_inc(name + "_1");
_strdecv16+='#(end macro)            at_inc(name + "_1")' + '\n';
_strdecv16+='#(begin macro)            if_equal( name + "_1", 0 ) @ reach zero \'roll over' + '\n';
_strdecv16+=if_equal( name + "_1", 0 );
_strdecv16+='#(end macro)            if_equal( name + "_1", 0 ) @ reach zero \'roll over' + '\n';
_strdecv16+='#(begin macro)                setcv16( name )  # set carry (underflow)' + '\n';
_strdecv16+=setcv16( name );
_strdecv16+='#(end macro)                setcv16( name )  # set carry (underflow)' + '\n';
_strdecv16+='            fi ' + '\n';
_strdecv16+='        fi' + '\n';
_strdecv16+='    else    # positive number' + '\n';
_strdecv16+='#(begin macro)        at_dec(name + "_0")' + '\n';
_strdecv16+=at_dec(name + "_0");
_strdecv16+='#(end macro)        at_dec(name + "_0")' + '\n';
_strdecv16+='#(begin macro)        if_equal(name +"_0",255) # reduced' + '\n';
_strdecv16+=if_equal(name +"_0",255);
_strdecv16+='#(end macro)        if_equal(name +"_0",255) # reduced' + '\n';
_strdecv16+='#(begin macro)            at_dec(name +"_1")' + '\n';
_strdecv16+=at_dec(name +"_1");
_strdecv16+='#(end macro)            at_dec(name +"_1")' + '\n';
_strdecv16+='#(begin macro)            if_equal(name + "_1",255)' + '\n';
_strdecv16+=if_equal(name + "_1",255);
_strdecv16+='#(end macro)            if_equal(name + "_1",255)' + '\n';
_strdecv16+='#(begin macro)                setv16(name, -1)' + '\n';
_strdecv16+=setv16(name, -1);
_strdecv16+='#(end macro)                setv16(name, -1)' + '\n';
_strdecv16+='            fi' + '\n';
_strdecv16+='        fi' + '\n';
_strdecv16+='    fi' + '\n';
return _strdecv16;
}
_str_main+='' + '\n';
_str_main+='# macro dec16() : 16 bits head of stack value decrement' + '\n';
var dec16 = function(){
var _strdec16;
_strdec16='';
_strdec16+='#(begin macro)    popv16("__tmp16__")' + '\n';
_strdec16+=popv16("__tmp16__");
_strdec16+='#(end macro)    popv16("__tmp16__")' + '\n';
_strdec16+='#(begin macro)    decv16("__tmp16__")' + '\n';
_strdec16+=decv16("__tmp16__");
_strdec16+='#(end macro)    decv16("__tmp16__")' + '\n';
_strdec16+='#(begin macro)    pushv16("__tmp16__")' + '\n';
_strdec16+=pushv16("__tmp16__");
_strdec16+='#(end macro)    pushv16("__tmp16__")' + '\n';
return _strdec16;
}
_str_main+='' + '\n';
_str_main+='# macro addvi16(name, immValue) : name += immediate value' + '\n';
var addvi16 = function(name,immValue){
var _straddvi16;
_straddvi16='';
_straddvi16+='#(js) _sv1++;' + '\n';
_sv1++;
_straddvi16+='#(begin macro)    scope_begin()' + '\n';
_straddvi16+=scope_begin();
_straddvi16+='#(end macro)    scope_begin()' + '\n';
_straddvi16+='#(begin macro)        lvar16("addvi16g16_"+_sv1)' + '\n';
_straddvi16+=lvar16("addvi16g16_"+_sv1);
_straddvi16+='#(end macro)        lvar16("addvi16g16_"+_sv1)' + '\n';
_straddvi16+='#(begin macro)        set16(immValue>0?immValue:-immValue)' + '\n';
_straddvi16+=set16(immValue>0?immValue:-immValue);
_straddvi16+='#(end macro)        set16(immValue>0?immValue:-immValue)' + '\n';
_straddvi16+='        push    1' + '\n';
_straddvi16+='        sbm addvi16_loop' + _sv1 + '' + '\n';
_straddvi16+='' + '\n';
_straddvi16+='        while' + '\n';
_straddvi16+='#(begin macro)            boolv16("addvi16g16_"+ _sv1)' + '\n';
_straddvi16+=boolv16("addvi16g16_"+ _sv1);
_straddvi16+='#(end macro)            boolv16("addvi16g16_"+ _sv1)' + '\n';
_straddvi16+='            if' + '\n';
_straddvi16+='#(begin macro)                decv16("addvi16g16_"+_sv1)' + '\n';
_straddvi16+=decv16("addvi16g16_"+_sv1);
_straddvi16+='#(end macro)                decv16("addvi16g16_"+_sv1)' + '\n';
_straddvi16+='#(js) if (immValue>0) {' + '\n';
if (immValue>0) {
_straddvi16+='#(begin macro)                    incv16(name)' + '\n';
_straddvi16+=incv16(name);
_straddvi16+='#(end macro)                    incv16(name)' + '\n';
_straddvi16+='#(js) } else {' + '\n';
} else {
_straddvi16+='#(begin macro)                    decv16(name)' + '\n';
_straddvi16+=decv16(name);
_straddvi16+='#(end macro)                    decv16(name)' + '\n';
_straddvi16+='#(js) }' + '\n';
}
_straddvi16+='            else' + '\n';
_straddvi16+='#(begin macro)                at_reset("addvi16_loop"+_sv1)' + '\n';
_straddvi16+=at_reset("addvi16_loop"+_sv1);
_straddvi16+='#(end macro)                at_reset("addvi16_loop"+_sv1)' + '\n';
_straddvi16+='            fi' + '\n';
_straddvi16+='        wend' + '\n';
_straddvi16+='#(begin macro)    scope_end()' + '\n';
_straddvi16+=scope_end();
_straddvi16+='#(end macro)    scope_end()' + '\n';
return _straddvi16;
}
_str_main+='' + '\n';
_str_main+='# macro addi16(immValue) : 16 bits head of stack value += immediate value' + '\n';
var addi16 = function(immValue){
var _straddi16;
_straddi16='';
_straddi16+='#(begin macro)    popv16("__tmp16__")' + '\n';
_straddi16+=popv16("__tmp16__");
_straddi16+='#(end macro)    popv16("__tmp16__")' + '\n';
_straddi16+='#(begin macro)    addvi16("__tmp16__",immValue)' + '\n';
_straddi16+=addvi16("__tmp16__",immValue);
_straddi16+='#(end macro)    addvi16("__tmp16__",immValue)' + '\n';
_straddi16+='#(begin macro)    pushv16("__tmp16__")' + '\n';
_straddi16+=pushv16("__tmp16__");
_straddi16+='#(end macro)    pushv16("__tmp16__")' + '\n';
return _straddi16;
}
_str_main+='' + '\n';
_str_main+='# macro subvi(name, immValue) : name -= immediate value' + '\n';
var subvi16 = function(name,immValue){
var _strsubvi16;
_strsubvi16='';
_strsubvi16+='#(js) _sv2++;' + '\n';
_sv2++;
_strsubvi16+='#(begin macro)    scope_begin()' + '\n';
_strsubvi16+=scope_begin();
_strsubvi16+='#(end macro)    scope_begin()' + '\n';
_strsubvi16+='#(begin macro)        lvar16("subvi16g16_"+_sv2)' + '\n';
_strsubvi16+=lvar16("subvi16g16_"+_sv2);
_strsubvi16+='#(end macro)        lvar16("subvi16g16_"+_sv2)' + '\n';
_strsubvi16+='#(begin macro)        set16(immValue>0?immValue:-immValue)' + '\n';
_strsubvi16+=set16(immValue>0?immValue:-immValue);
_strsubvi16+='#(end macro)        set16(immValue>0?immValue:-immValue)' + '\n';
_strsubvi16+='        push    1' + '\n';
_strsubvi16+='        sbm subvi16_loop' + _sv2 + '' + '\n';
_strsubvi16+='        while' + '\n';
_strsubvi16+='#(begin macro)            pushv16("subvi16g16_"+ _sv2)' + '\n';
_strsubvi16+=pushv16("subvi16g16_"+ _sv2);
_strsubvi16+='#(end macro)            pushv16("subvi16g16_"+ _sv2)' + '\n';
_strsubvi16+='#(begin macro)            bool16()' + '\n';
_strsubvi16+=bool16();
_strsubvi16+='#(end macro)            bool16()' + '\n';
_strsubvi16+='            if' + '\n';
_strsubvi16+='#(begin macro)                decv16("subvi16g16_"+_sv2)' + '\n';
_strsubvi16+=decv16("subvi16g16_"+_sv2);
_strsubvi16+='#(end macro)                decv16("subvi16g16_"+_sv2)' + '\n';
_strsubvi16+='#(js) if (immValue>0) {' + '\n';
if (immValue>0) {
_strsubvi16+='#(begin macro)                    decv16(name)' + '\n';
_strsubvi16+=decv16(name);
_strsubvi16+='#(end macro)                    decv16(name)' + '\n';
_strsubvi16+='#(js) } else {' + '\n';
} else {
_strsubvi16+='#(begin macro)                    incv16(name)' + '\n';
_strsubvi16+=incv16(name);
_strsubvi16+='#(end macro)                    incv16(name)' + '\n';
_strsubvi16+='#(js) }' + '\n';
}
_strsubvi16+='            else' + '\n';
_strsubvi16+='#(begin macro)                at_reset("subvi16_loop"+_sv2)' + '\n';
_strsubvi16+=at_reset("subvi16_loop"+_sv2);
_strsubvi16+='#(end macro)                at_reset("subvi16_loop"+_sv2)' + '\n';
_strsubvi16+='            fi' + '\n';
_strsubvi16+='        wend' + '\n';
_strsubvi16+='#(begin macro)    scope_end()' + '\n';
_strsubvi16+=scope_end();
_strsubvi16+='#(end macro)    scope_end()' + '\n';
return _strsubvi16;
}
_str_main+='' + '\n';
_str_main+='# macro subi16(immValue) : 16 bits head of stack value -= immediate value' + '\n';
var subi16 = function(immValue){
var _strsubi16;
_strsubi16='';
_strsubi16+='#(begin macro)    popv16("__tmp16__")' + '\n';
_strsubi16+=popv16("__tmp16__");
_strsubi16+='#(end macro)    popv16("__tmp16__")' + '\n';
_strsubi16+='#(begin macro)    subvi16("__tmp16__",immValue)' + '\n';
_strsubi16+=subvi16("__tmp16__",immValue);
_strsubi16+='#(end macro)    subvi16("__tmp16__",immValue)' + '\n';
_strsubi16+='#(begin macro)    pushv16("__tmp16__")' + '\n';
_strsubi16+=pushv16("__tmp16__");
_strsubi16+='#(end macro)    pushv16("__tmp16__")' + '\n';
return _strsubi16;
}
_str_main+='' + '\n';
_str_main+='# macro addvvv16(name, nameA, nameB) : name = nameA + nameB' + '\n';
var addvvv16 = function(name, nameA, nameB){
var _straddvvv16;
_straddvvv16='';
_straddvvv16+='#(js) _sv3++;' + '\n';
_sv3++;
_straddvvv16+='#(begin macro)    pushv16(nameA)' + '\n';
_straddvvv16+=pushv16(nameA);
_straddvvv16+='#(end macro)    pushv16(nameA)' + '\n';
_straddvvv16+='#(begin macro)    popv16(name)    # name = nameA' + '\n';
_straddvvv16+=popv16(name);
_straddvvv16+='#(end macro)    popv16(name)    # name = nameA' + '\n';
_straddvvv16+='#(begin macro)    scope_begin()' + '\n';
_straddvvv16+=scope_begin();
_straddvvv16+='#(end macro)    scope_begin()' + '\n';
_straddvvv16+='#(begin macro)        lvar16("addvvv16g16_" + _sv3)' + '\n';
_straddvvv16+=lvar16("addvvv16g16_" + _sv3);
_straddvvv16+='#(end macro)        lvar16("addvvv16g16_" + _sv3)' + '\n';
_straddvvv16+='#(begin macro)        pushv16(nameB)' + '\n';
_straddvvv16+=pushv16(nameB);
_straddvvv16+='#(end macro)        pushv16(nameB)' + '\n';
_straddvvv16+='#(begin macro)        popv16("addvvv16g16_" + _sv3)' + '\n';
_straddvvv16+=popv16("addvvv16g16_" + _sv3);
_straddvvv16+='#(end macro)        popv16("addvvv16g16_" + _sv3)' + '\n';
_straddvvv16+='        push 0' + '\n';
_straddvvv16+='#(begin macro)        popsv16("addvvv16g16_" + _sv3) # absolute number (always positive)' + '\n';
_straddvvv16+=popsv16("addvvv16g16_" + _sv3);
_straddvvv16+='#(end macro)        popsv16("addvvv16g16_" + _sv3) # absolute number (always positive)' + '\n';
_straddvvv16+='        ' + '\n';
_straddvvv16+='        push    ' + nameB + '_s' + '\n';
_straddvvv16+='        if    # nameB is negative ' + '\n';
_straddvvv16+='            push    1' + '\n';
_straddvvv16+='            sbm addvvv16_loop' + _sv3 + '' + '\n';
_straddvvv16+='            while' + '\n';
_straddvvv16+='#(begin macro)                pushv16("addvvv16g16_"+ _sv3)' + '\n';
_straddvvv16+=pushv16("addvvv16g16_"+ _sv3);
_straddvvv16+='#(end macro)                pushv16("addvvv16g16_"+ _sv3)' + '\n';
_straddvvv16+='#(begin macro)                bool16()' + '\n';
_straddvvv16+=bool16();
_straddvvv16+='#(end macro)                bool16()' + '\n';
_straddvvv16+='                if' + '\n';
_straddvvv16+='#(begin macro)                    decv16("addvvv16g16_"+_sv3)' + '\n';
_straddvvv16+=decv16("addvvv16g16_"+_sv3);
_straddvvv16+='#(end macro)                    decv16("addvvv16g16_"+_sv3)' + '\n';
_straddvvv16+='#(begin macro)                    decv16(name)' + '\n';
_straddvvv16+=decv16(name);
_straddvvv16+='#(end macro)                    decv16(name)' + '\n';
_straddvvv16+='                else' + '\n';
_straddvvv16+='#(begin macro)                    at_reset("addvvv16_loop"+_sv3)' + '\n';
_straddvvv16+=at_reset("addvvv16_loop"+_sv3);
_straddvvv16+='#(end macro)                    at_reset("addvvv16_loop"+_sv3)' + '\n';
_straddvvv16+='                fi' + '\n';
_straddvvv16+='            wend' + '\n';
_straddvvv16+='        else  # nameB is positive' + '\n';
_straddvvv16+='            push    1' + '\n';
_straddvvv16+='            sbm addvvv16_loop' + _sv3 + '' + '\n';
_straddvvv16+='            while' + '\n';
_straddvvv16+='#(begin macro)                pushv16("addvvv16g16_"+ _sv3)' + '\n';
_straddvvv16+=pushv16("addvvv16g16_"+ _sv3);
_straddvvv16+='#(end macro)                pushv16("addvvv16g16_"+ _sv3)' + '\n';
_straddvvv16+='#(begin macro)                bool16()' + '\n';
_straddvvv16+=bool16();
_straddvvv16+='#(end macro)                bool16()' + '\n';
_straddvvv16+='                if' + '\n';
_straddvvv16+='#(begin macro)                    decv16("addvvv16g16_"+_sv3)' + '\n';
_straddvvv16+=decv16("addvvv16g16_"+_sv3);
_straddvvv16+='#(end macro)                    decv16("addvvv16g16_"+_sv3)' + '\n';
_straddvvv16+='#(begin macro)                    incv16(name)' + '\n';
_straddvvv16+=incv16(name);
_straddvvv16+='#(end macro)                    incv16(name)' + '\n';
_straddvvv16+='                else' + '\n';
_straddvvv16+='#(begin macro)                    at_reset("addvvv16_loop"+_sv3)' + '\n';
_straddvvv16+=at_reset("addvvv16_loop"+_sv3);
_straddvvv16+='#(end macro)                    at_reset("addvvv16_loop"+_sv3)' + '\n';
_straddvvv16+='                fi' + '\n';
_straddvvv16+='            wend' + '\n';
_straddvvv16+='        fi' + '\n';
_straddvvv16+='#(begin macro)    scope_end()' + '\n';
_straddvvv16+=scope_end();
_straddvvv16+='#(end macro)    scope_end()' + '\n';
return _straddvvv16;
}
_str_main+='' + '\n';
_str_main+='# macro addvv16(name, nameA) : name += nameA' + '\n';
var addvv16 = function(name, nameA){
var _straddvv16;
_straddvv16='';
_straddvv16+='#(begin macro)    addvvv16(name, name, nameA)' + '\n';
_straddvv16+=addvvv16(name, name, nameA);
_straddvv16+='#(end macro)    addvvv16(name, name, nameA)' + '\n';
return _straddvv16;
}
_str_main+='' + '\n';
_str_main+='# macro addv16(nameA) : head stack += nameA' + '\n';
var addv16 = function(nameA){
var _straddv16;
_straddv16='';
_straddv16+='#(begin macro)    popv16("__tmp16__")' + '\n';
_straddv16+=popv16("__tmp16__");
_straddv16+='#(end macro)    popv16("__tmp16__")' + '\n';
_straddv16+='#(begin macro)    addvv16("__tmp16__",nameA)' + '\n';
_straddv16+=addvv16("__tmp16__",nameA);
_straddv16+='#(end macro)    addvv16("__tmp16__",nameA)' + '\n';
_straddv16+='#(begin macro)    pushv16("__tmp16__")' + '\n';
_straddv16+=pushv16("__tmp16__");
_straddv16+='#(end macro)    pushv16("__tmp16__")' + '\n';
return _straddv16;
}
_str_main+='' + '\n';
_str_main+='# macro add16() : stack-1 = stack-1 + stack ; stack--' + '\n';
var add16 = function(){
var _stradd16;
_stradd16='';
_stradd16+='#(begin macro)    popv16("__tmp16b__")' + '\n';
_stradd16+=popv16("__tmp16b__");
_stradd16+='#(end macro)    popv16("__tmp16b__")' + '\n';
_stradd16+='#(begin macro)    popv16("__tmp16a__")' + '\n';
_stradd16+=popv16("__tmp16a__");
_stradd16+='#(end macro)    popv16("__tmp16a__")' + '\n';
_stradd16+='#(begin macro)    addvvv16("__tmp16c__", "__tmp16a__", "__tmp16b__")' + '\n';
_stradd16+=addvvv16("__tmp16c__", "__tmp16a__", "__tmp16b__");
_stradd16+='#(end macro)    addvvv16("__tmp16c__", "__tmp16a__", "__tmp16b__")' + '\n';
_stradd16+='#(begin macro)    pushv16("__tmp16c__")' + '\n';
_stradd16+=pushv16("__tmp16c__");
_stradd16+='#(end macro)    pushv16("__tmp16c__")' + '\n';
return _stradd16;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# macro subvvv16(name, nameA, nameB) : name = nameA - nameB' + '\n';
var subvvv16 = function(name, nameA, nameB){
var _strsubvvv16;
_strsubvvv16='';
_strsubvvv16+='#(js) _sv4++;' + '\n';
_sv4++;
_strsubvvv16+='#(begin macro)    pushv16(nameA)' + '\n';
_strsubvvv16+=pushv16(nameA);
_strsubvvv16+='#(end macro)    pushv16(nameA)' + '\n';
_strsubvvv16+='#(begin macro)    popv16(name)    # name = nameA' + '\n';
_strsubvvv16+=popv16(name);
_strsubvvv16+='#(end macro)    popv16(name)    # name = nameA' + '\n';
_strsubvvv16+='#(begin macro)    scope_begin()' + '\n';
_strsubvvv16+=scope_begin();
_strsubvvv16+='#(end macro)    scope_begin()' + '\n';
_strsubvvv16+='#(begin macro)        lvar16("subvvv16g16_" + _sv4)' + '\n';
_strsubvvv16+=lvar16("subvvv16g16_" + _sv4);
_strsubvvv16+='#(end macro)        lvar16("subvvv16g16_" + _sv4)' + '\n';
_strsubvvv16+='#(begin macro)        pushv16(nameB)' + '\n';
_strsubvvv16+=pushv16(nameB);
_strsubvvv16+='#(end macro)        pushv16(nameB)' + '\n';
_strsubvvv16+='#(begin macro)        popv16("subvvv16g16_" + _sv4)' + '\n';
_strsubvvv16+=popv16("subvvv16g16_" + _sv4);
_strsubvvv16+='#(end macro)        popv16("subvvv16g16_" + _sv4)' + '\n';
_strsubvvv16+='        push 0' + '\n';
_strsubvvv16+='#(begin macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)' + '\n';
_strsubvvv16+=popsv16("subvvv16g16_" + _sv4);
_strsubvvv16+='#(end macro)        popsv16("subvvv16g16_" + _sv4) # absolute number (always positive)' + '\n';
_strsubvvv16+='        ' + '\n';
_strsubvvv16+='        push    ' + nameB + '_s' + '\n';
_strsubvvv16+='        if    # nameB is negative ' + '\n';
_strsubvvv16+='            push    1' + '\n';
_strsubvvv16+='            sbm subvvv16_loop' + _sv4 + '' + '\n';
_strsubvvv16+='            while' + '\n';
_strsubvvv16+='#(begin macro)                pushv16("subvvv16g16_"+ _sv4)' + '\n';
_strsubvvv16+=pushv16("subvvv16g16_"+ _sv4);
_strsubvvv16+='#(end macro)                pushv16("subvvv16g16_"+ _sv4)' + '\n';
_strsubvvv16+='#(begin macro)                bool16()' + '\n';
_strsubvvv16+=bool16();
_strsubvvv16+='#(end macro)                bool16()' + '\n';
_strsubvvv16+='                if' + '\n';
_strsubvvv16+='#(begin macro)                    decv16("subvvv16g16_"+_sv4)' + '\n';
_strsubvvv16+=decv16("subvvv16g16_"+_sv4);
_strsubvvv16+='#(end macro)                    decv16("subvvv16g16_"+_sv4)' + '\n';
_strsubvvv16+='#(begin macro)                    incv16(name)' + '\n';
_strsubvvv16+=incv16(name);
_strsubvvv16+='#(end macro)                    incv16(name)' + '\n';
_strsubvvv16+='                else' + '\n';
_strsubvvv16+='#(begin macro)                    at_reset("subvvv16_loop"+_sv4)' + '\n';
_strsubvvv16+=at_reset("subvvv16_loop"+_sv4);
_strsubvvv16+='#(end macro)                    at_reset("subvvv16_loop"+_sv4)' + '\n';
_strsubvvv16+='                fi' + '\n';
_strsubvvv16+='            wend' + '\n';
_strsubvvv16+='        else  # nameB is positive' + '\n';
_strsubvvv16+='            push    1' + '\n';
_strsubvvv16+='            sbm subvvv16_loop' + _sv4 + '' + '\n';
_strsubvvv16+='            while' + '\n';
_strsubvvv16+='#(begin macro)                pushv16("subvvv16g16_"+ _sv4)' + '\n';
_strsubvvv16+=pushv16("subvvv16g16_"+ _sv4);
_strsubvvv16+='#(end macro)                pushv16("subvvv16g16_"+ _sv4)' + '\n';
_strsubvvv16+='#(begin macro)                bool16()' + '\n';
_strsubvvv16+=bool16();
_strsubvvv16+='#(end macro)                bool16()' + '\n';
_strsubvvv16+='                if' + '\n';
_strsubvvv16+='#(begin macro)                    decv16("subvvv16g16_"+_sv4)' + '\n';
_strsubvvv16+=decv16("subvvv16g16_"+_sv4);
_strsubvvv16+='#(end macro)                    decv16("subvvv16g16_"+_sv4)' + '\n';
_strsubvvv16+='#(begin macro)                    decv16(name)' + '\n';
_strsubvvv16+=decv16(name);
_strsubvvv16+='#(end macro)                    decv16(name)' + '\n';
_strsubvvv16+='                else' + '\n';
_strsubvvv16+='#(begin macro)                    at_reset("subvvv16_loop"+_sv4)' + '\n';
_strsubvvv16+=at_reset("subvvv16_loop"+_sv4);
_strsubvvv16+='#(end macro)                    at_reset("subvvv16_loop"+_sv4)' + '\n';
_strsubvvv16+='                fi' + '\n';
_strsubvvv16+='            wend' + '\n';
_strsubvvv16+='        fi' + '\n';
_strsubvvv16+='#(begin macro)    scope_end()' + '\n';
_strsubvvv16+=scope_end();
_strsubvvv16+='#(end macro)    scope_end()' + '\n';
return _strsubvvv16;
}
_str_main+='' + '\n';
_str_main+='# macro subvv16(name, nameA) : name -= nameA ' + '\n';
var subvv16 = function(name, nameA){
var _strsubvv16;
_strsubvv16='';
_strsubvv16+='#(begin macro)    subvvv16(name, name, nameA)' + '\n';
_strsubvv16+=subvvv16(name, name, nameA);
_strsubvv16+='#(end macro)    subvvv16(name, name, nameA)' + '\n';
return _strsubvv16;
}
_str_main+='' + '\n';
_str_main+='# macro subv16(nameA) : head stack -= nameA' + '\n';
var addv16 = function(nameA){
var _straddv16;
_straddv16='';
_straddv16+='#(begin macro)    popv16("__tmp16__")' + '\n';
_straddv16+=popv16("__tmp16__");
_straddv16+='#(end macro)    popv16("__tmp16__")' + '\n';
_straddv16+='#(begin macro)    subvv16("__tmp16__",nameA)' + '\n';
_straddv16+=subvv16("__tmp16__",nameA);
_straddv16+='#(end macro)    subvv16("__tmp16__",nameA)' + '\n';
_straddv16+='#(begin macro)    pushv16("__tmp16__")' + '\n';
_straddv16+=pushv16("__tmp16__");
_straddv16+='#(end macro)    pushv16("__tmp16__")' + '\n';
return _straddv16;
}
_str_main+='' + '\n';
_str_main+='# macro sub16() : stack-1 = stack-1 - stack ; stack--' + '\n';
var sub16 = function(){
var _strsub16;
_strsub16='';
_strsub16+='#(begin macro)    popv16("__tmp16b__")' + '\n';
_strsub16+=popv16("__tmp16b__");
_strsub16+='#(end macro)    popv16("__tmp16b__")' + '\n';
_strsub16+='#(begin macro)    popv16("__tmp16a__")' + '\n';
_strsub16+=popv16("__tmp16a__");
_strsub16+='#(end macro)    popv16("__tmp16a__")' + '\n';
_strsub16+='#(begin macro)    subvvv16("__tmp16c__", "__tmp16a__", "__tmp16b__")' + '\n';
_strsub16+=subvvv16("__tmp16c__", "__tmp16a__", "__tmp16b__");
_strsub16+='#(end macro)    subvvv16("__tmp16c__", "__tmp16a__", "__tmp16b__")' + '\n';
_strsub16+='#(begin macro)    pushv16("__tmp16c__")' + '\n';
_strsub16+=pushv16("__tmp16c__");
_strsub16+='#(end macro)    pushv16("__tmp16c__")' + '\n';
return _strsub16;
}
_str_main+='' + '\n';
_str_main+='# macro mulvvv16(name, nameA, nameB) : name = nameA * nameB ' + '\n';
var mulvvv16 = function(name, nameA, nameB){
var _strmulvvv16;
_strmulvvv16='';
_strmulvvv16+='#(js) _sv5++;' + '\n';
_sv5++;
_strmulvvv16+='#(begin macro)    scope_begin()' + '\n';
_strmulvvv16+=scope_begin();
_strmulvvv16+='#(end macro)    scope_begin()' + '\n';
_strmulvvv16+='#(begin macro)        lvar16("mulvvv16absNameA" + _sv5)' + '\n';
_strmulvvv16+=lvar16("mulvvv16absNameA" + _sv5);
_strmulvvv16+='#(end macro)        lvar16("mulvvv16absNameA" + _sv5)' + '\n';
_strmulvvv16+='#(begin macro)        pushv16(nameA)' + '\n';
_strmulvvv16+=pushv16(nameA);
_strmulvvv16+='#(end macro)        pushv16(nameA)' + '\n';
_strmulvvv16+='#(begin macro)        popv16("mulvvv16absNameA" + _sv5)' + '\n';
_strmulvvv16+=popv16("mulvvv16absNameA" + _sv5);
_strmulvvv16+='#(end macro)        popv16("mulvvv16absNameA" + _sv5)' + '\n';
_strmulvvv16+='#(begin macro)        lvar("mulvvv16sA" + _sv5, 0)' + '\n';
_strmulvvv16+=lvar("mulvvv16sA" + _sv5, 0);
_strmulvvv16+='#(end macro)        lvar("mulvvv16sA" + _sv5, 0)' + '\n';
_strmulvvv16+='#(begin macro)        pushsv16("mulvvv16absNameA" + _sv5)' + '\n';
_strmulvvv16+=pushsv16("mulvvv16absNameA" + _sv5);
_strmulvvv16+='#(end macro)        pushsv16("mulvvv16absNameA" + _sv5)' + '\n';
_strmulvvv16+='        pop mulvvv16sA' + _sv5 + '' + '\n';
_strmulvvv16+='#(begin macro)        absv16("mulvvv16absNameA" + _sv5)   # absNameA = abs(nameA)' + '\n';
_strmulvvv16+=absv16("mulvvv16absNameA" + _sv5);
_strmulvvv16+='#(end macro)        absv16("mulvvv16absNameA" + _sv5)   # absNameA = abs(nameA)' + '\n';
_strmulvvv16+='        ' + '\n';
_strmulvvv16+='#(begin macro)        lvar16("mulvvv16absNameB" + _sv5)' + '\n';
_strmulvvv16+=lvar16("mulvvv16absNameB" + _sv5);
_strmulvvv16+='#(end macro)        lvar16("mulvvv16absNameB" + _sv5)' + '\n';
_strmulvvv16+='#(begin macro)        pushv16(nameB)' + '\n';
_strmulvvv16+=pushv16(nameB);
_strmulvvv16+='#(end macro)        pushv16(nameB)' + '\n';
_strmulvvv16+='#(begin macro)        popv16("mulvvv16absNameB" + _sv5)' + '\n';
_strmulvvv16+=popv16("mulvvv16absNameB" + _sv5);
_strmulvvv16+='#(end macro)        popv16("mulvvv16absNameB" + _sv5)' + '\n';
_strmulvvv16+='#(begin macro)        lvar("mulvvv16sB" + _sv5, 0)' + '\n';
_strmulvvv16+=lvar("mulvvv16sB" + _sv5, 0);
_strmulvvv16+='#(end macro)        lvar("mulvvv16sB" + _sv5, 0)' + '\n';
_strmulvvv16+='#(begin macro)        pushsv16("mulvvv16absNameB" + _sv5)' + '\n';
_strmulvvv16+=pushsv16("mulvvv16absNameB" + _sv5);
_strmulvvv16+='#(end macro)        pushsv16("mulvvv16absNameB" + _sv5)' + '\n';
_strmulvvv16+='        pop mulvvv16sB' + _sv5 + '' + '\n';
_strmulvvv16+='#(begin macro)        absv16("mulvvv16absNameB" + _sv5)   # absNameB = abs(nameB)' + '\n';
_strmulvvv16+=absv16("mulvvv16absNameB" + _sv5);
_strmulvvv16+='#(end macro)        absv16("mulvvv16absNameB" + _sv5)   # absNameB = abs(nameB)' + '\n';
_strmulvvv16+='        ' + '\n';
_strmulvvv16+='#(begin macro)        resetv16(name)' + '\n';
_strmulvvv16+=resetv16(name);
_strmulvvv16+='#(end macro)        resetv16(name)' + '\n';
_strmulvvv16+='' + '\n';
_strmulvvv16+='        push    1' + '\n';
_strmulvvv16+='        sbm mulvvv16_loop' + _sv5 + '' + '\n';
_strmulvvv16+='        while' + '\n';
_strmulvvv16+='#(begin macro)            boolv16("mulvvv16absNameB" + _sv5)' + '\n';
_strmulvvv16+=boolv16("mulvvv16absNameB" + _sv5);
_strmulvvv16+='#(end macro)            boolv16("mulvvv16absNameB" + _sv5)' + '\n';
_strmulvvv16+='            if  # absNameB is not zero' + '\n';
_strmulvvv16+='#(begin macro)                addvv(name,"mulvvv16absNameA" + _sv5)' + '\n';
_strmulvvv16+=addvv(name,"mulvvv16absNameA" + _sv5);
_strmulvvv16+='#(end macro)                addvv(name,"mulvvv16absNameA" + _sv5)' + '\n';
_strmulvvv16+='#(begin macro)                decv16("mulvvv16absNameB" + _sv5)' + '\n';
_strmulvvv16+=decv16("mulvvv16absNameB" + _sv5);
_strmulvvv16+='#(end macro)                decv16("mulvvv16absNameB" + _sv5)' + '\n';
_strmulvvv16+='            else ' + '\n';
_strmulvvv16+='#(begin macro)                at_reset("mulvvv16_loop"+_sv5)' + '\n';
_strmulvvv16+=at_reset("mulvvv16_loop"+_sv5);
_strmulvvv16+='#(end macro)                at_reset("mulvvv16_loop"+_sv5)' + '\n';
_strmulvvv16+='            fi' + '\n';
_strmulvvv16+='        wend        ' + '\n';
_strmulvvv16+='        # resolve sign' + '\n';
_strmulvvv16+='        push mulvvv16sA' + _sv5 + '' + '\n';
_strmulvvv16+='        push mulvvv16sB' + _sv5 + '' + '\n';
_strmulvvv16+='        diff    # if sign(nameA) <> sign(nameB) then name is negative' + '\n';
_strmulvvv16+='        if' + '\n';
_strmulvvv16+='#(begin macro)            at_set(name +"_s",1)' + '\n';
_strmulvvv16+=at_set(name +"_s",1);
_strmulvvv16+='#(end macro)            at_set(name +"_s",1)' + '\n';
_strmulvvv16+='        fi        ' + '\n';
_strmulvvv16+='#(begin macro)    scope_end()' + '\n';
_strmulvvv16+=scope_end();
_strmulvvv16+='#(end macro)    scope_end()' + '\n';
return _strmulvvv16;
}
_str_main+='' + '\n';
_str_main+='# macro mulvv16(name, nameA) : name *= nameA' + '\n';
var mulvv16 = function(name, nameA){
var _strmulvv16;
_strmulvv16='';
_strmulvv16+='#(begin macro)    mulvvv16(name,name,nameA)' + '\n';
_strmulvv16+=mulvvv16(name,name,nameA);
_strmulvv16+='#(end macro)    mulvvv16(name,name,nameA)' + '\n';
return _strmulvv16;
}
_str_main+='' + '\n';
_str_main+='# macro mulv16(name) : head of stack *= name' + '\n';
var mulv16 = function(name){
var _strmulv16;
_strmulv16='';
_strmulv16+='#(begin macro)    popv16("__tmp16__")' + '\n';
_strmulv16+=popv16("__tmp16__");
_strmulv16+='#(end macro)    popv16("__tmp16__")' + '\n';
_strmulv16+='#(begin macro)    mulvv16("__tmp16__",name)' + '\n';
_strmulv16+=mulvv16("__tmp16__",name);
_strmulv16+='#(end macro)    mulvv16("__tmp16__",name)' + '\n';
_strmulv16+='#(begin macro)    pushv16("__tmp16__")' + '\n';
_strmulv16+=pushv16("__tmp16__");
_strmulv16+='#(end macro)    pushv16("__tmp16__")' + '\n';
return _strmulv16;
}
_str_main+='' + '\n';
_str_main+='# macro mul16() : stack-1 = stack-1 * stack : stack--' + '\n';
var mul16 = function(){
var _strmul16;
_strmul16='';
_strmul16+='#(begin macro)    popv16("__tmp16a__")' + '\n';
_strmul16+=popv16("__tmp16a__");
_strmul16+='#(end macro)    popv16("__tmp16a__")' + '\n';
_strmul16+='#(begin macro)    popv16("__tmp16b__")' + '\n';
_strmul16+=popv16("__tmp16b__");
_strmul16+='#(end macro)    popv16("__tmp16b__")' + '\n';
_strmul16+='#(begin macro)    mulvvv16("__tmp16c__","__tmp16a__","__tmp16b__")' + '\n';
_strmul16+=mulvvv16("__tmp16c__","__tmp16a__","__tmp16b__");
_strmul16+='#(end macro)    mulvvv16("__tmp16c__","__tmp16a__","__tmp16b__")' + '\n';
_strmul16+='#(begin macro)    pushv16("__tmp16c__")' + '\n';
_strmul16+=pushv16("__tmp16c__");
_strmul16+='#(end macro)    pushv16("__tmp16c__")' + '\n';
return _strmul16;
}
_str_main+='' + '\n';
_str_main+='# macro equalvv16(nameA, nameB) : push 1 if NameA == NameB , push 0 otherwise' + '\n';
var equalvv16 = function(nameA, nameB){
var _strequalvv16;
_strequalvv16='';
_strequalvv16+='    push ' + nameA + '_s' + '\n';
_strequalvv16+='    push ' + nameB + '_s' + '\n';
_strequalvv16+='    equal' + '\n';
_strequalvv16+='    push ' + nameA + '_0' + '\n';
_strequalvv16+='    push ' + nameB + '_0' + '\n';
_strequalvv16+='    equal' + '\n';
_strequalvv16+='    push ' + nameA + '_1' + '\n';
_strequalvv16+='    push ' + nameB + '_1' + '\n';
_strequalvv16+='    equal' + '\n';
_strequalvv16+='    and' + '\n';
_strequalvv16+='    and' + '\n';
return _strequalvv16;
}
_str_main+='' + '\n';
_str_main+='# macro equal16() : same as "equal" but with 16 bits value in stack' + '\n';
var equal16 = function(){
var _strequal16;
_strequal16='';
_strequal16+='#(begin macro)    popv16("__tmp16b__")' + '\n';
_strequal16+=popv16("__tmp16b__");
_strequal16+='#(end macro)    popv16("__tmp16b__")' + '\n';
_strequal16+='#(begin macro)    popv16("__tmp16a__")' + '\n';
_strequal16+=popv16("__tmp16a__");
_strequal16+='#(end macro)    popv16("__tmp16a__")' + '\n';
_strequal16+='#(begin macro)    equalvv16("__tmp16a__", "__tmp16b__")' + '\n';
_strequal16+=equalvv16("__tmp16a__", "__tmp16b__");
_strequal16+='#(end macro)    equalvv16("__tmp16a__", "__tmp16b__")' + '\n';
return _strequal16;
}
_str_main+='' + '\n';
_str_main+='# macro diffvv16(nameA, nameB) : push 1 if Name != NameB , push 0 otherwise' + '\n';
var diffvv16 = function(nameA, nameB){
var _strdiffvv16;
_strdiffvv16='';
_strdiffvv16+='#(begin macro)    equalvv16(nameA, nameB)' + '\n';
_strdiffvv16+=equalvv16(nameA, nameB);
_strdiffvv16+='#(end macro)    equalvv16(nameA, nameB)' + '\n';
_strdiffvv16+='    not' + '\n';
return _strdiffvv16;
}
_str_main+='' + '\n';
_str_main+='# macro diff16() : same as "diff" but with 16 bits value in stack' + '\n';
var diff16 = function(){
var _strdiff16;
_strdiff16='';
_strdiff16+='#(begin macro)    popv16("__tmp16b__")' + '\n';
_strdiff16+=popv16("__tmp16b__");
_strdiff16+='#(end macro)    popv16("__tmp16b__")' + '\n';
_strdiff16+='#(begin macro)    popv16("__tmp16a__")' + '\n';
_strdiff16+=popv16("__tmp16a__");
_strdiff16+='#(end macro)    popv16("__tmp16a__")' + '\n';
_strdiff16+='#(begin macro)    diffvv16("__tmp16a__", "__tmp16b__")' + '\n';
_strdiff16+=diffvv16("__tmp16a__", "__tmp16b__");
_strdiff16+='#(end macro)    diffvv16("__tmp16a__", "__tmp16b__")' + '\n';
return _strdiff16;
}
_str_main+='' + '\n';
_str_main+='# macro supequalvv16(nameA, nameB) : push 1 if nameA >= nameB push 0 otherwise' + '\n';
var supequalvv16 = function(nameA, nameB){
var _strsupequalvv16;
_strsupequalvv16='';
_strsupequalvv16+='#(begin macro)    subvvv16("__tmp16c__", nameA, nameB)' + '\n';
_strsupequalvv16+=subvvv16("__tmp16c__", nameA, nameB);
_strsupequalvv16+='#(end macro)    subvvv16("__tmp16c__", nameA, nameB)' + '\n';
_strsupequalvv16+='    push __tmp16c___s' + '\n';
_strsupequalvv16+='    not' + '\n';
return _strsupequalvv16;
}
_str_main+='' + '\n';
_str_main+='# macro supequal16() : push 1 if stack-1 >= stack , push 0 otherwise : after dropped 2 16 bits value from stack' + '\n';
var supequal16 = function(){
var _strsupequal16;
_strsupequal16='';
_strsupequal16+='#(begin macro)    popv16("__tmp16b__")' + '\n';
_strsupequal16+=popv16("__tmp16b__");
_strsupequal16+='#(end macro)    popv16("__tmp16b__")' + '\n';
_strsupequal16+='#(begin macro)    popv16("__tmp16a__")' + '\n';
_strsupequal16+=popv16("__tmp16a__");
_strsupequal16+='#(end macro)    popv16("__tmp16a__")' + '\n';
_strsupequal16+='#(begin macro)    supequalvv16("__tmp16a__","__tmp16b__")' + '\n';
_strsupequal16+=supequalvv16("__tmp16a__","__tmp16b__");
_strsupequal16+='#(end macro)    supequalvv16("__tmp16a__","__tmp16b__")' + '\n';
return _strsupequal16;
}
_str_main+='' + '\n';
_str_main+='# macro infvv16(nameA, nameB) : push 1 if nameA < nameB push 0 otherwise' + '\n';
var infvv16 = function(nameA, nameB){
var _strinfvv16;
_strinfvv16='';
_strinfvv16+='#(begin macro)    subvvv16("__tmp16c__", nameA, nameB)' + '\n';
_strinfvv16+=subvvv16("__tmp16c__", nameA, nameB);
_strinfvv16+='#(end macro)    subvvv16("__tmp16c__", nameA, nameB)' + '\n';
_strinfvv16+='    push __tmp16c___s' + '\n';
return _strinfvv16;
}
_str_main+='' + '\n';
_str_main+='# macro inf16() : push 1 if stack-1 < stack, push 0 otherwise : after dropped 2 16 bits value from stack' + '\n';
var inf16 = function(){
var _strinf16;
_strinf16='';
_strinf16+='#(begin macro)    popv16("__tmp16b__")' + '\n';
_strinf16+=popv16("__tmp16b__");
_strinf16+='#(end macro)    popv16("__tmp16b__")' + '\n';
_strinf16+='#(begin macro)    popv16("__tmp16a__")' + '\n';
_strinf16+=popv16("__tmp16a__");
_strinf16+='#(end macro)    popv16("__tmp16a__")' + '\n';
_strinf16+='#(begin macro)    infvv16("__tmp16a__","__tmp16b__")' + '\n';
_strinf16+=infvv16("__tmp16a__","__tmp16b__");
_strinf16+='#(end macro)    infvv16("__tmp16a__","__tmp16b__")' + '\n';
return _strinf16;
}
_str_main+='' + '\n';
_str_main+='# macro infequalvv16(nameA, nameB) : push 1 if nameA <= nameB push 0 otherwise' + '\n';
var infequalvv16 = function(nameA, nameB){
var _strinfequalvv16;
_strinfequalvv16='';
_strinfequalvv16+='#(begin macro)    supequalvv16(nameB, nameA)' + '\n';
_strinfequalvv16+=supequalvv16(nameB, nameA);
_strinfequalvv16+='#(end macro)    supequalvv16(nameB, nameA)' + '\n';
return _strinfequalvv16;
}
_str_main+='' + '\n';
_str_main+='# macro infequal16() : push 1 if stack-1 <= stack, push 0 otherwise : after dropped 2 16 bits value from stack ' + '\n';
var infequal16 = function(){
var _strinfequal16;
_strinfequal16='';
_strinfequal16+='#(begin macro)    popv16("__tmp16b__")' + '\n';
_strinfequal16+=popv16("__tmp16b__");
_strinfequal16+='#(end macro)    popv16("__tmp16b__")' + '\n';
_strinfequal16+='#(begin macro)    popv16("__tmp16a__")' + '\n';
_strinfequal16+=popv16("__tmp16a__");
_strinfequal16+='#(end macro)    popv16("__tmp16a__")' + '\n';
_strinfequal16+='#(begin macro)    infequalvv16("__tmp16a__","__tmp16b__")' + '\n';
_strinfequal16+=infequalvv16("__tmp16a__","__tmp16b__");
_strinfequal16+='#(end macro)    infequalvv16("__tmp16a__","__tmp16b__")' + '\n';
return _strinfequal16;
}
_str_main+='' + '\n';
_str_main+='# macro supvv16(nameA , nameB) : push 1 if nameA > nameB push 0 otherwise' + '\n';
var supvv16 = function(nameA, nameB){
var _strsupvv16;
_strsupvv16='';
_strsupvv16+='#(begin macro)    infvv16(nameB, nameA)' + '\n';
_strsupvv16+=infvv16(nameB, nameA);
_strsupvv16+='#(end macro)    infvv16(nameB, nameA)' + '\n';
return _strsupvv16;
}
_str_main+='' + '\n';
_str_main+='# macro sup16() : push 1 if stack-1 > stack, push 0 otherwise : after dropped 2 16 bits value from stack ' + '\n';
var sup16 = function(){
var _strsup16;
_strsup16='';
_strsup16+='#(begin macro)    popv16("__tmp16b__")' + '\n';
_strsup16+=popv16("__tmp16b__");
_strsup16+='#(end macro)    popv16("__tmp16b__")' + '\n';
_strsup16+='#(begin macro)    popv16("__tmp16a__")' + '\n';
_strsup16+=popv16("__tmp16a__");
_strsup16+='#(end macro)    popv16("__tmp16a__")' + '\n';
_strsup16+='#(begin macro)    supvv16("__tmp16a__","__tmp16b__")' + '\n';
_strsup16+=supvv16("__tmp16a__","__tmp16b__");
_strsup16+='#(end macro)    supvv16("__tmp16a__","__tmp16b__")' + '\n';
return _strsup16;
}
_str_main+='' + '\n';
_str_main+='# macro divvvvv16(nameAdivB, nameAmodB, nameA, nameB) : nameAdivB = nameA div nameB ; nameAmodB = nameA mod nameB' + '\n';
var divvvvv16 = function(nameAdivB, nameAmodB, nameA, nameB){
var _strdivvvvv16;
_strdivvvvv16='';
_strdivvvvv16+='#(js) _sv6++;' + '\n';
_sv6++;
_strdivvvvv16+='#(begin macro)    scope_begin()' + '\n';
_strdivvvvv16+=scope_begin();
_strdivvvvv16+='#(end macro)    scope_begin()' + '\n';
_strdivvvvv16+='#(begin macro)        lvar16("divvvvv16absNameA" + _sv6)' + '\n';
_strdivvvvv16+=lvar16("divvvvv16absNameA" + _sv6);
_strdivvvvv16+='#(end macro)        lvar16("divvvvv16absNameA" + _sv6)' + '\n';
_strdivvvvv16+='#(begin macro)        pushv16(nameA)' + '\n';
_strdivvvvv16+=pushv16(nameA);
_strdivvvvv16+='#(end macro)        pushv16(nameA)' + '\n';
_strdivvvvv16+='#(begin macro)        popv16("divvvvv16absNameA" + _sv6)' + '\n';
_strdivvvvv16+=popv16("divvvvv16absNameA" + _sv6);
_strdivvvvv16+='#(end macro)        popv16("divvvvv16absNameA" + _sv6)' + '\n';
_strdivvvvv16+='#(begin macro)        lvar("divvvvv16sA" + _sv6,0)' + '\n';
_strdivvvvv16+=lvar("divvvvv16sA" + _sv6,0);
_strdivvvvv16+='#(end macro)        lvar("divvvvv16sA" + _sv6,0)' + '\n';
_strdivvvvv16+='        push ' + nameA + '_s' + '\n';
_strdivvvvv16+='        pop divvvvv16sA' + _sv6 + '' + '\n';
_strdivvvvv16+='#(begin macro)        absv16("divvvvv16absNameA" + _sv6)' + '\n';
_strdivvvvv16+=absv16("divvvvv16absNameA" + _sv6);
_strdivvvvv16+='#(end macro)        absv16("divvvvv16absNameA" + _sv6)' + '\n';
_strdivvvvv16+='        ' + '\n';
_strdivvvvv16+='#(begin macro)        lvar16("divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+=lvar16("divvvvv16absNameB" + _sv6);
_strdivvvvv16+='#(end macro)        lvar16("divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+='#(begin macro)        pushv16(nameB)' + '\n';
_strdivvvvv16+=pushv16(nameB);
_strdivvvvv16+='#(end macro)        pushv16(nameB)' + '\n';
_strdivvvvv16+='#(begin macro)        popv16("divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+=popv16("divvvvv16absNameB" + _sv6);
_strdivvvvv16+='#(end macro)        popv16("divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+='#(begin macro)        lvar("divvvvv16sB" + _sv6,0)' + '\n';
_strdivvvvv16+=lvar("divvvvv16sB" + _sv6,0);
_strdivvvvv16+='#(end macro)        lvar("divvvvv16sB" + _sv6,0)' + '\n';
_strdivvvvv16+='        push ' + nameB + '_s' + '\n';
_strdivvvvv16+='        pop divvvvv16sB' + _sv6 + '' + '\n';
_strdivvvvv16+='#(begin macro)        absv16("divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+=absv16("divvvvv16absNameB" + _sv6);
_strdivvvvv16+='#(end macro)        absv16("divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+='        ' + '\n';
_strdivvvvv16+='#(begin macro)        pushv16("divvvvv16absNameA" + _sv6)' + '\n';
_strdivvvvv16+=pushv16("divvvvv16absNameA" + _sv6);
_strdivvvvv16+='#(end macro)        pushv16("divvvvv16absNameA" + _sv6)' + '\n';
_strdivvvvv16+='#(begin macro)        popv16(nameAmodB)' + '\n';
_strdivvvvv16+=popv16(nameAmodB);
_strdivvvvv16+='#(end macro)        popv16(nameAmodB)' + '\n';
_strdivvvvv16+='        ' + '\n';
_strdivvvvv16+='#(begin macro)        resetv16(nameAdivB)' + '\n';
_strdivvvvv16+=resetv16(nameAdivB);
_strdivvvvv16+='#(end macro)        resetv16(nameAdivB)' + '\n';
_strdivvvvv16+='        ' + '\n';
_strdivvvvv16+='#(begin macro)        boolv16("divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+=boolv16("divvvvv16absNameB" + _sv6);
_strdivvvvv16+='#(end macro)        boolv16("divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+='        if' + '\n';
_strdivvvvv16+='            push    1' + '\n';
_strdivvvvv16+='            sbm     divvvvv16_g' + _sv6 + '' + '\n';
_strdivvvvv16+='            while' + '\n';
_strdivvvvv16+='#(begin macro)                supequalvv16(nameAmodB, "divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+=supequalvv16(nameAmodB, "divvvvv16absNameB" + _sv6);
_strdivvvvv16+='#(end macro)                supequalvv16(nameAmodB, "divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+='                if' + '\n';
_strdivvvvv16+='#(begin macro)                    incv16(nameAdivB)' + '\n';
_strdivvvvv16+=incv16(nameAdivB);
_strdivvvvv16+='#(end macro)                    incv16(nameAdivB)' + '\n';
_strdivvvvv16+='#(begin macro)                    subvv16(nameAmodB, "divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+=subvv16(nameAmodB, "divvvvv16absNameB" + _sv6);
_strdivvvvv16+='#(end macro)                    subvv16(nameAmodB, "divvvvv16absNameB" + _sv6)' + '\n';
_strdivvvvv16+='                else' + '\n';
_strdivvvvv16+='#(begin macro)                    at_reset("divvvvv16_g" + _sv6) # break while/wend' + '\n';
_strdivvvvv16+=at_reset("divvvvv16_g" + _sv6);
_strdivvvvv16+='#(end macro)                    at_reset("divvvvv16_g" + _sv6) # break while/wend' + '\n';
_strdivvvvv16+='                fi' + '\n';
_strdivvvvv16+='            wend' + '\n';
_strdivvvvv16+='            ' + '\n';
_strdivvvvv16+='            # treat sign of nameAmodB and nameAdivB' + '\n';
_strdivvvvv16+='            push    divvvvv16sA' + _sv6 + '' + '\n';
_strdivvvvv16+='            pop     ' + nameAmodB + '_s   # sign of nameAmodB is sign of nameA' + '\n';
_strdivvvvv16+='            push    divvvvv16sA' + _sv6 + '' + '\n';
_strdivvvvv16+='            push    divvvvv16sB' + _sv6 + '' + '\n';
_strdivvvvv16+='            diff' + '\n';
_strdivvvvv16+='            if' + '\n';
_strdivvvvv16+='                push    1' + '\n';
_strdivvvvv16+='                pop     ' + nameAdivB + '_s # nameAdivB is negative if sign NameA <> sign nameB' + '\n';
_strdivvvvv16+='            fi' + '\n';
_strdivvvvv16+='        else' + '\n';
_strdivvvvv16+='#(begin macro)            setcv16(nameAdivB)' + '\n';
_strdivvvvv16+=setcv16(nameAdivB);
_strdivvvvv16+='#(end macro)            setcv16(nameAdivB)' + '\n';
_strdivvvvv16+='#(begin macro)            setcv16(nameAmodB)            ' + '\n';
_strdivvvvv16+=setcv16(nameAmodB);
_strdivvvvv16+='#(end macro)            setcv16(nameAmodB)            ' + '\n';
_strdivvvvv16+='        fi' + '\n';
_strdivvvvv16+='#(begin macro)    scope_end()' + '\n';
_strdivvvvv16+=scope_end();
_strdivvvvv16+='#(end macro)    scope_end()' + '\n';
return _strdivvvvv16;
}
_str_main+='' + '\n';
_str_main+='# macro divvv16(nameA, nameB) : Push 2 16 bits values  : stack-1 = nameA mod nameB ; stack = nameA div nameB ' + '\n';
var divvv16 = function(nameA, nameB){
var _strdivvv16;
_strdivvv16='';
_strdivvv16+='#(begin macro)    divvvvv16("__tmp16a__", "__tmp16b__", nameA, nameB)' + '\n';
_strdivvv16+=divvvvv16("__tmp16a__", "__tmp16b__", nameA, nameB);
_strdivvv16+='#(end macro)    divvvvv16("__tmp16a__", "__tmp16b__", nameA, nameB)' + '\n';
_strdivvv16+='#(begin macro)    pushv16("__tmp16b__")   # nameA mod nameB' + '\n';
_strdivvv16+=pushv16("__tmp16b__");
_strdivvv16+='#(end macro)    pushv16("__tmp16b__")   # nameA mod nameB' + '\n';
_strdivvv16+='#(begin macro)    pushv16("__tmp16a__")   # nameA div nameB' + '\n';
_strdivvv16+=pushv16("__tmp16a__");
_strdivvv16+='#(end macro)    pushv16("__tmp16a__")   # nameA div nameB' + '\n';
return _strdivvv16;
}
_str_main+='' + '\n';
_str_main+='# macro div16() : stack-1 == A , stack == B ; stack-1 = A mod B , stack = A div B' + '\n';
var div16 = function(){
var _strdiv16;
_strdiv16='';
_strdiv16+='#(begin macro)    popv16("__tmp16b__")' + '\n';
_strdiv16+=popv16("__tmp16b__");
_strdiv16+='#(end macro)    popv16("__tmp16b__")' + '\n';
_strdiv16+='#(begin macro)    popv16("__tmp16a__")' + '\n';
_strdiv16+=popv16("__tmp16a__");
_strdiv16+='#(end macro)    popv16("__tmp16a__")' + '\n';
_strdiv16+='#(begin macro)    divvvvv16("__tmp16c__","__tmp16d__", "__tmp16a__", "__tmp16b__")' + '\n';
_strdiv16+=divvvvv16("__tmp16c__","__tmp16d__", "__tmp16a__", "__tmp16b__");
_strdiv16+='#(end macro)    divvvvv16("__tmp16c__","__tmp16d__", "__tmp16a__", "__tmp16b__")' + '\n';
_strdiv16+='#(begin macro)    pushv16("__tmp16d__") # __tmp16a__ mod __tpm16b__' + '\n';
_strdiv16+=pushv16("__tmp16d__");
_strdiv16+='#(end macro)    pushv16("__tmp16d__") # __tmp16a__ mod __tpm16b__' + '\n';
_strdiv16+='#(begin macro)    pushv16("__tmp16c__") # __tmp16a__ div __tmp16b__' + '\n';
_strdiv16+=pushv16("__tmp16c__");
_strdiv16+='#(end macro)    pushv16("__tmp16c__") # __tmp16a__ div __tmp16b__' + '\n';
return _strdiv16;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='# macro write16(name) : print out the decimal value (signed)' + '\n';
var write16 = function(name){
var _strwrite16;
_strwrite16='';
_strwrite16+='#(js) _sv7++;' + '\n';
_sv7++;
_strwrite16+='#(begin macro)    scope_begin()' + '\n';
_strwrite16+=scope_begin();
_strwrite16+='#(end macro)    scope_begin()' + '\n';
_strwrite16+='#(begin macro)        lvar("write16prefixzero"+_sv7,1)' + '\n';
_strwrite16+=lvar("write16prefixzero"+_sv7,1);
_strwrite16+='#(end macro)        lvar("write16prefixzero"+_sv7,1)' + '\n';
_strwrite16+='#(begin macro)        lvar16("write16_A"+_sv7)' + '\n';
_strwrite16+=lvar16("write16_A"+_sv7);
_strwrite16+='#(end macro)        lvar16("write16_A"+_sv7)' + '\n';
_strwrite16+='#(begin macro)        lvar16("write16_B"+_sv7)' + '\n';
_strwrite16+=lvar16("write16_B"+_sv7);
_strwrite16+='#(end macro)        lvar16("write16_B"+_sv7)' + '\n';
_strwrite16+='#(begin macro)        lvar16("write16_AmodB"+_sv7)' + '\n';
_strwrite16+=lvar16("write16_AmodB"+_sv7);
_strwrite16+='#(end macro)        lvar16("write16_AmodB"+_sv7)' + '\n';
_strwrite16+='#(begin macro)        lvar16("write16_AdivB"+_sv7)' + '\n';
_strwrite16+=lvar16("write16_AdivB"+_sv7);
_strwrite16+='#(end macro)        lvar16("write16_AdivB"+_sv7)' + '\n';
_strwrite16+='        ' + '\n';
_strwrite16+='#(begin macro)        pushv16(name)' + '\n';
_strwrite16+=pushv16(name);
_strwrite16+='#(end macro)        pushv16(name)' + '\n';
_strwrite16+='#(begin macro)        popv16("write16_A"+_sv7)' + '\n';
_strwrite16+=popv16("write16_A"+_sv7);
_strwrite16+='#(end macro)        popv16("write16_A"+_sv7)' + '\n';
_strwrite16+='        ' + '\n';
_strwrite16+='#(begin macro)        push16(10)' + '\n';
_strwrite16+=push16(10);
_strwrite16+='#(end macro)        push16(10)' + '\n';
_strwrite16+='#(begin macro)        popv16("write16_B"+_sv7)' + '\n';
_strwrite16+=popv16("write16_B"+_sv7);
_strwrite16+='#(end macro)        popv16("write16_B"+_sv7)' + '\n';
_strwrite16+='        ' + '\n';
_strwrite16+='        push write16_A' + _sv7 + '_s' + '\n';
_strwrite16+='        if' + '\n';
_strwrite16+='            push    \'-\'' + '\n';
_strwrite16+='            pop     out   # write \'-\' if name < 0' + '\n';
_strwrite16+='        fi' + '\n';
_strwrite16+='        push 5' + '\n';
_strwrite16+='        loop' + '\n';
_strwrite16+='            # output = input mod 10 ; input = input div 10' + '\n';
_strwrite16+='#(begin macro)            divvvvv16("write16_AdivB" + _sv7, "write16_AmodB" + _sv7, "write16_A" + _sv7, "write16_B" + _sv7)' + '\n';
_strwrite16+=divvvvv16("write16_AdivB" + _sv7, "write16_AmodB" + _sv7, "write16_A" + _sv7, "write16_B" + _sv7);
_strwrite16+='#(end macro)            divvvvv16("write16_AdivB" + _sv7, "write16_AmodB" + _sv7, "write16_A" + _sv7, "write16_B" + _sv7)' + '\n';
_strwrite16+='            push    write16_AmodB' + _sv7 + '_0' + '\n';
_strwrite16+='            pop  _stringDecimal_' + '\n';
_strwrite16+='#(begin macro)            pushv16("write16_AdivB" + _sv7)' + '\n';
_strwrite16+=pushv16("write16_AdivB" + _sv7);
_strwrite16+='#(end macro)            pushv16("write16_AdivB" + _sv7)' + '\n';
_strwrite16+='#(begin macro)            popv16("write16_A" + _sv7)' + '\n';
_strwrite16+=popv16("write16_A" + _sv7);
_strwrite16+='#(end macro)            popv16("write16_A" + _sv7)' + '\n';
_strwrite16+='            arotl _stringDecimal_' + '\n';
_strwrite16+='        endloop' + '\n';
_strwrite16+='        push 5' + '\n';
_strwrite16+='        sbm write16cnt' + _sv7 + '' + '\n';
_strwrite16+='        loop' + '\n';
_strwrite16+='            arotr _stringDecimal_' + '\n';
_strwrite16+='#(begin macro)            if_sup("write16cnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)' + '\n';
_strwrite16+=if_sup("write16cnt" + _sv7,1);
_strwrite16+='#(end macro)            if_sup("write16cnt" + _sv7,1)   # cnt > 1 (5, 4 , 3 or 2)' + '\n';
_strwrite16+='#(begin macro)                if_diff("_stringDecimal_",0)' + '\n';
_strwrite16+=if_diff("_stringDecimal_",0);
_strwrite16+='#(end macro)                if_diff("_stringDecimal_",0)' + '\n';
_strwrite16+='                    push _stringDecimal_' + '\n';
_strwrite16+='#(begin macro)                    popouthexa()' + '\n';
_strwrite16+=popouthexa();
_strwrite16+='#(end macro)                    popouthexa()' + '\n';
_strwrite16+='#(begin macro)                    at_set("write16prefixzero"+_sv7,0)' + '\n';
_strwrite16+=at_set("write16prefixzero"+_sv7,0);
_strwrite16+='#(end macro)                    at_set("write16prefixzero"+_sv7,0)' + '\n';
_strwrite16+='                else    ' + '\n';
_strwrite16+='#(begin macro)                    if_equal("write16prefixzero"+_sv7,0)' + '\n';
_strwrite16+=if_equal("write16prefixzero"+_sv7,0);
_strwrite16+='#(end macro)                    if_equal("write16prefixzero"+_sv7,0)' + '\n';
_strwrite16+='                        push _stringDecimal_' + '\n';
_strwrite16+='#(begin macro)                        popouthexa()' + '\n';
_strwrite16+=popouthexa();
_strwrite16+='#(end macro)                        popouthexa()' + '\n';
_strwrite16+='                    fi' + '\n';
_strwrite16+='                fi' + '\n';
_strwrite16+='            else' + '\n';
_strwrite16+='                push _stringDecimal_' + '\n';
_strwrite16+='#(begin macro)                popouthexa()' + '\n';
_strwrite16+=popouthexa();
_strwrite16+='#(end macro)                popouthexa()' + '\n';
_strwrite16+='            fi' + '\n';
_strwrite16+='        endloop' + '\n';
_strwrite16+='#(begin macro)    scope_end()' + '\n';
_strwrite16+=scope_end();
_strwrite16+='#(end macro)    scope_end()' + '\n';
return _strwrite16;
}
_str_main+='' + '\n';
_str_main+='# macro printhexa16(name) : print the 16 bit variable in hexadecimal' + '\n';
var printhexa16 = function(name){
var _strprinthexa16;
_strprinthexa16='';
_strprinthexa16+='    push    ' + name + '_c' + '\n';
_strprinthexa16+='#(begin macro)    popout8hexa()' + '\n';
_strprinthexa16+=popout8hexa();
_strprinthexa16+='#(end macro)    popout8hexa()' + '\n';
_strprinthexa16+='    push    ' + name + '_s' + '\n';
_strprinthexa16+='#(begin macro)    popout8hexa()' + '\n';
_strprinthexa16+=popout8hexa();
_strprinthexa16+='#(end macro)    popout8hexa()' + '\n';
_strprinthexa16+='    push    ' + name + '_1' + '\n';
_strprinthexa16+='#(begin macro)    popout8hexa()' + '\n';
_strprinthexa16+=popout8hexa();
_strprinthexa16+='#(end macro)    popout8hexa()' + '\n';
_strprinthexa16+='    push    ' + name + '_0' + '\n';
_strprinthexa16+='#(begin macro)    popout8hexa()' + '\n';
_strprinthexa16+=popout8hexa();
_strprinthexa16+='#(end macro)    popout8hexa()' + '\n';
return _strprinthexa16;
}
_str_main+='' + '\n';
_str_main+='' + '\n';
_str_main+='#(js) var _sv1; var _sv2; var _sv3; var _sv4; var _sv5; var _sv6; var _sv7;' + '\n';
var _sv1; var _sv2; var _sv3; var _sv4; var _sv5; var _sv6; var _sv7;
_str_main+='#(js) _sv1 = 0; _sv2=0; _sv3 = 0; _sv4 = 0; _sv5 = 0; _sv6 = 0; _sv7 = 0;' + '\n';
_sv1 = 0; _sv2=0; _sv3 = 0; _sv4 = 0; _sv5 = 0; _sv6 = 0; _sv7 = 0;
_str_main+='' + '\n';
_str_main+='# declare temporary 16 bits value used for signed16.inc macros' + '\n';
_str_main+='#(begin macro)var16( "__tmp16__" )' + '\n';
_str_main+=var16( "__tmp16__" );
_str_main+='#(end macro)var16( "__tmp16__" )' + '\n';
_str_main+='#(begin macro)var16( "__tmp16a__" )' + '\n';
_str_main+=var16( "__tmp16a__" );
_str_main+='#(end macro)var16( "__tmp16a__" )' + '\n';
_str_main+='#(begin macro)var16( "__tmp16b__" )' + '\n';
_str_main+=var16( "__tmp16b__" );
_str_main+='#(end macro)var16( "__tmp16b__" )' + '\n';
_str_main+='#(begin macro)var16( "__tmp16c__" )' + '\n';
_str_main+=var16( "__tmp16c__" );
_str_main+='#(end macro)var16( "__tmp16c__" )' + '\n';
_str_main+='#(begin macro)var16( "__tmp16d__" )' + '\n';
_str_main+=var16( "__tmp16d__" );
_str_main+='#(end macro)var16( "__tmp16d__" )' + '\n';
_str_main+='var  _stringDecimal_*5' + '\n';
_str_main+='#(end include)../include/signed16.inc' + '\n';
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
_str_main+='#(begin macro)    print("Hexa dump\\n")' + '\n';
_str_main+=print("Hexa dump\n");
_str_main+='#(end macro)    print("Hexa dump\\n")' + '\n';
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
_str_main+='#(begin macro)    write16("number1") ' + '\n';
_str_main+=write16("number1");
_str_main+='#(end macro)    write16("number1") ' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='#(begin macro)    print("[decimal number2]")' + '\n';
_str_main+=print("[decimal number2]");
_str_main+='#(end macro)    print("[decimal number2]")' + '\n';
_str_main+='#(begin macro)    write16("number2") ' + '\n';
_str_main+=write16("number2");
_str_main+='#(end macro)    write16("number2") ' + '\n';
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
_str_main+='#(begin macro)    write16("number1") ' + '\n';
_str_main+=write16("number1");
_str_main+='#(end macro)    write16("number1") ' + '\n';
_str_main+='#(begin macro)    print("\\n")' + '\n';
_str_main+=print("\n");
_str_main+='#(end macro)    print("\\n")' + '\n';
_str_main+='    ' + '\n';
_str_main+='   ' + '\n';
_str_main+='#(begin macro)scope_end()' + '\n';
_str_main+=scope_end();
_str_main+='#(end macro)scope_end()' + '\n';
_str_main+='' + '\n';
_str_main+='drop' + '\n';
_str_main+='' + '\n';
return _str_main;
}
_main();
