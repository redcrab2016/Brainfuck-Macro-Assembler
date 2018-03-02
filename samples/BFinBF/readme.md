# Example : Brainfuck interpreter in Brainfuck

Compile and run the program by

     java -jar bf.jar BFinBF.asm
    
The input is the BF code to interpret

The BF code stop at '!' character.

After '!' character, the following characters are considered as the input of the previous BF code

A sample input of BFinBF can be 

    ,[.-]!z

Take a character input (here 'z') and display all previous character up to character ASCII 1

    [sample/BFinBF]$ java -jar ../../bf.jar BFinBF.asm
    Compilation Success
    ,[.-]!z
    zyxwvutsrqponmlkjihgfedcba`_^]\[ZYXWVUTSRQPONMLKJIHGFEDCBA@?>=<;:9876543210/.-,+*)('&%$#"!...
    
BFinBF can accept maximum of 255 characters BF code.

BFinBF has a memory of 255 bytes.

Therefore BFinBF can't accept itself as program (BFinBF.bf is too large)
