/*-- hello01.s */
.data

greeting:
	.asciz "Hello world"


.text

.global main
main:
	mov r4, lr
	ldr r0, addr_of_greeting
	bl puts
	mov lr, r4
	bx lr

addr_of_greeting: .word greeting

/*External linkage*/
.global puts
