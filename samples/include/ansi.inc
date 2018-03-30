# based on https://en.wikipedia.org/wiki/ANSI_escape_code
# macro to help to place ANSI code to output

#######################
# ANSI Escape sequences
#######################

macro ansi_esc(cmd)
    print("\x1b")
    print(cmd)
endmacro

     ## Single Shift Two
macro ansi_SS2()
    ansi_esc    N
endmacro

    ##  Single Shift Three
macro ansi_SS3()
    ansi_esc    O
endmacro

    ## Device Control String
macro ansi_DCS()
    ansi_esc    P
endmacro

    ## Control Sequence Introducer
macro ansi_CSI()
    ansi_esc    [
endmacro

    ##  String Terminator
macro ansi_ST()
    ansi_esc("\\")
endmacro

    ## Operating System Command
macro ansi_OSC()
    ansi_esc    ]
endmacro

    ## Start of String
macro ansi_SOS()
    ansi_esc    X
endmacro

    ## Privacy Message
macro ansi_PM()
    ansi_esc    ^
endmacro

    ##  Application Program Command
macro ansi_APC()
    ansi_esc    _
endmacro

    ## Reset to Initial State
macro ansi_RIS()
    ansi_esc    c
endmacro

####################
# ANSI CSI sequences
####################

    ## Cursor Up
macro ansi_CUU(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   A
endmacro            

    ## Cursor Down        
macro ansi_CUD(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   B
endmacro

    ## Cursor Forward
macro ansi_CUF(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   C
endmacro

    ## Cursor Back
macro ansi_CUB(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   D
endmacro

    ## Cursor Next Line
macro ansi_CNL(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   E
endmacro

    ## Cursor Previous Line
macro ansi_CPL(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   F
endmacro

    ## Cursor Horizontal Absolute
macro ansi_CHA(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   G
endmacro

    ## Cursor Position
macro ansi_CUP(row,column)
    ansi_CSI
    push    {row}
    writeByteDecimal
    print   ;
    push    {column}
    writeByteDecimal
    print   H
endmacro

    ## Erase Display
    ## 0 : from cursor up to end of screen
    ## 1 : from cursor up to begin of screen
    ## 2 : clear all screen : keep back buffer
    ## 3 : clear all screen , erase back buffer
macro ansi_ED(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   J
endmacro

    ## Erase in Line, to cursor position change
    ## 0 : clear from cursor to end of line
    ## 1 : clear from cursor to begin of line
    ## 2 : clear all line
macro ansi_EL(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   K
endmacro

    ##  Scroll Up
macro ansi_SU(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   S
endmacro

    ## Scroll Down
macro ansi_SD(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   T
endmacro

    ## same as ansi_CUP : Cursor Position
macro ansi_HVP(row,column)
    ansi_CSI
    push    {row}
    writeByteDecimal
    print   ;
    push    {column}
    writeByteDecimal
    print   f
endmacro

        ## Select Graphic Endition
macro ansi_SGR(n)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   m
endmacro

    ## Select Graphic Rendition with 2 parameters
macro ansi_SGR3(n, p1, p2)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   ;
    push    {p1}
    writeByteDecimal
    print   ;
    push    {p2}
    writeByteDecimal
    print   m
endmacro

    ## Select Graphic Rendition with 4 parameters
macro ansi_SGR5(n, p1, p2, p3, p4)
    ansi_CSI
    push    {n}
    writeByteDecimal
    print   ;
    push    {p1}
    writeByteDecimal
    print   ;
    push    {p2}
    writeByteDecimal
    print   ;
    push    {p3}
    writeByteDecimal
    print   ;
    push    {p4}
    writeByteDecimal
    print   m
endmacro

    ## AUX Port On
macro ansi_AUXportOn()
    ansi_CSI
    print   5i
endmacro

    ## AUX Port On
macro ansi_AUXportOff()
    ansi_CSI
    print   4i
endmacro

    ## Device Status Report
macro ansi_DSR()
    ansi_CSI
    print   6n
endmacro

    ## Save Cursor Position
macro ansi_SCP()
    ansi_CSI
    print   s    
endmacro
    
    ## Restore Cursor Position
macro ansi_RCP()
    ansi_CSI
    print   u
endmacro

    ## show cursor
macro ansi_SCU()
    ansi_CSI
    print   ?25h
endmacro

    ## hide cursor
macro ansi_HCU()
    ansi_CSI
    print   ?25l
endmacro

    ## enable alternate screen buffer
macro ansi_EASB()
    ansi_CSI
    print   ?1049h
endmacro

    ## disable alternate screen buffer
macro ansi_DASB()
    ansi_CSI
    print   ?1049l
endmacro

    ## Turn on bracketed paste mode 
macro ansi_BPMon()
    ansi_CSI
    print   ?2004h
endmacro

    ## Turn off bracketed paste mode 
macro ansi_BPMoff()
    ansi_CSI
    print   ?2004l
endmacro

#####################################
# ANSI SGR (Select Graphic Rendition)
#####################################

    ## Reset / Normal
macro ansi_SGR_reset()
    ansi_SGR    0
endmacro

    ## Bold or increased intensity
macro ansi_SGR_bold()
    ansi_SGR    1
endmacro

    ## Faint (decreased intensity)
macro ansi_SGR_faint()
    ansi_SGR    2
endmacro

    ## Italic
macro ansi_SGR_italic()
    ansi_SGR    3
endmacro

    ## Underline
macro ansi_SGR_underline()
    ansi_SGR    4
endmacro        

    ## Slow Blink
macro ansi_SGR_sblink()
    ansi_SGR    5
endmacro
    
    ## Rapid Blink
macro ansi_SGR_rblink()
    ansi_SGR    6    
endmacro

    ## Reverse Video
macro ansi_SGR_reverse()
    ansi_SGR    7
endmacro

    ## Conceal
macro ansi_SGR_conceal()
    ansi_SGR    8    
endmacro

    ## Crossed-out
macro ansi_SGR_crossout()
    ansi_SGR    9    
endmacro

    ## primary font
macro ansi_SGR_defaultfont()
    ansi_SGR    10
endmacro

    ## alternate font (1 to 9) , 0 same as primary
macro ansi_SGR_font(n)
    push    {n}
    add     10
    sbm     __ansiFontNum{_ansi_SGR_font}
    ansi_SGR    __ansiFontNum{_ansi_SGR_font}
    drop   
endmacro

    ## Fraktur
macro ansi_SGR_fraktur()
    ansi_SGR    20
endmacro    

    ## Bold off or Double Underline
macro ansi_SGR_doubleunderline()
    ansi_SGR    21
endmacro

    ## Normal color or intensity (neither bold nor faint)
macro ansi_SGR_normalcolorintensity()
    ansi_SGR    22
endmacro

    ## Not italic nor fraktur
macro ansi_SGR_italicfrakturoff()
    ansi_SGR    23
endmacro    

    ## Underline off
macro ansi_SGR_underlineoff()
    ansi_SGR    24
endmacro

    ## blink off
macro ansi_SGR_blinkoff()
    ansi_SGR    25
endmacro

    ## Inverse off
macro ansi_SGR_inverseoff()
    ansi_SGR    27
endmacro

    ## Reveal / conceal off
macro ansi_SGR_concealoff()
    ansi_SGR    28
endmacro

    ## Not cross-out
macro ansi_SGR_crossoutoff()
    ansi_SGR    29
endmacro

    ## Set foreground color 0 to 7    
macro ansi_SGR_fgcolor(n)
    push    {n}
    add     30
    sbm     __ansifgc{_ansi_SGR_fgcolor}
    ansi_SGR    __ansifgc{_ansi_SGR_fgcolor}
    drop    
endmacro

    ## set foreground color , palette on 256 colors
macro ansi_SGR_fg256(n)
    ansi_SGR3   38, 5,  {n}
endmacro

    ## set foreground color, RGB 24 bits (3* 256 colors, RGB)
macro ansi_SGR_fgRGB(r,g,b)
    ansi_SGR5   38, 2,  {r},    {g},    {b}    
endmacro

    ## set default foreground color
macro ansi_SGR_fgdefault()
    ansi_SGR    39
endmacro

    ## Set background color 0 to 7    
macro ansi_SGR_bgcolor(n)
    push    {n}
    add     40
    sbm     __ansibgc{_ansi_SGR_bgcolor}
    ansi_SGR    __ansibgc{_ansi_SGR_bgcolor}
    drop    
endmacro

    ## set background color , palette on 256 colors
macro ansi_SGR_bg256(n)
    ansi_SGR3   48, 5,  {n}
endmacro

    ## set background color, RGB 24 bits (3* 256 colors, RGB)
macro ansi_SGR_bgRGB(r,g,b)
    ansi_SGR5   48, 2,  {r},    {g},    {b}    
endmacro

    ## set default background color
macro ansi_SGR_bgdefault()
    ansi_SGR    49
endmacro

    ## Framed
macro ansi_SGR_framed()
    ansi_SGR    51    
endmacro

    ## Encircled   
macro ansi_SGR_encircled()
    ansi_SGR    52
endmacro    

    ## Overlined
macro ansi_SGR_overlined()
    ansi_SGR    53
endmacro    

    ## Not framed or encirlced
macro ansi_SGR_framedoff()
    ansi_SGR    54
endmacro
macro ansi_SGR_encircledoff()
    ansi_SGR    54
endmacro    

    ## Not overlined
macro ansi_SGR_overlinedoff()
    ansi_SGR    55
endmacro

    ## Foreground Black
macro ansi_SGR_fg_black()
    ansi_SGR_fgcolor    0
endmacro    

    ## Foreground Red
macro ansi_SGR_fg_red()
    ansi_SGR_fgcolor    1
endmacro    

    ## Foreground Green
macro ansi_SGR_fg_green()
    ansi_SGR_fgcolor    2
endmacro    

    ## Foreground Yellow
macro ansi_SGR_fg_yellow()
    ansi_SGR_fgcolor    3
endmacro    

    ## Foreground Blue
macro ansi_SGR_fg_blue()
    ansi_SGR_fgcolor    4
endmacro    

    ## Foreground Magenta
macro ansi_SGR_fg_magenta()
    ansi_SGR_fgcolor    5
endmacro    

    ## Foreground Cyan
macro ansi_SGR_fg_cyan()
    ansi_SGR_fgcolor    6
endmacro    

    ## Foreground White
macro ansi_SGR_fg_white()
    ansi_SGR_fgcolor    7
endmacro    
    
    ## Background Black
macro ansi_SGR_bg_black()
    ansi_SGR_bgcolor    0
endmacro    

    ## Background Red
macro ansi_SGR_bg_red()
    ansi_SGR_bgcolor    1
endmacro    

    ## Background Green
macro ansi_SGR_bg_green()
    ansi_SGR_bgcolor    2
endmacro    

    ## Background Yellow
macro ansi_SGR_bg_yellow()
    ansi_SGR_bgcolor    3
endmacro    

    ## Background Blue
macro ansi_SGR_bg_blue()
    ansi_SGR_bgcolor    4
endmacro    

    ## Background Magenta
macro ansi_SGR_bg_magenta()
    ansi_SGR_bgcolor    5
endmacro    

    ## Background Cyan
macro ansi_SGR_bg_cyan()
    ansi_SGR_bgcolor    6
endmacro    

    ## Background White
macro ansi_SGR_bg_white()
    ansi_SGR_bgcolor    7
endmacro    
    
    
    
    
    
    
    
    
    