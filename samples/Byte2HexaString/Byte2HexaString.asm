#    ____        _         ____    _   _                ____  _        _             
#   | __ ) _   _| |_ ___  |___ \  | | | | _____  ____ _/ ___|| |_ _ __(_)_ __   __ _ 
#   |  _ \| | | | __/ _ \   __) | | |_| |/ _ \ \/ / _` \___ \| __| '__| | '_ \ / _` |
#   | |_) | |_| | ||  __/  / __/  |  _  |  __/>  < (_| |___) | |_| |  | | | | | (_| |
#   |____/ \__, |\__\___| |_____| |_| |_|\___/_/\_\__,_|____/ \__|_|  |_|_| |_|\__, |
#          |___/                                                               |___/ 
# Read input byte and output it as hexa string
# this sample do use macro


include ../include/macro.inc

js  var whIdx; whIdx = 0;

macro writeHexa()
js  whIdx++;
    sbm _input{whIdx}
    if_sup("_input" + whIdx,9)
        at_add("_input" + whIdx, "'7'")
    else
        at_add("_input" + whIdx, "'0'")
    fi
    pop out
endmacro


push    1
while
    push    in
    push    16
    div
    writeHexa # output most significant hexa character from head of stack value, then drop
    writeHexa # output less significant hexa character from head of stack value, then drop
wend