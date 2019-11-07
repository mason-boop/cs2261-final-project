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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart1, %function
goToStart1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, #0
	mov	r7, #67108864
	mov	r6, #1024
	ldr	r2, .L4
	ldr	r4, .L4+4
	str	r5, [r2]
	mov	r3, #256
	mov	r2, #83886080
	strh	r6, [r7]	@ movhi
	ldr	r1, .L4+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #5568
	strh	r2, [r7, #12]	@ movhi
	ldr	r1, .L4+12
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	r0, #3
	mov	r3, r6
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L4+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+36
	str	r5, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	startCount
	.word	DMANow
	.word	start1Pal
	.word	start1Tiles
	.word	100726784
	.word	start1Map
	.word	waitForVBlank
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToStart1, .-goToStart1
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L7
	ldr	r3, .L7+4
	ldrh	r2, [r2, #48]
	strh	r2, [r3]	@ movhi
	b	goToStart1
.L8:
	.align	2
.L7:
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	goToStart2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart2, %function
goToStart2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #67108864
	mov	r5, #1024
	ldr	r4, .L11
	mov	r3, #256
	strh	r5, [r6]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L11+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #5568
	strh	r2, [r6, #12]	@ movhi
	ldr	r1, .L11+8
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L11+12
	ldr	r1, .L11+16
	mov	r0, #3
	mov	r3, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L11+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L11+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L11+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L11+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	DMANow
	.word	start1Pal
	.word	start1Tiles
	.word	100726784
	.word	start1Map
	.word	waitForVBlank
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToStart2, .-goToStart2
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r1, #0
	mov	r6, #67108864
	mov	r5, #1024
	ldr	r2, .L15
	ldr	r4, .L15+4
	str	r1, [r2]
	mov	r3, #256
	mov	r2, #83886080
	strh	r5, [r6]	@ movhi
	ldr	r1, .L15+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #3936
	strh	r2, [r6, #12]	@ movhi
	ldr	r1, .L15+12
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L15+16
	ldr	r1, .L15+20
	mov	r0, #3
	mov	r3, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L15+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L15+28
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L15+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L15+36
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L16:
	.align	2
.L15:
	.word	intCount
	.word	DMANow
	.word	instructionsPal
	.word	instructionsTiles
	.word	100726784
	.word	instructionsMap
	.word	waitForVBlank
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	start2
	.syntax unified
	.arm
	.fpu softvfp
	.type	start2, %function
start2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L35
	ldr	r3, .L35+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #75
	addne	r3, r3, #1
	beq	.L31
.L19:
	ldr	r2, .L35+8
	ldrh	r2, [r2]
	tst	r2, #8
	str	r3, [r4]
	beq	.L22
	ldr	r3, .L35+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L32
.L22:
	tst	r2, #64
	beq	.L17
	ldr	r3, .L35+12
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L33
.L17:
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	ldr	r5, .L35+16
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L34
	ldr	r3, .L35+20
	mov	r2, #100663296
	ldr	r1, .L35+24
	mov	r0, #3
	ldr	r6, .L35+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L35+32
	ldr	r1, .L35+36
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #0
	str	r3, [r5]
.L21:
	mov	r3, #1
	b	.L19
.L34:
	mov	r3, #5568
	mov	r2, #100663296
	ldr	r1, .L35+40
	mov	r0, #3
	ldr	r6, .L35+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L35+32
	ldr	r1, .L35+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1
	str	r3, [r5]
	b	.L21
.L33:
	pop	{r4, r5, r6, lr}
	b	goToStart1
.L32:
	pop	{r4, r5, r6, lr}
	b	goToInstructions
.L36:
	.align	2
.L35:
	.word	startCount
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	currentStartFrame
	.word	5264
	.word	start3Tiles
	.word	DMANow
	.word	100726784
	.word	start3Map
	.word	start1Tiles
	.word	start1Map
	.size	start2, .-start2
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #4864
	mov	r5, #67108864
	ldr	r4, .L39
	strh	r2, [r5]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L39+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #2624
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L39+8
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L39+12
	ldr	r1, .L39+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L39+20
	mov	r3, #1152
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L39+24
	ldr	r2, .L39+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L39+32
	ldr	r1, .L39+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L39+40
	ldr	r1, .L39+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L39+48
	ldr	r1, .L39+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L39+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L40:
	.align	2
.L39:
	.word	DMANow
	.word	furthercloudsPal
	.word	furthercloudsTiles
	.word	100726784
	.word	furthercloudsMap
	.word	23812
	.word	cloudsTiles
	.word	100679680
	.word	100722688
	.word	cloudsMap
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start1
	.syntax unified
	.arm
	.fpu softvfp
	.type	start1, %function
start1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L59
	ldr	r3, .L59+4
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	cmp	r3, #75
	addne	r3, r3, #1
	beq	.L55
.L43:
	ldr	r2, .L59+8
	ldrh	r2, [r2]
	tst	r2, #8
	str	r3, [r4]
	beq	.L46
	ldr	r3, .L59+12
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L56
.L46:
	tst	r2, #128
	beq	.L41
	ldr	r3, .L59+12
	ldrh	r3, [r3]
	tst	r3, #128
	beq	.L57
.L41:
	pop	{r4, r5, r6, lr}
	bx	lr
.L55:
	ldr	r5, .L59+16
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L58
	ldr	r3, .L59+20
	mov	r2, #100663296
	ldr	r1, .L59+24
	mov	r0, #3
	ldr	r6, .L59+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L59+32
	ldr	r1, .L59+36
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #0
	str	r3, [r5]
.L45:
	mov	r3, #1
	b	.L43
.L58:
	mov	r3, #5568
	mov	r2, #100663296
	ldr	r1, .L59+40
	mov	r0, #3
	ldr	r6, .L59+28
	mov	lr, pc
	bx	r6
	mov	r3, #1024
	ldr	r2, .L59+32
	ldr	r1, .L59+44
	mov	r0, #3
	mov	lr, pc
	bx	r6
	mov	r3, #1
	str	r3, [r5]
	b	.L45
.L57:
	pop	{r4, r5, r6, lr}
	b	goToStart2
.L56:
	bl	goToGame
	ldr	r3, .L59+48
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	startCount
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	currentStartFrame
	.word	5472
	.word	start2Tiles
	.word	DMANow
	.word	100726784
	.word	start2Map
	.word	start1Tiles
	.word	start1Map
	.word	initGame
	.size	start1, .-start1
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L73
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L62
	ldr	r2, .L73+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L71
.L62:
	tst	r3, #4
	beq	.L61
	ldr	r3, .L73+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L72
.L61:
	pop	{r4, lr}
	bx	lr
.L72:
	pop	{r4, lr}
	b	goToStart1
.L71:
	bl	goToGame
	ldr	r3, .L73+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L74:
	.align	2
.L73:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initGame
	.size	instructions, .-instructions
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #67108864
	mov	r5, #1024
	ldr	r4, .L77
	mov	r3, #256
	strh	r5, [r6]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L77+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #3888
	strh	r2, [r6, #12]	@ movhi
	ldr	r1, .L77+8
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L77+12
	ldr	r1, .L77+16
	mov	r0, #3
	mov	r3, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+20
	mov	lr, pc
	bx	r3
	ldr	r3, .L77+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L77+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L77+32
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L78:
	.align	2
.L77:
	.word	DMANow
	.word	pause1Pal
	.word	pause1Tiles
	.word	100726784
	.word	pause1Map
	.word	waitForVBlank
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L97
	ldr	r3, .L97+4
	mov	lr, pc
	bx	r3
	ldr	r2, [r4]
	ldr	r3, .L97+8
	smull	r0, r1, r2, r3
	asr	r3, r2, #31
	add	r1, r2, r1
	rsb	r3, r3, r1, asr #5
	rsb	r3, r3, r3, lsl #6
	sub	r3, r2, r3
	cmp	r3, #20
	ble	.L93
	cmp	r3, #41
	ble	.L94
	mov	r3, #3856
	mov	r2, #100663296
	ldr	r1, .L97+12
	mov	r0, #3
	ldr	r5, .L97+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L97+20
	ldr	r1, .L97+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
.L81:
	ldr	r2, .L97+28
	ldr	r3, [r4]
	ldrh	r2, [r2]
	add	r3, r3, #1
	tst	r2, #8
	str	r3, [r4]
	beq	.L83
	ldr	r3, .L97+32
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L95
.L83:
	tst	r2, #4
	beq	.L79
	ldr	r3, .L97+32
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L96
.L79:
	pop	{r4, r5, r6, lr}
	bx	lr
.L94:
	mov	r3, #3696
	mov	r2, #100663296
	ldr	r1, .L97+36
	mov	r0, #3
	ldr	r5, .L97+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L97+20
	ldr	r1, .L97+40
	mov	r0, #3
	mov	lr, pc
	bx	r5
	b	.L81
.L93:
	mov	r3, #3888
	mov	r2, #100663296
	ldr	r1, .L97+44
	mov	r0, #3
	ldr	r5, .L97+16
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L97+20
	ldr	r1, .L97+48
	mov	r0, #3
	mov	lr, pc
	bx	r5
	b	.L81
.L96:
	bl	goToStart1
.L92:
	ldr	r3, .L97+52
	mov	lr, pc
	bx	r3
	ldr	r4, .L97+56
	mov	r3, #1
	ldr	r2, .L97+60
	ldr	r1, .L97+64
	ldr	r0, .L97+68
	mov	lr, pc
	bx	r4
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	bl	goToGame
	b	.L92
.L98:
	.align	2
.L97:
	.word	pauseCount
	.word	waitForVBlank
	.word	-2113396605
	.word	pause3Tiles
	.word	DMANow
	.word	100726784
	.word	pause3Map
	.word	oldButtons
	.word	buttons
	.word	pause2Tiles
	.word	pause2Map
	.word	pause1Tiles
	.word	pause1Map
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	2507328
	.word	CoralReef
	.size	pause, .-pause
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, #67108864
	mov	r5, #1024
	ldr	r4, .L101
	mov	r3, #256
	strh	r5, [r6]	@ movhi
	mov	r2, #83886080
	ldr	r1, .L101+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #7936
	mov	r3, #1280
	strh	r2, [r6, #12]	@ movhi
	ldr	r1, .L101+8
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L101+12
	ldr	r1, .L101+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L101+20
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L101+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L101+28
	ldr	r4, .L101+32
	ldr	r1, .L101+36
	ldr	r0, .L101+40
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L101+44
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L102:
	.align	2
.L101:
	.word	DMANow
	.word	lose_altPal
	.word	lose_altTiles
	.word	100726784
	.word	lose_altMap
	.word	waitForVBlank
	.word	shadowOAM
	.word	11025
	.word	playSoundB
	.word	16237
	.word	OhSFX
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L112
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	ldr	r3, .L112+4
	ldrh	r1, [r3]
	ldr	r3, .L112+8
	strh	r1, [r2, #20]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L112+16
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L112+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L112+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L104
	ldr	r3, .L112+28
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L110
.L104:
	ldr	r3, .L112+32
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L111
	pop	{r4, lr}
	bx	lr
.L111:
	ldr	r2, .L112+36
	ldr	r3, .L112+40
	ldr	r2, [r2]
	pop	{r4, lr}
	str	r2, [r3]
	b	goToLose
.L110:
	bl	goToPause
	ldr	r3, .L112+44
	mov	lr, pc
	bx	r3
	ldr	r4, .L112+48
	mov	r3, #1
	ldr	r2, .L112+52
	ldr	r1, .L112+56
	ldr	r0, .L112+60
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L113:
	.align	2
.L112:
	.word	updateGame
	.word	hOff
	.word	drawGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	lives
	.word	score
	.word	finalScore
	.word	stopSound
	.word	playSoundA
	.word	11025
	.word	2704032
	.word	LastParadise
	.size	game, .-game
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L121
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L121+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L114
	ldr	r3, .L121+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L120
.L114:
	pop	{r4, lr}
	bx	lr
.L120:
	pop	{r4, lr}
	b	goToStart1
.L122:
	.align	2
.L121:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	lose, .-lose
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L136
	ldr	r5, .L136+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L136+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L136+12
	ldrh	r2, [r5, #48]
	ldr	r3, .L136+16
	strh	r2, [r4]	@ movhi
	ldr	r6, .L136+20
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldr	r2, .L136+24
	ldr	r1, .L136+28
	ldr	r0, .L136+32
	mov	lr, pc
	bx	r6
	ldr	r7, .L136+36
	ldr	r6, .L136+40
	ldr	fp, .L136+44
	ldr	r10, .L136+48
	ldr	r9, .L136+52
	ldr	r8, .L136+56
.L124:
	ldr	r2, [r7]
	ldrh	r3, [r4]
.L125:
	strh	r3, [r6]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L125
.L127:
	.word	.L126
	.word	.L128
	.word	.L129
	.word	.L130
	.word	.L131
	.word	.L132
.L132:
	ldr	r3, .L136+60
	mov	lr, pc
	bx	r3
	b	.L124
.L131:
	ldr	r3, .L136+64
	mov	lr, pc
	bx	r3
	b	.L124
.L130:
	mov	lr, pc
	bx	r8
	b	.L124
.L129:
	mov	lr, pc
	bx	r9
	b	.L124
.L128:
	mov	lr, pc
	bx	r10
	b	.L124
.L126:
	mov	lr, pc
	bx	fp
	b	.L124
.L137:
	.align	2
.L136:
	.word	setupSounds
	.word	67109120
	.word	setupInterrupts
	.word	buttons
	.word	goToStart1
	.word	playSoundA
	.word	11025
	.word	2507328
	.word	CoralReef
	.word	state
	.word	oldButtons
	.word	start1
	.word	start2
	.word	instructions
	.word	game
	.word	lose
	.word	pause
	.size	main, .-main
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	finalScore,4,4
	.comm	currentPauseFrame,4,4
	.comm	pauseCount,4,4
	.comm	currentIntFrame,4,4
	.comm	intCount,4,4
	.comm	currentStartFrame,4,4
	.comm	startCount,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
