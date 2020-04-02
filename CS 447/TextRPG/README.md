# Text Adventure RPG

	This program is a project for CS 447. The task was to design a text based choose your own adventure RPG using assembly.

## Game info

Constants:
	I used constants to save all characters stats
	
Macros:
	gameWelcome: 	Prints out the welcome menu with the class choices
	pickCharacter:	Allows player to pick character and saves player choice into t0 and 
					the stats into registers t2-t5
	pathChoice:		Introduces paths and allows players to pick their path
	firstBattle:	Runs the battle depending on the path picked. Runs a loop for specified number of
					enemies depending on path. Battle will end when player health hits 0 or all enemies
					have been defeated
	seedRNG:		Seeds the random number generator using the time
	randomInt:		Takes in a lower and upper bound and generates a random number between those numbers
	pickItem:		Allows users to pick an item and raises the according stat
	wizardFight:	Runs the wizard battle where the player can attack or cast a spell to kill the wizard
					instantly. The spell only casts if the correct number is guessed from 1-5 and the correct
					number is generated from randomInt. The fight will also end if the player attacks the 
					wizard and reduces its health to zero.
	
Player and Enemy Atributes:
	I saved the player and enemy atributes in different registers and changed them depending on the players
	choices. Using the players character choice I have different cases for each different choice.

Registers Used / Meanings:

	$t0 - character choice			$s0 - Time / RNG seed
	$t1 - path choice			$s1 - Random Number / Weapon DMG Roll
	$t2 - Player HP				$s2 - Battle (loop) counter
	$t3 - Player STR			$s3 - Total DMG
	$t4 - Player Minimum DMG		$s4 - Game Over Condition (1 = over)
	$t5 - Player Maximum DMG		$s5 - item number choice / spell randomly generated correct number
	$t6 - Enemy HP				$s6 - Player wizard fight action choice 
	$t7 - Enemy STR				$s7 - Player Spell number guess
	$t8 - Enemy Minimum DMG	
	$t9 - Enemy Maximum DMG									