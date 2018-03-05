#    ____  _____   _         ____  _____ 
#   | __ )|  ___| (_)_ __   | __ )|  ___|
#   |  _ \| |_    | | '_ \  |  _ \| |_   
#   | |_) |  _|   | | | | | | |_) |  _|  
#   |____/|_|     |_|_| |_| |____/|_|    
#                                        
# bf in bf : by using bf assembler language

#(begin include)macro.inc
# Common macros
# scope variables
#(js) var __scope;
#(js) __scope=[0];

# macro scope_begin : start a new scope for local variable (usage of macro lvar)

# macro scope_end : end a scope , then drop scoped local variables (drop) (usage of lvar)

# macro lvar(vname,value) : declare  in scope, a local variable named vname with an assigned value (stored in stack)

# macro if_diff(a,b) : if (a != b) {

# macro if_equal(a,b) : if (a == b) {

# macro if_sup(a,b) : if (a > b) {

# macro if_inf(a,b) : if (a < b) {

# macro if_supequal(a,b) : if (a >= b) {

# macro if_infequal(a,b) : if (a <= b) {

# macro at_2

# macro at_1

# macro at_reset(a) : a=0

# macro at_inc(a) : a++

# macro at_dec(a) : a--

# macro at_in(a)  : a= readchar()

# macro at_out(a) : write(a)

# macro at_add(a,b) : a += b (immediate)

# macro at_sub(a,b) : a -= b (immediate)

# macro at_set(a,b) : a = b (immediate)


#(end include)macro.inc

# declare global variables
var bfData*255
var bfCode*255

# read the BF code (stop when meet '!')
push 1              
sbm loopCounter
while
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
#(begin macro)        lvar("readchar","in")
    push in
    sbm readchar
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("readchar","in")
#(begin macro)        if_diff("readchar",ENDOFCODE) 
    push readchar
    push '!'
    diff
    if
#(end macro)        if_diff("readchar",ENDOFCODE) 
            push readchar
            sub 42        # bf code - 42 , to have smaller value to compare during BF code interpretation
            pop bfCode
            arotl bfCode    # store readchar in bfCode
        else
#(begin macro)            at_reset("loopCounter")
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at loopCounter
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset("loopCounter")
        fi
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
wend # loop for each input bf code     

# rewind bfCode
#(begin macro)if_sup(MIDCODE,"bfCode.pos")   # reverse rot to zero
    push bfCode.pos
    push 127
    sup
    if
#(end macro)if_sup(MIDCODE,"bfCode.pos")   # reverse rot to zero
    push bfCode.pos
    loop
        arotr bfCode
    endloop
else # forward rot to zero
    push 0
    push bfCode.pos
    sub
    loop
        arotl bfCode
    endloop
fi


# interpret the BF code
push 1
sbm loopCounter2
while
#(begin macro)    scope_begin()
#(js) __scope.push(0);
#(end macro)    scope_begin()
        # local variables
#(begin macro)        lvar("bfD","bfData")
    push bfData
    sbm bfD
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("bfD","bfData")
#(begin macro)        lvar("instr","bfCode")
    push bfCode
    sbm instr
#(js) __scope[__scope.length-1]++; 
#(end macro)        lvar("instr","bfCode")
        
#(begin macro)        if_equal("instr",0)
    push instr
    push 0
    equal
    if
#(end macro)        if_equal("instr",0)
#(begin macro)            at_reset("loopCounter2")
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at loopCounter2
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)            at_reset("loopCounter2")
        else 
#(begin macro)            if_equal("instr",BF_INC)
    push instr
    push 1
    equal
    if
#(end macro)            if_equal("instr",BF_INC)
#(begin macro)                at_inc("bfData") 
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at bfData
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)                at_inc("bfData") 
            fi
    
#(begin macro)            if_equal("instr",BF_DEC)
    push instr
    push 3
    equal
    if
#(end macro)            if_equal("instr",BF_DEC)
#(begin macro)                at_dec("bfData")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at bfData
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)                at_dec("bfData")
            fi
    
#(begin macro)            if_equal("instr",BF_OUT)
    push instr
    push 4
    equal
    if
#(end macro)            if_equal("instr",BF_OUT)
#(begin macro)                at_out("bfData")
#(begin macro)    at_1("out",a)
#(begin macro)    at_2(ope,a,"")
    at bfData
    out 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("out",a)
#(end macro)                at_out("bfData")
            fi
    
#(begin macro)            if_equal("instr",BF_IN)
    push instr
    push 2
    equal
    if
#(end macro)            if_equal("instr",BF_IN)
#(begin macro)                at_in("bfData") 
#(begin macro)    at_1("in",a)
#(begin macro)    at_2(ope,a,"")
    at bfData
    in 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("in",a)
#(end macro)                at_in("bfData") 
            fi
    
#(begin macro)            if_equal("instr",BF_LEFT) 
    push instr
    push 18
    equal
    if
#(end macro)            if_equal("instr",BF_LEFT) 
                arotl bfData
            fi
    
#(begin macro)            if_equal("instr",BF_RIGHT) 
    push instr
    push 20
    equal
    if
#(end macro)            if_equal("instr",BF_RIGHT) 
                arotr bfData
            fi
            
#(begin macro)            scope_begin()
#(js) __scope.push(0);
#(end macro)            scope_begin()
#(begin macro)                lvar("countBracket",0)
    push 0
    sbm countBracket
#(js) __scope[__scope.length-1]++; 
#(end macro)                lvar("countBracket",0)
                
#(begin macro)                if_equal("instr",BF_OBRACKET) 
    push instr
    push 49
    equal
    if
#(end macro)                if_equal("instr",BF_OBRACKET) 
#(begin macro)                    if_equal("bfD",0)      # if data is zero go to matching ']'
    push bfD
    push 0
    equal
    if
#(end macro)                    if_equal("bfD",0)      # if data is zero go to matching ']'
                        push 1
                        sbm g2mcbl # Go To Matching Closing Bracket Loop
                        while
                            arotl   bfCode   # go to next bfCode
#(begin macro)                            scope_begin()
#(js) __scope.push(0);
#(end macro)                            scope_begin()
#(begin macro)                                lvar("tmpBfCode","bfCode") # local variable in scope
    push bfCode
    sbm tmpBfCode
#(js) __scope[__scope.length-1]++; 
#(end macro)                                lvar("tmpBfCode","bfCode") # local variable in scope
                                
#(begin macro)                                if_equal("tmpBfCode",BF_OBRACKET)
    push tmpBfCode
    push 49
    equal
    if
#(end macro)                                if_equal("tmpBfCode",BF_OBRACKET)
#(begin macro)                                    at_inc("countBracket")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at countBracket
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)                                    at_inc("countBracket")
                                else       # if current bfCode != '['
#(begin macro)                                    if_equal("tmpBfCode",BF_CBRACKET)
    push tmpBfCode
    push 51
    equal
    if
#(end macro)                                    if_equal("tmpBfCode",BF_CBRACKET)
#(begin macro)                                        if_equal("countBracket",0)
    push countBracket
    push 0
    equal
    if
#(end macro)                                        if_equal("countBracket",0)
#(begin macro)                                            at_reset("g2mcbl")
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at g2mcbl
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                                            at_reset("g2mcbl")
                                        else # if countBracket >0 then countBracket--
#(begin macro)                                            at_dec("countBracket")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at countBracket
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)                                            at_dec("countBracket")
                                        fi
                                    else   # if current bfCode != ']'
#(begin macro)                                        if_equal("tmpBfCode",0)
    push tmpBfCode
    push 0
    equal
    if
#(end macro)                                        if_equal("tmpBfCode",0)
#(begin macro)                                            at_reset("g2mcbl")
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at g2mcbl
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                                            at_reset("g2mcbl")
                                        fi                       
                                    fi
                                fi
#(begin macro)                            scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)                            scope_end()
                        wend
                    fi
                fi
                
#(begin macro)                if_equal("instr",BF_CBRACKET)  
    push instr
    push 51
    equal
    if
#(end macro)                if_equal("instr",BF_CBRACKET)  
#(begin macro)                    if_diff("bfD",0) 
    push bfD
    push 0
    diff
    if
#(end macro)                    if_diff("bfD",0) 
                        push 1
                        sbm g2mobl # go to matching open bracket loop
                        while
                            arotr bfCode    # go to previous bfCode
#(begin macro)                            scope_begin()
#(js) __scope.push(0);
#(end macro)                            scope_begin()
#(begin macro)                                lvar("tmpBfCode","bfCode") # local variable in scope
    push bfCode
    sbm tmpBfCode
#(js) __scope[__scope.length-1]++; 
#(end macro)                                lvar("tmpBfCode","bfCode") # local variable in scope
                                
#(begin macro)                                if_equal("tmpBfCode",BF_CBRACKET)
    push tmpBfCode
    push 51
    equal
    if
#(end macro)                                if_equal("tmpBfCode",BF_CBRACKET)
#(begin macro)                                    at_inc("countBracket")
#(begin macro)    at_1("inc",a)
#(begin macro)    at_2(ope,a,"")
    at countBracket
    inc 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("inc",a)
#(end macro)                                    at_inc("countBracket")
                                else  # if current bfCode != ']'
#(begin macro)                                    if_equal("tmpBfCode",BF_OBRACKET) 
    push tmpBfCode
    push 49
    equal
    if
#(end macro)                                    if_equal("tmpBfCode",BF_OBRACKET) 
#(begin macro)                                        if_equal("countBracket",0)
    push countBracket
    push 0
    equal
    if
#(end macro)                                        if_equal("countBracket",0)
                                            arotr bfCode
#(begin macro)                                            at_reset("g2mobl")
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at g2mobl
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                                            at_reset("g2mobl")
                                        else # if count bracket > 0 then countBracket --
#(begin macro)                                            at_dec("countBracket")
#(begin macro)    at_1("dec",a)
#(begin macro)    at_2(ope,a,"")
    at countBracket
    dec 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("dec",a)
#(end macro)                                            at_dec("countBracket")
                                        fi 
                                    else  # if current bfCode != '['
#(begin macro)                                        if_equal("tmpBfCode",0)
    push tmpBfCode
    push 0
    equal
    if
#(end macro)                                        if_equal("tmpBfCode",0)
#(begin macro)                                            at_reset("g2mobl")
#(begin macro)    at_1("reset",a)
#(begin macro)    at_2(ope,a,"")
    at g2mobl
    reset 
    ta
#(end macro)    at_2(ope,a,"")
#(end macro)    at_1("reset",a)
#(end macro)                                            at_reset("g2mobl")
                                        fi
                                    fi
                                fi
#(begin macro)                            scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)                            scope_end()
                        wend
                    fi
                fi
#(begin macro)            scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)            scope_end()
        fi
        arotl   bfCode 
        
    # destroy local variable
#(begin macro)    scope_end()
#(js) if (__scope.length > 0) for (var __idx=0; __idx < __scope[__scope.length-1]; __idx++) {
    drop
#(js) } 
    drop
#(js) } 
#(js) if (__scope.length > 0) __scope.splice(__scope.length-1, 1);
#(end macro)    scope_end()
wend

