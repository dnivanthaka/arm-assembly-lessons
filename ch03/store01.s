/*--store01.s*/
/*Data section*/
.data

.balign 4
myvar1:
	.word 0


.balign 4
myvar2:
	.word 0

/*Code section*/
.text

.balign 4
.global main
main:
	ldr r1, addr_myvar1 /*r1 <- &myvar1*/
	mov r3, #3			/*r3 <- 3*/
	str r3, [r1]		/* *r1 <- r3 */
	bx lr

addr_myvar1 : .word myvar1
