# ECE 202
	
	The following files are labs created for ECE 202 in Keil uVision5 for the Cortex-M4 STM32L476VGTx

## LED Seven Segment Display

	We configured the board to output a signal to control an external seven segment display with an external 74Ls247 chip.
	The display looped through 0 to 9 and the center joycon button was used to reset the LED to 0 at any point.
	
## Numer Key Pad

	Use an external 4x4 keypad to enter inputs to display on the board LED. Inputs included numbers 0-9 and A,B,C,D,*,# characters
	
## On Board LED

	First lab to configure the on board green and red LEDs to turn on or off by using the joystick.
	* UP - turns green LED on
	* DOWN - turns green LED off
	* LEFT - turns red LED on
	* RIGHT - turns red LED off
	* CENTER - toggles state of both LEDs