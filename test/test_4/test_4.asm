# Test 4
include ../../samples/include/macro.inc
include ../../samples/include/fpnumber.inc

print("Fix point number macro test.\n\n")

# 8.16 fixed number
    ## 8 = 1*8 bits
define FP_I 1
    ## 16 = 2*8 bits
define FP_P 2
# FP_I + FP_P
    ## 1+2 = 3 : 24 bits
define FP   3

varX    {FP},   var1
varX    {FP},   var2
varX    2,      var3
varX    {FP*2}, var4

print("10.5 hexa=")
pushFP  {FP_I}, {FP_P}, 10.5
popvX   {FP},   var1
printhexaX  {FP},   var1
print("\n")


print("10.5 cast from 8,16 to 8,8=")
pushvX  {FP},   var1
castFP  {FP_I}, {FP_P}, 1,  1
popvX   2,      var3
printhexaX  2,  var3
print("\n")

print("10.5 cast from 8,16 to 16,32=")
pushvX  {FP},   var1
castFP  {FP_I}, {FP_P}, {FP_I*2},  {FP_P*2}
popvX   {FP*2},      var4
printhexaX  {FP*2},  var4
print("\n")


print("10.5 * 2 hexa=")
pushvX  {FP},   var1
pushFP  {FP_I}, {FP_P}, -2
mulFP   {FP_I}, {FP_P}
popvX   {FP},   var2
printhexaX  {FP},   var2
print("\n")

setvX   {FP},   var2,   21.0
setvX   {FP},   var1,   4.5
print(" 21 < 4.5:")
infvvX  {FP},   var2,   var1
if
    print("Bug\n")
else
    print("Ok\n")
fi
print(" 4.5 < 21:")
infvvX  {FP},   var1,   var2
if
    print("Ok\n")
else
    print("Bug\n")
fi





