L#75  : PUSH     1                                //@(main@27)
 >[-]+
L#76  : WHILE                                     //@(main@28)
[
L#77  : PUSH     in                               //@(main@29)
>,
L#78  : PUSH     16                               //@(main@30)
>[-]++++++++++++++++
L#79  : DIV                                       //@(main@31)
[>+>+<<-]>[<+>-] >[<+>-]<<[-]<[-
>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>
[-]>[-]>[<<<+>>>-]>[<<<+>>>-]<<<
L#81  : SBM      _input1                          //@(main@17)(main@32)
 
L#83  : PUSH     STACK(_input1)                         //@(macro_inc@45)(main@18)(main@32)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#84  : PUSH     9                                //@(macro_inc@46)(main@18)(main@32)
>[-]+++++++++
L#85  : SUP                                       //@(macro_inc@47)(main@18)(main@32)
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
L#86  : IF                                        //@(macro_inc@48)(main@18)(main@32)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#90  : AT       STACK(_input1)                         //@(macro_inc@79)(macro_inc@116)(main@19)(main@32)
<<
L#91  : ADD      55                               //'7' @(macro_inc@80)(macro_inc@116)(main@19)(main@32)
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++
>>
-][-]<
L#95  : ELSE                                      //@(main@20)(main@32)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#98  : AT       STACK(_input1)                         //@(macro_inc@79)(macro_inc@116)(main@21)(main@32)
<<
L#99  : ADD      48                               //'0' @(macro_inc@80)(macro_inc@116)(main@21)(main@32)
++++++++++++++++++++++++++++++++
++++++++++++++++
>>
-][-]<
L#103 : ENDIF                                     //@(main@22)(main@32)
[-]<
L#104 : POP      out                              //@(main@23)(main@32)
.[-]<
L#107 : SBM      _input2                          //@(main@17)(main@33)
 
L#109 : PUSH     STACK(_input2)                         //@(macro_inc@45)(main@18)(main@33)
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#110 : PUSH     9                                //@(macro_inc@46)(main@18)(main@33)
>[-]+++++++++
L#111 : SUP                                       //@(macro_inc@47)(main@18)(main@33)
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
L#112 : IF                                        //@(macro_inc@48)(main@18)(main@33)
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#116 : AT       STACK(_input2)                         //@(macro_inc@79)(macro_inc@116)(main@19)(main@33)
<<
L#117 : ADD      55                               //'7' @(macro_inc@80)(macro_inc@116)(main@19)(main@33)
++++++++++++++++++++++++++++++++
+++++++++++++++++++++++
>>
-][-]<
L#121 : ELSE                                      //@(main@20)(main@33)
[>+>+<<-]>>[<<+>>-][-]<[>+<[-]]>
[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#124 : AT       STACK(_input2)                         //@(macro_inc@79)(macro_inc@116)(main@21)(main@33)
<<
L#125 : ADD      48                               //'0' @(macro_inc@80)(macro_inc@116)(main@21)(main@33)
++++++++++++++++++++++++++++++++
++++++++++++++++
>>
-][-]<
L#129 : ENDIF                                     //@(main@22)(main@33)
[-]<
L#130 : POP      out                              //@(main@23)(main@33)
.[-]<
L#132 : WEND                                      //@(main@34)
][-]<
