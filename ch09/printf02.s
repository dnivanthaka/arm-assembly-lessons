/*--printf02.s */
.global main
.global printf
.global scanf

.data

/*message*/
.balign 4
message: .asciz "Type a number: "

.balign 4
message2: .asciz "%d times 5 is %d\n"

.balign 4
scan_pattern: .asciz "%d"

.balign 4
number_read: .word 0

.text

@Multiply by 5
mult_by_5:
	add		r0, r0, r0, LSL #2 
	bx		lr

main:
	push	{lr}
	ldr		r0, =message
	bl		printf

	ldr		r0, =scan_pattern
	ldr		r1, =number_read
	bl		scanf	

	ldr		r0, =number_read
	ldr		r0, [r0]
	bl		mult_by_5

	mov		r2, r0
	ldr		r0, =message2
	ldr		r1, =number_read
	ldr		r1, [r1]		/* r1 <- *r1 */
	bl		printf

	pop		{pc}
