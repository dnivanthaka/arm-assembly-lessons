/*---array01.s*/
.data

.balign 4
a: .skip 400

.text

.global main
main:
	ldr r1, addr_of_a		/* r1 <- &a */
	mov r2, #0
	mov	r3, #0
loop:
	cmp r2, #100
	beq	loop_end
	str r2, [r1, +r3]			/* *r3 <- r2 */
	add r2, r2, #1				/* r2 = r2 + 1 */
	add	r3, r3, #4				/* r3 = r3 + 4 */

loop_end:
	bx lr

addr_of_a: .word a

