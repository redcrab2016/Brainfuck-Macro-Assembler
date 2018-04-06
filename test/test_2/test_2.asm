# Test 2
include ../../samples/include/macro.inc

# basic macros test
print ("Basic macro test.\n\n")
var m*10

push    'A'
arraySet    m,  0
push    'B'
arraySet    m,  9
push    'C'
arraySet    m,  1
push    'D'
arraySet    m,  8
push    'E'
arraySet    m,  2
push    'F'
arraySet    m,  7
push    'G'
arraySet    m,  3
push    'H'
arraySet    m,  6
push    'I'
arraySet    m,  4
push    'J'
arraySet    m,  5

print "ACEGIJHFDB="
arrayGet    m, 0
pop     out
arrayGet    m, 1
pop     out
arrayGet    m, 2
pop     out
arrayGet    m, 3
pop     out
arrayGet    m, 4
pop     out
arrayGet    m, 5
pop     out
arrayGet    m, 6
pop     out
arrayGet    m, 7
pop     out
arrayGet    m, 8
pop     out
arrayGet    m, 9
pop     out

print("\n")
scope_begin
    lvar a,10
    lvar b,20
    lvar c,30
    lvar d,40
    lvar f,20
    
    print("  a = 10 : 0A == ")
    push    a
    popout8hexa
    print("\n")
    print("  b = 20 : 14 == ")
    push    b
    popout8hexa
    print("\n")
    print("  c = 30 : 1E == ")
    push    c
    popout8hexa
    print("\n")
    print("  d = 40 : 28 == ")
    push    d
    popout8hexa
    print("\n")
    print("  f = 20 : 14 == ")
    push    f
    popout8hexa
    print("\n")
    
# macro if_diff(a,b) : if (a != b) {
    print("if_diff\n")
    print("   a diff b is true; ")
    if_diff a,b
        print ("OK\n")
    else
        print ("BUG\n")
    fi
    print("   b diff f is false; ")
    if_diff b,f
        print ("BUG\n")
    else
        print ("OK\n")
    fi
    
# macro if_equal(a,b) : if (a == b) {
    print("if_equal\n")
    print("   a equal b is false; ")
    if_equal a,b
        print ("BUG\n")
    else
        print ("OK\n")
    fi
    print("   b equal f is true; ")
    if_equal b,f
        print ("OK\n")
    else
        print ("BUG\n")
    fi

# macro if_sup(a,b) : if (a > b) {
    print("if_sup\n")
    print("   a sup b is false; ")
    if_sup a,b
        print ("BUG\n")
    else
        print ("OK\n")
    fi
    print("   c sup b is true; ")
    if_sup c,b
        print ("OK\n")
    else
        print ("BUG\n")
    fi
    print("   f sup b is false; ")
    if_sup f,b
        print ("BUG\n")
    else
        print ("OK\n")
    fi
    
# macro if_inf(a,b) : if (a < b) {
    print("if_inf\n")
    print("   a inf b is true; ")
    if_inf a,b
        print ("OK\n")
    else
        print ("BUG\n")
    fi
    print("   c inf b is false; ")
    if_inf c,b
        print ("BUG\n")
    else
        print ("OK\n")
    fi
    print("   f inf b is false; ")
    if_inf f,b
        print ("BUG\n")
    else
        print ("OK\n")
    fi
    
# macro if_supequal(a,b) : if (a >= b) {
    print("if_supequal\n")
    print("   a supequal b is false; ")
    if_supequal a,b
        print ("BUG\n")
    else
        print ("OK\n")
    fi
    print("   c supequal b is true; ")
    if_supequal c,b
        print ("OK\n")
    else
        print ("BUG\n")
    fi
    print("   f supequal b is true; ")
    if_supequal f,b
        print ("OK\n")
    else
        print ("BUG\n")
    fi

# macro if_infequal(a,b) : if (a <= b) {
    print("if_infequal\n")
    print("   a infequal b is true; ")
    if_infequal a,b
        print ("OK\n")
    else
        print ("BUG\n")
    fi
    print("   c infequal b is false; ")
    if_infequal c,b
        print ("BUG\n")
    else
        print ("OK\n")
    fi
    print("   f infequal b is true; ")
    if_infequal f,b
        print ("OK\n")
    else
        print ("BUG\n")
    fi

# macro at_reset(a) : a=0
# macro at_inc(a) : a++
# macro at_dec(a) : a--
# macro at_out(a) : write(a)
# macro at_add(a,b) : a += b (immediate)
# macro at_sub(a,b) : a -= b (immediate)
# macro at_set(a,b) : a = b (immediate)

# macro write(a) : print out  variable/immediate 8 bits 'a'
# macro divide(a,b,d,r) : d = a div b ; r = a mod b : 8 bits var or immediate 'a' and 'b'
# macro left_rewind(array) 
# macro right_rewind(array)
scope_end()

