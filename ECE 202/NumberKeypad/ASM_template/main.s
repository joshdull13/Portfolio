	INCLUDE core_cm4_constants.s		; Load Constant Definitions
	INCLUDE stm32l476xx_constants.s    

	IMPORT LCD_Initialization
	IMPORT LCD_Clear		
	IMPORT LCD_DisplayString

	AREA    main, CODE, READONLY
	EXPORT	__main				; make __main visible to linker
	ENTRY			
				
__main	PROC
	
	;Josh Dullinger + Ryan Lynch
	;jdd82 + ral94
	
	; Enable Clock GPIO Port E output
	LDR r0, =RCC_BASE
	LDR r1, [r0, #RCC_AHB2ENR]
	ORR r1, r1, #0x00000010
	STR r1, [r0, #RCC_AHB2ENR]
	
	; Enable Clock GPIO Port A input
	LDR r0, =RCC_BASE
	LDR r1, [r0, #RCC_AHB2ENR]
	ORR r1, r1, #0x00000001
	STR r1, [r0, #RCC_AHB2ENR]
	
	; Set MODE Register
	; Port E
	LDR r0, =GPIOE_BASE
	LDR r1, [r0, #GPIO_MODER]
	BIC r1, r1, #0x0FF00000 ;Clear bits 20-27 for pins 10-13
	ORR r1, r1, #0x05500000 ;Set pins 10-13 to output 
	STR r1, [r0, #GPIO_MODER]
	
	; Port A
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_MODER]
	BIC r1, r1, #0x00000CF0 ;Clear bits for pins 1,2,3,5 to set as input
	BIC r1, r1, #0x0000000C
	STR r1, [r0, #GPIO_MODER]
	
	; Set Output Type Register
	; Port E
	LDR r0, =GPIOE_BASE
	LDR r1, [r0, #GPIO_OTYPER]
	BIC r1, r1, #0x00003C00 ;Clear pins 13-10 as push/pull
	STR r1, [r0, #GPIO_OTYPER]
	
	; Set pull-up/pull-down Register
	; Port E
	LDR r0, =GPIOE_BASE
	LDR r1, [r0, #GPIO_PUPDR]
	BIC r1, r1, #0x0FF00000 ;Clear pins 10-13 no pu/pd
	STR r1, [r0, #GPIO_PUPDR]
	
	; Port A
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_PUPDR]
	BIC r1, r1, #0x00000CF0 ;Clear pin 1,2,3,5
	BIC r1, r1, #0x0000000C ;Clear pin 1,2,3,5
	ORR r1, r1, #0x000008A0 ;set pin 1,2,3,5 to 10 pull down
	ORR r1, r1, #0x00000008
	STR r1, [r0, #GPIO_PUPDR]

	BL  LCD_Initialization
	BL  LCD_Clear
	
;Register set-up /\ ----------------------------
;-----------------------------------------------
;program logic \/ ------------------------------

nonePressed ;loops while no buttons are detected as being pushed

	LDR r0, =GPIOE_BASE
	LDR r1, [r0, #GPIO_ODR]
	ORR r1, r1, #0x3C00 ;set pins 10-13 high to look for any pushed column
	STR r1, [r0, #GPIO_ODR]
	
	MOV r0, #0	;delay for debounce
	BL delay
	
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_IDR]	;read input pins
	AND r1, r1, #0x3C00 ;get any 1's in input
	CMP r1, #0		;must be a 1 in the columns
	BGT pressed	;branch to button pushed logic its not 0
	
	B nonePressed ;r1 = 0 so no buttons pushed
	
pressed	;logic for when a button push is detected
row1	;check row1 for button push

	LDR r0, =GPIOE_BASE
	LDR r1, [r0, #GPIO_ODR]
	BIC r1, r1, #0x3C00 ;clear pins 10-13
	ORR r1, r1, #0x0400 ;set pin 10 high
	STR r1, [r0, #GPIO_ODR]
	
	MOV r0, #0	;delay for debounce
	BL delay
	
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_IDR]
	AND r1, r1, #0x002E ;get any 1's in input
	CMP r1, #0	;if r1 = 0, button push not in this row, move onto next
	BEQ row2
	CMP r1, #0x0002 ; if input = "0x02", must be "1" button
	BNE row1_b2	; else move to next button in row
	
	MOV r0, #0x0002 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =case1 ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row1_b2
	CMP r1, #0x0004 ; if input = "0x04", must be "2" button
	BNE row1_b3 ; else move to next button in row
	
	MOV r0, #0x0004 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =case2 ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row1_b3
	CMP r1, #0x0008 ; if input = "0x08", must be "3" button
	BNE row1_b4 ; else move to next button in row
	
	MOV r0, #0x0008 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =case3 ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row1_b4
	CMP r1, #0x0020 ; input must = "0x020", must be "A" button
	
	MOV r0, #0x0020 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =caseA ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row2 ;check row 2 for button push
	
	LDR r0, =GPIOE_BASE
	LDR r1, [r0, #GPIO_ODR]
	BIC r1, r1, #0x3C00 ;clear pins 10-13
	ORR r1, r1, #0x0800 ;set pin 11 high
	STR r1, [r0, #GPIO_ODR]
	
	MOV r0, #0 ;delay for debounce
	BL delay
	
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_IDR]
	AND r1, r1, #0x002E ;get any 1's in input
	CMP r1, #0	;if r1 = 0, button push not in this row, move onto next
	BEQ row3
	CMP r1, #0x0002 ; if input = "0x02", must be "4" button
	BNE row2_b2		; else move to next button in row
	
	MOV r0, #0x0002 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =case4 ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row2_b2
	CMP r1, #0x0004 ; if input = "0x04", must be "5" button
	BNE row2_b3		; else move to next button in row
	
	MOV r0, #0x0004 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =case5 ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row2_b3
	CMP r1, #0x0008 ; if input = "0x08", must be "6" button
	BNE row2_b4		; else move to next button in row
	
	MOV r0, #0x0008 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =case6 ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row2_b4
	CMP r1, #0x0020 ; input must = "0x020", must be "B" button
	
	MOV r0, #0x0020 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =caseB ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row3 ; check row 3 for button push
	
	LDR r0, =GPIOE_BASE
	LDR r1, [r0, #GPIO_ODR]
	BIC r1, r1, #0x3C00 ;clear pins 10-13
	ORR r1, r1, #0x1000 ;set pin 12 high
	STR r1, [r0, #GPIO_ODR]
	
	MOV r0, #0 ;delay for debounce
	BL delay
	
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_IDR]
	AND r1, r1, #0x002E ;get any 1's in input
	CMP r1, #0	;if r1 = 0, button push not in this row, move onto next
	BEQ row4
	CMP r1, #0x0002 ; if input = "0x02", must be "7" button
	BNE row3_b2		; else move to next button in row
	
	MOV r0, #0x0002 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =case7 ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row3_b2
	CMP r1, #0x0004 ; if input = "0x04", must be "8" button
	BNE row3_b3		; else move to next button in row
	
	MOV r0, #0x0004 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =case8 ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row3_b3
	CMP r1, #0x0008 ; if input = "0x08", must be "9" button
	BNE row3_b4		; else move to next button in row
	
	MOV r0, #0x0008 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =case9 ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row3_b4
	CMP r1, #0x0020 ; input must = "0x020", must be "C" button
	
	MOV r0, #0x0020 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =caseC ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row4 ; button push must be in row 4
	
	LDR r0, =GPIOE_BASE
	LDR r1, [r0, #GPIO_ODR]
	BIC r1, r1, #0x3C00 ;clear pins 10-13
	ORR r1, r1, #0x2000 ;set pin 13 high
	STR r1, [r0, #GPIO_ODR]
	
	MOV r0, #0 ;delay for debounce
	BL delay
	
	LDR r0, =GPIOA_BASE
	LDR r1, [r0, #GPIO_IDR]
	AND r1, r1, #0x002E ;get any 1's in input
	CMP r1, #0	;if r1 = 0, button push must not have happened, go to nonePressed label
	BEQ nonePressed
	CMP r1, #0x0002 ; if input = "0x02", must be "*" button
	BNE row4_b2		; else move to next button in row
	
	MOV r0, #0x0002 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =caseStar ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row4_b2
	CMP r1, #0x0004 ; if input = "0x04", must be "0" button
	BNE row4_b3		; else move to next button in row
	
	MOV r0, #0x0004 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =case0 ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row4_b3
	CMP r1, #0x0008 ; if input = "0x08", must be "#" button
	BNE row4_b4		; else move to next button in row
	
	MOV r0, #0x0008 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =caseHash ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed
	
row4_b4
	CMP r1, #0x0020 ; input must = "0x020", must be "D" button
	
	MOV r0, #0x0020 ;pass high pin
	BL debounce		;check button is not being pressed anymore
	
	LDR r0, =caseD ;get string for button pushed
	BL  LCD_DisplayString ;call LCD display function
	B nonePressed	;go back to start b/c button has been displayed

;END of Main --------------------
	ENDP
		
delay PROC	;simple counter used for debounce
	ADD r0, r0, #1
	CMP r0, #0x0008
	BLT delay 	;if r0 < 0x08 keep counting
	BX LR		;else return to program
	ENDP
		
debounce PROC ;used to tell when button is not pressed
	LDR r2, =GPIOA_BASE
	LDR r1, [r2, #GPIO_IDR]
	AND r1, r1, #0x002E ;get any 1's in input
	CMP r0, r1 ;r1 = IDR, r0 = constant high pin
	BEQ debounce ;if equal keep checking
	BX LR		 ;else return to program
	ENDP

	ALIGN			

	AREA myData, DATA, READWRITE
	ALIGN

;Strings for button pushes and LCD display
;row1
case1 		DCB "1",0
case2 		DCB "2",0
case3 		DCB "3",0
caseA 		DCB "A",0

;row2
case4 		DCB "4",0
case5 		DCB "5",0
case6 		DCB "6",0
caseB 		DCB "B",0

;row3
case7 		DCB "7",0
case8 		DCB "8",0
case9 		DCB "9",0
caseC 		DCB "C",0

;row4
caseStar 	DCB "*",0
case0 		DCB "0",0
caseHash 	DCB "#",0
caseD 		DCB "D",0

	END
