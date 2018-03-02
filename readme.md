# BF Runtime and BF Macro Assembler compiler

Based on [Brainfuck](https://en.wikipedia.org/wiki/Brainfuck) language.
This project has the double purpose to

- Execute BF programs
- Compile and execute BF Macro Assembler programs

The Macro Assembler aim is to make easier the design of BF program.

There is sample programs in folder **samples** 

## Compile the project
This project is a simple java console project.

It was designed with J2SE 1.7

It runs also with OpenJDK 1.8 on Linux CentOS 7

It was not tested on Windows platform, but should work.

this project is jarred with a MANIFEST indicating

    dvx.lang.brainfuck.Main
    
as main class of the jar.

## Usage example

launch

    java -jar bf.jar
    
It will show the usage

    Usage: java -jar bf.jar [OPTION]... FILE
    Execute brainfuck FILE or compile and execute brainfuck assembler FILE.
    
      -b, --build-folder=FOLDER      location where build files are generated
                                       by default it use the folder that 
                                       contains FILE. 
      -c, --compile-only             compile FILE and don't execute it.
      -d, --keep-debug-bf            do not delete debug generated bf file.
                                       The file is generated at FOLDER designated
                                       by option -b or by default to foder
                                       that contain FILE
      -D, --remove-debug-bf          (default) do not keep debug generated BF
      -h, --help                     show this current help
      -i, --inputbf=FILE             instead of STDIN, use FILE as input for
                                       BF execution 
      -I, --include=FOLDER           Assembler include folder for 'include' directive.
                                       by default use the folder containing FILE.
      -k, --keep-build-file          Do not remove build files.
                                       by default there are located in folder containing
                                       FILE or under FOLDER specified by option -b
      -K, --delete-build-file        (default) do not keep build files.
      -o, --outputbf=FILE            instead of STDOUT, use FILE as output for
                                       BF execution
      -s, --bf-line-size=SIZE        generated BF file is limited by SIZE characters
                                       for each line (default 80)
      -z, --disable-optimize-compile do not optimize generated bf
      -Z, --enable-optimize-compile  (default) optimzed generated bf result
     

To launch a BF file named sample.bf

    java -jar bf.jar sample.bf
    
To compile and run a BF Assembler file

    java -jar bf.jar sample.asm
    
To only compile and keep building files

    java -jar bf.jar -c -k sample.asm
    
then by keeping the building file there are the following files 

- **sample.js** : javascript (macro) that do generate sample.pc.asm
- **sample.pc.asm** : result of macro execution (pre-compilation result)
- **sample.deb.bf** : result with comments, of the compilation of sample.pc.asm 
- **sample.bf** : result without comment of the compilation of sample.pc.asm

If you have compilation error you may investigate

- firstly in **sample.pc.asm**
- secondly in **sample.js**        

BF debugger is not yet ready :(

But there is some online BF debuggers

For instance [this one](https://www.iamcal.com/misc/bf_debug/) is a good one. 

# BF native code and assembler

## BF Code

### 2 memory areas

- code
- data (memory)

### 2 pointers

- ip : instruction pointer in code
- mp : data pointer in memory

### 2 ports

- 1 input : read a byte 
- 1 output : write a byte


### 8 intructions  

    | Code | Pseudo code                      | Description                                       |
    | ---- | -------------------------------- | ------------------------------------------------- |
    |  +   | [mp]++ ; ip++                    | increment current data at mp                      |
    |  -   | [mp]-- ; ip++                    | decrement current data at mp                      |
    |  >   |  mp++ ; ip++                     | move data pointer right                           |
    |  <   |  mp-- ; ip++                     | move data pointer left                            |
    |  .   | write( [mp] ); ip++              | write output with byte at memory mp               |
    |  ,   | [mp] = read() ; ip++             | read byte input and store it at memory mp         |
    |  [   | ip = [mp]>0?ip+1:ip(matched)] +1 | if byte at memory mp is zero go to matching ]     |
    |  ]   | ip = [mp]==0?ip+1:ip(matched)[   | if byte at memory mp is not zero go to matching [ |

## BF Assembler

This project implement an assembler language that use the BF memory as a stack.

***
### ADD

Do an addition

#### With an immediate    
    ADD  /immediate/

##### Peudo code
    
    [mp] += /immediate/
    
##### Example

    PUSH    1    # mp++; [mp] = 1    
    ADD     'A'  # [mp] += 65; [mp] == 66 is true

#### With stack

    ADD
    
##### Peudo code
        
    [mp] = [mp] + [mp-1] ; mp--

##### Example
    
    PUSH    2   # mp++; [mp] = 2 
    PUSH    3   # mp--
    ADD         # [mp] = [mp] + [mp-1] ; mp-- ; [mp] == 5 is true

***    
### AND

Do a boolean 'and'

#### With stack

    AND
    
##### Pseudo code

    [mp] = [mp] and [mp-1] ; mp--;      


##### Example

    PUSH    0   # mp++; [mp] = 0
    PUSH    1   # mp++; [mp] = 1
    AND         # [mp] = [mp] and [mp-1] ; mp-- ; [mp] == 0 is true
    
    
    PUSH    1   # mp++; [mp] = 1
    PUSH    1   # mp++; [mp] = 1
    AND         # [mp] = [mp] and [mp-1] ; mp-- ; [mp] == 1 is true
    
    
    PUSH    3   # mp++; [mp] = 3
    PUSH    4   # mp++; [mp] = 4
    AND         # [mp] = [mp] and [mp-1] ; mp-- ; [mp] == 1 is true

***
### AROTL

Do one rotation left of an array global variable

#### With global variable

    AROTL   /gVar/

##### Pseudo code

    tmp = [gVar+ 0]
    [gVar + 0] = [gVar + 1]
    [gVar + 1] = [gVar + 2]
    ...
    [gVar + gVar.size -1] = tmp
    gVar.pos = (gVar.pos + 1) modulus gVar.size
       
##### Example

    VAR     var1*5      # variable array of 5 bytes
    # assume we have 'Hello' at var1
    PUSH    var1        # mp++ ; [mp] = 'H'
    PUSH    var1.pos    # mp++ ; [mp] = 0
    AROTL   var1        # var1 is 'elloH' now
    DROP                # mp--
    DROP                # mp--
    PUSH    var1        # mp++ ; [mp] = 'e'
    PUSH    var1.pos    # mp++ ; [mp] = 1

***
### AROTR

Do one rotation right of an array global variable

#### With global variable

    AROTR   /gVar/

##### Pseudo code

    tmp = [gVar+ gVar.size -1]
    [gVar + gVar.size -1] = [gVar + gVar.size -2]
    [gVar + gVar.size -2] = [gVar + gVar.size -3]
    ...
    [gVar + 0] = tmp
    gVar.pos = (gVar.pos -1) ; if <0 then gvar.pos = gvar.size -1
       
##### Example

    VAR     var1*5      # variable array of 5 bytes
    # assume we have 'Hello' at var1
    PUSH    var1.size   # mp++ ; [mp] = 5
    PUSH    var1        # mp++ ; [mp] = 'H'
    PUSH    var1.pos    # mp++ ; [mp] = 0
    AROTR   var1        # var1 is 'oHell' now
    DROP                # mp--
    DROP                # mp--
    DROP                # mp--
    PUSH    var1        # mp++ ; [mp] = 'o'
    PUSH    var1.pos    # mp++ ; [mp] = 4

***
### AT / TA

Do one or several single operation for a global variable or a stack bookmark

The valid single operations are 

- RESET
- IN
- OUT
- INC
- DEC
- SET   /immediate/
- ADD   /immediate/
- SUB   /immediate/

Doing

    AT  var1
        SET 2
    TA

is the same as

    PUSH    2
    POP     var1
    
but AT is more efficient (less BF code and less execution steps, less stack consumption )

#### With global variable or stack book mark

    AT   /gVarOrSbm/
        /single Operation/
        ...
    TA

##### Pseudo code

    tmp = mp
    mp = gVarOrSbm
    /single Operation/
    ... other single operation
    mp = tmp

#### Example

    VAR     var1
    AT      var1    # tmp = mp ; mp = var1
        SET    10   # [mp] = 10
    TA              # mp = tmp


    PUSH    'A'     # mp++ ; [mp] = 65  (same as 'A')
    SBM     var1    # STACKBM(var1) = mp
    PUSH    'B'     # mp++ ; [mp] = 66 ( same as 'B')
    SBM     var2    # STACKBM(var2) = mp
    AT      var1    # tmp = mp ; mp = STACKBM(var1)
        ADD     2   # [mp] += 2 ; [mp] == 67 is true
        OUT         # write([mp]) ; output 'C' (67)
    TA
    AT      var2    # tmp = mp ; mp = STACKBM(var1)
        OUT         # write([mp]) ; output 'B' (65)
    TA
    DROP            # mp-- ; release var2
    DROP            # mp-- ; release var1

***
### BF

Place inline BF code

Beware that with BF you can break the stack balance at runtime

#### With BF code

    BF  /BFcode/

##### Pseudo code

    Any pseudo code ... as provided by /BFcode/

##### Example

    BF      ,[.-]    # [mp] = readChar  ; while [mp]>0 { write([mp]); [mp]-- }

***
### BOOL

Transform head of stack value into a valid boolean value

#### With no operand

    BOOL

##### Pseudo code

    [mp] = [mp] == 0 ? 0 : 1

##### Example

    PUSH    'A'     # mp++; [mp] = 65 (same as 'A')
    BOOL            # [mp] = [mp] == 0 ? 0 : 1 ; [mp] == 1 is true

***
### DEC

Decrement head of stack value

#### With no operand

    DEC

##### Pseudo code

    [mp]--

##### Example

    PUSH    10      # mp++ ; [mp] = 10
    DEC             # [mp]-- ; [mp] == 9 is true

***
### DIFF

Does two values in stack are different

#### With stack

    DIFF
    
##### Pseudo code

    [mp-1] = [mp] != [mp-1] ; mp--

##### Example
    
    PUSH    2       # mp++ ; [mp] = 2 
    PUSH    3       # mp++ ; [mp] = 3
    DIFF            # [mp-1] = [mp] != [mp-1] ; mp-- ; [mp] == 1 is true

    PUSH    'A'     # mp++ ; [mp] = 65 
    PUSH    65      # mp++ ; [mp] = 65
    DIFF            # [mp-1] = [mp] != [mp-1] ; mp-- ; [mp] == 0 is true

***
### DIV

Divide two values in stack.

no division by zero check. Do your check before 

#### With stack

    DIV

##### Pseudo Code

    d = [mp-1] div [mp] ; r = [mp-1] mod [mp] ; [mp] = d ; [mp-1] = r
    
##### Example

    VAR     d       # will receive 5 div 2
    VAR     r       # will receive 5 mod 2
    PUSH    5       # mp++ ; [mp] = 5
    PUSH    2       # mp++ ; [mp] = 2
    DIV             # [mp] = 5 div 2; [mp-1] = 5 mod 2
    POP     d       # [d] = [mp] ; mp-- ; [d] == 2 is true 
    POP     r       # [r] = [mp] ; mp-- ; [r] == 1 is true

***
### DROP

Drop head of stack value

#### With stack

    DROP

##### Pseudo code

    mp--
    
##### Example

    PUSH    10      # mp++; [mp] = 10
    PUSH    20      # mp++; [mp] = 20
    DROP            # mp--; [mp] == 10 is true

***
### DUP

Duplicate head of stack value

#### With stack

    DUP
    
##### Pseudo code

    mp++; [mp] = [mp-1]    

##### Example

    PUSH    10      # mp++ ; [mp] = 10
    PUSH    20      # mp++ ; [mp] = 20
    DUP             # mp++ ; [mp] = [mp-1] ; [mp] == 20 is true
    DROP            # mp-- ; [mp] == 20 is true

***
### EQUAL

Does two values in stack are different

#### With stack

    EQUAL
    
##### Pseudo code

    [mp-1] = [mp] == [mp-1] ; mp--

##### Example
    
    PUSH    2       # mp++ ; [mp] = 2 
    PUSH    3       # mp++ ; [mp] = 3
    EQUAL           # [mp-1] = [mp] != [mp-1] ; mp-- ; [mp] == 0 is true

    PUSH    'A'     # mp++ ; [mp] = 65 
    PUSH    65      # mp++ ; [mp] = 65
    EQUAL           # [mp-1] = [mp] != [mp-1] ; mp-- ; [mp] == 1 is true

***
### IF/FI IF/ELSE/FI

Conditional instruction codes execution

#### With stack

    IF
        /code/+
    FI  or ENDIF

    IF
        /code/+
    ELSE
        /code/+
    FI or ENDIF
    
##### Pseudo code
    
    if [mp] > 0 { /otherPseudoCodes/ }
    
    if [mp] > 0 { /otherPseudoCodes/ } else { /otherPseudoCdes/ }
    
##### Example

    PUSH    0       # mp++ ; [mp] = 0
    IN              # [mp]=readbyte
    PUSH    'A'     # mp++ ; [mp] = 'A'
    EQUAL           # [mp] = readbyte == 'A'
    IF              # if [mp] != 0
        PUSH    'A' # mp++ ; [mp] = 'A'
        POP     OUT # write([mp]) ; mp--
    ELSE
        PUSH    '_' # mp++ ; [mp] = '_'
        POP     OUT # write([mp]) ; mp --
    FI
    
***
### IN

Read byte from input port and set it on head of stack

#### With stack

    IN

##### Pseudo code

    [mp] = readbyte

##### Example

    VAR    var1
    AT      var1
        IN
    TA

***
### INC

Increment head of stack value

#### With no operand

    INC

##### Pseudo code

    [mp]++

##### Example

    PUSH    10      # mp++ ; [mp] = 10
    INC             # [mp]++ ; [mp] == 11 is true

***
### INF

Does head of stack value is less than previous stack value

#### With stack

    INF
    
##### Pseudo code

    [mp-1] = [mp] < [mp-1] ; mp--

##### Example
    
    PUSH    3       # mp++ ; [mp] = 3 
    PUSH    2       # mp++ ; [mp] = 2
    INF             # [mp-1] = [mp] < [mp-1] ; mp-- ; [mp] == 1 is true

    PUSH    'A'     # mp++ ; [mp] = 65 
    PUSH    65      # mp++ ; [mp] = 65
    INF             # [mp-1] = [mp] < [mp-1] ; mp-- ; [mp] == 0 is true

### LOOP/ENDLOOP

Basically repeat "head of stack value" times a set of code

#### With stack

    LOOP
        /code/+
    ENDLOOP

##### Pseudo code

    while [mp]>0 { /code/+ ; [mp]-- }

##### Example

    PUSH    10      # mp++ ; [mp] = 10
    LOOP            # while [mp]>0 {
        OUT         #   write([mp]) ; will write 10,9,8 ... 1
    ENDLOOP         # [mp]-- }

***
### MUL

Multiply two values in stack.

no overflow check 

#### With stack

    MUL

##### Pseudo Code

    [mp-1] = [mp] * [mp-1] ; mp--
    
##### Example

    VAR     mult    # will receive 5 * 2 (10)
    PUSH    5       # mp++ ; [mp] = 5
    PUSH    2       # mp++ ; [mp] = 2
    MUL             # [mp-1] = 5 *2; mp--
    POP     mult    # [mult] = [mp] ; mp-- ; [mult] == 10 is true 

***
### NOT

Do a boolean not operation on the head of stack value

#### With no operand

    NOT

##### Pseudo code

    [mp] = [mp] != 0 ? 0 : 1 

##### Example

    PUSH    1       # mp++ ; [mp] = 1
    NOT             # [mp] = [mp] != 0 ? 0 : 1 ; [mp] == 0 is true

    PUSH    0       # mp++ ; [mp] = 0
    NOT             # [mp] = [mp] != 0 ? 0 : 1 ; [mp] == 1 is true
    
    PUSH    4       # mp++ ; [mp] = 4
    NOT             # [mp] = [mp] != 0 ? 0 : 1 ; [mp] == 0 is true

***    
### OR

Do a boolean 'or'

#### With stack and no operand

    OR
    
##### Pseudo code

    [mp] = [mp] or [mp-1] ; mp--;      


##### Example

    PUSH    0   # mp++; [mp] = 0
    PUSH    1   # mp++; [mp] = 1
    OR          # [mp] = [mp] or [mp-1] ; mp-- ; [mp] == 1 is true
    
    
    PUSH    0   # mp++; [mp] = 0
    PUSH    0   # mp++; [mp] = 0
    OR          # [mp] = [mp] or [mp-1] ; mp-- ; [mp] == 0 is true
    
    
    PUSH    3   # mp++; [mp] = 3
    PUSH    4   # mp++; [mp] = 4
    OR          # [mp] = [mp] or [mp-1] ; mp-- ; [mp] == 1 is true

***
### OUT

Write out the head of stack value
 
#### With stack

    OUT

##### Pseudo code

    write([mp])

##### Example

    PUSH    'A'        # mp++ ; [mp] = 65 ( same as 'A') 
    OUT                # write([mp])

***
### POP

Consume the stack head and place the value elsewhere in the stack.

"Elsewhere in the stack" means

- relative to the stack expressed by an immediate  negative integer
- To a named stack book mark
- To a global variable name

#### With a negative immediate

    POP     -/Integer/
    
##### Pseudo code

    [mp-/Integer/] = [mp] ; mp--
    
##### Example

    PUSH    10      # mp++ ; [mp] = 10
    PUSH    20      # mp++ ; [mp] = 20
    PUSH    30      # mp++ ; [mp] = 30
    PUSH    40      # mp++ ; [mp] = 40
    # before in stack we've got  40,30,20,10
    POP     -2      # [mp-2] = [mp] ; mp--
    # after in stack we've got 30,40,10

#### With a Stack Book mark only

    POP     -/SBMName/
    
##### Pseudo code

    [STACKBM(SBMName)] = [mp] ; mp--    

##### Example

    PUSH    10      # mp++ ; [mp] = 10
    PUSH    20      # mp++ ; [mp] = 20
    SBM     sbm1
    PUSH    30      # mp++ ; [mp] = 30
    PUSH    40      # mp++ ; [mp] = 40
    # before in stack we've got  40,30,20,10
    POP     -sbm1    # [STACKBM(sbm1)] = [mp] ; mp--
    # after in stack we've got 30,40,10

#### With a global variable or Stack Book mark

    POP     /Name/

##### Pseudo code

    If name exist global variable
        [Name] = [mp] ; mp--
    Else if name exist in Stack book mark
        [STACKBM(Name)] = [mp] ; mp--
        
##### Example

    VAR     var1
    PUSH    100
    POP     var1
    PUSH    10      # mp++ ; [mp] = 10
    PUSH    20      # mp++ ; [mp] = 20
    SBM     var1
    PUSH    30      # mp++ ; [mp] = 30
    PUSH    40      # mp++ ; [mp] = 40
    # before in stack we've got  40,30,20,10
    POP     var1    # [STACKBM(sbm1)] = [mp] ; mp--
    # after in stack we've got 30,20,10, and var1 == 40 (before 100)
       
***
### PUSH

push a value onto the stack, from an immediate or somewhere else value in the stack.

"somewhere else" means

- relative to the stack expressed by an immediate  negative integer
- To a named stack book mark
- To a global variable name

#### With an immediate

    PUSH     /Integer/ or /singleCharacter/
    
##### Pseudo code

    mp++ ; [mp] = /Immediate/ or /singleCharacter/
    
##### Example

    PUSH    10      # mp++ ; [mp] = 10
    PUSH    20      # mp++ ; [mp] = 20
    PUSH    30      # mp++ ; [mp] = 30
    PUSH    40      # mp++ ; [mp] = 40
    # before in stack we've got  40,30,20,10
    POP     -2      # [mp-2] = [mp] ; mp--
    # after in stack we've got 30,40,10

#### With an negative immediate

    PUSH     -/Integer/
    
##### Pseudo code

    [mp+1] = [mp-/Integer/] ; mp++
    
##### Example

    PUSH    10      # mp++ ; [mp] = 10
    PUSH    20      # mp++ ; [mp] = 20
    PUSH    -1      # [mp+1] = [mp-/Integer/] ; mp++; [mp] == 10 is true

#### With a Stack Book mark only

    PUSH     -/SBMName/
    
##### Pseudo code

    mp++ ; [mp] = [STACKBM(SBMName)]     

##### Example

    PUSH    10      # mp++ ; [mp] = 10
    PUSH    20      # mp++ ; [mp] = 20
    SBM     sbm1
    PUSH    30      # mp++ ; [mp] = 30
    PUSH    40      # mp++ ; [mp] = 40
    # before in stack we've got  40,30,20,10
    PUSH    -sbm1    # [STACKBM(sbm1)] = [mp] ; mp--
    # after in stack we've got 20,40,30,20,10

#### With a global variable or Stack Book mark

    PUSH    /Name/

##### Pseudo code

    If name exist global variable
        mp++; [mp] = [Name]
    Else if name exist in Stack book mark
        m++; [mp] = [STACKBM(Name)] 
        
##### Example

    VAR     var1
    PUSH    100
    POP     var1
    PUSH    10      # mp++ ; [mp] = 10
    PUSH    20      # mp++ ; [mp] = 20
    SBM     var1
    PUSH    30      # mp++ ; [mp] = 30
    PUSH    40      # mp++ ; [mp] = 40
    # before in stack we've got  40,30,20,10
    PUSH     var1    # [STACKBM(sbm1)] = [mp] ; mp--
    # after in stack we've got 100,40,30,20,10 and not 20,40,30,20,10

***
### RESET

Set head of stack value to zero

Same as SET 0

Same as BF  [-]

#### With no operand

    RESET
    
##### Pseudo code

    [mp] = 0
    
#### Example

    PUSH    10      # mp++ ; [mp] = 10
    RESET           # [mp] = 0

***
### SBM

Stack Book Mark : keep the stack position by a name

#### With Stack Bookmark name

    SBM     /SBMName/
    
##### Pseudo code

    STACKBM(/SBMName/) = mp
    
##### Example

    VAR     var1
    AT      var1    # tmp = mp ; mp = var1
        SET    10   # [mp] = 10
    TA              # mp = tmp


    PUSH    'A'     # mp++ ; [mp] = 65  (same as 'A')
    SBM     var1    # STACKBM(var1) = mp
    PUSH    'B'     # mp++ ; [mp] = 66 ( same as 'B')
    SBM     var2    # STACKBM(var2) = mp
    AT      var1    # tmp = mp ; mp = STACKBM(var1)
        ADD     2   # [mp] += 2 ; [mp] == 67 is true
        OUT         # write([mp]) ; output 'C' (67)
    TA
    AT      var2    # tmp = mp ; mp = STACKBM(var1)
        OUT         # write([mp]) ; output 'B' (65)
    TA
    DROP            # mp-- ; release var2
    DROP            # mp-- ; release var1

***
### SET

Set head of stack value to an immediate value or single byte character


#### With operand

    SET /immediate/ or /single byte character/
    
##### Pseudo code

    [mp] = /immediate/ or /single byte character/
    
#### Example

    PUSH    10      # mp++ ; [mp] = 10
    SET     5       # [mp] = 5 (before was 10)

***
### SUB

Do a subtraction 

#### With an immediate
    
    SUB  /immediate/

##### Peudo code
    
    [mp] -= /immediate/
    
##### Example

    PUSH    'B'    # mp++; [mp] = 66    
    SUB     'A'    # [mp] -= 65; [mp] == 1 is true

#### With stack

    ADD
    
##### Peudo code
        
    [mp] = [mp-1] - [mp] ; mp--

##### Example
    
    PUSH    5   # mp++; [mp] = 5 
    PUSH    3   # mp++; [mp] = 3
    SUB         # [mp] = [mp-1] - [mp] ; mp-- ; [mp] == 2 is true

***
### SUP

Does head of stack value is greater than previous stack value

#### With stack

    SUP
    
##### Pseudo code

    [mp-1] = [mp] > [mp-1] ; mp--

##### Example
    
    PUSH    2       # mp++ ; [mp] = 2 
    PUSH    3       # mp++ ; [mp] = 3
    SUP             # [mp-1] = [mp] > [mp-1] ; mp-- ; [mp] == 1 is true

    PUSH    'A'     # mp++ ; [mp] = 65 
    PUSH    65      # mp++ ; [mp] = 65
    SUP             # [mp-1] = [mp] > [mp-1] ; mp-- ; [mp] == 0 is true

***
### SWAP

Exchange the two value in the head of stack

#### With stack and no operand

    SWAP

##### Pseudo code

    tmp = [mp]
    [mp] = [mp-1]
    [mp-1] = tmp
    
##### Example

    PUSH 10
    PUSH 5
    SWAP    

### VAR

Declare a global named variable for a single byte or a byte array

For an array ther is 2 sub variables

- POS   current position (see AROTL and AROTF)
- SIZE  size of the variable

#### For a single byte declaration

    VAR     /VarName/
    
##### Pseudo code

    N/A 

##### Example

    VAR     foo
    PUSH    10      # mp++ ; [mp] = 10
    POP     foo     # [foo] = [mp] ; mp--

#### For a byte array declaration

    VAR     /VarName/*/Size/
    
##### Pseudo code

    N/A
 
##### Example

    VAR     var1*5      # variable array of 5 bytes
    # assume we have 'Hello' at var1
    PUSH    var1        # mp++ ; [mp] = 'H'
    PUSH    var1.pos    # mp++ ; [mp] = 0
    AROTL   var1        # var1 is 'elloH' now
    DROP                # mp--
    DROP                # mp--
    PUSH    var1        # mp++ ; [mp] = 'e'
    PUSH    var1.pos    # mp++ ; [mp] = 1
    PUSH    var.size    # mp++ ; [mp] = 5 (size of var1)
    
***
### WHILE/WEND

Basically repeat a set of code as long as "head of stack value" is not zero

#### With stack

    WHILE
        /code/+
    WEND

##### Pseudo code

    while [mp]>0 { /code/+ }

##### Example

    PUSH    10      # mp++ ; [mp] = 10
    SBM     cnt
    WHILE           # while [cnt]>0 {
        AT  cnt
            OUT     #   write([cnt]) ; will write 10,9,8 ... 1
            DEC     # [cnt]--
        TA
    WEND            # }

***
## BF Macro Assembler

BF Macro Assembler is a pre-compilation language. Macro template can be considered
 as a particular template mechanism.

### Define and use a macro
 
#### Example without macro

    PUSH    10
    POP     Var1
    PUSH    20
    POP     Var2
    PUSH    30
    POP     Var3
    
#### Same example with macro

    MACRO ASSIGN(var,value)
        PUSH    {value}
        POP     {var}
    ENDMACRO
    
    ASSIGN("Var1", 10)
    ASSIGN("Var2", 20)
    ASSIGN("Var3", 30)

### "define" directive
 
#### Example without "define" directive 

    PUSH    10
    POP     Var1
    PUSH    20
    POP     Var2
    PUSH    30
    POP     Var3
    
#### Same example with "define" directive

    DEFINE  LOW     10
    DEFINE  MIDDLE  20
    DEFINE  HIGH    30
    
    PUSH    {LOW}
    POP     Var1
    PUSH    {MIDDLE}
    POP     Var2
    PUSH    {HIGH}
    POP     Var3

### "include" directive

#### Example without "include" directive 

    DEFINE  LOW     10
    DEFINE  MIDDLE  20
    DEFINE  HIGH    30
    
    PUSH    {LOW}
    POP     Var1
    PUSH    {MIDDLE}
    POP     Var2
    PUSH    {HIGH}
    POP     Var3
    
#### Same example with "include" directive

Content of file *constant.inc*

    DEFINE  LOW     10
    DEFINE  MIDDLE  20
    DEFINE  HIGH    30
    
Content of file *main.asm*

    INCLUDE constant.inc
    
    PUSH    {LOW}
    POP     Var1
    PUSH    {MIDDLE}
    POP     Var2
    PUSH    {HIGH}
    POP     Var3

### "js" directive

#### Example without "js" directive 

    PUSH    10
    POP     Var1
    PUSH    20
    POP     Var2
    PUSH    30
    POP     Var3
    
#### Same example with "js" directive

    JS  for (int idx=1; idx<4 ; idx ++) {    
    PUSH    {(idx*10)}
    POP     Var{idx}
    JS  }

