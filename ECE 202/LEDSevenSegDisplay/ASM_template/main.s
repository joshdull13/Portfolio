	INCLUDE core_cm4_constants.s		; Load Constant Definitions
	INCLUDE stm32l476xx_constants.s    

	AREA    main, CODE, READONLY
	EXPORT	__main				; make __main visible to linker
	ENTRY			
				
__main	PROC
	
	;Josh Dullinger + Ryan Lynch
	;jdd82 + ral94
	
	; Enable Clock GPIO Port B output
	LDR r0, =RCC_BASE
	LDR r1, [r0, #RCC_AHB2ENR]
	ORR r1, r1, #0x00000002
	STR r1, [r0, #RCC_AHB2ENR]
	
	; Enable Clock GPIO Port A input (joystick center)
	LDR r0, =RCC_BASE
	LDR r1, [r0, #RCC_AHB2ENR]
	ORR r1, r1, #0x00000001
	STR r1, [r0, #RCC_AHB2ENR]
	
	; Set MODE Register
	; PB2
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_MODER]
	BIC r1, r1, #0x00000030 ;Clear bits 4 and 5 for Pin 2
	ORR r1, r1, #0x00000010 ;Set bit 4 to set Pin 2 as output
	STR r1, [r0, #GPIO_MODER]
	
	; PB3
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_MODER]
	BIC r1, r1, #0x000000C0 ;Clear bits 6 and 7 for Pin 3
	ORR r1, r1, #0x00000040 ;Set bit 6 to set Pin 2 as output
	STR r1, [r0, #GPIO_MODER]
	
	; PB6
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_MODER]
	BIC r1, r1, #0x00003000 ;Clear bits 12 and 13 for Pin 6
	ORR r1, r1, #0x00001000 ;Set bit 12 to set Pin 6 as output
	STR r1, [r0, #GPIO_MODER]
	
	; PB7
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_MODER]
	BIC r1, r1, #0x0000C000 ;Clear bits 14 and 15 for Pin 7
	ORR r1, r1, #0x00004000 ;Set bit 14 to set Pin 6 as output
	STR r1, [r0, #GPIO_MODER]
	
	; PA0 (joystick center)
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_MODER]
	BIC r1, r1, #0x00000003 ;Clear bits 0 and 1 for Pin 0
	STR r1, [r0, #GPIO_MODER]
	
	; Set Output Type Register
	; PB2
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_OTYPER]
	BIC r1, r1, #0x00000004 ;Clear bit 2 for Pin 2
	STR r1, [r0, #GPIO_OTYPER]
	
	; PB3
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_OTYPER]
	BIC r1, r1, #0x00000008 ;Clear bit 3 for Pin 3
	STR r1, [r0, #GPIO_OTYPER]
	
	; PB6
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_OTYPER]
	BIC r1, r1, #0x00000040 ;Clear bit 6 for Pin 6
	STR r1, [r0, #GPIO_OTYPER]
	
	; PB7
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_OTYPER]
	BIC r1, r1, #0x00000080 ;Clear bit 7 for Pin 7
	STR r1, [r0, #GPIO_OTYPER]
	
	; Set pull-up/pull-down Register
	; PB2
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_PUPDR]
	BIC r1, r1, #0x00000030 ;Clear bits 4 and 5 for Pin 2
	STR r1, [r0, #GPIO_PUPDR]
	
	; PB3
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_PUPDR]
	BIC r1, r1, #0x000000C0 ;Clear bits 6 and 7 for Pin 3
	STR r1, [r0, #GPIO_PUPDR]
	
	; PB6
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_PUPDR]
	BIC r1, r1, #0x00003000 ;Clear bits 12 and 13 for Pin 6
	STR r1, [r0, #GPIO_PUPDR]
	
	; PB7
	LDR r0, =GPIOB_BASE
	LDR r1, [r0, #GPIO_PUPDR]
	BIC r1, r1, #0x0000C000 ;Clear bits 14 and 15 for Pin 7
	STR r1, [r0, #GPIO_PUPDR]
	
	; PA0 (joystick center)
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_PUPDR]
	BIC r1, r1, #0x00000003 ;Clear bits 0 and 1 for Pin 0
	STR r1, [r0, #GPIO_PUPDR]
	
	;Counting Loop
Restart ; Label for when i > 9 or when reset button is pushed
	MOV r2, #0x00000000 ;set i to 0
Loop	; Label for when i is incremented and still < 10
	CMP r2, #0x0000000A	;make sure i < 10
	BGE Restart			;reset i if i > 9
	
	MOV r3, #0x00000000	;register to count to implement a delay for 7-seg display
Delay	;used to add a delay for 7-seg display so it displays numbers clearer
	;reads input value of reset button (joystick center)
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_IDR]
	ANDS r4, r1, #0x00000001
	CMP r4, #0x00000001 ; Z=1 if pin 0 is high
	BEQ Restart   		; if Z=1 button is pushed so reset i
	CMP r3, #0x0000FF00	; compare if delay is over yet
	ADD r3, r3, #0x00000001
	BLE Delay			; if its not over add to delay value
	
	;section to determine value of i and set outputs to correct values
	CMP r2, #0x0000 ;i = 0
	LDREQ r0, =GPIOB_BASE
	LDREQ r1, [r0, #GPIO_ODR]
	BICEQ r1, r1, #0x00CC ; Set bits 2,3,6,7 to 0
	STREQ r1, [r0, #GPIO_ODR] ; store 0000 into output
	CMP r2, #0x0001	;i = 1
	LDREQ r0, =GPIOB_BASE
	LDREQ r1, [r0, #GPIO_ODR]
	BICEQ r1, r1, #0x00CC ; Set bits 2,3,6,7 to 0
	ORREQ r1, r1, #0x0004 ; Set bit 2 to 1
	STREQ r1, [r0, #GPIO_ODR] ; store 0001 into output
	CMP r2, #0x0002	;i = 2
	LDREQ r0, =GPIOB_BASE
	LDREQ r1, [r0, #GPIO_ODR]
	BICEQ r1, r1, #0x00CC ; Set bits 2,3,6,7 to 0
	ORREQ r1, r1, #0x0008 ; set bit 3 to 1
	STREQ r1, [r0, #GPIO_ODR] ; store 0010 into output
	CMP r2, #0x0003	;i = 3
	LDREQ r0, =GPIOB_BASE
	LDREQ r1, [r0, #GPIO_ODR]
	BICEQ r1, r1, #0x00CC ; Set bits 2,3,6,7 to 0
	ORREQ r1, r1, #0x000C ; set bits 2,3 to 1
	STREQ r1, [r0, #GPIO_ODR] ; store 0011 into output
	CMP r2, #0x0004 ;i = 4
	LDREQ r0, =GPIOB_BASE
	LDREQ r1, [r0, #GPIO_ODR]
	BICEQ r1, r1, #0x00CC ; Set bits 2,3,6,7 to 0
	ORREQ r1, r1, #0x0040 ; set bit 6 to 1
	STREQ r1, [r0, #GPIO_ODR] ; store 0100 into output
	CMP r2, #0x0005 ;i = 5
	LDREQ r0, =GPIOB_BASE
	LDREQ r1, [r0, #GPIO_ODR] 
	BICEQ r1, r1, #0x00CC ; Set bits 2,3,6,7 to 0
	ORREQ r1, r1, #0x0044 ; set bits 2,6 to 1
	STREQ r1, [r0, #GPIO_ODR] ; store 0101 into output
	CMP r2, #0x0006 ;i = 6
	LDREQ r0, =GPIOB_BASE
	LDREQ r1, [r0, #GPIO_ODR]
	BICEQ r1, r1, #0x00CC ; Set bits 2,3,6,7 to 0
	ORREQ r1, r1, #0x0048 ; set bits 3,6 to 1
	STREQ r1, [r0, #GPIO_ODR] ; store 0110 into output
	CMP r2, #0x0007 ;i = 7
	LDREQ r0, =GPIOB_BASE
	LDREQ r1, [r0, #GPIO_ODR]
	BICEQ r1, r1, #0x00CC ; Set bits 2,3,6,7 to 0
	ORREQ r1, r1, #0x004C ; set bits 2,3,6 to 1
	STREQ r1, [r0, #GPIO_ODR] ; store 0111 to output
	CMP r2, #0x0008 ;i = 8
	LDREQ r0, =GPIOB_BASE
	LDREQ r1, [r0, #GPIO_ODR]
	BICEQ r1, r1, #0x00CC ; Set bits 2,3,6,7 to 0
	ORREQ r1, r1, #0x0080 ; set bit 7 to 1
	STREQ r1, [r0, #GPIO_ODR] ; store 1000 to output
	CMP r2, #0x0009 ;i = 9
	LDREQ r0, =GPIOB_BASE
	LDREQ r1, [r0, #GPIO_ODR]               
	BICEQ r1, r1, #0x00CC ; Set bits 2,3,6,7 to 0
	ORREQ r1, r1, #0x0084 ; ser bits 2,7 to 1
	STREQ r1, [r0, #GPIO_ODR] ; store 1001 to output
	
	ADD r2, r2, #0x0001 ;add 1 ti i
	
	B Loop	;go back to top of loop
	
	;/////////////////
 
	ENDP
					
	ALIGN			

;	AREA myData, DATA, READWRITE
;	ALIGN

; Replace ECE0202 with your last name
;str DCB "ECE0202",0
	END
