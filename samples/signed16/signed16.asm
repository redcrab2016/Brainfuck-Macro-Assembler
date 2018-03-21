include ../include/macro.inc
include ../include/signedX16.inc

# display a number
var16("number1")

push    0
setv16("number1", 10384)


scope_begin()
    lvar16("number2")
    set16(-1024)

    print("16 bits Hexa dump\n")
    print("c : carry , overflow or underflow\n")    
    print("s : sign , 00 positive, 01 negative\n")    
    print("1 : most significant byte\n")    
    print("0 : less significant byte\n")    

    print("[number1]")
    printhexa16("number1")
    print("\n")
    print("          c s 1 0\n")

    print("[number2]")
    printhexa16("number2")
    print("\n")
    print("          c s 1 0\n\n")
    
    print("[decimal number1]")
    write16("number1")
    print("\n")
    print("[decimal number2]")
    write16("number2")
    print("\n")

    addvv16("number1","number2")
    print("[number1+=number2]")
    write16("number1")
    print("\n")
    
    subvv16("number1","number2")
    print("[number1-=number2]")
    write16("number1")
    print("\n")

    print("[number1]")
    printhexa16("number1")
    print("\n")
    print("          c s 1 0\n")

    print("[number2]")
    printhexa16("number2")
    print("\n")
    print("          c s 1 0\n\n")

    addvv16("number2","number1")
    print("[number2+=number1]") 
    write16("number2")
    print("\n")
    
    subvv16("number2","number1")
    print("[number2-=number1]")
    write16("number2")
    print("\n")

    print("[number1]")
    printhexa16("number1")
    print("\n")
    print("          c s 1 0\n")

    print("[number2]")
    printhexa16("number2")
    print("\n")
    print("          c s 1 0\n\n")
scope_end()

drop

