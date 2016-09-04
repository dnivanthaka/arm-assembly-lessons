/*--load.s*/
/*Data section*/
.data

.balign 4
myvar1:
	.word 3
.balign 4
myvar2:
	.word 4
/*Code section*/
.text
.balign 4
.global main
main:
	ldr r1, addr_my_var1 /*r1 <- &myvar1*/
	ldr r1, [r1] /*r1 <- *r1*/
	ldr r2, addr_my_var2 /*r2 <- $myvar2*/
	ldr r2, [r2]
	add r0, r1, r2
	bx lr

addr_my_var1 : .word myvar1
addr_my_var2 : .word myvar2
