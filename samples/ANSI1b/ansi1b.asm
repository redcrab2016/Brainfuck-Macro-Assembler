# ANSI code example
# This example works well under Linux
# Under Windows 'cmd.exe' alike processes, it doesn't word
#  it may be possible, have a look at  https://web.liferay.com/it/web/igor.spasic/blog/-/blogs/enable-ansi-colors-in-windows-command-prompt

include ../include/macro.inc
include ../include/ansi.inc

# clear screen
ansi_ED  2
# cursor position to 1 1 
ansi_CUP 1,  1
# inline ansi code
print("This is an \x1b[7mANSI\x1b[0m \x1b[38;5;226msample\x1b[0m\n")
ansi_SGR_fg_green
print("This line is green\n")
ansi_SGR_bg_blue
print("This line is green on blue\n")
ansi_SGR_reverse
print("This line is reverse : blue on green\n")
ansi_SGR_reset
print("This line is written normaly\n")