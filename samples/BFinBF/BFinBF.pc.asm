#    ____  _____   _         ____  _____ #@(main@1)
#   | __ )|  ___| (_)_ __   | __ )|  ___| #@(main@2)
#   |  _ \| |_    | | '_ \  |  _ \| |_ #@(main@3)
#   | |_) |  _|   | | | | | | |_) |  _| #@(main@4)
#   |____/|_|     |_|_| |_| |____/|_| #@(main@5)
# #@(main@6)
# bf in bf : by using bf assembler language #@(main@7)
 #@(main@20)
#(begin include)../include/macro.inc
# Common macros #@(macro_inc@1)
# scope variables #@(macro_inc@2)
 #@(macro_inc@5)
 #@(macro_inc@6)
# macro scope_begin : start a new scope for local variable (usage of macro lvar) #@(macro_inc@7)
 #@(macro_inc@11)
# macro scope_end : end a scope , then drop scoped local variables (drop) (usage of lvar) #@(macro_inc@12)
 #@(macro_inc@19)
# macro lvar(vname,value) : declare  in scope, a local variable named vname with an assigned value (stored in stack) #@(macro_inc@20)
 #@(macro_inc@26)
# macro if_diff(a,b) : if (a != b) { #@(macro_inc@27)
 #@(macro_inc@34)
# macro if_equal(a,b) : if (a == b) { #@(macro_inc@35)
 #@(macro_inc@42)
# macro if_sup(a,b) : if (a > b) { #@(macro_inc@43)
 #@(macro_inc@50)
# macro if_inf(a,b) : if (a < b) { #@(macro_inc@51)
 #@(macro_inc@58)
# macro if_supequal(a,b) : if (a >= b) { #@(macro_inc@59)
 #@(macro_inc@67)
# macro if_infequal(a,b) : if (a <= b) { #@(macro_inc@68)
 #@(macro_inc@76)
# macro at_2 #@(macro_inc@77)
 #@(macro_inc@83)
# macro at_1 #@(macro_inc@84)
 #@(macro_inc@88)
# macro at_reset(a) : a=0 #@(macro_inc@89)
 #@(macro_inc@93)
# macro at_inc(a) : a++ #@(macro_inc@94)
 #@(macro_inc@98)
# macro at_dec(a) : a-- #@(macro_inc@99)
 #@(macro_inc@103)
# macro at_in(a)  : a= readchar() #@(macro_inc@104)
 #@(macro_inc@108)
# macro at_out(a) : write(a) #@(macro_inc@109)
 #@(macro_inc@113)
# macro at_add(a,b) : a += b (immediate) #@(macro_inc@114)
 #@(macro_inc@118)
# macro at_sub(a,b) : a -= b (immediate) #@(macro_inc@119)
 #@(macro_inc@123)
# macro at_set(a,b) : a = b (immediate) #@(macro_inc@124)
 #@(macro_inc@128)
 #@(macro_inc@133)
 #@(macro_inc@141)
#macro addof() : push A, push B , replaced by Carry, A+B #@(macro_inc@142)
 #@(macro_inc@180)
# macro subof() : push A, push B , replaced by Carry, A-B #@(macro_inc@181)
 #@(macro_inc@221)
# macro mulof() : A = stack-1, B= stack : stack-1 = A*B div 256, stack = A*B mod 256 #@(macro_inc@222)
 #@(macro_inc@245)
 #@(macro_inc@246)
 #@(macro_inc@258)
 #@(macro_inc@265)
# macro popouthexa() : from head of stack value (from 0 to 15) write out hexa (from 0 to 9 and A to F) #@(macro_inc@266)
 #@(macro_inc@276)
# macro popout8hexa() : from head of stack the 8 bit value is write out in hexa #@(macro_inc@277)
 #@(macro_inc@284)
# macro print(aString) : print out a string #@(macro_inc@285)
#(end include)../include/macro.inc
 #@(main@22)
# declare global variables #@(main@23)
var bfData*255 #@(main@24)
var bfCode*255 #@(main@25)
 #@(main@26)
# read the BF code (stop when meet '!') #@(main@27)
push 1 #@(main@28)
sbm loopCounter #@(main@29)
while #@(main@30)
  #(begin macro)scope_begin
  #(end macro)scope_begin
  #(begin macro)lvar    readchar,   in
  push    in #@(macro_inc@22)(main@32)
  sbm     readchar #@(macro_inc@23)(main@32)
  #(end macro)lvar    readchar,   in
  #(begin macro)if_diff readchar,   '!'
  push    readchar #@(macro_inc@29)(main@33)
  push    '!' #@(macro_inc@30)(main@33)
  diff #@(macro_inc@31)(main@33)
  if #@(macro_inc@32)(main@33)
    #(end macro)if_diff readchar,   '!'
    push readchar #@(main@34)
    sub 42        # bf code - 42 , to have smaller value to compare during BF code interpretation #@(main@35)
    pop bfCode #@(main@36)
    arotl bfCode    # store readchar in bfCode #@(main@37)
  else #@(main@38)
    #(begin macro)at_reset    loopCounter
    #(begin macro)at_1("reset",a)
    #(begin macro)at_2(ope,a,"")
    at      loopCounter #@(macro_inc@79)(macro_inc@86)(macro_inc@91)(main@39)
      reset    #@(macro_inc@80)(macro_inc@86)(macro_inc@91)(main@39)
    ta #@(macro_inc@81)(macro_inc@86)(macro_inc@91)(main@39)
    #(end macro)at_2(ope,a,"")
    #(end macro)at_1("reset",a)
    #(end macro)at_reset    loopCounter
  fi #@(main@40)
  #(begin macro)scope_end
  drop #@(macro_inc@15)(main@41)
  #(end macro)scope_end
wend # loop for each input bf code #@(main@42)
 #@(main@43)
# rewind bfCode #@(main@44)
#(begin macro)if_sup  127,  bfCode.pos   # reverse rot to zero
push    127 #@(macro_inc@45)(main@45)
push    bfCode.pos #@(macro_inc@46)(main@45)
sup #@(macro_inc@47)(main@45)
if #@(macro_inc@48)(main@45)
  #(end macro)if_sup  127,  bfCode.pos   # reverse rot to zero
  push bfCode.pos #@(main@46)
  loop #@(main@47)
    arotr bfCode #@(main@48)
  endloop #@(main@49)
else # forward rot to zero #@(main@50)
  push 0 #@(main@51)
  push bfCode.pos #@(main@52)
  sub #@(main@53)
  loop #@(main@54)
    arotl bfCode #@(main@55)
  endloop #@(main@56)
fi #@(main@57)
 #@(main@58)
 #@(main@59)
# interpret the BF code #@(main@60)
push 1 #@(main@61)
sbm loopCounter2 #@(main@62)
while #@(main@63)
  #(begin macro)scope_begin
  #(end macro)scope_begin
  # local variables #@(main@65)
  #(begin macro)lvar    bfD,    bfData
  push    bfData #@(macro_inc@22)(main@66)
  sbm     bfD #@(macro_inc@23)(main@66)
  #(end macro)lvar    bfD,    bfData
  #(begin macro)lvar    instr,  bfCode
  push    bfCode #@(macro_inc@22)(main@67)
  sbm     instr #@(macro_inc@23)(main@67)
  #(end macro)lvar    instr,  bfCode
   #@(main@68)
  #(begin macro)if_equal    instr,  0
  push    instr #@(macro_inc@37)(main@69)
  push    0 #@(macro_inc@38)(main@69)
  equal #@(macro_inc@39)(main@69)
  if #@(macro_inc@40)(main@69)
    #(end macro)if_equal    instr,  0
    #(begin macro)at_reset    loopCounter2
    #(begin macro)at_1("reset",a)
    #(begin macro)at_2(ope,a,"")
    at      loopCounter2 #@(macro_inc@79)(macro_inc@86)(macro_inc@91)(main@70)
      reset    #@(macro_inc@80)(macro_inc@86)(macro_inc@91)(main@70)
    ta #@(macro_inc@81)(macro_inc@86)(macro_inc@91)(main@70)
    #(end macro)at_2(ope,a,"")
    #(end macro)at_1("reset",a)
    #(end macro)at_reset    loopCounter2
  else #@(main@71)
    #(begin macro)if_equal    instr,  1
    push    instr #@(macro_inc@37)(main@72)
    push    1 #@(macro_inc@38)(main@72)
    equal #@(macro_inc@39)(main@72)
    if #@(macro_inc@40)(main@72)
      #(end macro)if_equal    instr,  1
      #(begin macro)at_inc  bfData
      #(begin macro)at_1("inc",a)
      #(begin macro)at_2(ope,a,"")
      at      bfData #@(macro_inc@79)(macro_inc@86)(macro_inc@96)(main@73)
        inc    #@(macro_inc@80)(macro_inc@86)(macro_inc@96)(main@73)
      ta #@(macro_inc@81)(macro_inc@86)(macro_inc@96)(main@73)
      #(end macro)at_2(ope,a,"")
      #(end macro)at_1("inc",a)
      #(end macro)at_inc  bfData
    fi #@(main@74)
     #@(main@75)
    #(begin macro)if_equal    instr,  3
    push    instr #@(macro_inc@37)(main@76)
    push    3 #@(macro_inc@38)(main@76)
    equal #@(macro_inc@39)(main@76)
    if #@(macro_inc@40)(main@76)
      #(end macro)if_equal    instr,  3
      #(begin macro)at_dec  bfData
      #(begin macro)at_1("dec",a)
      #(begin macro)at_2(ope,a,"")
      at      bfData #@(macro_inc@79)(macro_inc@86)(macro_inc@101)(main@77)
        dec    #@(macro_inc@80)(macro_inc@86)(macro_inc@101)(main@77)
      ta #@(macro_inc@81)(macro_inc@86)(macro_inc@101)(main@77)
      #(end macro)at_2(ope,a,"")
      #(end macro)at_1("dec",a)
      #(end macro)at_dec  bfData
    fi #@(main@78)
     #@(main@79)
    #(begin macro)if_equal    instr,  4
    push    instr #@(macro_inc@37)(main@80)
    push    4 #@(macro_inc@38)(main@80)
    equal #@(macro_inc@39)(main@80)
    if #@(macro_inc@40)(main@80)
      #(end macro)if_equal    instr,  4
      #(begin macro)at_out("bfData")
      #(begin macro)at_1("out",a)
      #(begin macro)at_2(ope,a,"")
      at      bfData #@(macro_inc@79)(macro_inc@86)(macro_inc@111)(main@81)
        out    #@(macro_inc@80)(macro_inc@86)(macro_inc@111)(main@81)
      ta #@(macro_inc@81)(macro_inc@86)(macro_inc@111)(main@81)
      #(end macro)at_2(ope,a,"")
      #(end macro)at_1("out",a)
      #(end macro)at_out("bfData")
    fi #@(main@82)
     #@(main@83)
    #(begin macro)if_equal    instr,  2
    push    instr #@(macro_inc@37)(main@84)
    push    2 #@(macro_inc@38)(main@84)
    equal #@(macro_inc@39)(main@84)
    if #@(macro_inc@40)(main@84)
      #(end macro)if_equal    instr,  2
      #(begin macro)at_in   bfData
      #(begin macro)at_1("in",a)
      #(begin macro)at_2(ope,a,"")
      at      bfData #@(macro_inc@79)(macro_inc@86)(macro_inc@106)(main@85)
        in    #@(macro_inc@80)(macro_inc@86)(macro_inc@106)(main@85)
      ta #@(macro_inc@81)(macro_inc@86)(macro_inc@106)(main@85)
      #(end macro)at_2(ope,a,"")
      #(end macro)at_1("in",a)
      #(end macro)at_in   bfData
    fi #@(main@86)
     #@(main@87)
    #(begin macro)if_equal    instr,  18
    push    instr #@(macro_inc@37)(main@88)
    push    18 #@(macro_inc@38)(main@88)
    equal #@(macro_inc@39)(main@88)
    if #@(macro_inc@40)(main@88)
      #(end macro)if_equal    instr,  18
      arotl bfData #@(main@89)
    fi #@(main@90)
     #@(main@91)
    #(begin macro)if_equal    instr,  20
    push    instr #@(macro_inc@37)(main@92)
    push    20 #@(macro_inc@38)(main@92)
    equal #@(macro_inc@39)(main@92)
    if #@(macro_inc@40)(main@92)
      #(end macro)if_equal    instr,  20
      arotr bfData #@(main@93)
    fi #@(main@94)
     #@(main@95)
    #(begin macro)scope_begin
    #(end macro)scope_begin
    #(begin macro)lvar    countBracket,   0
    push    0 #@(macro_inc@22)(main@97)
    sbm     countBracket #@(macro_inc@23)(main@97)
    #(end macro)lvar    countBracket,   0
     #@(main@98)
    #(begin macro)if_equal    instr,  49
    push    instr #@(macro_inc@37)(main@99)
    push    49 #@(macro_inc@38)(main@99)
    equal #@(macro_inc@39)(main@99)
    if #@(macro_inc@40)(main@99)
      #(end macro)if_equal    instr,  49
      #(begin macro)if_equal    bfD,    0      # if data is zero go to matching ']'
      push    bfD #@(macro_inc@37)(main@100)
      push    0 #@(macro_inc@38)(main@100)
      equal #@(macro_inc@39)(main@100)
      if #@(macro_inc@40)(main@100)
        #(end macro)if_equal    bfD,    0      # if data is zero go to matching ']'
        push    1 #@(main@101)
        sbm     g2mcbl # Go To Matching Closing Bracket Loop #@(main@102)
        while #@(main@103)
          arotl   bfCode   # go to next bfCode #@(main@104)
          #(begin macro)scope_begin
          #(end macro)scope_begin
          #(begin macro)lvar    tmpBfCode,  bfCode # local variable in scope
          push    bfCode #@(macro_inc@22)(main@106)
          sbm     tmpBfCode #@(macro_inc@23)(main@106)
          #(end macro)lvar    tmpBfCode,  bfCode # local variable in scope
           #@(main@107)
          #(begin macro)if_equal    tmpBfCode,  49
          push    tmpBfCode #@(macro_inc@37)(main@108)
          push    49 #@(macro_inc@38)(main@108)
          equal #@(macro_inc@39)(main@108)
          if #@(macro_inc@40)(main@108)
            #(end macro)if_equal    tmpBfCode,  49
            #(begin macro)at_inc  countBracket
            #(begin macro)at_1("inc",a)
            #(begin macro)at_2(ope,a,"")
            at      countBracket #@(macro_inc@79)(macro_inc@86)(macro_inc@96)(main@109)
              inc    #@(macro_inc@80)(macro_inc@86)(macro_inc@96)(main@109)
            ta #@(macro_inc@81)(macro_inc@86)(macro_inc@96)(main@109)
            #(end macro)at_2(ope,a,"")
            #(end macro)at_1("inc",a)
            #(end macro)at_inc  countBracket
          else       # if current bfCode != '[' #@(main@110)
            #(begin macro)if_equal    tmpBfCode,  51
            push    tmpBfCode #@(macro_inc@37)(main@111)
            push    51 #@(macro_inc@38)(main@111)
            equal #@(macro_inc@39)(main@111)
            if #@(macro_inc@40)(main@111)
              #(end macro)if_equal    tmpBfCode,  51
              #(begin macro)if_equal    countBracket,   0
              push    countBracket #@(macro_inc@37)(main@112)
              push    0 #@(macro_inc@38)(main@112)
              equal #@(macro_inc@39)(main@112)
              if #@(macro_inc@40)(main@112)
                #(end macro)if_equal    countBracket,   0
                #(begin macro)at_reset    g2mcbl
                #(begin macro)at_1("reset",a)
                #(begin macro)at_2(ope,a,"")
                at      g2mcbl #@(macro_inc@79)(macro_inc@86)(macro_inc@91)(main@113)
                  reset    #@(macro_inc@80)(macro_inc@86)(macro_inc@91)(main@113)
                ta #@(macro_inc@81)(macro_inc@86)(macro_inc@91)(main@113)
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("reset",a)
                #(end macro)at_reset    g2mcbl
              else # if countBracket >0 then countBracket-- #@(main@114)
                #(begin macro)at_dec  countBracket
                #(begin macro)at_1("dec",a)
                #(begin macro)at_2(ope,a,"")
                at      countBracket #@(macro_inc@79)(macro_inc@86)(macro_inc@101)(main@115)
                  dec    #@(macro_inc@80)(macro_inc@86)(macro_inc@101)(main@115)
                ta #@(macro_inc@81)(macro_inc@86)(macro_inc@101)(main@115)
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("dec",a)
                #(end macro)at_dec  countBracket
              fi #@(main@116)
            else   # if current bfCode != ']' #@(main@117)
              #(begin macro)if_equal    tmpBfCode,  0
              push    tmpBfCode #@(macro_inc@37)(main@118)
              push    0 #@(macro_inc@38)(main@118)
              equal #@(macro_inc@39)(main@118)
              if #@(macro_inc@40)(main@118)
                #(end macro)if_equal    tmpBfCode,  0
                #(begin macro)at_reset    g2mcbl
                #(begin macro)at_1("reset",a)
                #(begin macro)at_2(ope,a,"")
                at      g2mcbl #@(macro_inc@79)(macro_inc@86)(macro_inc@91)(main@119)
                  reset    #@(macro_inc@80)(macro_inc@86)(macro_inc@91)(main@119)
                ta #@(macro_inc@81)(macro_inc@86)(macro_inc@91)(main@119)
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("reset",a)
                #(end macro)at_reset    g2mcbl
              fi #@(main@120)
            fi #@(main@121)
          fi #@(main@122)
          #(begin macro)scope_end
          drop #@(macro_inc@15)(main@123)
          #(end macro)scope_end
        wend #@(main@124)
      fi #@(main@125)
    fi #@(main@126)
     #@(main@127)
    #(begin macro)if_equal    instr,  51
    push    instr #@(macro_inc@37)(main@128)
    push    51 #@(macro_inc@38)(main@128)
    equal #@(macro_inc@39)(main@128)
    if #@(macro_inc@40)(main@128)
      #(end macro)if_equal    instr,  51
      #(begin macro)if_diff bfD,    0
      push    bfD #@(macro_inc@29)(main@129)
      push    0 #@(macro_inc@30)(main@129)
      diff #@(macro_inc@31)(main@129)
      if #@(macro_inc@32)(main@129)
        #(end macro)if_diff bfD,    0
        push    1 #@(main@130)
        sbm     g2mobl # go to matching open bracket loop #@(main@131)
        while #@(main@132)
          arotr   bfCode    # go to previous bfCode #@(main@133)
          #(begin macro)scope_begin
          #(end macro)scope_begin
          #(begin macro)lvar    tmpBfCode,  bfCode # local variable in scope
          push    bfCode #@(macro_inc@22)(main@135)
          sbm     tmpBfCode #@(macro_inc@23)(main@135)
          #(end macro)lvar    tmpBfCode,  bfCode # local variable in scope
           #@(main@136)
          #(begin macro)if_equal    tmpBfCode,  51
          push    tmpBfCode #@(macro_inc@37)(main@137)
          push    51 #@(macro_inc@38)(main@137)
          equal #@(macro_inc@39)(main@137)
          if #@(macro_inc@40)(main@137)
            #(end macro)if_equal    tmpBfCode,  51
            #(begin macro)at_inc  countBracket
            #(begin macro)at_1("inc",a)
            #(begin macro)at_2(ope,a,"")
            at      countBracket #@(macro_inc@79)(macro_inc@86)(macro_inc@96)(main@138)
              inc    #@(macro_inc@80)(macro_inc@86)(macro_inc@96)(main@138)
            ta #@(macro_inc@81)(macro_inc@86)(macro_inc@96)(main@138)
            #(end macro)at_2(ope,a,"")
            #(end macro)at_1("inc",a)
            #(end macro)at_inc  countBracket
          else  # if current bfCode != ']' #@(main@139)
            #(begin macro)if_equal    tmpBfCode,  49
            push    tmpBfCode #@(macro_inc@37)(main@140)
            push    49 #@(macro_inc@38)(main@140)
            equal #@(macro_inc@39)(main@140)
            if #@(macro_inc@40)(main@140)
              #(end macro)if_equal    tmpBfCode,  49
              #(begin macro)if_equal    countBracket,   0
              push    countBracket #@(macro_inc@37)(main@141)
              push    0 #@(macro_inc@38)(main@141)
              equal #@(macro_inc@39)(main@141)
              if #@(macro_inc@40)(main@141)
                #(end macro)if_equal    countBracket,   0
                arotr   bfCode #@(main@142)
                #(begin macro)at_reset    g2mobl
                #(begin macro)at_1("reset",a)
                #(begin macro)at_2(ope,a,"")
                at      g2mobl #@(macro_inc@79)(macro_inc@86)(macro_inc@91)(main@143)
                  reset    #@(macro_inc@80)(macro_inc@86)(macro_inc@91)(main@143)
                ta #@(macro_inc@81)(macro_inc@86)(macro_inc@91)(main@143)
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("reset",a)
                #(end macro)at_reset    g2mobl
              else # if count bracket > 0 then countBracket -- #@(main@144)
                #(begin macro)at_dec  countBracket
                #(begin macro)at_1("dec",a)
                #(begin macro)at_2(ope,a,"")
                at      countBracket #@(macro_inc@79)(macro_inc@86)(macro_inc@101)(main@145)
                  dec    #@(macro_inc@80)(macro_inc@86)(macro_inc@101)(main@145)
                ta #@(macro_inc@81)(macro_inc@86)(macro_inc@101)(main@145)
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("dec",a)
                #(end macro)at_dec  countBracket
              fi #@(main@146)
            else  # if current bfCode != '[' #@(main@147)
              #(begin macro)if_equal    tmpBfCode,  0
              push    tmpBfCode #@(macro_inc@37)(main@148)
              push    0 #@(macro_inc@38)(main@148)
              equal #@(macro_inc@39)(main@148)
              if #@(macro_inc@40)(main@148)
                #(end macro)if_equal    tmpBfCode,  0
                #(begin macro)at_reset    g2mobl
                #(begin macro)at_1("reset",a)
                #(begin macro)at_2(ope,a,"")
                at      g2mobl #@(macro_inc@79)(macro_inc@86)(macro_inc@91)(main@149)
                  reset    #@(macro_inc@80)(macro_inc@86)(macro_inc@91)(main@149)
                ta #@(macro_inc@81)(macro_inc@86)(macro_inc@91)(main@149)
                #(end macro)at_2(ope,a,"")
                #(end macro)at_1("reset",a)
                #(end macro)at_reset    g2mobl
              fi #@(main@150)
            fi #@(main@151)
          fi #@(main@152)
          #(begin macro)scope_end
          drop #@(macro_inc@15)(main@153)
          #(end macro)scope_end
        wend #@(main@154)
      fi #@(main@155)
    fi #@(main@156)
    #(begin macro)scope_end
    drop #@(macro_inc@15)(main@157)
    #(end macro)scope_end
  fi #@(main@158)
  arotl   bfCode #@(main@159)
   #@(main@160)
  # destroy local variable #@(main@161)
  #(begin macro)scope_end
  drop #@(macro_inc@15)(main@162)
  drop #@(macro_inc@15)(main@162)
  #(end macro)scope_end
wend #@(main@163)

