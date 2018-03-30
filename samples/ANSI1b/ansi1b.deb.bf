L#287 : PUSH     0                                //@(macro_inc@331)(ansi_inc@9)(ansi_inc@30)(ansi_inc@140)(main@10)
>>>>>>> >[-]
L#288 : SET      27                               //@(macro_inc@346)(ansi_inc@9)(ansi_inc@30)(ansi_inc@140)(main@10)
[-]+++++++++++++++++++++++++++
L#289 : OUT                                       //  #@(macro_inc@348)(ansi_inc@9)(ansi_inc@30)(ansi_inc@140)(main@10)
.
L#290 : DROP                                      //@(macro_inc@351)(ansi_inc@9)(ansi_inc@30)(ansi_inc@140)(main@10)
[-]<
L#293 : PUSH     0                                //@(macro_inc@331)(ansi_inc@10)(ansi_inc@30)(ansi_inc@140)(main@10)
>[-]
L#294 : SET      91                               //@(macro_inc@346)(ansi_inc@10)(ansi_inc@30)(ansi_inc@140)(main@10)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++
L#295 : OUT                                       // '/open bracket/' #@(macro_inc@348)(ansi_inc@10)(ansi_inc@30)(ansi_inc@140)(main@10)
.
L#296 : DROP                                      //@(macro_inc@351)(ansi_inc@10)(ansi_inc@30)(ansi_inc@140)(main@10)
[-]<
L#300 : PUSH     2                                //@(ansi_inc@141)(main@10)
>[-]++
L#302 : SBM      _wbdinput1                       //@(macro_inc@297)(ansi_inc@142)(main@10)
 
L#303 : PUSH     3                                //@(macro_inc@298)(ansi_inc@142)(main@10)
>[-]+++
L#304 : LOOP                                      //@(macro_inc@299)(ansi_inc@142)(main@10)
[
L#307 : PUSH     STACK(_wbdinput1)                      //@(macro_inc@135)(macro_inc@301)(ansi_inc@142)(main@10)
>[-]<<[>>+>+<<<-]>>[<<+>>-]>[<+>
-]<
L#308 : PUSH     10                               //@(macro_inc@136)(macro_inc@301)(ansi_inc@142)(main@10)
>[-]++++++++++
L#309 : DIV                                       //@(macro_inc@137)(macro_inc@301)(ansi_inc@142)(main@10)
[>+>+<<-]>[<+>-] >[<+>-]<<[-]<[-
>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>
[-]>[-]>[<<<+>>>-]>[<<<+>>>-]<<<
L#310 : POP      STACK(_wbdinput1)                      //@(macro_inc@138)(macro_inc@301)(ansi_inc@142)(main@10)
<<<[-]>>>[<<<+>>>-]<
L#311 : POP      __wbdoutput                      //@(macro_inc@139)(macro_inc@301)(ansi_inc@142)(main@10)
<<<<<<<[-]>>>>>>>[<<<<<<<+>>>>>>
>-]<
L#313 : AROTL    __wbdoutput                      //@(macro_inc@302)(ansi_inc@142)(main@10)
<<<<+[>+>+<<-]>>[<<+>>-]+++[-<->
][-]<[>+<[-]]>[<+>-][-]<[>+<[-]]
>[<+>-]<->[-]<[>+<[-]]>[<+>-]<[-
<[-]>]<<[-]<[->+<]<[->+<]<[->+<]
>>>[-<<<+>>>]>>>>>
L#314 : ENDLOOP                                   //@(macro_inc@303)(ansi_inc@142)(main@10)
-][-]<
L#318 : PUSH     1                                //@(macro_inc@22)(macro_inc@305)(ansi_inc@142)(main@10)
>[-]+
L#319 : SBM      prefixzero1                      //@(macro_inc@23)(macro_inc@305)(ansi_inc@142)(main@10)
 
L#321 : PUSH     3                                //@(macro_inc@306)(ansi_inc@142)(main@10)
>[-]+++
L#322 : SBM      __wbdcnt1                        //@(macro_inc@307)(ansi_inc@142)(main@10)
 
L#323 : LOOP                                      //@(macro_inc@308)(ansi_inc@142)(main@10)
[
L#324 : AROTR    __wbdoutput                      //@(macro_inc@309)(ansi_inc@142)(main@10)
<<<<<[>+>+<<-]>[<+>-]>[<+>-][-]<
[>+<[-]]>[<+>-][-]<[>+<[-]]>[<+>
-]<->[-]<[>+<[-]]>[<+>-]<[-<[-]+
++>]<-<<<<<[-]>[-<+>]>[-<+>]>[-<
+>]<<<[->>>+<<<]>>>>>>>>>>
L#326 : PUSH     STACK(__wbdcnt1)                       //@(macro_inc@45)(macro_inc@310)(ansi_inc@142)(main@10)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#327 : PUSH     1                                //@(macro_inc@46)(macro_inc@310)(ansi_inc@142)(main@10)
>[-]+
L#328 : SUP                                       //@(macro_inc@47)(macro_inc@310)(ansi_inc@142)(main@10)
<+>+>[-]<[>+>+<<-]>[<+>-]>[<+>-]
[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>[
<<+>>-]<[>[-]<<<<[>>>>+>+<<<<<-]
>>>>[<<<<+>>>>-]>[<+>-][-]<[>+<[
-]]>[<+>-]<[>+>+<<-]>>[<<+>>-]<[
<<<<<->->>>>-][-]<[>+>+<<-]>>[<<
+>>-][-]<[>+<[-]]>[<+>-]<->[-]<[
>+<[-]]>[<+>-]<[<<<<<[-]+>[-]>>>
>-][-]<[-]<-][-]<[>+>+<<-]>>[<<+
>>-][-]<[>+<[-]]>[<+>-]<->[-]<[>
+<[-]]>[<+>-]<[<<<[-]>[-]>>-][-]
<[-]>[-]+>[-]>[-]<<<<<[>>>>>+<<<
<<-]>>>>>>[-]<<<<<[>>>>>+<<<<<-]
>>>>>>[-]<<+>+<[->-[>]<<]<[-]<[-
<]>>>[<<<<<+>>>>>[-]]>[-]<<<<<<
L#329 : IF                                        //@(macro_inc@48)(macro_inc@310)(ansi_inc@142)(main@10)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#332 : PUSH     __wbdoutput                      //@(macro_inc@29)(macro_inc@311)(ansi_inc@142)(main@10)
>[-]<<<<<<<<<<[>>>>>>>>>>+>+<<<<
<<<<<<<-]>>>>>>>>>>[<<<<<<<<<<+>
>>>>>>>>>-]>[<+>-]<
L#333 : PUSH     0                                //@(macro_inc@30)(macro_inc@311)(ansi_inc@142)(main@10)
>[-]
L#334 : DIFF                                      //@(macro_inc@31)(macro_inc@311)(ansi_inc@142)(main@10)
[<->-][-]<[>+<[-]]>[<+>-]<
L#335 : IF                                        //@(macro_inc@32)(macro_inc@311)(ansi_inc@142)(main@10)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#338 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@312)(ansi_inc@142)(main@10)
>[-]<<<<<<<<<<<<[>>>>>>>>>>>>+>+
<<<<<<<<<<<<<-]>>>>>>>>>>>>[<<<<
<<<<<<<<+>>>>>>>>>>>>-]>[<+>-]<
L#339 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@312)(ansi_inc@142)(main@10)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#340 : POP      out                              //@(macro_inc@288)(macro_inc@312)(ansi_inc@142)(main@10)
.[-]<
L#344 : AT       STACK(prefixzero1)                     //@(macro_inc@79)(macro_inc@126)(macro_inc@313)(ansi_inc@142)(main@10)
<<<<<
L#345 : SET      0                                //@(macro_inc@80)(macro_inc@126)(macro_inc@313)(ansi_inc@142)(main@10)
[-]
>>>>>
-][-]<
L#349 : ELSE                                      //@(macro_inc@314)(ansi_inc@142)(main@10)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#351 : PUSH     STACK(prefixzero1)                     //@(macro_inc@37)(macro_inc@315)(ansi_inc@142)(main@10)
>[-]<<<<<<[>>>>>>+>+<<<<<<<-]>>>
>>>[<<<<<<+>>>>>>-]>[<+>-]<
L#352 : PUSH     0                                //@(macro_inc@38)(macro_inc@315)(ansi_inc@142)(main@10)
>[-]
L#353 : EQUAL                                     //@(macro_inc@39)(macro_inc@315)(ansi_inc@142)(main@10)
[<->-][-]<[>+<[-]]>[<+>-][-]<[>+
<[-]]>[<+>-]<->[-]<[>+<[-]]>[<+>
-]<
L#354 : IF                                        //@(macro_inc@40)(macro_inc@315)(ansi_inc@142)(main@10)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#357 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@316)(ansi_inc@142)(main@10)
>[-]<<<<<<<<<<<<<<[>>>>>>>>>>>>>
>+>+<<<<<<<<<<<<<<<-]>>>>>>>>>>>
>>>[<<<<<<<<<<<<<<+>>>>>>>>>>>>>
>-]>[<+>-]<
L#358 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@316)(ansi_inc@142)(main@10)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#359 : POP      out                              //@(macro_inc@288)(macro_inc@316)(ansi_inc@142)(main@10)
.[-]<
-][-]<
L#361 : ENDIF                                     //@(macro_inc@317)(ansi_inc@142)(main@10)
[-]<
-][-]<
L#362 : ENDIF                                     //@(macro_inc@318)(ansi_inc@142)(main@10)
[-]<
-][-]<
L#363 : ELSE                                      //@(macro_inc@319)(ansi_inc@142)(main@10)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#365 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@320)(ansi_inc@142)(main@10)
>[-]<<<<<<<<<<[>>>>>>>>>>+>+<<<<
<<<<<<<-]>>>>>>>>>>[<<<<<<<<<<+>
>>>>>>>>>-]>[<+>-]<
L#366 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@320)(ansi_inc@142)(main@10)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#367 : POP      out                              //@(macro_inc@288)(macro_inc@320)(ansi_inc@142)(main@10)
.[-]<
-][-]<
L#369 : ENDIF                                     //@(macro_inc@321)(ansi_inc@142)(main@10)
[-]<
L#370 : ENDLOOP                                   //@(macro_inc@322)(ansi_inc@142)(main@10)
-][-]<
L#372 : DROP                                      //@(macro_inc@15)(macro_inc@323)(ansi_inc@142)(main@10)
[-]<
L#374 : DROP                                      // remove push #@(macro_inc@324)(ansi_inc@142)(main@10)
[-]<
L#377 : PUSH     0                                //@(macro_inc@331)(ansi_inc@143)(main@10)
>[-]
L#378 : SET      74                               //@(macro_inc@346)(ansi_inc@143)(main@10)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++++++
L#379 : OUT                                       // 'J' #@(macro_inc@348)(ansi_inc@143)(main@10)
.
L#380 : DROP                                      //@(macro_inc@351)(ansi_inc@143)(main@10)
[-]<
L#388 : PUSH     0                                //@(macro_inc@331)(ansi_inc@9)(ansi_inc@30)(ansi_inc@125)(main@12)
>[-]
L#389 : SET      27                               //@(macro_inc@346)(ansi_inc@9)(ansi_inc@30)(ansi_inc@125)(main@12)
[-]+++++++++++++++++++++++++++
L#390 : OUT                                       //  #@(macro_inc@348)(ansi_inc@9)(ansi_inc@30)(ansi_inc@125)(main@12)
.
L#391 : DROP                                      //@(macro_inc@351)(ansi_inc@9)(ansi_inc@30)(ansi_inc@125)(main@12)
[-]<
L#394 : PUSH     0                                //@(macro_inc@331)(ansi_inc@10)(ansi_inc@30)(ansi_inc@125)(main@12)
>[-]
L#395 : SET      91                               //@(macro_inc@346)(ansi_inc@10)(ansi_inc@30)(ansi_inc@125)(main@12)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++
L#396 : OUT                                       // '/open bracket/' #@(macro_inc@348)(ansi_inc@10)(ansi_inc@30)(ansi_inc@125)(main@12)
.
L#397 : DROP                                      //@(macro_inc@351)(ansi_inc@10)(ansi_inc@30)(ansi_inc@125)(main@12)
[-]<
L#401 : PUSH     1                                //@(ansi_inc@126)(main@12)
>[-]+
L#403 : SBM      _wbdinput2                       //@(macro_inc@297)(ansi_inc@127)(main@12)
 
L#404 : PUSH     3                                //@(macro_inc@298)(ansi_inc@127)(main@12)
>[-]+++
L#405 : LOOP                                      //@(macro_inc@299)(ansi_inc@127)(main@12)
[
L#408 : PUSH     STACK(_wbdinput2)                      //@(macro_inc@135)(macro_inc@301)(ansi_inc@127)(main@12)
>[-]<<[>>+>+<<<-]>>[<<+>>-]>[<+>
-]<
L#409 : PUSH     10                               //@(macro_inc@136)(macro_inc@301)(ansi_inc@127)(main@12)
>[-]++++++++++
L#410 : DIV                                       //@(macro_inc@137)(macro_inc@301)(ansi_inc@127)(main@12)
[>+>+<<-]>[<+>-] >[<+>-]<<[-]<[-
>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>
[-]>[-]>[<<<+>>>-]>[<<<+>>>-]<<<
L#411 : POP      STACK(_wbdinput2)                      //@(macro_inc@138)(macro_inc@301)(ansi_inc@127)(main@12)
<<<[-]>>>[<<<+>>>-]<
L#412 : POP      __wbdoutput                      //@(macro_inc@139)(macro_inc@301)(ansi_inc@127)(main@12)
<<<<<<<[-]>>>>>>>[<<<<<<<+>>>>>>
>-]<
L#414 : AROTL    __wbdoutput                      //@(macro_inc@302)(ansi_inc@127)(main@12)
<<<<+[>+>+<<-]>>[<<+>>-]+++[-<->
][-]<[>+<[-]]>[<+>-][-]<[>+<[-]]
>[<+>-]<->[-]<[>+<[-]]>[<+>-]<[-
<[-]>]<<[-]<[->+<]<[->+<]<[->+<]
>>>[-<<<+>>>]>>>>>
L#415 : ENDLOOP                                   //@(macro_inc@303)(ansi_inc@127)(main@12)
-][-]<
L#419 : PUSH     1                                //@(macro_inc@22)(macro_inc@305)(ansi_inc@127)(main@12)
>[-]+
L#420 : SBM      prefixzero2                      //@(macro_inc@23)(macro_inc@305)(ansi_inc@127)(main@12)
 
L#422 : PUSH     3                                //@(macro_inc@306)(ansi_inc@127)(main@12)
>[-]+++
L#423 : SBM      __wbdcnt2                        //@(macro_inc@307)(ansi_inc@127)(main@12)
 
L#424 : LOOP                                      //@(macro_inc@308)(ansi_inc@127)(main@12)
[
L#425 : AROTR    __wbdoutput                      //@(macro_inc@309)(ansi_inc@127)(main@12)
<<<<<[>+>+<<-]>[<+>-]>[<+>-][-]<
[>+<[-]]>[<+>-][-]<[>+<[-]]>[<+>
-]<->[-]<[>+<[-]]>[<+>-]<[-<[-]+
++>]<-<<<<<[-]>[-<+>]>[-<+>]>[-<
+>]<<<[->>>+<<<]>>>>>>>>>>
L#427 : PUSH     STACK(__wbdcnt2)                       //@(macro_inc@45)(macro_inc@310)(ansi_inc@127)(main@12)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#428 : PUSH     1                                //@(macro_inc@46)(macro_inc@310)(ansi_inc@127)(main@12)
>[-]+
L#429 : SUP                                       //@(macro_inc@47)(macro_inc@310)(ansi_inc@127)(main@12)
<+>+>[-]<[>+>+<<-]>[<+>-]>[<+>-]
[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>[
<<+>>-]<[>[-]<<<<[>>>>+>+<<<<<-]
>>>>[<<<<+>>>>-]>[<+>-][-]<[>+<[
-]]>[<+>-]<[>+>+<<-]>>[<<+>>-]<[
<<<<<->->>>>-][-]<[>+>+<<-]>>[<<
+>>-][-]<[>+<[-]]>[<+>-]<->[-]<[
>+<[-]]>[<+>-]<[<<<<<[-]+>[-]>>>
>-][-]<[-]<-][-]<[>+>+<<-]>>[<<+
>>-][-]<[>+<[-]]>[<+>-]<->[-]<[>
+<[-]]>[<+>-]<[<<<[-]>[-]>>-][-]
<[-]>[-]+>[-]>[-]<<<<<[>>>>>+<<<
<<-]>>>>>>[-]<<<<<[>>>>>+<<<<<-]
>>>>>>[-]<<+>+<[->-[>]<<]<[-]<[-
<]>>>[<<<<<+>>>>>[-]]>[-]<<<<<<
L#430 : IF                                        //@(macro_inc@48)(macro_inc@310)(ansi_inc@127)(main@12)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#433 : PUSH     __wbdoutput                      //@(macro_inc@29)(macro_inc@311)(ansi_inc@127)(main@12)
>[-]<<<<<<<<<<[>>>>>>>>>>+>+<<<<
<<<<<<<-]>>>>>>>>>>[<<<<<<<<<<+>
>>>>>>>>>-]>[<+>-]<
L#434 : PUSH     0                                //@(macro_inc@30)(macro_inc@311)(ansi_inc@127)(main@12)
>[-]
L#435 : DIFF                                      //@(macro_inc@31)(macro_inc@311)(ansi_inc@127)(main@12)
[<->-][-]<[>+<[-]]>[<+>-]<
L#436 : IF                                        //@(macro_inc@32)(macro_inc@311)(ansi_inc@127)(main@12)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#439 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@312)(ansi_inc@127)(main@12)
>[-]<<<<<<<<<<<<[>>>>>>>>>>>>+>+
<<<<<<<<<<<<<-]>>>>>>>>>>>>[<<<<
<<<<<<<<+>>>>>>>>>>>>-]>[<+>-]<
L#440 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@312)(ansi_inc@127)(main@12)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#441 : POP      out                              //@(macro_inc@288)(macro_inc@312)(ansi_inc@127)(main@12)
.[-]<
L#445 : AT       STACK(prefixzero2)                     //@(macro_inc@79)(macro_inc@126)(macro_inc@313)(ansi_inc@127)(main@12)
<<<<<
L#446 : SET      0                                //@(macro_inc@80)(macro_inc@126)(macro_inc@313)(ansi_inc@127)(main@12)
[-]
>>>>>
-][-]<
L#450 : ELSE                                      //@(macro_inc@314)(ansi_inc@127)(main@12)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#452 : PUSH     STACK(prefixzero2)                     //@(macro_inc@37)(macro_inc@315)(ansi_inc@127)(main@12)
>[-]<<<<<<[>>>>>>+>+<<<<<<<-]>>>
>>>[<<<<<<+>>>>>>-]>[<+>-]<
L#453 : PUSH     0                                //@(macro_inc@38)(macro_inc@315)(ansi_inc@127)(main@12)
>[-]
L#454 : EQUAL                                     //@(macro_inc@39)(macro_inc@315)(ansi_inc@127)(main@12)
[<->-][-]<[>+<[-]]>[<+>-][-]<[>+
<[-]]>[<+>-]<->[-]<[>+<[-]]>[<+>
-]<
L#455 : IF                                        //@(macro_inc@40)(macro_inc@315)(ansi_inc@127)(main@12)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#458 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@316)(ansi_inc@127)(main@12)
>[-]<<<<<<<<<<<<<<[>>>>>>>>>>>>>
>+>+<<<<<<<<<<<<<<<-]>>>>>>>>>>>
>>>[<<<<<<<<<<<<<<+>>>>>>>>>>>>>
>-]>[<+>-]<
L#459 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@316)(ansi_inc@127)(main@12)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#460 : POP      out                              //@(macro_inc@288)(macro_inc@316)(ansi_inc@127)(main@12)
.[-]<
-][-]<
L#462 : ENDIF                                     //@(macro_inc@317)(ansi_inc@127)(main@12)
[-]<
-][-]<
L#463 : ENDIF                                     //@(macro_inc@318)(ansi_inc@127)(main@12)
[-]<
-][-]<
L#464 : ELSE                                      //@(macro_inc@319)(ansi_inc@127)(main@12)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#466 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@320)(ansi_inc@127)(main@12)
>[-]<<<<<<<<<<[>>>>>>>>>>+>+<<<<
<<<<<<<-]>>>>>>>>>>[<<<<<<<<<<+>
>>>>>>>>>-]>[<+>-]<
L#467 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@320)(ansi_inc@127)(main@12)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#468 : POP      out                              //@(macro_inc@288)(macro_inc@320)(ansi_inc@127)(main@12)
.[-]<
-][-]<
L#470 : ENDIF                                     //@(macro_inc@321)(ansi_inc@127)(main@12)
[-]<
L#471 : ENDLOOP                                   //@(macro_inc@322)(ansi_inc@127)(main@12)
-][-]<
L#473 : DROP                                      //@(macro_inc@15)(macro_inc@323)(ansi_inc@127)(main@12)
[-]<
L#475 : DROP                                      // remove push #@(macro_inc@324)(ansi_inc@127)(main@12)
[-]<
L#478 : PUSH     0                                //@(macro_inc@331)(ansi_inc@128)(main@12)
>[-]
L#479 : SET      59                               //@(macro_inc@346)(ansi_inc@128)(main@12)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++
L#480 : OUT                                       // ';' #@(macro_inc@348)(ansi_inc@128)(main@12)
.
L#481 : DROP                                      //@(macro_inc@351)(ansi_inc@128)(main@12)
[-]<
L#483 : PUSH     1                                //@(ansi_inc@129)(main@12)
>[-]+
L#485 : SBM      _wbdinput3                       //@(macro_inc@297)(ansi_inc@130)(main@12)
 
L#486 : PUSH     3                                //@(macro_inc@298)(ansi_inc@130)(main@12)
>[-]+++
L#487 : LOOP                                      //@(macro_inc@299)(ansi_inc@130)(main@12)
[
L#490 : PUSH     STACK(_wbdinput3)                      //@(macro_inc@135)(macro_inc@301)(ansi_inc@130)(main@12)
>[-]<<[>>+>+<<<-]>>[<<+>>-]>[<+>
-]<
L#491 : PUSH     10                               //@(macro_inc@136)(macro_inc@301)(ansi_inc@130)(main@12)
>[-]++++++++++
L#492 : DIV                                       //@(macro_inc@137)(macro_inc@301)(ansi_inc@130)(main@12)
[>+>+<<-]>[<+>-] >[<+>-]<<[-]<[-
>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>
[-]>[-]>[<<<+>>>-]>[<<<+>>>-]<<<
L#493 : POP      STACK(_wbdinput3)                      //@(macro_inc@138)(macro_inc@301)(ansi_inc@130)(main@12)
<<<[-]>>>[<<<+>>>-]<
L#494 : POP      __wbdoutput                      //@(macro_inc@139)(macro_inc@301)(ansi_inc@130)(main@12)
<<<<<<<[-]>>>>>>>[<<<<<<<+>>>>>>
>-]<
L#496 : AROTL    __wbdoutput                      //@(macro_inc@302)(ansi_inc@130)(main@12)
<<<<+[>+>+<<-]>>[<<+>>-]+++[-<->
][-]<[>+<[-]]>[<+>-][-]<[>+<[-]]
>[<+>-]<->[-]<[>+<[-]]>[<+>-]<[-
<[-]>]<<[-]<[->+<]<[->+<]<[->+<]
>>>[-<<<+>>>]>>>>>
L#497 : ENDLOOP                                   //@(macro_inc@303)(ansi_inc@130)(main@12)
-][-]<
L#501 : PUSH     1                                //@(macro_inc@22)(macro_inc@305)(ansi_inc@130)(main@12)
>[-]+
L#502 : SBM      prefixzero3                      //@(macro_inc@23)(macro_inc@305)(ansi_inc@130)(main@12)
 
L#504 : PUSH     3                                //@(macro_inc@306)(ansi_inc@130)(main@12)
>[-]+++
L#505 : SBM      __wbdcnt3                        //@(macro_inc@307)(ansi_inc@130)(main@12)
 
L#506 : LOOP                                      //@(macro_inc@308)(ansi_inc@130)(main@12)
[
L#507 : AROTR    __wbdoutput                      //@(macro_inc@309)(ansi_inc@130)(main@12)
<<<<<[>+>+<<-]>[<+>-]>[<+>-][-]<
[>+<[-]]>[<+>-][-]<[>+<[-]]>[<+>
-]<->[-]<[>+<[-]]>[<+>-]<[-<[-]+
++>]<-<<<<<[-]>[-<+>]>[-<+>]>[-<
+>]<<<[->>>+<<<]>>>>>>>>>>
L#509 : PUSH     STACK(__wbdcnt3)                       //@(macro_inc@45)(macro_inc@310)(ansi_inc@130)(main@12)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#510 : PUSH     1                                //@(macro_inc@46)(macro_inc@310)(ansi_inc@130)(main@12)
>[-]+
L#511 : SUP                                       //@(macro_inc@47)(macro_inc@310)(ansi_inc@130)(main@12)
<+>+>[-]<[>+>+<<-]>[<+>-]>[<+>-]
[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>[
<<+>>-]<[>[-]<<<<[>>>>+>+<<<<<-]
>>>>[<<<<+>>>>-]>[<+>-][-]<[>+<[
-]]>[<+>-]<[>+>+<<-]>>[<<+>>-]<[
<<<<<->->>>>-][-]<[>+>+<<-]>>[<<
+>>-][-]<[>+<[-]]>[<+>-]<->[-]<[
>+<[-]]>[<+>-]<[<<<<<[-]+>[-]>>>
>-][-]<[-]<-][-]<[>+>+<<-]>>[<<+
>>-][-]<[>+<[-]]>[<+>-]<->[-]<[>
+<[-]]>[<+>-]<[<<<[-]>[-]>>-][-]
<[-]>[-]+>[-]>[-]<<<<<[>>>>>+<<<
<<-]>>>>>>[-]<<<<<[>>>>>+<<<<<-]
>>>>>>[-]<<+>+<[->-[>]<<]<[-]<[-
<]>>>[<<<<<+>>>>>[-]]>[-]<<<<<<
L#512 : IF                                        //@(macro_inc@48)(macro_inc@310)(ansi_inc@130)(main@12)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#515 : PUSH     __wbdoutput                      //@(macro_inc@29)(macro_inc@311)(ansi_inc@130)(main@12)
>[-]<<<<<<<<<<[>>>>>>>>>>+>+<<<<
<<<<<<<-]>>>>>>>>>>[<<<<<<<<<<+>
>>>>>>>>>-]>[<+>-]<
L#516 : PUSH     0                                //@(macro_inc@30)(macro_inc@311)(ansi_inc@130)(main@12)
>[-]
L#517 : DIFF                                      //@(macro_inc@31)(macro_inc@311)(ansi_inc@130)(main@12)
[<->-][-]<[>+<[-]]>[<+>-]<
L#518 : IF                                        //@(macro_inc@32)(macro_inc@311)(ansi_inc@130)(main@12)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#521 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@312)(ansi_inc@130)(main@12)
>[-]<<<<<<<<<<<<[>>>>>>>>>>>>+>+
<<<<<<<<<<<<<-]>>>>>>>>>>>>[<<<<
<<<<<<<<+>>>>>>>>>>>>-]>[<+>-]<
L#522 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@312)(ansi_inc@130)(main@12)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#523 : POP      out                              //@(macro_inc@288)(macro_inc@312)(ansi_inc@130)(main@12)
.[-]<
L#527 : AT       STACK(prefixzero3)                     //@(macro_inc@79)(macro_inc@126)(macro_inc@313)(ansi_inc@130)(main@12)
<<<<<
L#528 : SET      0                                //@(macro_inc@80)(macro_inc@126)(macro_inc@313)(ansi_inc@130)(main@12)
[-]
>>>>>
-][-]<
L#532 : ELSE                                      //@(macro_inc@314)(ansi_inc@130)(main@12)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#534 : PUSH     STACK(prefixzero3)                     //@(macro_inc@37)(macro_inc@315)(ansi_inc@130)(main@12)
>[-]<<<<<<[>>>>>>+>+<<<<<<<-]>>>
>>>[<<<<<<+>>>>>>-]>[<+>-]<
L#535 : PUSH     0                                //@(macro_inc@38)(macro_inc@315)(ansi_inc@130)(main@12)
>[-]
L#536 : EQUAL                                     //@(macro_inc@39)(macro_inc@315)(ansi_inc@130)(main@12)
[<->-][-]<[>+<[-]]>[<+>-][-]<[>+
<[-]]>[<+>-]<->[-]<[>+<[-]]>[<+>
-]<
L#537 : IF                                        //@(macro_inc@40)(macro_inc@315)(ansi_inc@130)(main@12)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#540 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@316)(ansi_inc@130)(main@12)
>[-]<<<<<<<<<<<<<<[>>>>>>>>>>>>>
>+>+<<<<<<<<<<<<<<<-]>>>>>>>>>>>
>>>[<<<<<<<<<<<<<<+>>>>>>>>>>>>>
>-]>[<+>-]<
L#541 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@316)(ansi_inc@130)(main@12)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#542 : POP      out                              //@(macro_inc@288)(macro_inc@316)(ansi_inc@130)(main@12)
.[-]<
-][-]<
L#544 : ENDIF                                     //@(macro_inc@317)(ansi_inc@130)(main@12)
[-]<
-][-]<
L#545 : ENDIF                                     //@(macro_inc@318)(ansi_inc@130)(main@12)
[-]<
-][-]<
L#546 : ELSE                                      //@(macro_inc@319)(ansi_inc@130)(main@12)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#548 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@320)(ansi_inc@130)(main@12)
>[-]<<<<<<<<<<[>>>>>>>>>>+>+<<<<
<<<<<<<-]>>>>>>>>>>[<<<<<<<<<<+>
>>>>>>>>>-]>[<+>-]<
L#549 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@320)(ansi_inc@130)(main@12)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#550 : POP      out                              //@(macro_inc@288)(macro_inc@320)(ansi_inc@130)(main@12)
.[-]<
-][-]<
L#552 : ENDIF                                     //@(macro_inc@321)(ansi_inc@130)(main@12)
[-]<
L#553 : ENDLOOP                                   //@(macro_inc@322)(ansi_inc@130)(main@12)
-][-]<
L#555 : DROP                                      //@(macro_inc@15)(macro_inc@323)(ansi_inc@130)(main@12)
[-]<
L#557 : DROP                                      // remove push #@(macro_inc@324)(ansi_inc@130)(main@12)
[-]<
L#560 : PUSH     0                                //@(macro_inc@331)(ansi_inc@131)(main@12)
>[-]
L#561 : SET      72                               //@(macro_inc@346)(ansi_inc@131)(main@12)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++++
L#562 : OUT                                       // 'H' #@(macro_inc@348)(ansi_inc@131)(main@12)
.
L#563 : DROP                                      //@(macro_inc@351)(ansi_inc@131)(main@12)
[-]<
L#568 : PUSH     0                                //@(macro_inc@331)(main@14)
>[-]
L#569 : SET      84                               //@(macro_inc@346)(main@14)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++
L#570 : OUT                                       // 'T' #@(macro_inc@348)(main@14)
.
L#571 : ADD      20                               //@(macro_inc@339)(main@14)
++++++++++++++++++++
L#572 : OUT                                       // 'h' #@(macro_inc@348)(main@14)
.
L#573 : ADD      1                                //@(macro_inc@339)(main@14)
+
L#574 : OUT                                       // 'i' #@(macro_inc@348)(main@14)
.
L#575 : ADD      10                               //@(macro_inc@339)(main@14)
++++++++++
L#576 : OUT                                       // 's' #@(macro_inc@348)(main@14)
.
L#577 : SET      32                               //@(macro_inc@346)(main@14)
[-]+++++++++++++++++++++++++++++
+++
L#578 : OUT                                       // ' ' #@(macro_inc@348)(main@14)
.
L#579 : ADD      73                               //@(macro_inc@339)(main@14)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++
L#580 : OUT                                       // 'i' #@(macro_inc@348)(main@14)
.
L#581 : ADD      10                               //@(macro_inc@339)(main@14)
++++++++++
L#582 : OUT                                       // 's' #@(macro_inc@348)(main@14)
.
L#583 : SET      32                               //@(macro_inc@346)(main@14)
[-]+++++++++++++++++++++++++++++
+++
L#584 : OUT                                       // ' ' #@(macro_inc@348)(main@14)
.
L#585 : ADD      65                               //@(macro_inc@339)(main@14)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+
L#586 : OUT                                       // 'a' #@(macro_inc@348)(main@14)
.
L#587 : ADD      13                               //@(macro_inc@339)(main@14)
+++++++++++++
L#588 : OUT                                       // 'n' #@(macro_inc@348)(main@14)
.
L#589 : SET      32                               //@(macro_inc@346)(main@14)
[-]+++++++++++++++++++++++++++++
+++
L#590 : OUT                                       // ' ' #@(macro_inc@348)(main@14)
.
L#591 : SUB      5                                //@(macro_inc@342)(main@14)
-----
L#592 : OUT                                       //  #@(macro_inc@348)(main@14)
.
L#593 : ADD      64                               //@(macro_inc@339)(main@14)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
L#594 : OUT                                       // '/open bracket/' #@(macro_inc@348)(main@14)
.
L#595 : SUB      36                               //@(macro_inc@342)(main@14)
--------------------------------
----
L#596 : OUT                                       // '7' #@(macro_inc@348)(main@14)
.
L#597 : ADD      54                               //@(macro_inc@339)(main@14)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++
L#598 : OUT                                       // 'm' #@(macro_inc@348)(main@14)
.
L#599 : SUB      44                               //@(macro_inc@342)(main@14)
--------------------------------
------------
L#600 : OUT                                       // 'A' #@(macro_inc@348)(main@14)
.
L#601 : ADD      13                               //@(macro_inc@339)(main@14)
+++++++++++++
L#602 : OUT                                       // 'N' #@(macro_inc@348)(main@14)
.
L#603 : ADD      5                                //@(macro_inc@339)(main@14)
+++++
L#604 : OUT                                       // 'S' #@(macro_inc@348)(main@14)
.
L#605 : SUB      10                               //@(macro_inc@342)(main@14)
----------
L#606 : OUT                                       // 'I' #@(macro_inc@348)(main@14)
.
L#607 : SET      27                               //@(macro_inc@346)(main@14)
[-]+++++++++++++++++++++++++++
L#608 : OUT                                       //  #@(macro_inc@348)(main@14)
.
L#609 : ADD      64                               //@(macro_inc@339)(main@14)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
L#610 : OUT                                       // '/open bracket/' #@(macro_inc@348)(main@14)
.
L#611 : SUB      43                               //@(macro_inc@342)(main@14)
--------------------------------
-----------
L#612 : OUT                                       // '0' #@(macro_inc@348)(main@14)
.
L#613 : ADD      61                               //@(macro_inc@339)(main@14)
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++
L#614 : OUT                                       // 'm' #@(macro_inc@348)(main@14)
.
L#615 : SET      32                               //@(macro_inc@346)(main@14)
[-]+++++++++++++++++++++++++++++
+++
L#616 : OUT                                       // ' ' #@(macro_inc@348)(main@14)
.
L#617 : SUB      5                                //@(macro_inc@342)(main@14)
-----
L#618 : OUT                                       //  #@(macro_inc@348)(main@14)
.
L#619 : ADD      64                               //@(macro_inc@339)(main@14)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
L#620 : OUT                                       // '/open bracket/' #@(macro_inc@348)(main@14)
.
L#621 : SUB      40                               //@(macro_inc@342)(main@14)
--------------------------------
--------
L#622 : OUT                                       // '3' #@(macro_inc@348)(main@14)
.
L#623 : ADD      5                                //@(macro_inc@339)(main@14)
+++++
L#624 : OUT                                       // '8' #@(macro_inc@348)(main@14)
.
L#625 : ADD      3                                //@(macro_inc@339)(main@14)
+++
L#626 : OUT                                       // ';' #@(macro_inc@348)(main@14)
.
L#627 : SUB      6                                //@(macro_inc@342)(main@14)
------
L#628 : OUT                                       // '5' #@(macro_inc@348)(main@14)
.
L#629 : ADD      6                                //@(macro_inc@339)(main@14)
++++++
L#630 : OUT                                       // ';' #@(macro_inc@348)(main@14)
.
L#631 : SUB      9                                //@(macro_inc@342)(main@14)
---------
L#632 : OUT                                       // '2' #@(macro_inc@348)(main@14)
.
L#633 : OUT                                       // '2' #@(macro_inc@348)(main@14)
.
L#634 : ADD      4                                //@(macro_inc@339)(main@14)
++++
L#635 : OUT                                       // '6' #@(macro_inc@348)(main@14)
.
L#636 : ADD      55                               //@(macro_inc@339)(main@14)
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++
L#637 : OUT                                       // 'm' #@(macro_inc@348)(main@14)
.
L#638 : ADD      6                                //@(macro_inc@339)(main@14)
++++++
L#639 : OUT                                       // 's' #@(macro_inc@348)(main@14)
.
L#640 : SUB      18                               //@(macro_inc@342)(main@14)
------------------
L#641 : OUT                                       // 'a' #@(macro_inc@348)(main@14)
.
L#642 : ADD      12                               //@(macro_inc@339)(main@14)
++++++++++++
L#643 : OUT                                       // 'm' #@(macro_inc@348)(main@14)
.
L#644 : ADD      3                                //@(macro_inc@339)(main@14)
+++
L#645 : OUT                                       // 'p' #@(macro_inc@348)(main@14)
.
L#646 : SUB      4                                //@(macro_inc@342)(main@14)
----
L#647 : OUT                                       // 'l' #@(macro_inc@348)(main@14)
.
L#648 : SUB      7                                //@(macro_inc@342)(main@14)
-------
L#649 : OUT                                       // 'e' #@(macro_inc@348)(main@14)
.
L#650 : SET      27                               //@(macro_inc@346)(main@14)
[-]+++++++++++++++++++++++++++
L#651 : OUT                                       //  #@(macro_inc@348)(main@14)
.
L#652 : ADD      64                               //@(macro_inc@339)(main@14)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
L#653 : OUT                                       // '/open bracket/' #@(macro_inc@348)(main@14)
.
L#654 : SUB      43                               //@(macro_inc@342)(main@14)
--------------------------------
-----------
L#655 : OUT                                       // '0' #@(macro_inc@348)(main@14)
.
L#656 : ADD      61                               //@(macro_inc@339)(main@14)
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++++++++
L#657 : OUT                                       // 'm' #@(macro_inc@348)(main@14)
.
L#658 : SET      10                               //@(macro_inc@346)(main@14)
[-]++++++++++
L#659 : OUT                                       //  #@(macro_inc@348)(main@14)
.
L#660 : DROP                                      //@(macro_inc@351)(main@14)
[-]<
L#664 : PUSH     2                                //@(ansi_inc@407)(ansi_inc@493)(main@15)
>[-]++
L#665 : ADD      30                               //@(ansi_inc@408)(ansi_inc@493)(main@15)
++++++++++++++++++++++++++++++
L#666 : SBM      __ansifgc1                       //@(ansi_inc@409)(ansi_inc@493)(main@15)
 
L#671 : PUSH     0                                //@(macro_inc@331)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]
L#672 : SET      27                               //@(macro_inc@346)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]+++++++++++++++++++++++++++
L#673 : OUT                                       //  #@(macro_inc@348)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@410)(ansi_inc@493)(main@15)
.
L#674 : DROP                                      //@(macro_inc@351)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]<
L#677 : PUSH     0                                //@(macro_inc@331)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]
L#678 : SET      91                               //@(macro_inc@346)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++
L#679 : OUT                                       // '/open bracket/' #@(macro_inc@348)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@410)(ansi_inc@493)(main@15)
.
L#680 : DROP                                      //@(macro_inc@351)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]<
L#684 : PUSH     STACK(__ansifgc1)                      //@(ansi_inc@187)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#686 : SBM      _wbdinput4                       //@(macro_inc@297)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
 
L#687 : PUSH     3                                //@(macro_inc@298)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]+++
L#688 : LOOP                                      //@(macro_inc@299)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[
L#691 : PUSH     STACK(_wbdinput4)                      //@(macro_inc@135)(macro_inc@301)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<<[>>+>+<<<-]>>[<<+>>-]>[<+>
-]<
L#692 : PUSH     10                               //@(macro_inc@136)(macro_inc@301)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]++++++++++
L#693 : DIV                                       //@(macro_inc@137)(macro_inc@301)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[>+>+<<-]>[<+>-] >[<+>-]<<[-]<[-
>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>
[-]>[-]>[<<<+>>>-]>[<<<+>>>-]<<<
L#694 : POP      STACK(_wbdinput4)                      //@(macro_inc@138)(macro_inc@301)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
<<<[-]>>>[<<<+>>>-]<
L#695 : POP      __wbdoutput                      //@(macro_inc@139)(macro_inc@301)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
<<<<<<<<[-]>>>>>>>>[<<<<<<<<+>>>
>>>>>-]<
L#697 : AROTL    __wbdoutput                      //@(macro_inc@302)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
<<<<<+[>+>+<<-]>>[<<+>>-]+++[-<-
>][-]<[>+<[-]]>[<+>-][-]<[>+<[-]
]>[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
-<[-]>]<<[-]<[->+<]<[->+<]<[->+<
]>>>[-<<<+>>>]>>>>>>
L#698 : ENDLOOP                                   //@(macro_inc@303)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
-][-]<
L#702 : PUSH     1                                //@(macro_inc@22)(macro_inc@305)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]+
L#703 : SBM      prefixzero4                      //@(macro_inc@23)(macro_inc@305)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
 
L#705 : PUSH     3                                //@(macro_inc@306)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]+++
L#706 : SBM      __wbdcnt4                        //@(macro_inc@307)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
 
L#707 : LOOP                                      //@(macro_inc@308)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[
L#708 : AROTR    __wbdoutput                      //@(macro_inc@309)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
<<<<<<[>+>+<<-]>[<+>-]>[<+>-][-]
<[>+<[-]]>[<+>-][-]<[>+<[-]]>[<+
>-]<->[-]<[>+<[-]]>[<+>-]<[-<[-]
+++>]<-<<<<<[-]>[-<+>]>[-<+>]>[-
<+>]<<<[->>>+<<<]>>>>>>>>>>>
L#710 : PUSH     STACK(__wbdcnt4)                       //@(macro_inc@45)(macro_inc@310)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#711 : PUSH     1                                //@(macro_inc@46)(macro_inc@310)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]+
L#712 : SUP                                       //@(macro_inc@47)(macro_inc@310)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
<+>+>[-]<[>+>+<<-]>[<+>-]>[<+>-]
[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>[
<<+>>-]<[>[-]<<<<[>>>>+>+<<<<<-]
>>>>[<<<<+>>>>-]>[<+>-][-]<[>+<[
-]]>[<+>-]<[>+>+<<-]>>[<<+>>-]<[
<<<<<->->>>>-][-]<[>+>+<<-]>>[<<
+>>-][-]<[>+<[-]]>[<+>-]<->[-]<[
>+<[-]]>[<+>-]<[<<<<<[-]+>[-]>>>
>-][-]<[-]<-][-]<[>+>+<<-]>>[<<+
>>-][-]<[>+<[-]]>[<+>-]<->[-]<[>
+<[-]]>[<+>-]<[<<<[-]>[-]>>-][-]
<[-]>[-]+>[-]>[-]<<<<<[>>>>>+<<<
<<-]>>>>>>[-]<<<<<[>>>>>+<<<<<-]
>>>>>>[-]<<+>+<[->-[>]<<]<[-]<[-
<]>>>[<<<<<+>>>>>[-]]>[-]<<<<<<
L#713 : IF                                        //@(macro_inc@48)(macro_inc@310)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#716 : PUSH     __wbdoutput                      //@(macro_inc@29)(macro_inc@311)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<<<<<<<<<<<[>>>>>>>>>>>+>+<<
<<<<<<<<<<-]>>>>>>>>>>>[<<<<<<<<
<<<+>>>>>>>>>>>-]>[<+>-]<
L#717 : PUSH     0                                //@(macro_inc@30)(macro_inc@311)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]
L#718 : DIFF                                      //@(macro_inc@31)(macro_inc@311)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[<->-][-]<[>+<[-]]>[<+>-]<
L#719 : IF                                        //@(macro_inc@32)(macro_inc@311)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#722 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@312)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<<<<<<<<<<<<<[>>>>>>>>>>>>>+
>+<<<<<<<<<<<<<<-]>>>>>>>>>>>>>[
<<<<<<<<<<<<<+>>>>>>>>>>>>>-]>[<
+>-]<
L#723 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@312)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#724 : POP      out                              //@(macro_inc@288)(macro_inc@312)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
.[-]<
L#728 : AT       STACK(prefixzero4)                     //@(macro_inc@79)(macro_inc@126)(macro_inc@313)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
<<<<<
L#729 : SET      0                                //@(macro_inc@80)(macro_inc@126)(macro_inc@313)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]
>>>>>
-][-]<
L#733 : ELSE                                      //@(macro_inc@314)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#735 : PUSH     STACK(prefixzero4)                     //@(macro_inc@37)(macro_inc@315)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<<<<<<[>>>>>>+>+<<<<<<<-]>>>
>>>[<<<<<<+>>>>>>-]>[<+>-]<
L#736 : PUSH     0                                //@(macro_inc@38)(macro_inc@315)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]
L#737 : EQUAL                                     //@(macro_inc@39)(macro_inc@315)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[<->-][-]<[>+<[-]]>[<+>-][-]<[>+
<[-]]>[<+>-]<->[-]<[>+<[-]]>[<+>
-]<
L#738 : IF                                        //@(macro_inc@40)(macro_inc@315)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#741 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@316)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<<<<<<<<<<<<<<<[>>>>>>>>>>>>
>>>+>+<<<<<<<<<<<<<<<<-]>>>>>>>>
>>>>>>>[<<<<<<<<<<<<<<<+>>>>>>>>
>>>>>>>-]>[<+>-]<
L#742 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@316)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#743 : POP      out                              //@(macro_inc@288)(macro_inc@316)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
.[-]<
-][-]<
L#745 : ENDIF                                     //@(macro_inc@317)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]<
-][-]<
L#746 : ENDIF                                     //@(macro_inc@318)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]<
-][-]<
L#747 : ELSE                                      //@(macro_inc@319)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#749 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@320)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]<<<<<<<<<<<[>>>>>>>>>>>+>+<<
<<<<<<<<<<-]>>>>>>>>>>>[<<<<<<<<
<<<+>>>>>>>>>>>-]>[<+>-]<
L#750 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@320)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#751 : POP      out                              //@(macro_inc@288)(macro_inc@320)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
.[-]<
-][-]<
L#753 : ENDIF                                     //@(macro_inc@321)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]<
L#754 : ENDLOOP                                   //@(macro_inc@322)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
-][-]<
L#756 : DROP                                      //@(macro_inc@15)(macro_inc@323)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]<
L#758 : DROP                                      // remove push #@(macro_inc@324)(ansi_inc@188)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]<
L#761 : PUSH     0                                //@(macro_inc@331)(ansi_inc@189)(ansi_inc@410)(ansi_inc@493)(main@15)
>[-]
L#762 : SET      109                              //@(macro_inc@346)(ansi_inc@189)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++
L#763 : OUT                                       // 'm' #@(macro_inc@348)(ansi_inc@189)(ansi_inc@410)(ansi_inc@493)(main@15)
.
L#764 : DROP                                      //@(macro_inc@351)(ansi_inc@189)(ansi_inc@410)(ansi_inc@493)(main@15)
[-]<
L#767 : DROP                                      //@(ansi_inc@411)(ansi_inc@493)(main@15)
[-]<
L#771 : PUSH     0                                //@(macro_inc@331)(main@16)
>[-]
L#772 : SET      84                               //@(macro_inc@346)(main@16)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++
L#773 : OUT                                       // 'T' #@(macro_inc@348)(main@16)
.
L#774 : ADD      20                               //@(macro_inc@339)(main@16)
++++++++++++++++++++
L#775 : OUT                                       // 'h' #@(macro_inc@348)(main@16)
.
L#776 : ADD      1                                //@(macro_inc@339)(main@16)
+
L#777 : OUT                                       // 'i' #@(macro_inc@348)(main@16)
.
L#778 : ADD      10                               //@(macro_inc@339)(main@16)
++++++++++
L#779 : OUT                                       // 's' #@(macro_inc@348)(main@16)
.
L#780 : SET      32                               //@(macro_inc@346)(main@16)
[-]+++++++++++++++++++++++++++++
+++
L#781 : OUT                                       // ' ' #@(macro_inc@348)(main@16)
.
L#782 : ADD      76                               //@(macro_inc@339)(main@16)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++
L#783 : OUT                                       // 'l' #@(macro_inc@348)(main@16)
.
L#784 : SUB      3                                //@(macro_inc@342)(main@16)
---
L#785 : OUT                                       // 'i' #@(macro_inc@348)(main@16)
.
L#786 : ADD      5                                //@(macro_inc@339)(main@16)
+++++
L#787 : OUT                                       // 'n' #@(macro_inc@348)(main@16)
.
L#788 : SUB      9                                //@(macro_inc@342)(main@16)
---------
L#789 : OUT                                       // 'e' #@(macro_inc@348)(main@16)
.
L#790 : SET      32                               //@(macro_inc@346)(main@16)
[-]+++++++++++++++++++++++++++++
+++
L#791 : OUT                                       // ' ' #@(macro_inc@348)(main@16)
.
L#792 : ADD      73                               //@(macro_inc@339)(main@16)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++
L#793 : OUT                                       // 'i' #@(macro_inc@348)(main@16)
.
L#794 : ADD      10                               //@(macro_inc@339)(main@16)
++++++++++
L#795 : OUT                                       // 's' #@(macro_inc@348)(main@16)
.
L#796 : SET      32                               //@(macro_inc@346)(main@16)
[-]+++++++++++++++++++++++++++++
+++
L#797 : OUT                                       // ' ' #@(macro_inc@348)(main@16)
.
L#798 : ADD      71                               //@(macro_inc@339)(main@16)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++
L#799 : OUT                                       // 'g' #@(macro_inc@348)(main@16)
.
L#800 : ADD      11                               //@(macro_inc@339)(main@16)
+++++++++++
L#801 : OUT                                       // 'r' #@(macro_inc@348)(main@16)
.
L#802 : SUB      13                               //@(macro_inc@342)(main@16)
-------------
L#803 : OUT                                       // 'e' #@(macro_inc@348)(main@16)
.
L#804 : OUT                                       // 'e' #@(macro_inc@348)(main@16)
.
L#805 : ADD      9                                //@(macro_inc@339)(main@16)
+++++++++
L#806 : OUT                                       // 'n' #@(macro_inc@348)(main@16)
.
L#807 : SET      10                               //@(macro_inc@346)(main@16)
[-]++++++++++
L#808 : OUT                                       //  #@(macro_inc@348)(main@16)
.
L#809 : DROP                                      //@(macro_inc@351)(main@16)
[-]<
L#813 : PUSH     4                                //@(ansi_inc@431)(ansi_inc@543)(main@17)
>[-]++++
L#814 : ADD      40                               //@(ansi_inc@432)(ansi_inc@543)(main@17)
++++++++++++++++++++++++++++++++
++++++++
L#815 : SBM      __ansibgc1                       //@(ansi_inc@433)(ansi_inc@543)(main@17)
 
L#820 : PUSH     0                                //@(macro_inc@331)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]
L#821 : SET      27                               //@(macro_inc@346)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]+++++++++++++++++++++++++++
L#822 : OUT                                       //  #@(macro_inc@348)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@434)(ansi_inc@543)(main@17)
.
L#823 : DROP                                      //@(macro_inc@351)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]<
L#826 : PUSH     0                                //@(macro_inc@331)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]
L#827 : SET      91                               //@(macro_inc@346)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++
L#828 : OUT                                       // '/open bracket/' #@(macro_inc@348)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@434)(ansi_inc@543)(main@17)
.
L#829 : DROP                                      //@(macro_inc@351)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]<
L#833 : PUSH     STACK(__ansibgc1)                      //@(ansi_inc@187)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#835 : SBM      _wbdinput5                       //@(macro_inc@297)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
 
L#836 : PUSH     3                                //@(macro_inc@298)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]+++
L#837 : LOOP                                      //@(macro_inc@299)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[
L#840 : PUSH     STACK(_wbdinput5)                      //@(macro_inc@135)(macro_inc@301)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<<[>>+>+<<<-]>>[<<+>>-]>[<+>
-]<
L#841 : PUSH     10                               //@(macro_inc@136)(macro_inc@301)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]++++++++++
L#842 : DIV                                       //@(macro_inc@137)(macro_inc@301)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[>+>+<<-]>[<+>-] >[<+>-]<<[-]<[-
>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>
[-]>[-]>[<<<+>>>-]>[<<<+>>>-]<<<
L#843 : POP      STACK(_wbdinput5)                      //@(macro_inc@138)(macro_inc@301)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
<<<[-]>>>[<<<+>>>-]<
L#844 : POP      __wbdoutput                      //@(macro_inc@139)(macro_inc@301)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
<<<<<<<<[-]>>>>>>>>[<<<<<<<<+>>>
>>>>>-]<
L#846 : AROTL    __wbdoutput                      //@(macro_inc@302)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
<<<<<+[>+>+<<-]>>[<<+>>-]+++[-<-
>][-]<[>+<[-]]>[<+>-][-]<[>+<[-]
]>[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
-<[-]>]<<[-]<[->+<]<[->+<]<[->+<
]>>>[-<<<+>>>]>>>>>>
L#847 : ENDLOOP                                   //@(macro_inc@303)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
-][-]<
L#851 : PUSH     1                                //@(macro_inc@22)(macro_inc@305)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]+
L#852 : SBM      prefixzero5                      //@(macro_inc@23)(macro_inc@305)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
 
L#854 : PUSH     3                                //@(macro_inc@306)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]+++
L#855 : SBM      __wbdcnt5                        //@(macro_inc@307)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
 
L#856 : LOOP                                      //@(macro_inc@308)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[
L#857 : AROTR    __wbdoutput                      //@(macro_inc@309)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
<<<<<<[>+>+<<-]>[<+>-]>[<+>-][-]
<[>+<[-]]>[<+>-][-]<[>+<[-]]>[<+
>-]<->[-]<[>+<[-]]>[<+>-]<[-<[-]
+++>]<-<<<<<[-]>[-<+>]>[-<+>]>[-
<+>]<<<[->>>+<<<]>>>>>>>>>>>
L#859 : PUSH     STACK(__wbdcnt5)                       //@(macro_inc@45)(macro_inc@310)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#860 : PUSH     1                                //@(macro_inc@46)(macro_inc@310)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]+
L#861 : SUP                                       //@(macro_inc@47)(macro_inc@310)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
<+>+>[-]<[>+>+<<-]>[<+>-]>[<+>-]
[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>[
<<+>>-]<[>[-]<<<<[>>>>+>+<<<<<-]
>>>>[<<<<+>>>>-]>[<+>-][-]<[>+<[
-]]>[<+>-]<[>+>+<<-]>>[<<+>>-]<[
<<<<<->->>>>-][-]<[>+>+<<-]>>[<<
+>>-][-]<[>+<[-]]>[<+>-]<->[-]<[
>+<[-]]>[<+>-]<[<<<<<[-]+>[-]>>>
>-][-]<[-]<-][-]<[>+>+<<-]>>[<<+
>>-][-]<[>+<[-]]>[<+>-]<->[-]<[>
+<[-]]>[<+>-]<[<<<[-]>[-]>>-][-]
<[-]>[-]+>[-]>[-]<<<<<[>>>>>+<<<
<<-]>>>>>>[-]<<<<<[>>>>>+<<<<<-]
>>>>>>[-]<<+>+<[->-[>]<<]<[-]<[-
<]>>>[<<<<<+>>>>>[-]]>[-]<<<<<<
L#862 : IF                                        //@(macro_inc@48)(macro_inc@310)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#865 : PUSH     __wbdoutput                      //@(macro_inc@29)(macro_inc@311)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<<<<<<<<<<<[>>>>>>>>>>>+>+<<
<<<<<<<<<<-]>>>>>>>>>>>[<<<<<<<<
<<<+>>>>>>>>>>>-]>[<+>-]<
L#866 : PUSH     0                                //@(macro_inc@30)(macro_inc@311)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]
L#867 : DIFF                                      //@(macro_inc@31)(macro_inc@311)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[<->-][-]<[>+<[-]]>[<+>-]<
L#868 : IF                                        //@(macro_inc@32)(macro_inc@311)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#871 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@312)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<<<<<<<<<<<<<[>>>>>>>>>>>>>+
>+<<<<<<<<<<<<<<-]>>>>>>>>>>>>>[
<<<<<<<<<<<<<+>>>>>>>>>>>>>-]>[<
+>-]<
L#872 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@312)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#873 : POP      out                              //@(macro_inc@288)(macro_inc@312)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
.[-]<
L#877 : AT       STACK(prefixzero5)                     //@(macro_inc@79)(macro_inc@126)(macro_inc@313)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
<<<<<
L#878 : SET      0                                //@(macro_inc@80)(macro_inc@126)(macro_inc@313)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]
>>>>>
-][-]<
L#882 : ELSE                                      //@(macro_inc@314)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#884 : PUSH     STACK(prefixzero5)                     //@(macro_inc@37)(macro_inc@315)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<<<<<<[>>>>>>+>+<<<<<<<-]>>>
>>>[<<<<<<+>>>>>>-]>[<+>-]<
L#885 : PUSH     0                                //@(macro_inc@38)(macro_inc@315)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]
L#886 : EQUAL                                     //@(macro_inc@39)(macro_inc@315)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[<->-][-]<[>+<[-]]>[<+>-][-]<[>+
<[-]]>[<+>-]<->[-]<[>+<[-]]>[<+>
-]<
L#887 : IF                                        //@(macro_inc@40)(macro_inc@315)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#890 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@316)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<<<<<<<<<<<<<<<[>>>>>>>>>>>>
>>>+>+<<<<<<<<<<<<<<<<-]>>>>>>>>
>>>>>>>[<<<<<<<<<<<<<<<+>>>>>>>>
>>>>>>>-]>[<+>-]<
L#891 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@316)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#892 : POP      out                              //@(macro_inc@288)(macro_inc@316)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
.[-]<
-][-]<
L#894 : ENDIF                                     //@(macro_inc@317)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]<
-][-]<
L#895 : ENDIF                                     //@(macro_inc@318)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]<
-][-]<
L#896 : ELSE                                      //@(macro_inc@319)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#898 : PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@320)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]<<<<<<<<<<<[>>>>>>>>>>>+>+<<
<<<<<<<<<<-]>>>>>>>>>>>[<<<<<<<<
<<<+>>>>>>>>>>>-]>[<+>-]<
L#899 : ADD      48                               //'0' @(macro_inc@287)(macro_inc@320)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#900 : POP      out                              //@(macro_inc@288)(macro_inc@320)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
.[-]<
-][-]<
L#902 : ENDIF                                     //@(macro_inc@321)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]<
L#903 : ENDLOOP                                   //@(macro_inc@322)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
-][-]<
L#905 : DROP                                      //@(macro_inc@15)(macro_inc@323)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]<
L#907 : DROP                                      // remove push #@(macro_inc@324)(ansi_inc@188)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]<
L#910 : PUSH     0                                //@(macro_inc@331)(ansi_inc@189)(ansi_inc@434)(ansi_inc@543)(main@17)
>[-]
L#911 : SET      109                              //@(macro_inc@346)(ansi_inc@189)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++
L#912 : OUT                                       // 'm' #@(macro_inc@348)(ansi_inc@189)(ansi_inc@434)(ansi_inc@543)(main@17)
.
L#913 : DROP                                      //@(macro_inc@351)(ansi_inc@189)(ansi_inc@434)(ansi_inc@543)(main@17)
[-]<
L#916 : DROP                                      //@(ansi_inc@435)(ansi_inc@543)(main@17)
[-]<
L#920 : PUSH     0                                //@(macro_inc@331)(main@18)
>[-]
L#921 : SET      84                               //@(macro_inc@346)(main@18)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++
L#922 : OUT                                       // 'T' #@(macro_inc@348)(main@18)
.
L#923 : ADD      20                               //@(macro_inc@339)(main@18)
++++++++++++++++++++
L#924 : OUT                                       // 'h' #@(macro_inc@348)(main@18)
.
L#925 : ADD      1                                //@(macro_inc@339)(main@18)
+
L#926 : OUT                                       // 'i' #@(macro_inc@348)(main@18)
.
L#927 : ADD      10                               //@(macro_inc@339)(main@18)
++++++++++
L#928 : OUT                                       // 's' #@(macro_inc@348)(main@18)
.
L#929 : SET      32                               //@(macro_inc@346)(main@18)
[-]+++++++++++++++++++++++++++++
+++
L#930 : OUT                                       // ' ' #@(macro_inc@348)(main@18)
.
L#931 : ADD      76                               //@(macro_inc@339)(main@18)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++
L#932 : OUT                                       // 'l' #@(macro_inc@348)(main@18)
.
L#933 : SUB      3                                //@(macro_inc@342)(main@18)
---
L#934 : OUT                                       // 'i' #@(macro_inc@348)(main@18)
.
L#935 : ADD      5                                //@(macro_inc@339)(main@18)
+++++
L#936 : OUT                                       // 'n' #@(macro_inc@348)(main@18)
.
L#937 : SUB      9                                //@(macro_inc@342)(main@18)
---------
L#938 : OUT                                       // 'e' #@(macro_inc@348)(main@18)
.
L#939 : SET      32                               //@(macro_inc@346)(main@18)
[-]+++++++++++++++++++++++++++++
+++
L#940 : OUT                                       // ' ' #@(macro_inc@348)(main@18)
.
L#941 : ADD      73                               //@(macro_inc@339)(main@18)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++
L#942 : OUT                                       // 'i' #@(macro_inc@348)(main@18)
.
L#943 : ADD      10                               //@(macro_inc@339)(main@18)
++++++++++
L#944 : OUT                                       // 's' #@(macro_inc@348)(main@18)
.
L#945 : SET      32                               //@(macro_inc@346)(main@18)
[-]+++++++++++++++++++++++++++++
+++
L#946 : OUT                                       // ' ' #@(macro_inc@348)(main@18)
.
L#947 : ADD      71                               //@(macro_inc@339)(main@18)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++
L#948 : OUT                                       // 'g' #@(macro_inc@348)(main@18)
.
L#949 : ADD      11                               //@(macro_inc@339)(main@18)
+++++++++++
L#950 : OUT                                       // 'r' #@(macro_inc@348)(main@18)
.
L#951 : SUB      13                               //@(macro_inc@342)(main@18)
-------------
L#952 : OUT                                       // 'e' #@(macro_inc@348)(main@18)
.
L#953 : OUT                                       // 'e' #@(macro_inc@348)(main@18)
.
L#954 : ADD      9                                //@(macro_inc@339)(main@18)
+++++++++
L#955 : OUT                                       // 'n' #@(macro_inc@348)(main@18)
.
L#956 : SET      32                               //@(macro_inc@346)(main@18)
[-]+++++++++++++++++++++++++++++
+++
L#957 : OUT                                       // ' ' #@(macro_inc@348)(main@18)
.
L#958 : ADD      79                               //@(macro_inc@339)(main@18)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++++++++
L#959 : OUT                                       // 'o' #@(macro_inc@348)(main@18)
.
L#960 : SUB      1                                //@(macro_inc@342)(main@18)
-
L#961 : OUT                                       // 'n' #@(macro_inc@348)(main@18)
.
L#962 : SET      32                               //@(macro_inc@346)(main@18)
[-]+++++++++++++++++++++++++++++
+++
L#963 : OUT                                       // ' ' #@(macro_inc@348)(main@18)
.
L#964 : ADD      66                               //@(macro_inc@339)(main@18)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++
L#965 : OUT                                       // 'b' #@(macro_inc@348)(main@18)
.
L#966 : ADD      10                               //@(macro_inc@339)(main@18)
++++++++++
L#967 : OUT                                       // 'l' #@(macro_inc@348)(main@18)
.
L#968 : ADD      9                                //@(macro_inc@339)(main@18)
+++++++++
L#969 : OUT                                       // 'u' #@(macro_inc@348)(main@18)
.
L#970 : SUB      16                               //@(macro_inc@342)(main@18)
----------------
L#971 : OUT                                       // 'e' #@(macro_inc@348)(main@18)
.
L#972 : SET      10                               //@(macro_inc@346)(main@18)
[-]++++++++++
L#973 : OUT                                       //  #@(macro_inc@348)(main@18)
.
L#974 : DROP                                      //@(macro_inc@351)(main@18)
[-]<
L#981 : PUSH     0                                //@(macro_inc@331)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@333)(main@19)
>[-]
L#982 : SET      27                               //@(macro_inc@346)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@333)(main@19)
[-]+++++++++++++++++++++++++++
L#983 : OUT                                       //  #@(macro_inc@348)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@333)(main@19)
.
L#984 : DROP                                      //@(macro_inc@351)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@333)(main@19)
[-]<
L#987 : PUSH     0                                //@(macro_inc@331)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@333)(main@19)
>[-]
L#988 : SET      91                               //@(macro_inc@346)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@333)(main@19)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++
L#989 : OUT                                       // '/open bracket/' #@(macro_inc@348)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@333)(main@19)
.
L#990 : DROP                                      //@(macro_inc@351)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@333)(main@19)
[-]<
L#994 : PUSH     7                                //@(ansi_inc@187)(ansi_inc@333)(main@19)
>[-]+++++++
L#996 : SBM      _wbdinput6                       //@(macro_inc@297)(ansi_inc@188)(ansi_inc@333)(main@19)
 
L#997 : PUSH     3                                //@(macro_inc@298)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]+++
L#998 : LOOP                                      //@(macro_inc@299)(ansi_inc@188)(ansi_inc@333)(main@19)
[
L#1001: PUSH     STACK(_wbdinput6)                      //@(macro_inc@135)(macro_inc@301)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]<<[>>+>+<<<-]>>[<<+>>-]>[<+>
-]<
L#1002: PUSH     10                               //@(macro_inc@136)(macro_inc@301)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]++++++++++
L#1003: DIV                                       //@(macro_inc@137)(macro_inc@301)(ansi_inc@188)(ansi_inc@333)(main@19)
[>+>+<<-]>[<+>-] >[<+>-]<<[-]<[-
>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>
[-]>[-]>[<<<+>>>-]>[<<<+>>>-]<<<
L#1004: POP      STACK(_wbdinput6)                      //@(macro_inc@138)(macro_inc@301)(ansi_inc@188)(ansi_inc@333)(main@19)
<<<[-]>>>[<<<+>>>-]<
L#1005: POP      __wbdoutput                      //@(macro_inc@139)(macro_inc@301)(ansi_inc@188)(ansi_inc@333)(main@19)
<<<<<<<[-]>>>>>>>[<<<<<<<+>>>>>>
>-]<
L#1007: AROTL    __wbdoutput                      //@(macro_inc@302)(ansi_inc@188)(ansi_inc@333)(main@19)
<<<<+[>+>+<<-]>>[<<+>>-]+++[-<->
][-]<[>+<[-]]>[<+>-][-]<[>+<[-]]
>[<+>-]<->[-]<[>+<[-]]>[<+>-]<[-
<[-]>]<<[-]<[->+<]<[->+<]<[->+<]
>>>[-<<<+>>>]>>>>>
L#1008: ENDLOOP                                   //@(macro_inc@303)(ansi_inc@188)(ansi_inc@333)(main@19)
-][-]<
L#1012: PUSH     1                                //@(macro_inc@22)(macro_inc@305)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]+
L#1013: SBM      prefixzero6                      //@(macro_inc@23)(macro_inc@305)(ansi_inc@188)(ansi_inc@333)(main@19)
 
L#1015: PUSH     3                                //@(macro_inc@306)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]+++
L#1016: SBM      __wbdcnt6                        //@(macro_inc@307)(ansi_inc@188)(ansi_inc@333)(main@19)
 
L#1017: LOOP                                      //@(macro_inc@308)(ansi_inc@188)(ansi_inc@333)(main@19)
[
L#1018: AROTR    __wbdoutput                      //@(macro_inc@309)(ansi_inc@188)(ansi_inc@333)(main@19)
<<<<<[>+>+<<-]>[<+>-]>[<+>-][-]<
[>+<[-]]>[<+>-][-]<[>+<[-]]>[<+>
-]<->[-]<[>+<[-]]>[<+>-]<[-<[-]+
++>]<-<<<<<[-]>[-<+>]>[-<+>]>[-<
+>]<<<[->>>+<<<]>>>>>>>>>>
L#1020: PUSH     STACK(__wbdcnt6)                       //@(macro_inc@45)(macro_inc@310)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#1021: PUSH     1                                //@(macro_inc@46)(macro_inc@310)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]+
L#1022: SUP                                       //@(macro_inc@47)(macro_inc@310)(ansi_inc@188)(ansi_inc@333)(main@19)
<+>+>[-]<[>+>+<<-]>[<+>-]>[<+>-]
[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>[
<<+>>-]<[>[-]<<<<[>>>>+>+<<<<<-]
>>>>[<<<<+>>>>-]>[<+>-][-]<[>+<[
-]]>[<+>-]<[>+>+<<-]>>[<<+>>-]<[
<<<<<->->>>>-][-]<[>+>+<<-]>>[<<
+>>-][-]<[>+<[-]]>[<+>-]<->[-]<[
>+<[-]]>[<+>-]<[<<<<<[-]+>[-]>>>
>-][-]<[-]<-][-]<[>+>+<<-]>>[<<+
>>-][-]<[>+<[-]]>[<+>-]<->[-]<[>
+<[-]]>[<+>-]<[<<<[-]>[-]>>-][-]
<[-]>[-]+>[-]>[-]<<<<<[>>>>>+<<<
<<-]>>>>>>[-]<<<<<[>>>>>+<<<<<-]
>>>>>>[-]<<+>+<[->-[>]<<]<[-]<[-
<]>>>[<<<<<+>>>>>[-]]>[-]<<<<<<
L#1023: IF                                        //@(macro_inc@48)(macro_inc@310)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#1026: PUSH     __wbdoutput                      //@(macro_inc@29)(macro_inc@311)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]<<<<<<<<<<[>>>>>>>>>>+>+<<<<
<<<<<<<-]>>>>>>>>>>[<<<<<<<<<<+>
>>>>>>>>>-]>[<+>-]<
L#1027: PUSH     0                                //@(macro_inc@30)(macro_inc@311)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]
L#1028: DIFF                                      //@(macro_inc@31)(macro_inc@311)(ansi_inc@188)(ansi_inc@333)(main@19)
[<->-][-]<[>+<[-]]>[<+>-]<
L#1029: IF                                        //@(macro_inc@32)(macro_inc@311)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#1032: PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@312)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]<<<<<<<<<<<<[>>>>>>>>>>>>+>+
<<<<<<<<<<<<<-]>>>>>>>>>>>>[<<<<
<<<<<<<<+>>>>>>>>>>>>-]>[<+>-]<
L#1033: ADD      48                               //'0' @(macro_inc@287)(macro_inc@312)(ansi_inc@188)(ansi_inc@333)(main@19)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#1034: POP      out                              //@(macro_inc@288)(macro_inc@312)(ansi_inc@188)(ansi_inc@333)(main@19)
.[-]<
L#1038: AT       STACK(prefixzero6)                     //@(macro_inc@79)(macro_inc@126)(macro_inc@313)(ansi_inc@188)(ansi_inc@333)(main@19)
<<<<<
L#1039: SET      0                                //@(macro_inc@80)(macro_inc@126)(macro_inc@313)(ansi_inc@188)(ansi_inc@333)(main@19)
[-]
>>>>>
-][-]<
L#1043: ELSE                                      //@(macro_inc@314)(ansi_inc@188)(ansi_inc@333)(main@19)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#1045: PUSH     STACK(prefixzero6)                     //@(macro_inc@37)(macro_inc@315)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]<<<<<<[>>>>>>+>+<<<<<<<-]>>>
>>>[<<<<<<+>>>>>>-]>[<+>-]<
L#1046: PUSH     0                                //@(macro_inc@38)(macro_inc@315)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]
L#1047: EQUAL                                     //@(macro_inc@39)(macro_inc@315)(ansi_inc@188)(ansi_inc@333)(main@19)
[<->-][-]<[>+<[-]]>[<+>-][-]<[>+
<[-]]>[<+>-]<->[-]<[>+<[-]]>[<+>
-]<
L#1048: IF                                        //@(macro_inc@40)(macro_inc@315)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#1051: PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@316)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]<<<<<<<<<<<<<<[>>>>>>>>>>>>>
>+>+<<<<<<<<<<<<<<<-]>>>>>>>>>>>
>>>[<<<<<<<<<<<<<<+>>>>>>>>>>>>>
>-]>[<+>-]<
L#1052: ADD      48                               //'0' @(macro_inc@287)(macro_inc@316)(ansi_inc@188)(ansi_inc@333)(main@19)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#1053: POP      out                              //@(macro_inc@288)(macro_inc@316)(ansi_inc@188)(ansi_inc@333)(main@19)
.[-]<
-][-]<
L#1055: ENDIF                                     //@(macro_inc@317)(ansi_inc@188)(ansi_inc@333)(main@19)
[-]<
-][-]<
L#1056: ENDIF                                     //@(macro_inc@318)(ansi_inc@188)(ansi_inc@333)(main@19)
[-]<
-][-]<
L#1057: ELSE                                      //@(macro_inc@319)(ansi_inc@188)(ansi_inc@333)(main@19)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#1059: PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@320)(ansi_inc@188)(ansi_inc@333)(main@19)
>[-]<<<<<<<<<<[>>>>>>>>>>+>+<<<<
<<<<<<<-]>>>>>>>>>>[<<<<<<<<<<+>
>>>>>>>>>-]>[<+>-]<
L#1060: ADD      48                               //'0' @(macro_inc@287)(macro_inc@320)(ansi_inc@188)(ansi_inc@333)(main@19)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#1061: POP      out                              //@(macro_inc@288)(macro_inc@320)(ansi_inc@188)(ansi_inc@333)(main@19)
.[-]<
-][-]<
L#1063: ENDIF                                     //@(macro_inc@321)(ansi_inc@188)(ansi_inc@333)(main@19)
[-]<
L#1064: ENDLOOP                                   //@(macro_inc@322)(ansi_inc@188)(ansi_inc@333)(main@19)
-][-]<
L#1066: DROP                                      //@(macro_inc@15)(macro_inc@323)(ansi_inc@188)(ansi_inc@333)(main@19)
[-]<
L#1068: DROP                                      // remove push #@(macro_inc@324)(ansi_inc@188)(ansi_inc@333)(main@19)
[-]<
L#1071: PUSH     0                                //@(macro_inc@331)(ansi_inc@189)(ansi_inc@333)(main@19)
>[-]
L#1072: SET      109                              //@(macro_inc@346)(ansi_inc@189)(ansi_inc@333)(main@19)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++
L#1073: OUT                                       // 'm' #@(macro_inc@348)(ansi_inc@189)(ansi_inc@333)(main@19)
.
L#1074: DROP                                      //@(macro_inc@351)(ansi_inc@189)(ansi_inc@333)(main@19)
[-]<
L#1079: PUSH     0                                //@(macro_inc@331)(main@20)
>[-]
L#1080: SET      84                               //@(macro_inc@346)(main@20)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++
L#1081: OUT                                       // 'T' #@(macro_inc@348)(main@20)
.
L#1082: ADD      20                               //@(macro_inc@339)(main@20)
++++++++++++++++++++
L#1083: OUT                                       // 'h' #@(macro_inc@348)(main@20)
.
L#1084: ADD      1                                //@(macro_inc@339)(main@20)
+
L#1085: OUT                                       // 'i' #@(macro_inc@348)(main@20)
.
L#1086: ADD      10                               //@(macro_inc@339)(main@20)
++++++++++
L#1087: OUT                                       // 's' #@(macro_inc@348)(main@20)
.
L#1088: SET      32                               //@(macro_inc@346)(main@20)
[-]+++++++++++++++++++++++++++++
+++
L#1089: OUT                                       // ' ' #@(macro_inc@348)(main@20)
.
L#1090: ADD      76                               //@(macro_inc@339)(main@20)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++
L#1091: OUT                                       // 'l' #@(macro_inc@348)(main@20)
.
L#1092: SUB      3                                //@(macro_inc@342)(main@20)
---
L#1093: OUT                                       // 'i' #@(macro_inc@348)(main@20)
.
L#1094: ADD      5                                //@(macro_inc@339)(main@20)
+++++
L#1095: OUT                                       // 'n' #@(macro_inc@348)(main@20)
.
L#1096: SUB      9                                //@(macro_inc@342)(main@20)
---------
L#1097: OUT                                       // 'e' #@(macro_inc@348)(main@20)
.
L#1098: SET      32                               //@(macro_inc@346)(main@20)
[-]+++++++++++++++++++++++++++++
+++
L#1099: OUT                                       // ' ' #@(macro_inc@348)(main@20)
.
L#1100: ADD      73                               //@(macro_inc@339)(main@20)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++
L#1101: OUT                                       // 'i' #@(macro_inc@348)(main@20)
.
L#1102: ADD      10                               //@(macro_inc@339)(main@20)
++++++++++
L#1103: OUT                                       // 's' #@(macro_inc@348)(main@20)
.
L#1104: SET      32                               //@(macro_inc@346)(main@20)
[-]+++++++++++++++++++++++++++++
+++
L#1105: OUT                                       // ' ' #@(macro_inc@348)(main@20)
.
L#1106: ADD      82                               //@(macro_inc@339)(main@20)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++
L#1107: OUT                                       // 'r' #@(macro_inc@348)(main@20)
.
L#1108: SUB      13                               //@(macro_inc@342)(main@20)
-------------
L#1109: OUT                                       // 'e' #@(macro_inc@348)(main@20)
.
L#1110: ADD      17                               //@(macro_inc@339)(main@20)
+++++++++++++++++
L#1111: OUT                                       // 'v' #@(macro_inc@348)(main@20)
.
L#1112: SUB      17                               //@(macro_inc@342)(main@20)
-----------------
L#1113: OUT                                       // 'e' #@(macro_inc@348)(main@20)
.
L#1114: ADD      13                               //@(macro_inc@339)(main@20)
+++++++++++++
L#1115: OUT                                       // 'r' #@(macro_inc@348)(main@20)
.
L#1116: ADD      1                                //@(macro_inc@339)(main@20)
+
L#1117: OUT                                       // 's' #@(macro_inc@348)(main@20)
.
L#1118: SUB      14                               //@(macro_inc@342)(main@20)
--------------
L#1119: OUT                                       // 'e' #@(macro_inc@348)(main@20)
.
L#1120: SET      32                               //@(macro_inc@346)(main@20)
[-]+++++++++++++++++++++++++++++
+++
L#1121: OUT                                       // ' ' #@(macro_inc@348)(main@20)
.
L#1122: ADD      26                               //@(macro_inc@339)(main@20)
++++++++++++++++++++++++++
L#1123: OUT                                       // ':' #@(macro_inc@348)(main@20)
.
L#1124: SUB      26                               //@(macro_inc@342)(main@20)
--------------------------
L#1125: OUT                                       // ' ' #@(macro_inc@348)(main@20)
.
L#1126: ADD      66                               //@(macro_inc@339)(main@20)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++
L#1127: OUT                                       // 'b' #@(macro_inc@348)(main@20)
.
L#1128: ADD      10                               //@(macro_inc@339)(main@20)
++++++++++
L#1129: OUT                                       // 'l' #@(macro_inc@348)(main@20)
.
L#1130: ADD      9                                //@(macro_inc@339)(main@20)
+++++++++
L#1131: OUT                                       // 'u' #@(macro_inc@348)(main@20)
.
L#1132: SUB      16                               //@(macro_inc@342)(main@20)
----------------
L#1133: OUT                                       // 'e' #@(macro_inc@348)(main@20)
.
L#1134: SET      32                               //@(macro_inc@346)(main@20)
[-]+++++++++++++++++++++++++++++
+++
L#1135: OUT                                       // ' ' #@(macro_inc@348)(main@20)
.
L#1136: ADD      79                               //@(macro_inc@339)(main@20)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++++++++
L#1137: OUT                                       // 'o' #@(macro_inc@348)(main@20)
.
L#1138: SUB      1                                //@(macro_inc@342)(main@20)
-
L#1139: OUT                                       // 'n' #@(macro_inc@348)(main@20)
.
L#1140: SET      32                               //@(macro_inc@346)(main@20)
[-]+++++++++++++++++++++++++++++
+++
L#1141: OUT                                       // ' ' #@(macro_inc@348)(main@20)
.
L#1142: ADD      71                               //@(macro_inc@339)(main@20)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++
L#1143: OUT                                       // 'g' #@(macro_inc@348)(main@20)
.
L#1144: ADD      11                               //@(macro_inc@339)(main@20)
+++++++++++
L#1145: OUT                                       // 'r' #@(macro_inc@348)(main@20)
.
L#1146: SUB      13                               //@(macro_inc@342)(main@20)
-------------
L#1147: OUT                                       // 'e' #@(macro_inc@348)(main@20)
.
L#1148: OUT                                       // 'e' #@(macro_inc@348)(main@20)
.
L#1149: ADD      9                                //@(macro_inc@339)(main@20)
+++++++++
L#1150: OUT                                       // 'n' #@(macro_inc@348)(main@20)
.
L#1151: SET      10                               //@(macro_inc@346)(main@20)
[-]++++++++++
L#1152: OUT                                       //  #@(macro_inc@348)(main@20)
.
L#1153: DROP                                      //@(macro_inc@351)(main@20)
[-]<
L#1160: PUSH     0                                //@(macro_inc@331)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@298)(main@21)
>[-]
L#1161: SET      27                               //@(macro_inc@346)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@298)(main@21)
[-]+++++++++++++++++++++++++++
L#1162: OUT                                       //  #@(macro_inc@348)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@298)(main@21)
.
L#1163: DROP                                      //@(macro_inc@351)(ansi_inc@9)(ansi_inc@30)(ansi_inc@186)(ansi_inc@298)(main@21)
[-]<
L#1166: PUSH     0                                //@(macro_inc@331)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@298)(main@21)
>[-]
L#1167: SET      91                               //@(macro_inc@346)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@298)(main@21)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++
L#1168: OUT                                       // '/open bracket/' #@(macro_inc@348)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@298)(main@21)
.
L#1169: DROP                                      //@(macro_inc@351)(ansi_inc@10)(ansi_inc@30)(ansi_inc@186)(ansi_inc@298)(main@21)
[-]<
L#1173: PUSH     0                                //@(ansi_inc@187)(ansi_inc@298)(main@21)
>[-]
L#1175: SBM      _wbdinput7                       //@(macro_inc@297)(ansi_inc@188)(ansi_inc@298)(main@21)
 
L#1176: PUSH     3                                //@(macro_inc@298)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]+++
L#1177: LOOP                                      //@(macro_inc@299)(ansi_inc@188)(ansi_inc@298)(main@21)
[
L#1180: PUSH     STACK(_wbdinput7)                      //@(macro_inc@135)(macro_inc@301)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]<<[>>+>+<<<-]>>[<<+>>-]>[<+>
-]<
L#1181: PUSH     10                               //@(macro_inc@136)(macro_inc@301)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]++++++++++
L#1182: DIV                                       //@(macro_inc@137)(macro_inc@301)(ansi_inc@188)(ansi_inc@298)(main@21)
[>+>+<<-]>[<+>-] >[<+>-]<<[-]<[-
>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>
[-]>[-]>[<<<+>>>-]>[<<<+>>>-]<<<
L#1183: POP      STACK(_wbdinput7)                      //@(macro_inc@138)(macro_inc@301)(ansi_inc@188)(ansi_inc@298)(main@21)
<<<[-]>>>[<<<+>>>-]<
L#1184: POP      __wbdoutput                      //@(macro_inc@139)(macro_inc@301)(ansi_inc@188)(ansi_inc@298)(main@21)
<<<<<<<[-]>>>>>>>[<<<<<<<+>>>>>>
>-]<
L#1186: AROTL    __wbdoutput                      //@(macro_inc@302)(ansi_inc@188)(ansi_inc@298)(main@21)
<<<<+[>+>+<<-]>>[<<+>>-]+++[-<->
][-]<[>+<[-]]>[<+>-][-]<[>+<[-]]
>[<+>-]<->[-]<[>+<[-]]>[<+>-]<[-
<[-]>]<<[-]<[->+<]<[->+<]<[->+<]
>>>[-<<<+>>>]>>>>>
L#1187: ENDLOOP                                   //@(macro_inc@303)(ansi_inc@188)(ansi_inc@298)(main@21)
-][-]<
L#1191: PUSH     1                                //@(macro_inc@22)(macro_inc@305)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]+
L#1192: SBM      prefixzero7                      //@(macro_inc@23)(macro_inc@305)(ansi_inc@188)(ansi_inc@298)(main@21)
 
L#1194: PUSH     3                                //@(macro_inc@306)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]+++
L#1195: SBM      __wbdcnt7                        //@(macro_inc@307)(ansi_inc@188)(ansi_inc@298)(main@21)
 
L#1196: LOOP                                      //@(macro_inc@308)(ansi_inc@188)(ansi_inc@298)(main@21)
[
L#1197: AROTR    __wbdoutput                      //@(macro_inc@309)(ansi_inc@188)(ansi_inc@298)(main@21)
<<<<<[>+>+<<-]>[<+>-]>[<+>-][-]<
[>+<[-]]>[<+>-][-]<[>+<[-]]>[<+>
-]<->[-]<[>+<[-]]>[<+>-]<[-<[-]+
++>]<-<<<<<[-]>[-<+>]>[-<+>]>[-<
+>]<<<[->>>+<<<]>>>>>>>>>>
L#1199: PUSH     STACK(__wbdcnt7)                       //@(macro_inc@45)(macro_inc@310)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#1200: PUSH     1                                //@(macro_inc@46)(macro_inc@310)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]+
L#1201: SUP                                       //@(macro_inc@47)(macro_inc@310)(ansi_inc@188)(ansi_inc@298)(main@21)
<+>+>[-]<[>+>+<<-]>[<+>-]>[<+>-]
[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>[
<<+>>-]<[>[-]<<<<[>>>>+>+<<<<<-]
>>>>[<<<<+>>>>-]>[<+>-][-]<[>+<[
-]]>[<+>-]<[>+>+<<-]>>[<<+>>-]<[
<<<<<->->>>>-][-]<[>+>+<<-]>>[<<
+>>-][-]<[>+<[-]]>[<+>-]<->[-]<[
>+<[-]]>[<+>-]<[<<<<<[-]+>[-]>>>
>-][-]<[-]<-][-]<[>+>+<<-]>>[<<+
>>-][-]<[>+<[-]]>[<+>-]<->[-]<[>
+<[-]]>[<+>-]<[<<<[-]>[-]>>-][-]
<[-]>[-]+>[-]>[-]<<<<<[>>>>>+<<<
<<-]>>>>>>[-]<<<<<[>>>>>+<<<<<-]
>>>>>>[-]<<+>+<[->-[>]<<]<[-]<[-
<]>>>[<<<<<+>>>>>[-]]>[-]<<<<<<
L#1202: IF                                        //@(macro_inc@48)(macro_inc@310)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#1205: PUSH     __wbdoutput                      //@(macro_inc@29)(macro_inc@311)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]<<<<<<<<<<[>>>>>>>>>>+>+<<<<
<<<<<<<-]>>>>>>>>>>[<<<<<<<<<<+>
>>>>>>>>>-]>[<+>-]<
L#1206: PUSH     0                                //@(macro_inc@30)(macro_inc@311)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]
L#1207: DIFF                                      //@(macro_inc@31)(macro_inc@311)(ansi_inc@188)(ansi_inc@298)(main@21)
[<->-][-]<[>+<[-]]>[<+>-]<
L#1208: IF                                        //@(macro_inc@32)(macro_inc@311)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#1211: PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@312)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]<<<<<<<<<<<<[>>>>>>>>>>>>+>+
<<<<<<<<<<<<<-]>>>>>>>>>>>>[<<<<
<<<<<<<<+>>>>>>>>>>>>-]>[<+>-]<
L#1212: ADD      48                               //'0' @(macro_inc@287)(macro_inc@312)(ansi_inc@188)(ansi_inc@298)(main@21)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#1213: POP      out                              //@(macro_inc@288)(macro_inc@312)(ansi_inc@188)(ansi_inc@298)(main@21)
.[-]<
L#1217: AT       STACK(prefixzero7)                     //@(macro_inc@79)(macro_inc@126)(macro_inc@313)(ansi_inc@188)(ansi_inc@298)(main@21)
<<<<<
L#1218: SET      0                                //@(macro_inc@80)(macro_inc@126)(macro_inc@313)(ansi_inc@188)(ansi_inc@298)(main@21)
[-]
>>>>>
-][-]<
L#1222: ELSE                                      //@(macro_inc@314)(ansi_inc@188)(ansi_inc@298)(main@21)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#1224: PUSH     STACK(prefixzero7)                     //@(macro_inc@37)(macro_inc@315)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]<<<<<<[>>>>>>+>+<<<<<<<-]>>>
>>>[<<<<<<+>>>>>>-]>[<+>-]<
L#1225: PUSH     0                                //@(macro_inc@38)(macro_inc@315)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]
L#1226: EQUAL                                     //@(macro_inc@39)(macro_inc@315)(ansi_inc@188)(ansi_inc@298)(main@21)
[<->-][-]<[>+<[-]]>[<+>-][-]<[>+
<[-]]>[<+>-]<->[-]<[>+<[-]]>[<+>
-]<
L#1227: IF                                        //@(macro_inc@40)(macro_inc@315)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#1230: PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@316)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]<<<<<<<<<<<<<<[>>>>>>>>>>>>>
>+>+<<<<<<<<<<<<<<<-]>>>>>>>>>>>
>>>[<<<<<<<<<<<<<<+>>>>>>>>>>>>>
>-]>[<+>-]<
L#1231: ADD      48                               //'0' @(macro_inc@287)(macro_inc@316)(ansi_inc@188)(ansi_inc@298)(main@21)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#1232: POP      out                              //@(macro_inc@288)(macro_inc@316)(ansi_inc@188)(ansi_inc@298)(main@21)
.[-]<
-][-]<
L#1234: ENDIF                                     //@(macro_inc@317)(ansi_inc@188)(ansi_inc@298)(main@21)
[-]<
-][-]<
L#1235: ENDIF                                     //@(macro_inc@318)(ansi_inc@188)(ansi_inc@298)(main@21)
[-]<
-][-]<
L#1236: ELSE                                      //@(macro_inc@319)(ansi_inc@188)(ansi_inc@298)(main@21)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#1238: PUSH     __wbdoutput                      //@(macro_inc@286)(macro_inc@320)(ansi_inc@188)(ansi_inc@298)(main@21)
>[-]<<<<<<<<<<[>>>>>>>>>>+>+<<<<
<<<<<<<-]>>>>>>>>>>[<<<<<<<<<<+>
>>>>>>>>>-]>[<+>-]<
L#1239: ADD      48                               //'0' @(macro_inc@287)(macro_inc@320)(ansi_inc@188)(ansi_inc@298)(main@21)
++++++++++++++++++++++++++++++++
++++++++++++++++
L#1240: POP      out                              //@(macro_inc@288)(macro_inc@320)(ansi_inc@188)(ansi_inc@298)(main@21)
.[-]<
-][-]<
L#1242: ENDIF                                     //@(macro_inc@321)(ansi_inc@188)(ansi_inc@298)(main@21)
[-]<
L#1243: ENDLOOP                                   //@(macro_inc@322)(ansi_inc@188)(ansi_inc@298)(main@21)
-][-]<
L#1245: DROP                                      //@(macro_inc@15)(macro_inc@323)(ansi_inc@188)(ansi_inc@298)(main@21)
[-]<
L#1247: DROP                                      // remove push #@(macro_inc@324)(ansi_inc@188)(ansi_inc@298)(main@21)
[-]<
L#1250: PUSH     0                                //@(macro_inc@331)(ansi_inc@189)(ansi_inc@298)(main@21)
>[-]
L#1251: SET      109                              //@(macro_inc@346)(ansi_inc@189)(ansi_inc@298)(main@21)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++++
L#1252: OUT                                       // 'm' #@(macro_inc@348)(ansi_inc@189)(ansi_inc@298)(main@21)
.
L#1253: DROP                                      //@(macro_inc@351)(ansi_inc@189)(ansi_inc@298)(main@21)
[-]<
L#1258: PUSH     0                                //@(macro_inc@331)(main@22)
>[-]
L#1259: SET      84                               //@(macro_inc@346)(main@22)
[-]+++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++
L#1260: OUT                                       // 'T' #@(macro_inc@348)(main@22)
.
L#1261: ADD      20                               //@(macro_inc@339)(main@22)
++++++++++++++++++++
L#1262: OUT                                       // 'h' #@(macro_inc@348)(main@22)
.
L#1263: ADD      1                                //@(macro_inc@339)(main@22)
+
L#1264: OUT                                       // 'i' #@(macro_inc@348)(main@22)
.
L#1265: ADD      10                               //@(macro_inc@339)(main@22)
++++++++++
L#1266: OUT                                       // 's' #@(macro_inc@348)(main@22)
.
L#1267: SET      32                               //@(macro_inc@346)(main@22)
[-]+++++++++++++++++++++++++++++
+++
L#1268: OUT                                       // ' ' #@(macro_inc@348)(main@22)
.
L#1269: ADD      76                               //@(macro_inc@339)(main@22)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++
L#1270: OUT                                       // 'l' #@(macro_inc@348)(main@22)
.
L#1271: SUB      3                                //@(macro_inc@342)(main@22)
---
L#1272: OUT                                       // 'i' #@(macro_inc@348)(main@22)
.
L#1273: ADD      5                                //@(macro_inc@339)(main@22)
+++++
L#1274: OUT                                       // 'n' #@(macro_inc@348)(main@22)
.
L#1275: SUB      9                                //@(macro_inc@342)(main@22)
---------
L#1276: OUT                                       // 'e' #@(macro_inc@348)(main@22)
.
L#1277: SET      32                               //@(macro_inc@346)(main@22)
[-]+++++++++++++++++++++++++++++
+++
L#1278: OUT                                       // ' ' #@(macro_inc@348)(main@22)
.
L#1279: ADD      73                               //@(macro_inc@339)(main@22)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++
L#1280: OUT                                       // 'i' #@(macro_inc@348)(main@22)
.
L#1281: ADD      10                               //@(macro_inc@339)(main@22)
++++++++++
L#1282: OUT                                       // 's' #@(macro_inc@348)(main@22)
.
L#1283: SET      32                               //@(macro_inc@346)(main@22)
[-]+++++++++++++++++++++++++++++
+++
L#1284: OUT                                       // ' ' #@(macro_inc@348)(main@22)
.
L#1285: ADD      87                               //@(macro_inc@339)(main@22)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++
L#1286: OUT                                       // 'w' #@(macro_inc@348)(main@22)
.
L#1287: SUB      5                                //@(macro_inc@342)(main@22)
-----
L#1288: OUT                                       // 'r' #@(macro_inc@348)(main@22)
.
L#1289: SUB      9                                //@(macro_inc@342)(main@22)
---------
L#1290: OUT                                       // 'i' #@(macro_inc@348)(main@22)
.
L#1291: ADD      11                               //@(macro_inc@339)(main@22)
+++++++++++
L#1292: OUT                                       // 't' #@(macro_inc@348)(main@22)
.
L#1293: OUT                                       // 't' #@(macro_inc@348)(main@22)
.
L#1294: SUB      15                               //@(macro_inc@342)(main@22)
---------------
L#1295: OUT                                       // 'e' #@(macro_inc@348)(main@22)
.
L#1296: ADD      9                                //@(macro_inc@339)(main@22)
+++++++++
L#1297: OUT                                       // 'n' #@(macro_inc@348)(main@22)
.
L#1298: SET      32                               //@(macro_inc@346)(main@22)
[-]+++++++++++++++++++++++++++++
+++
L#1299: OUT                                       // ' ' #@(macro_inc@348)(main@22)
.
L#1300: ADD      78                               //@(macro_inc@339)(main@22)
++++++++++++++++++++++++++++++++
++++++++++++++++++++++++++++++++
++++++++++++++
L#1301: OUT                                       // 'n' #@(macro_inc@348)(main@22)
.
L#1302: ADD      1                                //@(macro_inc@339)(main@22)
+
L#1303: OUT                                       // 'o' #@(macro_inc@348)(main@22)
.
L#1304: ADD      3                                //@(macro_inc@339)(main@22)
+++
L#1305: OUT                                       // 'r' #@(macro_inc@348)(main@22)
.
L#1306: SUB      5                                //@(macro_inc@342)(main@22)
-----
L#1307: OUT                                       // 'm' #@(macro_inc@348)(main@22)
.
L#1308: SUB      12                               //@(macro_inc@342)(main@22)
------------
L#1309: OUT                                       // 'a' #@(macro_inc@348)(main@22)
.
L#1310: ADD      11                               //@(macro_inc@339)(main@22)
+++++++++++
L#1311: OUT                                       // 'l' #@(macro_inc@348)(main@22)
.
L#1312: ADD      13                               //@(macro_inc@339)(main@22)
+++++++++++++
L#1313: OUT                                       // 'y' #@(macro_inc@348)(main@22)
.
L#1314: SET      10                               //@(macro_inc@346)(main@22)
[-]++++++++++
L#1315: OUT                                       //  #@(macro_inc@348)(main@22)
.
L#1316: DROP                                      //@(macro_inc@351)(main@22)
[-]<
