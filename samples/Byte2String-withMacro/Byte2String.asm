#    ____        _         ____    ____  _        _             
#   | __ ) _   _| |_ ___  |___ \  / ___|| |_ _ __(_)_ __   __ _ 
#   |  _ \| | | | __/ _ \   __) | \___ \| __| '__| | '_ \ / _` |
#   | |_) | |_| | ||  __/  / __/   ___) | |_| |  | | | | | (_| |
#   |____/ \__, |\__\___| |_____| |____/ \__|_|  |_|_| |_|\__, |
#          |___/                                          |___/ 
# Read input byte and output it as decimal number string separated by comma
# this sample do use macro
# this version does not keep '0' prefix

include ../include/macro.inc

macro writeDigit(a)
    push    {a}
    add     '0'
    pop     out 
endmacro

define DECIMALSIZE  3

var input
var output*{DECIMALSIZE}

push    1
sbm count
while
    at_in("input")
    if_equal("count",1)
        at_set("count",2)
    else
        write("','")
    fi
    push {DECIMALSIZE}
    loop
        # output = input mod 10 ; input = input div 10
        divide("input",10,"input","output")
        arotl output
    endloop
    scope_begin()
        lvar("prefixzero",1)
        push {DECIMALSIZE}
        sbm cnt
        loop
            arotr output
            if_sup("cnt",1)   # cnt == 3 or cnt == 2
                if_diff("output",0)
                    writeDigit("output")
                    at_set("prefixzero",0)
                else    
                    if_equal("prefixzero",0)
                        writeDigit("output")
                    fi
                fi
            else
                writeDigit("output")
            fi
        endloop
    scope_end()
wend