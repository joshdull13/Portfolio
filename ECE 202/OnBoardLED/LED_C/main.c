//Ryan Lynch
//ral94
//Partner: Josh Dullinger

#include "stm32l476xx.h"

int main(void){
	
	uint32_t center_input = 0;
	uint32_t center_prev_input = 0;
	uint32_t left_input = 0;
	uint32_t left_prev_input = 0;
	uint32_t right_input = 0;
	uint32_t right_prev_input = 0;
	uint32_t up_input = 0;
	uint32_t up_prev_input = 0;
	uint32_t down_input = 0;
	uint32_t down_prev_input = 0;
	
	uint32_t current_output_red = 0;
	uint32_t current_output_green = 0;
	
	// Enable High Speed Internal Clock (HSI = 16 MHz)
  RCC->CR |= ((uint32_t)RCC_CR_HSION);
	
  // wait until HSI is ready
  while ( (RCC->CR & (uint32_t) RCC_CR_HSIRDY) == 0 ) {;}
	
  // Select HSI as system clock source 
  RCC->CFGR &= (uint32_t)((uint32_t)~(RCC_CFGR_SW));
  RCC->CFGR |= (uint32_t)RCC_CFGR_SW_HSI;  //01: HSI16 oscillator used as system clock

  // Wait till HSI is used as system clock source 
  while ((RCC->CFGR & (uint32_t)RCC_CFGR_SWS) == 0 ) {;}


  
//USER CODE GOES HERE///////////////////////////
		
	RCC->AHB2ENR |= RCC_AHB2ENR_GPIOBEN;	//enable clock for port B
	RCC->AHB2ENR |= RCC_AHB2ENR_GPIOAEN;	//enable clock for port A
	RCC->AHB2ENR |= RCC_AHB2ENR_GPIOEEN;	//enable clock for port E
		
	GPIOB->MODER &= ~(3UL<<4);		//reset mode of pin B2 (00)
	GPIOB->MODER |= 1UL<<4;				//set mode of pin B2 to output (01)
	GPIOB->OTYPER &= ~(1UL<<2);		//set output type of pin B2 to push-pull (0)
	GPIOB->PUPDR &= ~(3UL<<4);		//set pull-up-push-down of pin B2 to none (00)
		
	GPIOE->MODER &= ~(3UL<<16);		//reset mode of pin E8 (00)
	GPIOE->MODER |= 1UL<<16;			//set mode of pin E8 to output (01)
	GPIOE->OTYPER &= ~(1UL<<8);		//set output type of pin E8 to push-pull (0)
	GPIOE->PUPDR &= ~(3UL<<16);		//set pull-up-push-down of pin E8 to none (00)
		
	GPIOA->MODER &= ~(3327UL);		//set modes of pins A0, A1, A2, A3, and A5 to input (00)
	GPIOA->PUPDR &= ~(3327UL);		//reset pull-up-push-down of pins A0, A1, A2, A3, and A5
	GPIOA->PUPDR |= 2218UL;				//set pull-up-push-down of pins A0, A1, A2, A3, and A5 to pull-down (10)
	
	while(1 == 1)
	{
		//the previous state of each input button is tracked
		//the code executes when a particular button is RELEASED
		
		center_input = GPIOA->IDR & 1UL;	//A0
		if(center_input==0)
		{
			if(center_prev_input==1)
			{
				current_output_red = GPIOB->ODR;	//retrieve the current output register contents
				current_output_red >>= 2;					//shift left 2
				current_output_red &= 1UL;				//get the current output
				
				if(current_output_red == 0)		//if the current output is 0
					GPIOB->ODR |= 1UL<<2;				//set the output of the red LED to 1
				else													//if the current output is 1
					GPIOB->ODR &= ~(1UL<<2);		//set the output of the red LED to 0
				
				current_output_green = GPIOE->ODR;	//retrieve the current output register contents
				current_output_green >>= 8;					//shift left 8
				current_output_green &= 1UL;				//get the current output
				
				if(current_output_green == 0)	//if the current output is 0
					GPIOE->ODR |= 1UL<<8;				//set the output of the green LED to 1
				else													//if the current output is 1
					GPIOE->ODR &= ~(1UL<<8);		//set the output of the green LED to 0
			}
			
			center_prev_input = 0;
		}
		else
			center_prev_input = 1;
		
		left_input = ((GPIOA->IDR)>>1) & 1UL; //A1
		if(left_input==0)
		{
			if(left_prev_input==1)
				GPIOB->ODR |= 1UL<<2;				//set the output of the red LED to 1

			left_prev_input = 0;
		}
		else
			left_prev_input = 1;
		
		right_input = ((GPIOA->IDR)>>2) & 1UL; //A2
		if(right_input==0)
		{
			if(right_prev_input==1)
				GPIOB->ODR &= ~(1UL<<2);				//set the output of the red LED to 0

			right_prev_input = 0;
		}
		else
			right_prev_input = 1;
		
		up_input = ((GPIOA->IDR)>>3) & 1UL;	//A3
		if(up_input==0)
		{
			if(up_prev_input==1)
				GPIOE->ODR |= 1UL<<8;				//set the output of the green LED to 1

			up_prev_input = 0;
		}
		else
			up_prev_input = 1;
		
		down_input = ((GPIOA->IDR)>>5) & 1UL;	//A5
		if(down_input==0)
		{
			if(down_prev_input==1)
				GPIOE->ODR &= ~(1UL<<8);				//set the output of the green LED to 0
			
			down_prev_input = 0;
		}
		else
			down_prev_input = 1;
		
	}


////////////////////////////////////////////////



  // Dead loop & program hangs here
	while(1);
}