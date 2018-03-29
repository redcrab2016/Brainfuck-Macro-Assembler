#    ____  _____   _         ____  _____ 
#   | __ )|  ___| (_)_ __   | __ )|  ___|
#   |  _ \| |_    | | '_ \  |  _ \| |_   
#   | |_) |  _|   | | | | | | |_) |  _|  
#   |____/|_|     |_|_| |_| |____/|_|    
#                                        
# bf in bf : by using bf assembler language
define MAXCODE      255
define MIDCODE      127
define MAXDATA      255
define ENDOFCODE    '!'
define BF_INC       1
define BF_DEC       3
define BF_LEFT      18
define BF_RIGHT     20
define BF_IN        2
define BF_OUT       4
define BF_OBRACKET  49
define BF_CBRACKET  51

include ../include/macro.inc

# declare global variables
var bfData*{MAXDATA}
var bfCode*{MAXCODE}

# read the BF code (stop when meet '!')
push 1              
sbm loopCounter
while
    scope_begin
        lvar    readchar,   in
        if_diff readchar,   {ENDOFCODE} 
            push readchar
            sub 42        # bf code - 42 , to have smaller value to compare during BF code interpretation
            pop bfCode
            arotl bfCode    # store readchar in bfCode
        else
            at_reset    loopCounter
        fi
    scope_end
wend # loop for each input bf code     

# rewind bfCode
if_sup  {MIDCODE},  bfCode.pos   # reverse rot to zero
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
    scope_begin
        # local variables
        lvar    bfD,    bfData
        lvar    instr,  bfCode
        
        if_equal    instr,  0
            at_reset    loopCounter2
        else 
            if_equal    instr,  {BF_INC}
                at_inc  bfData 
            fi
    
            if_equal    instr,  {BF_DEC}
                at_dec  bfData
            fi
    
            if_equal    instr,  {BF_OUT}
                at_out("bfData")
            fi
    
            if_equal    instr,  {BF_IN}
                at_in   bfData 
            fi
    
            if_equal    instr,  {BF_LEFT} 
                arotl bfData
            fi
    
            if_equal    instr,  {BF_RIGHT} 
                arotr bfData
            fi
            
            scope_begin
                lvar    countBracket,   0
                
                if_equal    instr,  {BF_OBRACKET} 
                    if_equal    bfD,    0      # if data is zero go to matching ']'
                        push    1
                        sbm     g2mcbl # Go To Matching Closing Bracket Loop
                        while
                            arotl   bfCode   # go to next bfCode
                            scope_begin
                                lvar    tmpBfCode,  bfCode # local variable in scope
                                
                                if_equal    tmpBfCode,  {BF_OBRACKET}
                                    at_inc  countBracket
                                else       # if current bfCode != '['
                                    if_equal    tmpBfCode,  {BF_CBRACKET}
                                        if_equal    countBracket,   0
                                            at_reset    g2mcbl
                                        else # if countBracket >0 then countBracket--
                                            at_dec  countBracket
                                        fi
                                    else   # if current bfCode != ']'
                                        if_equal    tmpBfCode,  0
                                            at_reset    g2mcbl
                                        fi                       
                                    fi
                                fi
                            scope_end
                        wend
                    fi
                fi
                
                if_equal    instr,  {BF_CBRACKET}  
                    if_diff bfD,    0 
                        push    1
                        sbm     g2mobl # go to matching open bracket loop
                        while
                            arotr   bfCode    # go to previous bfCode
                            scope_begin
                                lvar    tmpBfCode,  bfCode # local variable in scope
                                
                                if_equal    tmpBfCode,  {BF_CBRACKET}
                                    at_inc  countBracket
                                else  # if current bfCode != ']'
                                    if_equal    tmpBfCode,  {BF_OBRACKET} 
                                        if_equal    countBracket,   0
                                            arotr   bfCode
                                            at_reset    g2mobl
                                        else # if count bracket > 0 then countBracket --
                                            at_dec  countBracket
                                        fi 
                                    else  # if current bfCode != '['
                                        if_equal    tmpBfCode,  0
                                            at_reset    g2mobl
                                        fi
                                    fi
                                fi
                            scope_end
                        wend
                    fi
                fi
            scope_end
        fi
        arotl   bfCode 
        
    # destroy local variable
    scope_end
wend
