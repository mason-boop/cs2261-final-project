	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"game.c"
	.global	__aeabi_idivmod
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnIK.part.3, %function
spawnIK.part.3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L4
	ldr	r7, .L4+4
	mov	lr, pc
	bx	r7
	ldr	r1, [r4, #28]
	ldr	r3, .L4+8
	rsb	r1, r1, #160
	mov	lr, pc
	bx	r3
	ldr	r6, .L4+12
	ldr	r0, [r6]
	str	r1, [r4, #8]
	add	r5, r0, #240
	mov	lr, pc
	bx	r7
	mov	ip, #1
	ldr	r1, .L4+16
	smull	r2, r3, r0, r1
	add	r2, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	ldr	lr, .L4+20
	rsb	r3, r3, r3, lsl #4
	ldr	r2, [r6]
	ldr	r1, [r4, #8]
	ldr	lr, [lr]
	sub	r0, r0, r3, lsl #4
	add	r0, r0, r5
	sub	r1, r1, lr
	sub	r3, r0, r2
	stm	r4, {r1, r3}
	str	r0, [r4, #12]
	str	ip, [r4, #52]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	iceking
	.word	rand
	.word	__aeabi_idivmod
	.word	hOff
	.word	-2004318071
	.word	vOff
	.size	spawnIK.part.3, .-spawnIK.part.3
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawIK.part.4, %function
drawIK.part.4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L7
	ldr	r3, [r1, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #18
	mvn	r3, r3, lsr #18
	ldr	r2, [r1, #44]
	ldrb	r0, [r1]	@ zero_extendqisi2
	lsl	r2, r2, #7
	ldr	r1, .L7+4
	orr	r0, r0, #16384
	add	r2, r2, #12
	strh	r3, [r1, #50]	@ movhi
	strh	r0, [r1, #48]	@ movhi
	strh	r2, [r1, #52]	@ movhi
	bx	lr
.L8:
	.align	2
.L7:
	.word	iceking
	.word	shadowOAM
	.size	drawIK.part.4, .-drawIK.part.4
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateIKBullet.part.6, %function
updateIKBullet.part.6:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #24]
	ldr	r3, [r0, #4]
	add	r3, r1, r3
	cmp	r3, #0
	movle	r3, #0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	ip, [r0, #12]
	ldrgt	r3, [r0, #20]
	subgt	ip, ip, r3
	strgt	ip, [r0, #12]
	strle	r3, [r0, #52]
	ldr	r0, .L17
	sub	sp, sp, #20
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	lr, [r4, #28]
	str	r1, [sp, #12]
	add	r0, r0, #8
	ldm	r0, {r0, r1}
	str	ip, [sp, #4]
	ldr	ip, [r4, #8]
	sub	r3, r3, #8
	str	lr, [sp, #8]
	str	ip, [sp]
	ldr	r5, .L17+4
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L12
	ldr	r3, .L17+8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L12
	ldr	r3, .L17+12
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r2, .L17+16
	streq	r3, [r2]
.L12:
	ldr	r2, .L17+20
	ldr	r3, .L17+24
	ldr	r0, [r2]
	ldr	r1, [r3]
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #12]
	sub	r2, r2, r0
	sub	r3, r3, r1
	stm	r4, {r2, r3}
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	player
	.word	collision
	.word	up
	.word	cheat
	.word	lives
	.word	vOff
	.word	hOff
	.size	updateIKBullet.part.6, .-updateIKBullet.part.6
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnUp.part.8, %function
spawnUp.part.8:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L21
	ldr	r6, .L21+4
	mov	lr, pc
	bx	r6
	ldr	r1, [r4, #28]
	ldr	r3, .L21+8
	rsb	r1, r1, #160
	mov	lr, pc
	bx	r3
	ldr	r3, .L21+12
	ldr	r0, [r3]
	str	r1, [r4]
	str	r1, [r4, #8]
	add	r5, r0, #240
	mov	lr, pc
	bx	r6
	mov	r2, #1
	ldr	r3, .L21+16
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	add	r1, r0, r7
	rsb	r3, r3, r1, asr #7
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #4
	add	r0, r0, r5
	str	r2, [r4, #52]
	str	r0, [r4, #4]
	str	r0, [r4, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	powerup
	.word	rand
	.word	__aeabi_idivmod
	.word	hOff
	.word	-2004318071
	.size	spawnUp.part.8, .-spawnUp.part.8
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawUp.part.10, %function
drawUp.part.10:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L24
	ldr	r3, [r2, #4]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mov	r0, #20
	mvn	r3, r3, lsr #17
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, .L24+4
	orr	r1, r1, #16384
	strh	r3, [r2, #66]	@ movhi
	strh	r1, [r2, #64]	@ movhi
	strh	r0, [r2, #68]	@ movhi
	bx	lr
.L25:
	.align	2
.L24:
	.word	powerup
	.word	shadowOAM
	.size	drawUp.part.10, .-drawUp.part.10
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	mov	r5, #24
	ldr	r3, .L30
	mov	r10, #10
	mov	r9, #25
	mov	r8, #3
	mov	r7, #2
	mov	r6, #20
	mov	lr, pc
	bx	r3
	mov	r3, r4
	mov	r1, r5
	mov	ip, #60
	mov	r0, #240
	ldr	lr, .L30+4
	ldr	r2, [lr, #24]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	rsb	r2, r2, #80
	str	r2, [lr, #8]
	ldr	r2, .L30+8
	str	r10, [lr, #12]
	str	r9, [lr, #28]
	str	r8, [lr, #16]
	str	r7, [lr, #48]
	str	r6, [lr, #56]
	str	r4, [lr]
	str	r4, [lr, #4]
	str	r4, [lr, #36]
	str	r4, [lr, #32]
	str	r4, [lr, #44]
	str	r5, [lr, #24]
	add	lr, r2, #180
.L27:
	str	r1, [r2, #24]
	str	r1, [r2, #28]
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #52]
	add	r2, r2, #60
	cmp	lr, r2
	bne	.L27
	mov	lr, #2
	mov	fp, #32
	mov	r10, #48
	mov	r9, #3
	mvn	r5, #9
	mvn	r4, #31
	mov	r6, #16
	mov	r7, #5
	mov	r8, #20
	ldr	r2, .L30+12
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #52]
	str	fp, [r2, #28]
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	str	r3, [r2, #36]
	str	r3, [r2, #32]
	str	r3, [r2, #44]
	str	r3, [r2, #56]
	str	r10, [r2, #24]
	str	r9, [r2, #48]
	str	lr, [r2, #20]
	ldr	r2, .L30+16
	ldr	r9, .L30+20
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #52]
	str	r3, [r2, #60]
	str	r3, [r2, #64]
	str	r3, [r2, #112]
	str	r1, [r2, #24]
	str	r1, [r2, #28]
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	str	r1, [r2, #84]
	str	r1, [r2, #88]
	str	ip, [r2, #68]
	str	r0, [r2, #72]
	ldr	r2, .L30+24
	str	r7, [r9, #28]
	str	r6, [r9, #24]
	str	r5, [r9, #8]
	str	r5, [r9]
	str	r4, [r9, #12]
	str	r4, [r9, #4]
	str	r3, [r2]
	str	r6, [r2, #28]
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	str	r3, [r2, #4]
	str	r3, [r2, #52]
	str	r8, [r2, #24]
	mov	r2, #1
	ldr	r1, .L30+28
	ldr	r10, .L30+32
	ldr	ip, .L30+36
	str	lr, [r1]
	str	lr, [r9, #20]
	ldr	r1, .L30+40
	str	r3, [r9, #52]
	str	r7, [r9, #88]
	str	r6, [r9, #84]
	str	r5, [r9, #68]
	str	r4, [r9, #72]
	str	r5, [r9, #60]
	str	r4, [r9, #64]
	str	lr, [r9, #80]
	str	r3, [r9, #112]
	ldr	lr, .L30+44
	str	r2, [r10]
	ldr	r7, .L30+48
	ldr	r2, .L30+52
	ldr	r5, .L30+56
	ldr	r6, .L30+60
	ldr	r0, .L30+64
	ldr	r9, .L30+68
	ldr	r8, .L30+72
	ldr	r4, .L30+76
	str	r3, [lr]
	str	r3, [r1]
	str	r3, [ip]
	str	r3, [r2]
	str	r3, [r7]
	str	r3, [r5]
	str	r3, [r6]
	str	r3, [r9]
	str	r3, [r8]
	str	r3, [r0]
	mov	lr, pc
	bx	r4
	ldr	r5, .L30+80
	smull	r6, r7, r0, r5
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	ldr	r3, .L30+84
	add	r0, r0, #30
	str	r0, [r3]
	mov	lr, pc
	bx	r4
	ldr	r3, .L30+88
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #3
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	ldr	r2, .L30+92
	sub	r3, r0, r3
	add	r3, r3, #175
	str	r3, [r2]
	mov	lr, pc
	bx	r4
	smull	r6, r7, r0, r5
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #5
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #4
	ldr	r3, .L30+96
	add	r0, r0, #300
	str	r0, [r3]
	mov	lr, pc
	bx	r4
	ldr	r3, .L30+100
	smull	r4, r5, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r5, asr #5
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #2
	ldr	r2, .L30+104
	add	r3, r3, #800
	str	r3, [r2]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L31:
	.align	2
.L30:
	.word	hideSprites
	.word	player
	.word	cloud
	.word	iceking
	.word	spike
	.word	ikBullets
	.word	powerup
	.word	direction
	.word	lives
	.word	score
	.word	upTimer
	.word	up
	.word	hOff
	.word	powerupCounter
	.word	vOff
	.word	cheat
	.word	cloudCounter
	.word	spikeCounter
	.word	icekingCounter
	.word	rand
	.word	1717986919
	.word	spawnCloudTime
	.word	1374389535
	.word	spawnSpikeTime
	.word	spawnIcekingTime
	.word	458129845
	.word	spawnPowerupTime
	.size	initGame, .-initGame
	.align	2
	.global	drawScore
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawScore, %function
drawScore:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L34
	ldr	r3, .L34+4
	ldr	r2, [r2]
	push	{r4, r5, r6, lr}
	smull	r4, r5, r2, r3
	mvn	r3, #99
	asr	r1, r2, #31
	rsb	r1, r1, r5, asr #6
	rsb	r0, r1, r1, lsl #22
	add	r0, r1, r0, lsl #6
	add	r0, r1, r0, lsl #1
	ldr	ip, .L34+8
	add	r2, r2, r0, lsl #3
	smull	r4, r5, r2, ip
	asr	ip, r2, #31
	rsb	ip, ip, r5, asr #5
	mla	r6, ip, r3, r2
	mov	lr, #6
	ldr	r2, .L34+12
	smull	r4, r5, r6, r2
	asr	r0, r6, #31
	rsb	r0, r0, r5, asr #2
	ldr	r3, .L34+16
	rsb	r2, r0, r0, lsl #29
	lsl	r1, r1, lr
	rsb	r2, r0, r2, lsl #2
	lsl	ip, ip, lr
	add	r1, r1, #25
	add	r2, r6, r2, lsl #1
	add	ip, ip, #25
	strh	r1, [r3, #84]	@ movhi
	ldr	r1, .L34+20
	lsl	r0, r0, lr
	lsl	r2, r2, lr
	ldr	r4, .L34+24
	strh	ip, [r3, #92]	@ movhi
	ldr	ip, .L34+28
	add	r0, r0, #25
	add	r2, r2, #25
	strh	r1, [r3, #90]	@ movhi
	add	r1, r1, #24
	strh	r4, [r3, #82]	@ movhi
	strh	lr, [r3, #80]	@ movhi
	strh	lr, [r3, #88]	@ movhi
	strh	lr, [r3, #96]	@ movhi
	strh	lr, [r3, #104]	@ movhi
	strh	ip, [r3, #98]	@ movhi
	strh	r1, [r3, #106]	@ movhi
	strh	r0, [r3, #100]	@ movhi
	strh	r2, [r3, #108]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	score
	.word	274877907
	.word	1374389535
	.word	1717986919
	.word	shadowOAM
	.word	16491
	.word	16479
	.word	16503
	.size	drawScore, .-drawScore
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #0
	mov	r6, #10
	mov	r5, #25
	mov	r4, #24
	mov	lr, #3
	mov	ip, #2
	mov	r0, #20
	ldr	r3, .L38
	ldr	r2, [r3, #24]
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	rsb	r2, r2, #80
	str	r6, [r3, #12]
	str	r5, [r3, #28]
	str	r4, [r3, #24]
	str	lr, [r3, #16]
	str	r2, [r3, #8]
	str	ip, [r3, #48]
	str	r0, [r3, #56]
	str	r1, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #36]
	str	r1, [r3, #32]
	str	r1, [r3, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L56
	ldrh	r3, [r3, #48]
	tst	r3, #64
	push	{r4, r5, lr}
	ldr	r3, .L56+4
	bne	.L41
	ldr	r2, [r3, #8]
	ldr	r1, [r3, #16]
	cmp	r2, r1
	subge	r2, r2, r1
	strge	r2, [r3, #8]
	blt	.L41
.L42:
	ldr	r2, .L56+8
	ldr	r2, [r2]
	cmp	r2, #1
	ldr	ip, .L56+12
	ldr	r2, [r3, #12]
	beq	.L43
	ldr	r1, [ip]
	cmp	r1, #1
	beq	.L43
	ldr	r0, [r3, #32]
	ldr	r1, .L56+16
	smull	r4, r5, r0, r1
	asr	r1, r0, #31
	add	lr, r0, r5
	rsb	r1, r1, lr, asr #4
	rsb	r1, r1, r1, lsl #4
	sub	r1, r0, r1, lsl #1
	cmp	r1, #14
	movle	r1, #0
	movgt	r1, #1
	add	r2, r2, #2
	add	r0, r0, #1
	str	r2, [r3, #12]
	str	r1, [r3, #44]
	str	r0, [r3, #32]
	b	.L45
.L41:
	ldr	r2, .L56
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bne	.L42
	ldr	r1, [r3, #8]
	ldr	r2, [r3, #28]
	ldr	r0, [r3, #16]
	add	r2, r1, r2
	add	r2, r2, #5
	add	r2, r2, r0
	cmp	r2, #160
	addle	r1, r1, r0
	strle	r1, [r3, #8]
	b	.L42
.L43:
	add	r2, r2, #6
	str	r2, [r3, #12]
.L45:
	ldr	r1, .L56
	ldrh	r1, [r1, #48]
	tst	r1, #1
	moveq	r1, #1
	movne	r1, #0
	ldr	r0, .L56+20
	str	r1, [ip]
	ldr	r1, .L56+24
	ldr	r0, [r0]
	ldr	ip, [r1]
	ldr	r1, [r3, #8]
	sub	r2, r2, r0
	sub	r1, r1, ip
	stm	r3, {r1, r2}
	pop	{r4, r5, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	67109120
	.word	player
	.word	up
	.word	cheat
	.word	-2004318071
	.word	hOff
	.word	vOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L65
	ldr	r3, [r1, #4]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r2, .L65+4
	ldr	ip, [r2]
	ldr	r0, [r1]
	ldr	r2, .L65+8
	cmp	ip, #1
	strh	r3, [r2, #2]	@ movhi
	strh	r0, [r2]	@ movhi
	beq	.L59
	ldr	r3, .L65+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L59
	ldr	r3, [r1, #44]
	lsl	r3, r3, #7
	strh	r3, [r2, #4]	@ movhi
	bx	lr
.L59:
	mov	r3, #256
	strh	r3, [r2, #4]	@ movhi
	bx	lr
.L66:
	.align	2
.L65:
	.word	player
	.word	up
	.word	shadowOAM
	.word	cheat
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCloud, %function
initCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r1, #24
	mov	lr, #60
	mov	ip, #240
	mov	r2, #0
	ldr	r3, .L71
	add	r0, r3, #180
.L68:
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #52]
	add	r3, r3, #60
	cmp	r3, r0
	bne	.L68
	ldr	lr, [sp], #4
	bx	lr
.L72:
	.align	2
.L71:
	.word	cloud
	.size	initCloud, .-initCloud
	.align	2
	.global	spawnCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnCloud, %function
spawnCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L81
	ldr	r5, [r4, #52]
	cmp	r5, #0
	beq	.L74
	ldr	r3, [r4, #112]
	cmp	r3, #0
	beq	.L76
	ldr	r3, [r4, #172]
	cmp	r3, #0
	moveq	r5, #2
	beq	.L74
	pop	{r4, r5, r6, lr}
	bx	lr
.L76:
	mov	r5, #1
.L74:
	rsb	r5, r5, r5, lsl #4
	lsl	r5, r5, #2
	add	r6, r4, r5
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	ldr	r1, [r6, #28]
	ldr	r3, .L81+8
	rsb	r1, r1, #160
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L81+12
	ldr	r3, [r3]
	add	r3, r3, #240
	str	r1, [r6, #8]
	str	r1, [r4, r5]
	str	r2, [r6, #52]
	str	r3, [r6, #4]
	str	r3, [r6, #12]
	pop	{r4, r5, r6, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	cloud
	.word	rand
	.word	__aeabi_idivmod
	.word	hOff
	.size	spawnCloud, .-spawnCloud
	.align	2
	.global	updateCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCloud, %function
updateCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L97
	ldr	r5, .L97+4
	ldr	r2, [r6]
	ldr	r3, [r5]
	cmp	r2, r3
	sub	sp, sp, #20
	mov	r4, r0
	bge	.L95
.L84:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	bne	.L96
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L96:
	ldm	r4, {ip, lr}
	ldr	r0, .L97+8
	add	lr, lr, #2
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldm	r0, {r0, r1}
	str	lr, [sp, #4]
	add	ip, ip, #2
	ldr	lr, [r4, #24]
	str	ip, [sp]
	ldr	ip, [r4, #28]
	ldr	r5, .L97+12
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L86
	ldr	r3, .L97+16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L86
	ldr	r3, .L97+20
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r2, .L97+24
	streq	r3, [r2]
.L86:
	ldr	r3, [r4, #24]
	mvn	r3, r3
	ldr	r2, [r4, #4]
	cmp	r2, r3
	movlt	r3, #0
	ldr	r2, .L97+28
	strlt	r3, [r4, #52]
	ldr	r2, [r2]
	ldr	r3, [r4, #12]
	sub	r3, r3, r2
	str	r3, [r4, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L95:
	bl	spawnCloud
	mov	r2, #0
	ldr	r3, .L97+32
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	ldr	r3, .L97+36
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #1
	add	r0, r0, #30
	str	r0, [r5]
	b	.L84
.L98:
	.align	2
.L97:
	.word	cloudCounter
	.word	spawnCloudTime
	.word	player
	.word	collision
	.word	up
	.word	cheat
	.word	lives
	.word	hOff
	.word	rand
	.word	1717986919
	.size	updateCloud, .-updateCloud
	.align	2
	.global	drawCloud
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCloud, %function
drawCloud:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #512
	mov	r5, #4
	ldr	r3, .L105
	ldr	r2, .L105+4
	ldr	r4, .L105+8
	ldr	lr, .L105+12
	add	r0, r3, #180
.L102:
	ldr	r1, [r3, #52]
	cmp	r1, #0
	ldrne	r1, [r3, #4]
	ldrbne	ip, [r3]	@ zero_extendqisi2
	andne	r1, r1, r4
	orrne	r1, r1, lr
	add	r3, r3, #60
	strhne	r5, [r2, #12]	@ movhi
	strhne	r1, [r2, #10]	@ movhi
	strhne	ip, [r2, #8]	@ movhi
	strheq	r6, [r2, #8]	@ movhi
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L102
	pop	{r4, r5, r6, lr}
	bx	lr
.L106:
	.align	2
.L105:
	.word	cloud
	.word	shadowOAM
	.word	511
	.word	-32768
	.size	drawCloud, .-drawCloud
	.align	2
	.global	initSpike
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSpike, %function
initSpike:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #24
	mov	ip, #60
	mov	r0, #240
	ldr	r3, .L108
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r1, [r3, #84]
	str	r1, [r3, #88]
	str	ip, [r3, #8]
	str	ip, [r3, #68]
	str	r0, [r3, #12]
	str	r0, [r3, #72]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #52]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #112]
	bx	lr
.L109:
	.align	2
.L108:
	.word	spike
	.size	initSpike, .-initSpike
	.align	2
	.global	spawnSpike
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnSpike, %function
spawnSpike:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L118
	ldr	r5, [r4, #52]
	cmp	r5, #0
	beq	.L111
	ldr	r3, [r4, #112]
	cmp	r3, #0
	beq	.L117
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L117:
	mov	r5, #1
.L111:
	rsb	r5, r5, r5, lsl #4
	lsl	r5, r5, #2
	add	r6, r4, r5
	ldr	r7, .L118+4
	mov	lr, pc
	bx	r7
	ldr	r1, [r6, #28]
	ldr	r3, .L118+8
	rsb	r1, r1, #160
	mov	lr, pc
	bx	r3
	ldr	r3, .L118+12
	ldr	r0, [r3]
	str	r1, [r4, r5]
	str	r1, [r6, #8]
	add	r4, r0, #240
	mov	lr, pc
	bx	r7
	mov	r2, #1
	ldr	r3, .L118+16
	smull	r8, r9, r0, r3
	asr	r3, r0, #31
	add	r1, r0, r9
	rsb	r3, r3, r1, asr #7
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl #4
	add	r0, r0, r4
	str	r2, [r6, #52]
	str	r0, [r6, #4]
	str	r0, [r6, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L119:
	.align	2
.L118:
	.word	spike
	.word	rand
	.word	__aeabi_idivmod
	.word	hOff
	.word	-2004318071
	.size	spawnSpike, .-spawnSpike
	.align	2
	.global	updateSpike
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateSpike, %function
updateSpike:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L140
	ldr	r5, .L140+4
	ldr	r2, [r6]
	ldr	r3, [r5]
	cmp	r2, r3
	sub	sp, sp, #20
	mov	r4, r0
	bge	.L139
.L121:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L120
	ldr	ip, [r4]
	ldr	r1, [r4, #28]
	cmp	ip, #0
	ldr	r5, .L140+8
	add	r3, ip, r1
	ble	.L137
.L124:
	cmp	r3, #159
	ble	.L126
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L125
.L126:
	ldr	r0, .L140+12
	ldr	lr, [r4, #24]
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	str	r1, [sp, #8]
	ldm	r0, {r0, r1}
	str	ip, [sp]
	ldr	ip, [r4, #4]
	ldr	r6, .L140+16
	str	lr, [sp, #12]
	str	ip, [sp, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L128
	ldr	r3, .L140+20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L128
	ldr	r3, .L140+24
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r2, .L140+28
	streq	r3, [r2]
.L128:
	ldr	r1, [r4, #24]
	mvn	r1, r1
	ldr	r3, .L140+32
	ldr	ip, [r3]
	ldr	r3, [r4, #12]
	ldr	r0, [r5]
	ldr	r2, [r4]
	sub	r3, r3, ip
	cmp	r3, r1
	add	r2, r2, r0
	stm	r4, {r2, r3}
	movlt	r3, #0
	strlt	r3, [r4, #52]
.L120:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L139:
	bl	spawnSpike
	mov	r2, #0
	ldr	r3, .L140+36
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+40
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #3
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3
	add	r3, r3, #175
	str	r3, [r5]
	b	.L121
.L137:
	ldr	r2, [r5]
	cmn	r2, #2
	bne	.L124
	mov	r2, #2
	cmp	r3, #159
	str	r2, [r5]
	ble	.L126
.L125:
	mvn	r3, #1
	str	r3, [r5]
	b	.L126
.L141:
	.align	2
.L140:
	.word	spikeCounter
	.word	spawnSpikeTime
	.word	direction
	.word	player
	.word	collision
	.word	up
	.word	cheat
	.word	lives
	.word	hOff
	.word	rand
	.word	1374389535
	.size	updateSpike, .-updateSpike
	.align	2
	.global	drawSpike
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSpike, %function
drawSpike:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L148
	ldr	r2, [r3, #52]
	cmp	r2, #0
	bne	.L143
	mov	r1, #512
	ldr	r2, .L148+4
	strh	r1, [r2, #32]	@ movhi
	ldr	r1, [r3, #112]
	cmp	r1, #0
	beq	.L147
.L145:
	ldr	r1, [r3, #64]
	lsl	r1, r1, #23
	lsr	r1, r1, #23
	mvn	r1, r1, lsl #17
	mov	r0, #8
	mvn	r1, r1, lsr #17
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	strh	r1, [r2, #42]	@ movhi
	strh	r3, [r2, #40]	@ movhi
	strh	r0, [r2, #44]	@ movhi
	bx	lr
.L147:
	mov	r3, #512
	strh	r3, [r2, #40]	@ movhi
	bx	lr
.L143:
	ldr	r1, [r3, #4]
	lsl	r1, r1, #23
	lsr	r1, r1, #23
	mvn	r1, r1, lsl #17
	mvn	r1, r1, lsr #17
	mov	r0, #8
	ldr	r2, .L148+4
	strh	r1, [r2, #34]	@ movhi
	ldr	r1, [r3, #112]
	ldrb	ip, [r3]	@ zero_extendqisi2
	cmp	r1, #0
	strh	ip, [r2, #32]	@ movhi
	strh	r0, [r2, #36]	@ movhi
	bne	.L145
	b	.L147
.L149:
	.align	2
.L148:
	.word	spike
	.word	shadowOAM
	.size	drawSpike, .-drawSpike
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawScore
	bl	drawPlayer
	ldr	r3, .L162
	ldr	r2, [r3, #52]
	cmp	r2, #0
	bne	.L151
	ldr	r2, [r3, #112]
	cmp	r2, #0
	bne	.L152
	mov	r3, #512
	ldr	r4, .L162+4
	strh	r3, [r4, #56]	@ movhi
.L153:
	bl	drawCloud
	bl	drawSpike
	ldr	r3, .L162+8
	ldr	r3, [r3, #52]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r4, #48]	@ movhi
	bne	.L160
.L156:
	ldr	r3, .L162+12
	ldr	r3, [r3, #52]
	cmp	r3, #0
	moveq	r3, #512
	strheq	r3, [r4, #64]	@ movhi
	bne	.L161
.L158:
	mov	r0, #67108864
	ldr	r3, .L162+16
	ldr	r2, [r3]
	lsl	r3, r2, #16
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	lsr	r3, r3, #16
	add	r1, r3, r2
	sub	r3, r3, r2
	lsl	r3, r3, #16
	lsl	r2, r1, #16
	lsr	r2, r2, #16
	lsr	r3, r3, #16
	strh	r2, [r0, #16]	@ movhi
	pop	{r4, lr}
	strh	r3, [r0, #20]	@ movhi
	bx	lr
.L152:
	ldr	r2, [r3, #64]
	lsl	r2, r2, #23
	ldr	r4, .L162+4
	lsr	r2, r2, #23
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	orr	r2, r2, #16384
	strh	r2, [r4, #58]	@ movhi
	strh	r3, [r4, #56]	@ movhi
.L154:
	mov	r3, #84
	strh	r3, [r4, #60]	@ movhi
	b	.L153
.L151:
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #112]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	cmp	r1, #0
	orr	r2, r2, #16384
	bne	.L152
	mov	r3, #512
	ldr	r4, .L162+4
	strh	r3, [r4, #56]	@ movhi
	strh	r2, [r4, #58]	@ movhi
	b	.L154
.L160:
	bl	drawIK.part.4
	b	.L156
.L161:
	bl	drawUp.part.10
	b	.L158
.L163:
	.align	2
.L162:
	.word	ikBullets
	.word	shadowOAM
	.word	iceking
	.word	powerup
	.word	hOff
	.size	drawGame, .-drawGame
	.align	2
	.global	initIK
	.syntax unified
	.arm
	.fpu softvfp
	.type	initIK, %function
initIK:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #60
	mov	r4, #240
	mov	lr, #32
	mov	ip, #48
	mov	r0, #2
	mov	r1, #3
	ldr	r3, .L166
	str	r5, [r3, #8]
	str	r4, [r3, #12]
	str	lr, [r3, #28]
	str	ip, [r3, #24]
	str	r0, [r3, #20]
	str	r1, [r3, #48]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #52]
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #56]
	pop	{r4, r5, lr}
	bx	lr
.L167:
	.align	2
.L166:
	.word	iceking
	.size	initIK, .-initIK
	.align	2
	.global	spawnIK
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnIK, %function
spawnIK:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L170
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bxne	lr
	b	spawnIK.part.3
.L171:
	.align	2
.L170:
	.word	iceking
	.size	spawnIK, .-spawnIK
	.align	2
	.global	drawIK
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawIK, %function
drawIK:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L175
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bne	.L174
	mov	r2, #512
	ldr	r3, .L175+4
	strh	r2, [r3, #48]	@ movhi
	bx	lr
.L174:
	b	drawIK.part.4
.L176:
	.align	2
.L175:
	.word	iceking
	.word	shadowOAM
	.size	drawIK, .-drawIK
	.align	2
	.global	initIKBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initIKBullets, %function
initIKBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mvn	r1, #9
	mvn	r2, #31
	mov	r4, #5
	mov	lr, #16
	mov	ip, #2
	mov	r0, #0
	ldr	r3, .L179
	str	r4, [r3, #28]
	str	r4, [r3, #88]
	str	lr, [r3, #24]
	str	lr, [r3, #84]
	str	r1, [r3, #8]
	str	r1, [r3]
	str	r1, [r3, #68]
	str	r1, [r3, #60]
	str	r2, [r3, #12]
	str	r2, [r3, #4]
	str	r2, [r3, #72]
	str	r2, [r3, #64]
	str	ip, [r3, #20]
	str	ip, [r3, #80]
	str	r0, [r3, #52]
	str	r0, [r3, #112]
	pop	{r4, lr}
	bx	lr
.L180:
	.align	2
.L179:
	.word	ikBullets
	.size	initIKBullets, .-initIKBullets
	.align	2
	.global	fireIKBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireIKBullet, %function
fireIKBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L190
	ldr	r2, [r3, #52]
	cmp	r2, #0
	beq	.L182
	ldr	r2, [r3, #112]
	cmp	r2, #0
	bxne	lr
	mov	r2, #1
.L182:
	push	{r4, r5, lr}
	mov	lr, #1
	ldr	ip, .L190+4
	ldr	r0, [ip, #28]
	ldr	r1, [ip, #8]
	ldr	r5, .L190+8
	add	r0, r0, r0, lsr #31
	add	r1, r1, r0, asr lr
	ldr	r0, .L190+12
	ldr	r4, [ip, #12]
	ldr	ip, [r5]
	rsb	r2, r2, r2, lsl #4
	ldr	r0, [r0]
	lsl	r2, r2, #2
	sub	ip, r1, ip
	sub	r0, r4, r0
	str	ip, [r3, r2]
	add	r3, r3, r2
	stmib	r3, {r0, r1, r4}
	str	lr, [r3, #52]
	pop	{r4, r5, lr}
	bx	lr
.L191:
	.align	2
.L190:
	.word	ikBullets
	.word	iceking
	.word	vOff
	.word	hOff
	.size	fireIKBullet, .-fireIKBullet
	.align	2
	.global	updateIK
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateIK, %function
updateIK:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L214
	ldr	r5, .L214+4
	ldr	r2, [r6]
	ldr	r3, [r5]
	ldr	r4, .L214+8
	cmp	r2, r3
	sub	sp, sp, #20
	ldr	r3, [r4, #52]
	blt	.L193
	cmp	r3, #0
	beq	.L212
.L194:
	mov	r2, #0
	ldr	r3, .L214+12
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	ldr	r3, .L214+16
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #5
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #4
	add	r0, r0, #300
	str	r0, [r5]
	ldr	r3, [r4, #52]
.L193:
	cmp	r3, #0
	bne	.L213
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L213:
	ldr	ip, [r4]
	ldr	r0, .L214+20
	add	ip, ip, #5
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldr	r5, [r4, #24]
	ldm	r0, {r0, r1}
	ldr	lr, [r4, #28]
	str	ip, [sp]
	ldr	ip, [r4, #4]
	str	r5, [sp, #12]
	stmib	sp, {ip, lr}
	ldr	r5, .L214+24
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L196
	ldr	r3, .L214+28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L196
	ldr	r3, .L214+32
	ldr	r3, [r3]
	cmp	r3, #0
	ldreq	r2, .L214+36
	streq	r3, [r2]
.L196:
	ldr	r1, [r4, #32]
	ldr	r3, .L214+40
	smull	r6, r7, r1, r3
	asr	r3, r1, #31
	rsb	r3, r3, r7, asr #3
	add	r3, r3, r3, lsl #3
	sub	r3, r1, r3, lsl #2
	cmp	r3, #11
	movle	r3, #0
	ldr	r2, [r4, #12]
	sub	r2, r2, #1
	str	r2, [r4, #12]
	strle	r3, [r4, #44]
	ble	.L198
	cmp	r3, #23
	movle	r3, #1
	movgt	r3, #2
	str	r3, [r4, #44]
.L198:
	ldr	r0, [r4, #24]
	mvn	r0, r0
	ldr	r3, .L214+44
	ldr	ip, .L214+48
	ldr	r3, [r3]
	ldr	ip, [ip]
	sub	r3, r2, r3
	ldr	r2, [r4, #8]
	cmp	r3, r0
	sub	r2, r2, ip
	stm	r4, {r2, r3}
	movlt	r3, #0
	strlt	r3, [r4, #52]
	ldr	r3, [r4, #56]
	add	r1, r1, #1
	cmp	r3, #8
	str	r1, [r4, #32]
	ble	.L211
	ldr	r2, .L214+28
	ldr	r2, [r2]
	cmp	r2, #0
	bne	.L211
	bl	fireIKBullet
	mov	r3, #1
	b	.L202
.L211:
	add	r3, r3, #1
.L202:
	str	r3, [r4, #56]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L212:
	bl	spawnIK.part.3
	b	.L194
.L215:
	.align	2
.L214:
	.word	icekingCounter
	.word	spawnIcekingTime
	.word	iceking
	.word	rand
	.word	1717986919
	.word	player
	.word	collision
	.word	up
	.word	cheat
	.word	lives
	.word	954437177
	.word	hOff
	.word	vOff
	.size	updateIK, .-updateIK
	.align	2
	.global	updateIKBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateIKBullet, %function
updateIKBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	cmp	r3, #0
	bxeq	lr
	b	updateIKBullet.part.6
	.size	updateIKBullet, .-updateIKBullet
	.align	2
	.global	drawIKBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawIKBullet, %function
drawIKBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	cmp	r3, #0
	bne	.L221
	mov	r2, #512
	ldr	r3, .L222
	strh	r2, [r3, #56]	@ movhi
	bx	lr
.L221:
	mov	r1, #84
	ldr	r3, [r0, #4]
	lsl	r3, r3, #23
	ldrb	r0, [r0]	@ zero_extendqisi2
	ldr	r2, .L222
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	strh	r3, [r2, #58]	@ movhi
	strh	r0, [r2, #56]	@ movhi
	strh	r1, [r2, #60]	@ movhi
	bx	lr
.L223:
	.align	2
.L222:
	.word	shadowOAM
	.size	drawIKBullet, .-drawIKBullet
	.align	2
	.global	initUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	initUp, %function
initUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	lr, #60
	mov	ip, #240
	mov	r0, #16
	mov	r1, #20
	ldr	r3, .L226
	str	lr, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #28]
	str	r1, [r3, #24]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #52]
	ldr	lr, [sp], #4
	bx	lr
.L227:
	.align	2
.L226:
	.word	powerup
	.size	initUp, .-initUp
	.align	2
	.global	spawnUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnUp, %function
spawnUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L230
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bxne	lr
	b	spawnUp.part.8
.L231:
	.align	2
.L230:
	.word	powerup
	.size	spawnUp, .-spawnUp
	.align	2
	.global	updateUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateUp, %function
updateUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L244
	ldr	r5, .L244+4
	ldr	r2, [r6]
	ldr	r3, [r5]
	ldr	r4, .L244+8
	cmp	r2, r3
	sub	sp, sp, #20
	ldr	r3, [r4, #52]
	blt	.L233
	cmp	r3, #0
	beq	.L243
.L234:
	mov	r2, #0
	ldr	r3, .L244+12
	str	r2, [r6]
	mov	lr, pc
	bx	r3
	ldr	r3, .L244+16
	smull	r6, r7, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r7, asr #5
	add	r3, r3, r3, lsl #2
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #2
	add	r3, r3, #800
	str	r3, [r5]
	ldr	r3, [r4, #52]
.L233:
	cmp	r3, #0
	beq	.L232
	ldr	r0, .L244+20
	ldr	lr, [r4, #24]
	ldr	ip, [r4, #28]
	ldr	r3, [r0, #24]
	ldr	r2, [r0, #28]
	ldm	r0, {r0, r1}
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4, #4]
	ldr	ip, [r4]
	ldr	r5, .L244+24
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	movne	r2, #1
	movne	r1, #0
	ldrne	r3, .L244+28
	strne	r2, [r3]
	ldr	r2, [r4, #24]
	mvn	r2, r2
	strne	r1, [r4, #52]
	ldr	r1, .L244+32
	ldr	r3, [r4, #12]
	ldr	r1, [r1]
	sub	r3, r3, r1
	cmp	r3, r2
	str	r3, [r4, #4]
	movlt	r3, #0
	strlt	r3, [r4, #52]
.L232:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L243:
	bl	spawnUp.part.8
	b	.L234
.L245:
	.align	2
.L244:
	.word	powerupCounter
	.word	spawnPowerupTime
	.word	powerup
	.word	rand
	.word	458129845
	.word	player
	.word	collision
	.word	up
	.word	hOff
	.size	updateUp, .-updateUp
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L264
	ldr	r3, [r1]
	ldr	r2, .L264+4
	cmp	r3, #1
	push	{r4, r5, r6, lr}
	ldr	r3, [r2]
	ldr	r4, .L264+8
	beq	.L260
.L247:
	ldr	r0, .L264+12
	ldr	ip, [r0]
	cmp	ip, #1
	beq	.L248
	mov	ip, #0
	add	r3, r3, #2
	str	r3, [r2]
	str	ip, [r1]
	str	ip, [r4]
	str	ip, [r0]
.L250:
	bl	updatePlayer
	ldr	r0, .L264+16
	bl	updateCloud
	ldr	r0, .L264+20
	bl	updateCloud
	ldr	r0, .L264+24
	bl	updateCloud
	ldr	r5, .L264+28
	ldr	r0, .L264+32
	bl	updateSpike
	ldr	r0, .L264+36
	bl	updateSpike
	bl	updateIK
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L262
.L251:
	ldr	r3, [r5, #112]
	cmp	r3, #0
	bne	.L263
.L252:
	bl	updateUp
	ldr	r2, .L264+40
	ldr	r3, [r2]
	ldr	r1, .L264+44
	ldr	lr, .L264+48
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r2, [r1]
	ldr	r3, [lr]
	ldr	ip, .L264+52
	ldr	r0, .L264+56
	add	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r1]
	str	r3, [lr]
	ldr	r1, [ip]
	ldr	r3, [r4]
	ldr	r2, [r0]
	add	r1, r1, #1
	add	r2, r2, #1
	add	r3, r3, #1
	str	r3, [r4]
	str	r1, [ip]
	str	r2, [r0]
	pop	{r4, r5, r6, lr}
	bx	lr
.L260:
	ldr	r0, [r4]
	cmp	r0, #300
	bgt	.L247
.L248:
	add	r3, r3, #6
	str	r3, [r2]
	b	.L250
.L263:
	ldr	r0, .L264+60
	bl	updateIKBullet.part.6
	b	.L252
.L262:
	mov	r0, r5
	bl	updateIKBullet.part.6
	b	.L251
.L265:
	.align	2
.L264:
	.word	up
	.word	hOff
	.word	upTimer
	.word	cheat
	.word	cloud
	.word	cloud+60
	.word	cloud+120
	.word	ikBullets
	.word	spike
	.word	spike+60
	.word	cloudCounter
	.word	spikeCounter
	.word	icekingCounter
	.word	powerupCounter
	.word	score
	.word	ikBullets+60
	.size	updateGame, .-updateGame
	.align	2
	.global	drawUp
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawUp, %function
drawUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L269
	ldr	r3, [r3, #52]
	cmp	r3, #0
	bne	.L268
	mov	r2, #512
	ldr	r3, .L269+4
	strh	r2, [r3, #64]	@ movhi
	bx	lr
.L268:
	b	drawUp.part.10
.L270:
	.align	2
.L269:
	.word	powerup
	.word	shadowOAM
	.size	drawUp, .-drawUp
	.comm	shadowOAM,1024,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	spawnPowerupTime,4,4
	.comm	spawnIcekingTime,4,4
	.comm	spawnSpikeTime,4,4
	.comm	spawnCloudTime,4,4
	.comm	powerupCounter,4,4
	.comm	icekingCounter,4,4
	.comm	spikeCounter,4,4
	.comm	cloudCounter,4,4
	.comm	score,4,4
	.comm	cheat,4,4
	.comm	upTimer,4,4
	.comm	up,4,4
	.comm	direction,4,4
	.comm	lives,4,4
	.comm	powerup,60,4
	.comm	ikBullets,120,4
	.comm	iceking,60,4
	.comm	spike,120,4
	.comm	cloud,180,4
	.comm	player,60,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
