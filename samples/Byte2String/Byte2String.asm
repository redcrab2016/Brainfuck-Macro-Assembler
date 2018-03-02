# Read input byte and output it as decimal number string separated by comma
# this sample do not use macro

var input
var output*3

push    1
sbm count
while
    at input
        in
    ta
    push count
    push 1
    equal
    if
        at count
            set 2
        ta
    else
        push ','
        pop out    
    fi
    push 3
    loop
        push input
        push 10
        div
        pop input
        pop output
        arotl output
    endloop
    push 3
    sbm cnt
    loop
        arotr output
        push output
        add '0'
        pop out
    endloop
wend