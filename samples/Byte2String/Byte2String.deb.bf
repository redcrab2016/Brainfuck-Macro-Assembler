L#14  : PUSH     1                               
>>>>>>>> >[-]+
L#15  : SBM      count                           
 
L#16  : WHILE                                    
[
L#17  : AT       input                           
<
L#18  : IN                                       
,
>
L#20  : PUSH     STACK(count)                          
>[-]<[>+>+<<-]>[<+>-]>[<+>-]<
L#21  : PUSH     1                               
>[-]+
L#22  : EQUAL                                    
[<->-]<>[-]<[>+<[-]]>[<+>-]<>[-]
<[>+<[-]]>[<+>-]<->[-]<[>+<[-]]>
[<+>-]<
L#23  : IF                                       
>[-]<[>+<[-]]>[<+>-]<[>+>+<<-]>>
[<<+>>-]<[
L#24  : AT       STACK(count)                          
<<
L#25  : SET      2                               
[-]++
>>
-][-]<
L#27  : ELSE                                     
[>+>+<<-]>>[<<+>>-]<>[-]<[>+<[-]
]>[<+>-]<->[-]<[>+<[-]]>[<+>-]<[
L#28  : PUSH     44                               //'/comma/' 
>[-]++++++++++++++++++++++++++++
++++++++++++++++
L#29  : POP      out                             
.[-]<
-][-]<
L#30  : ENDIF                                    
[-]<
L#31  : PUSH     3                               
>[-]+++
L#32  : LOOP                                     
[
L#33  : PUSH     input                           
>[-]<<<[>>>+>+<<<<-]>>>[<<<+>>>-
]>[<+>-]<
L#34  : PUSH     10                              
>[-]++++++++++
L#35  : DIV                                      
[>+>+<<-]>[<+>-] >[<+>-]<<[-]<[-
>+>-[>+>>]>[+[-<+>]>+>>]<<<<<<]>
[-]>[-]>[<<<+>>>-]>[<<<+>>>-]<<<
L#36  : POP      input                           
<<<<[-]>>>>[<<<<+>>>>-]<
L#37  : POP      output                          
<<<<<<<<[-]>>>>>>>>[<<<<<<<<+>>>
>>>>>-]<
L#38  : AROTL    output                          
<<<<<+[>+>+<<-]>>[<<+>>-]<>+++<>
[-<->]<>[-]<[>+<[-]]>[<+>-]<>[-]
<[>+<[-]]>[<+>-]<->[-]<[>+<[-]]>
[<+>-]<[-<[-]>]<<[-]<[->+<]<[->+
<]<[->+<]>>>[-<<<+>>>]>>>>>>
L#39  : ENDLOOP                                  
-][-]<
L#40  : PUSH     3                               
>[-]+++
L#41  : SBM      cnt                             
 
L#42  : LOOP                                     
[
L#43  : AROTR    output                          
<<<<<[>+>+<<-]>[<+>-]>[<+>-][-]<
[>+<[-]]>[<+>-][-]<[>+<[-]]>[<+>
-]<->[-]<[>+<[-]]>[<+>-]<[-<[-]+
++>]<-<<<<<[-]>[-<+>]>[-<+>]>[-<
+>]<<<[->>>+<<<]>>>>>>>>>>
L#44  : PUSH     output                          
>[-]<<<<<<<<[>>>>>>>>+>+<<<<<<<<
<-]>>>>>>>>[<<<<<<<<+>>>>>>>>-]>
[<+>-]<
L#45  : ADD      48                               //'0' 
++++++++++++++++++++++++++++++++
++++++++++++++++
L#46  : POP      out                             
.[-]<
L#47  : ENDLOOP                                  
-][-]<
L#48  : WEND                                     
][-]<
