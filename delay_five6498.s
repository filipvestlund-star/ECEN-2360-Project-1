.global delayNms
.equ COUNT_1MS, 33333

delayNms:
ble r4, r0, delay_done

delay_outer_loop:
ble r8, COUNT_1MS

delay_inner_loop:
subi r8, r8, 1
bne r8, r0, delay_inner_loop
subi r4, r4, 1
bgt r4, r0, delay_outer_loop

delay_done:
ret
