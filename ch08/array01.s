/*---array01.s*/
.data

.balign 4
a: .skip 400

.text

.global main
main:
	ldr r1, addr_of_a		/* r1 <- &a */
	mov r2, #2
loop:
	cmp r2, #100
	beq	loop_end
	add r3, r1, r2 lsl #2	/* r3 <- r1 + (r2*4) */
	str r2, [r3]			/* *r3 <- r2 */
	add r2, r2, #1			/* r2 = r2 + 1 */

loop_end:
	bx lr

addr_of_a: .word a

