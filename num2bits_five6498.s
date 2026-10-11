.global num2bits
.global Bits7seg

.data
Bits7seg:
.byte 0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67
.text

num2bits:
    movi r8, 10
    bgeu r4, r8, num2bits_recurse
    ldbu r2, Bits7seg(r4)
    ret
    
    num2bits_recurse: 
    addi sp, sp, -8
    stw ra, 4(sp)
    divu r9, r2, r8
    mul r10, r9, r8
    sub r10, r4, r10
    stw r10, 0(sp)

    mov r4, r9
    call num2bits

    slli r2, r2, 8
    ldw r10, 0(sp)
    ldbu r8, Bits7seg(r10)
    or r2, r2, r8

    ldw ra, 4(sp)
    addi sp, sp, 8
    ret