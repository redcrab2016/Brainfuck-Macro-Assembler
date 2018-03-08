# Example : 16  bits signed integer value and computation

Compile and run the program by

     java -jar bf.jar signed16.asm
    

typical usage is

    [signed16]$ java -jar ../../bf.jar signed16.asm 
    Compilation Success
    176051 characters code into 57930 instructions
    Hexa dump
    c : carry , overflow or underflow
    s : sign , 00 positive, 01 negative
    1 : most significant byte
    0 : less significant byte
    [number1]00002890
              c s 1 0
    [number2]00010400
              c s 1 0
    
    [decimal number1]10384
    [decimal number2]-1024
    [number1+=number2]9360

  