	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"bb1.c"
	.text
	.align	2
	.global	main
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r3, [fp, #-36]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-36]
	add	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-36]
	add	r3, r3, #12
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-36]
	add	r3, r3, #16
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-36]
	add	r3, r3, #20
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L2
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L3
	mov	r2, #1
	b	.L4
.L3:
	mov	r2, #0
.L4:
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	beq	.L5
.L2:
	mov	r3, #1
	b	.L6
.L5:
	mov	r3, #0
.L6:
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	main, .-main
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
