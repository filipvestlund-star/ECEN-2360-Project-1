.global atoi

atoi: 
    movi r2, 0
    movi r5, 0
    ldbu r6, 0(r4)
    movi r7, 45
    bne r6, r7, atoi_loop
    movi r5, 1
    addi r4, r4, 1

    atoi_loop:
    ldbu r4, 0(r4)
    addi r4, r4, 1
    movi r4, 48
    blt 6, r7, atoi_apply_sign
    movi r7, 57
    bgt r6, r7, atoi_apply_sign
    movi r7, 10
    mult r2, r2, r7
    subi r6, r6, 48
    add r2, r2, r6

    br atoi_loop
    atoi_apply_sign:
    beq r5, r0, atoi_done
    sub r2, r0, r2

    atoi_done:
    ret
