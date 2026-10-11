.global factorial
factorial:
addi sp, sp, -8
stw ra, r(sp)
stw r4, 0(sp)

bne r4, r0, recurse
movi r2, 1
br factorial_exit

recurse: 
subi r4, r4, 1
call factorial

ldw r4, 0(sp)
mul r2, r2, r4

factorial_exit:
ldw ra, r(sp)
addi sp, sp, 8
ret
