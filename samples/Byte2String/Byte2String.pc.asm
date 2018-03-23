#    ____        _         ____    ____  _        _
#   | __ ) _   _| |_ ___  |___ \  / ___|| |_ _ __(_)_ __   __ _
#   |  _ \| | | | __/ _ \   __) | \___ \| __| '__| | '_ \ / _` |
#   | |_) | |_| | ||  __/  / __/   ___) | |_| |  | | | | | (_| |
#   |____/ \__, |\__\___| |_____| |____/ \__|_|  |_|_| |_|\__, |
#          |___/                                          |___/
# Read input byte and output it as decimal number string separated by comma
# this sample does not use macro,
# number are prefixed with '0' (e.g 65 is 065, 1 is 001)

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

