.eqv rogue_HP 55
.eqv rogue_STR 8
.eqv rogue_min_DMG 1
.eqv rogue_max_DMG 4
.eqv paladin_HP 35
.eqv paladin_STR 14
.eqv paladin_min_DMG 3
.eqv paladin_max_DMG 7
.eqv jackie_HP 45
.eqv jackie_STR 10
.eqv jackie_min_DMG 2
.eqv jackie_max_DMG 6
.eqv goblin_HP 25
.eqv goblin_STR 4
.eqv goblin_min_DMG 2
.eqv goblin_max_DMG 6
.eqv skeleton_HP 25
.eqv skeleton_STR 3
.eqv skeleton_min_DMG 1
.eqv skeleton_max_DMG 4
.eqv wizard_HP 40
.eqv wizard_STR 8
.eqv wizard_min_DMG 4
.eqv wizard_max_DMG 10

.macro gameWelcome
	li $v0, 4
	la $a0, welcome
	syscall
	
	la $a0, newline
	syscall
	syscall
	
	la $a0, characters
	syscall
	
	la $a0, newline
	syscall
	
	la $a0, rogue
	syscall
	
	la $a0, newline
	syscall
	
	la $a0, paladin
	syscall
	
	la $a0, newline
	syscall
	
	la $a0, jackie
	syscall
	
	la $a0, newline
	syscall
	syscall
.end_macro

.macro pickCharacter
	li $v0, 4
	la $a0, characterQ
	syscall
	
	li $v0, 5
	syscall
	add $t0, $v0, $zero # STORES CHARACTER CHOICE IN $t0
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 4
	la $a0, youChose
	syscall
	
	beq $t0, 1, rogue
	beq $t0, 2, paladin
	beq $t0, 3, jackie
	
	rogue:
	la $a0, rogueName
	syscall
	la $a0, newline
	syscall
	syscall
	li $t2, rogue_HP # STORES CHARACTER HP IN $t2
	li $t3, rogue_STR # STORES CHARACTER STR IN $t3
	li $t4, rogue_min_DMG # STORES CHARACTER MIN DAMAGE IN $t4
	li $t5, rogue_max_DMG # SOTRES CHARACTER MAX DAMAGE IN $t5
	j exit
	
	paladin:
	la $a0, paladinName
	syscall
	la $a0, newline
	syscall
	syscall
	li $t2, paladin_HP # STORES CHARACTER HP IN $t2
	li $t3, paladin_STR # STORES CHARACTER STR IN $t3
	li $t4, paladin_min_DMG # STORES CHARACTER MIN DAMAGE IN $t4
	li $t5, paladin_max_DMG # SOTRES CHARACTER MAX DAMAGE IN $t5
	j exit
	
	jackie:
	la $a0, jackieName
	syscall
	la $a0, newline
	syscall
	syscall
	li $t2, jackie_HP # STORES CHARACTER HP IN $t2
	li $t3, jackie_STR # STORES CHARACTER STR IN $t3
	li $t4, jackie_min_DMG # STORES CHARACTER MIN DAMAGE IN $t4
	li $t5, jackie_max_DMG # SOTRES CHARACTER MAX DAMAGE IN $t5
	j exit
	
	exit: 
.end_macro
	
.macro pathChoice
	li $v0, 4
	la $a0, wizardIntro1
	syscall
	
	la $a0, newline
	syscall
	
	la $a0, wizardIntro2
	syscall
	
	la $a0, newline
	syscall
	
	la $a0, wizardIntro3
	syscall
	
	la $a0, newline
	syscall
	
	la $a0, wizardIntro4
	syscall
	
	la $a0, newline
	syscall
	syscall
	
	la $a0, pathQ
	syscall
	
	li $v0, 5
	syscall
	add $t1, $v0, $zero # STORES PATH CHOICE IN $t1
	
	li $v0, 4
	la $a0, newline
	syscall
	
	la $a0, youChose
	syscall
	
	beq $t0, 1, pathForest
	beq $t0, 2, pathGraveyard
	
	pathForest:
	la $a0, forest
	syscall
	
	la $a0, newline
	syscall
	syscall
	
	la $a0, forestEncounter
	syscall
	
	la $a0, newline
	syscall
	syscall
	
	j exit
	
	pathGraveyard:
	la $a0, graveyard
	syscall
	
	la $a0, newline
	syscall
	syscall
	
	la $a0, graveyardEncounter
	syscall
	
	la $a0, newline
	syscall
	syscall
	
	j exit
	
	exit:
.end_macro

.macro firstBattle
	beq $t1, 1, goblins
	beq $t1, 2, skeletons
	
	goblins:
		forestLoop:
			li $t6, goblin_HP
			li $t7, goblin_STR
			li $t8, goblin_min_DMG
			li $t9, goblin_max_DMG
			
			addi  $s2, $s2, 1 # battle counter saved in $s2
	
			li $v0, 4
			la $a0, stars
			syscall
	
			beq $t0, 1, rogue
			beq $t0, 2, paladin
			beq $t0, 3, jackie
	
			rogue:
				la $a0, rogueName
				syscall
	
				j next
	
			paladin:
				la $a0, paladinName
				syscall
	
				j next
	
			jackie:
				la $a0, jackieName
				syscall
	
				j next
	
			next:
	
			la $a0, vs
			syscall
	
			la $a0, goblinName
			syscall
	
			li $v0, 1
			move $a0, $s2
			syscall
	
			li $v0, 4
			la $a0, stars
			syscall
	
			la $a0, newline
			syscall
			
			goblinBattleLoop:
				beq $t0, 1, rogueFight
				beq $t0, 2, paladinFight
				beq $t0, 3, jackieFight
			
				rogueFight:
					li $v0, 4		#ROGUE ATTACK TURN
					la $a0, rogueName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t3
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t4, $t5	#DAMAGE ROLL
					
					add $s3, $s1, $t3
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, goblinName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t6, $t6, $s3
					
					li $v0, 1
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t6, 1, rogueEndFight
					
					li $v0, 4		#GOBLINS ATTACK TURN
					la $a0, goblinName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t7
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t8, $t9 	#ENEMY DAMAGE ROLL
					
					add $s3, $s1, $t7
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, rogueName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t2, $t2, $s3
					
					li $v0, 1
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t2, 1, gameOver
					bgt $t6, 0, rogueFight
					
					rogueEndFight:
					
					li $v0, 4
					la $a0, rogueName
					syscall
					
					j goblinKilled
					
				paladinFight:
				
					li $v0, 4		#paladin ATTACK TURN
					la $a0, paladinName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t3
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t4, $t5	#DAMAGE ROLL
					
					add $s3, $s1, $t3
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, goblinName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t6, $t6, $s3
					
					li $v0, 1
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t6, 1, paladinEndFight
					
					li $v0, 4		#GOBLINS ATTACK TURN
					la $a0, goblinName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t7
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t8, $t9 	#ENEMY DAMAGE ROLL
					
					add $s3, $s1, $t7
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, paladinName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t2, $t2, $s3
					
					li $v0, 1
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t2, 1, gameOver
					bgt $t6, 0, paladinFight
					
					paladinEndFight:
					
					li $v0, 4
					la $a0, paladinName
					syscall
					
					j goblinKilled
					
				jackieFight:
					li $v0, 4		#jackie ATTACK TURN
					la $a0, jackieName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t3
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t4, $t5	#DAMAGE ROLL
					
					add $s3, $s1, $t3
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, goblinName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t6, $t6, $s3
					
					li $v0, 1
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t6, 1, jackieEndFight
					
					li $v0, 4		#GOBLINS ATTACK TURN
					la $a0, goblinName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t7
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t8, $t9 	#ENEMY DAMAGE ROLL
					
					add $s3, $s1, $t7
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, jackieName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t2, $t2, $s3
					
					li $v0, 1
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t2, 1, gameOver
					bgt $t6, 0, jackieFight
					
					jackieEndFight:
					
					li $v0, 4
					la $a0, jackieName
					syscall
					
					j goblinKilled
				
			goblinKilled:
				
				li $v0, 4
				la $a0, defeated
				syscall
				
				la $a0, goblinName
				syscall
				
				li $v0, 1
				move $a0, $s2
				syscall
				
				li $v0, 4
				la $a0, exclamation
				syscall
				
				la $a0, newline
				syscall
				syscall
				
				blt $s2, 3, forestLoop
				
				j battle_won
				
	skeletons:
		graveyardLoop:
			li $t6, skeleton_HP
			li $t7, skeleton_STR
			li $t8, skeleton_min_DMG
			li $t9, skeleton_max_DMG
			
			addi  $s2, $s2, 1 # battle counter saved in $s2
	
			li $v0, 4
			la $a0, stars
			syscall
	
			beq $t0, 1, rogueS
			beq $t0, 2, paladinS
			beq $t0, 3, jackieS
	
			rogueS:
				la $a0, rogueName
				syscall
	
				j nextS
	
			paladinS:
				la $a0, paladinName
				syscall
	
				j nextS
	
			jackieS:
				la $a0, jackieName
				syscall
	
				j nextS
	
			nextS:
	
			la $a0, vs
			syscall
	
			la $a0, skeletonName
			syscall
	
			li $v0, 1
			move $a0, $s2
			syscall
	
			li $v0, 4
			la $a0, stars
			syscall
	
			la $a0, newline
			syscall
			
			skeletonBattleLoop:
				beq $t0, 1, rogueFightS
				beq $t0, 2, paladinFightS
				beq $t0, 3, jackieFightS
			
				rogueFightS:
					li $v0, 4		#ROGUE ATTACK TURN
					la $a0, rogueName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t3
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t4, $t5	#DAMAGE ROLL
					
					add $s3, $s1, $t3
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, skeletonName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t6, $t6, $s3
					
					li $v0, 1
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t6, 1, rogueEndFightS
					
					li $v0, 4		#GOBLINS ATTACK TURN
					la $a0, skeletonName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t7
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t8, $t9 	#ENEMY DAMAGE ROLL
					
					add $s3, $s1, $t7
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, rogueName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t2, $t2, $s3
					
					li $v0, 1
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t2, 1, gameOver
					bgt $t6, 0, rogueFightS
					
					rogueEndFightS:
					
					li $v0, 4
					la $a0, rogueName
					syscall
					
					j skeletonKilled
					
				paladinFightS:
				
					li $v0, 4		#paladin ATTACK TURN
					la $a0, paladinName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t3
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t4, $t5	#DAMAGE ROLL
					
					add $s3, $s1, $t3
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, skeletonName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t6, $t6, $s3
					
					li $v0, 1
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t6, 1, paladinEndFightS
					
					li $v0, 4		#GOBLINS ATTACK TURN
					la $a0, skeletonName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t7
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t8, $t9 	#ENEMY DAMAGE ROLL
					
					add $s3, $s1, $t7
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, paladinName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t2, $t2, $s3
					
					li $v0, 1
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t2, 1, gameOver
					bgt $t6, 0, paladinFightS
					
					paladinEndFightS:
					
					li $v0, 4
					la $a0, paladinName
					syscall
					
					j skeletonKilled
					
				jackieFightS:
					li $v0, 4		#jackie ATTACK TURN
					la $a0, jackieName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t3
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t4, $t5	#DAMAGE ROLL
					
					add $s3, $s1, $t3
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, skeletonName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t6, $t6, $s3
					
					li $v0, 1
					move $a0, $t6
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t6, 1, jackieEndFightS
					
					li $v0, 4		#GOBLINS ATTACK TURN
					la $a0, skeletonName
					syscall
					
					la $a0, attacks
					syscall
					
					li $v0, 1
					move $a0, $t7
					syscall
					
					li $v0, 4
					la $a0, plus
					syscall
					
					randomInt $t8, $t9 	#ENEMY DAMAGE ROLL
					
					add $s3, $s1, $t7
					
					li $v0, 1
					move $a0, $s1
					syscall 
					
					li $v0, 4
					la $a0, equals
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					
					la $a0, jackieName
					syscall
					
					la $a0, HP_Report
					syscall
					
					li $v0, 1 
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, minus
					syscall
					
					li $v0, 1
					move $a0, $s3
					syscall
					
					li $v0, 4
					la $a0, equals
					syscall
					
					sub $t2, $t2, $s3
					
					li $v0, 1
					move $a0, $t2
					syscall
					
					li $v0, 4
					la $a0, newline
					syscall
					syscall
					
					blt $t2, 1, gameOver
					bgt $t6, 0, jackieFightS
					
					jackieEndFightS:
					
					li $v0, 4
					la $a0, jackieName
					syscall
					
					j skeletonKilled
				
			skeletonKilled:
				
				li $v0, 4
				la $a0, defeated
				syscall
				
				la $a0, skeletonName
				syscall
				
				li $v0, 1
				move $a0, $s2
				syscall
				
				li $v0, 4
				la $a0, exclamation
				syscall
				
				la $a0, newline
				syscall
				syscall
				
				blt $s2, 5, graveyardLoop
				
				j battle_won
	
	battle_won:
		beq $t0, 1, rogueWin
		beq $t0, 2, paladinWin
		beq $t0, 3, jackieWin
		
		rogueWin:
			li $v0, 4
			la $a0, dashes
			syscall
			
			la $a0, rogueName
			syscall
			
			la $a0, battleWon
			syscall
			
			la $a0, newline
			syscall
			syscall
			
			j encounterExit
			
		paladinWin:
			li $v0, 4
			la $a0, dashes
			syscall
			
			la $a0, paladinName
			syscall
			
			la $a0, battleWon
			syscall
			
			la $a0, newline
			syscall
			syscall
			
			j encounterExit
		jackieWin:
			li $v0, 4
			la $a0, dashes
			syscall
			
			la $a0, jackieName
			syscall
			
			la $a0, battleWon
			syscall
			
			la $a0, newline
			syscall
			syscall
		
		j encounterExit
	
	gameOver:
		
		li $s4, 1
		
		li $v0, 4
		la $a0, dashes
		syscall
		
		beq $t0, 1, rogueLoss
		beq $t0, 2, paladinLoss
		beq $t0, 3, jackieLoss
		
		rogueLoss:
			la $a0, rogueName
			syscall
			
			j continueLossText
		paladinLoss:
			la $a0, rogueName
			syscall
			
			j continueLossText
		jackieLoss:
			la $a0, rogueName
			syscall
		
		continueLossText:
		
		la $a0, battleLost
		syscall
		
		la $a0, newline
		syscall
		syscall
		
		la $a0, gameOverMsg
		syscall
		
	encounterExit:
	
.end_macro

.macro seedRNG
	li $v0, 30 	# get time in milliseconds (as a 64-bit value)
	syscall
	move $s0, $a0 	# save the lower 32-bits of time into $s0
	
	# seed the random generator (just once)
	li $a0, 1 	# random generator id (will be used later)
	move $a1, $s0 	# seed from time
	li $v0, 40 	# seed random number generator syscall
	syscall
.end_macro

.macro randomInt %lower_bound, %upper_bound
	li $v0, 42
	sub $s1, %upper_bound, %lower_bound
	addi $s1, $s1, 1
	move $a1, $s1
	syscall
	add $s1, $a0, %lower_bound # STORE RANDOM NUMBER IN $t5
.end_macro

.macro pickItem
	li $v0, 4
	la $a0, HP_ReadOut
	syscall
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	syscall
	
	la $a0, rewardText
	syscall
	
	la $a0, newline
	syscall
	
	la $a0, reward1
	syscall
	
	la $a0, newline
	syscall
	
	la $a0, reward2
	syscall
	
	la $a0, newline
	syscall
	syscall
	
	la $a0, rewardQ
	syscall
	
	li $v0, 5
	syscall
	add $s5, $v0, $zero	#save item choice in $s5
	
	li $v0, 4
	la $a0, newline
	syscall
	
	la $a0, youChose
	syscall
	
	beq $s5, 1, HP_Pot
	beq $s5, 2, Ring
	
	HP_Pot:
		la $a0, HP_Potion
		syscall
		
		la $a0, newline
		syscall
		syscall
		
		la $a0, HP_Increase
		syscall
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		li $v0, 4
		la $a0, plus
		syscall
		
		li $v0, 1
		li $a0, 10
		syscall
		
		li $v0, 4
		la $a0, equals
		syscall
		
		addi  $t2, $t2, 10
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		j end_item_pick
	
	Ring:
		la $a0, Ring_of_STR
		syscall
		
		la $a0, newline
		syscall
		syscall
		
		la $a0, STR_Increase
		syscall
		
		li $v0, 1
		move $a0, $t3
		syscall
		
		li $v0, 4
		la $a0, plus
		syscall
		
		li $v0, 1
		li $a0, 5
		syscall
		
		li $v0, 4
		la $a0, equals
		syscall
		
		addi  $t3, $t3, 5
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		j end_item_pick
	
	end_item_pick:
		
		li $v0, 4
		la $a0, newline
		syscall
		syscall
		
		la $a0, castleIntro
		syscall
		
		la $a0, newline
		syscall
		syscall
	
.end_macro

.macro wizardFight
	
	li $t6, wizard_HP
	li $t7, wizard_STR
	li $t8, wizard_min_DMG
	li $t9, wizard_max_DMG
	
	li $s6, 1 	#lower bound for fire spell
	li $s7, 5	#upper bound for fire spell
	randomInt $s6, $s7
	
	add $s5, $s1, $zero # saved spell number in $s5
	
	li $v0, 4
	la $a0, stars
	syscall
	
	beq $t0, 1, rogueW
	beq $t0, 2, paladinW
	beq $t0, 3, jackieW
	
	rogueW:
		li $v0, 4
		la $a0, rogueName
		syscall
		
		la $a0, vs
		syscall
		
		la $a0, evilWizard
		syscall
		
		la $a0, newline
		syscall
		
		rogueFightW:
		
			la $a0, actionChoice
			syscall
		
			la $a0, newline
			syscall
		
			la $a0, action1
			syscall
		
			la $a0, newline
			syscall
		
			la $a0, action2
			syscall
			
			la $a0, newline
			syscall
			syscall
		
			la $a0, actionQ
			syscall
			
			li $v0, 5
			syscall
			add $s6, $v0, $zero
			
			beq $s6, 1, rogueATK
			beq $s6, 2, rogueSpell
			
			rogueATK:
				
				li $v0, 4		#ROGUE ATTACK TURN
				la $a0, rogueName
				syscall
				
				la $a0, attacks
				syscall
					
				li $v0, 1
				move $a0, $t3
				syscall
					
				li $v0, 4
				la $a0, plus
				syscall
					
				randomInt $t4, $t5	#DAMAGE ROLL
					
				add $s3, $s1, $t3
					
				li $v0, 1
				move $a0, $s1
				syscall 
					
				li $v0, 4
				la $a0, equals
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
					
				la $a0, wizardName
				syscall
					
				la $a0, HP_Report
				syscall
					
				li $v0, 1 
				move $a0, $t6
				syscall
					
				li $v0, 4
				la $a0, minus
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, equals
				syscall
					
				sub $t6, $t6, $s3
					
				li $v0, 1
				move $a0, $t6
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
				syscall
				
				blt $t6, 1, wizardKilled
				
				wizardTurnR:
				
				li $v0, 4		#wizard ATTACK TURN
				la $a0, wizardName
				syscall
				
				la $a0, attacks
				syscall
					
				li $v0, 1
				move $a0, $t7
				syscall
					
				li $v0, 4
				la $a0, plus
				syscall
					
				randomInt $t8, $t9	#DAMAGE ROLL
					
				add $s3, $s1, $t7
					
				li $v0, 1
				move $a0, $s1
				syscall 
					
				li $v0, 4
				la $a0, equals
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
					
				la $a0, rogueName
				syscall
					
				la $a0, HP_Report
				syscall
					
				li $v0, 1 
				move $a0, $t2
				syscall
					
				li $v0, 4
				la $a0, minus
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, equals
				syscall
					
				sub $t2, $t2, $s3
					
				li $v0, 1
				move $a0, $t2
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
				syscall
				
				blt $t2, 1, rogueKilledW
				
				j rogueFightW
				
			rogueSpell:
				li $v0, 4
				la $a0, spellGuess
				syscall
				
				li $v0, 5
				syscall
				add $s7, $v0, $zero
				
				li $v0, 4
				la $a0, newline
				syscall
				
				beq $s7, $s5, rogueCorrectSpell
				
				li $v0, 4
				la $a0, newline
				syscall
				
				la $a0, failedSpell
				syscall
				
				li $v0, 4
				la $a0, newline
				syscall
				
				j wizardTurnR
				
				rogueCorrectSpell:
				
				li $v0, 4
				la $a0, correct
				syscall
				
				la $a0, newline
				syscall
				syscall
				
				la $a0, the
				syscall
				
				la $a0, rogueName
				syscall
				
				la $a0, correctSpell
				syscall
				
				la $a0, newline
				syscall
				syscall
				
				j wizardKilled
				
				rogueKilledW:
					li $v0, 4
					la $a0, dashes
					syscall
					
					la $a0, rogueName
					syscall
					
					la $a0, battleLost
					syscall
					
					la $a0, newline
					syscall
					syscall
					
					la $a0, gameOverMsg
					syscall
					
					li $s4, 1
				
					j wizardEnd
		
	paladinW:
		li $v0, 4
		la $a0, paladinName
		syscall
		
		la $a0, vs
		syscall
		
		la $a0, evilWizard
		syscall
		
		la $a0, newline
		syscall
		
		paladinFightW:
		
			la $a0, actionChoice
			syscall
		
			la $a0, newline
			syscall
		
			la $a0, action1
			syscall
		
			la $a0, newline
			syscall
		
			la $a0, action2
			syscall
			
			la $a0, newline
			syscall
			syscall
		
			la $a0, actionQ
			syscall
			
			li $v0, 5
			syscall
			add $s6, $v0, $zero
			
			beq $s6, 1, paladinATK
			beq $s6, 2, paladinSpell
			
			paladinATK:
				
				li $v0, 4		#paladin ATTACK TURN
				la $a0, paladinName
				syscall
				
				la $a0, attacks
				syscall
					
				li $v0, 1
				move $a0, $t3
				syscall
					
				li $v0, 4
				la $a0, plus
				syscall
					
				randomInt $t4, $t5	#DAMAGE ROLL
					
				add $s3, $s1, $t3
					
				li $v0, 1
				move $a0, $s1
				syscall 
					
				li $v0, 4
				la $a0, equals
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
					
				la $a0, wizardName
				syscall
					
				la $a0, HP_Report
				syscall
					
				li $v0, 1 
				move $a0, $t6
				syscall
					
				li $v0, 4
				la $a0, minus
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, equals
				syscall
					
				sub $t6, $t6, $s3
					
				li $v0, 1
				move $a0, $t6
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
				syscall
				
				blt $t6, 1, wizardKilled
				
				wizardTurnP:
				
				li $v0, 4		#wizard ATTACK TURN
				la $a0, wizardName
				syscall
				
				la $a0, attacks
				syscall
					
				li $v0, 1
				move $a0, $t7
				syscall
					
				li $v0, 4
				la $a0, plus
				syscall
					
				randomInt $t8, $t9	#DAMAGE ROLL
					
				add $s3, $s1, $t7
					
				li $v0, 1
				move $a0, $s1
				syscall 
					
				li $v0, 4
				la $a0, equals
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
					
				la $a0, paladinName
				syscall
					
				la $a0, HP_Report
				syscall
					
				li $v0, 1 
				move $a0, $t2
				syscall
					
				li $v0, 4
				la $a0, minus
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, equals
				syscall
					
				sub $t2, $t2, $s3
					
				li $v0, 1
				move $a0, $t2
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
				syscall
				
				blt $t2, 1, paladinKilledW
				
				j paladinFightW
				
			paladinSpell:
				li $v0, 4
				la $a0, spellGuess
				syscall
				
				li $v0, 5
				syscall
				add $s7, $v0, $zero
				
				li $v0, 4
				la $a0, newline
				syscall
				
				beq $s7, $s5, paladinCorrectSpell
				
				li $v0, 4
				la $a0, newline
				syscall
				
				la $a0, failedSpell
				syscall
				
				li $v0, 4
				la $a0, newline
				syscall
				
				j wizardTurnP
				
				paladinCorrectSpell:
				
				li $v0, 4
				la $a0, correct
				syscall
				
				la $a0, newline
				syscall
				syscall
				
				la $a0, the
				syscall
				
				la $a0, paladinName
				syscall
				
				la $a0, correctSpell
				syscall
				
				la $a0, newline
				syscall
				syscall
				
				j wizardKilled
				
				paladinKilledW:
					li $v0, 4
					la $a0, dashes
					syscall
					
					la $a0, paladinName
					syscall
					
					la $a0, battleLost
					syscall
					
					la $a0, newline
					syscall
					syscall
					
					la $a0, gameOverMsg
					syscall
					
					li $s4, 1
				
					j wizardEnd
	jackieW:
		li $v0, 4
		la $a0, jackieName
		syscall
		
		la $a0, vs
		syscall
		
		la $a0, evilWizard
		syscall
		
		la $a0, newline
		syscall
		
		jackieFightW:
		
			la $a0, actionChoice
			syscall
		
			la $a0, newline
			syscall
		
			la $a0, action1
			syscall
		
			la $a0, newline
			syscall
		
			la $a0, action2
			syscall
			
			la $a0, newline
			syscall
			syscall
		
			la $a0, actionQ
			syscall
			
			li $v0, 5
			syscall
			add $s6, $v0, $zero
			
			beq $s6, 1, jackieATK
			beq $s6, 2, jackieSpell
			
			jackieATK:
				
				li $v0, 4		#jackie ATTACK TURN
				la $a0, jackieName
				syscall
				
				la $a0, attacks
				syscall
					
				li $v0, 1
				move $a0, $t3
				syscall
					
				li $v0, 4
				la $a0, plus
				syscall
					
				randomInt $t4, $t5	#DAMAGE ROLL
					
				add $s3, $s1, $t3
					
				li $v0, 1
				move $a0, $s1
				syscall 
					
				li $v0, 4
				la $a0, equals
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
					
				la $a0, wizardName
				syscall
					
				la $a0, HP_Report
				syscall
					
				li $v0, 1 
				move $a0, $t6
				syscall
					
				li $v0, 4
				la $a0, minus
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, equals
				syscall
					
				sub $t6, $t6, $s3
					
				li $v0, 1
				move $a0, $t6
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
				syscall
				
				blt $t6, 1, wizardKilled
				
				wizardTurnJ:
				
				li $v0, 4		#wizard ATTACK TURN
				la $a0, wizardName
				syscall
				
				la $a0, attacks
				syscall
					
				li $v0, 1
				move $a0, $t7
				syscall
					
				li $v0, 4
				la $a0, plus
				syscall
					
				randomInt $t8, $t9	#DAMAGE ROLL
					
				add $s3, $s1, $t7
					
				li $v0, 1
				move $a0, $s1
				syscall 
					
				li $v0, 4
				la $a0, equals
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
					
				la $a0, jackieName
				syscall
					
				la $a0, HP_Report
				syscall
					
				li $v0, 1 
				move $a0, $t2
				syscall
					
				li $v0, 4
				la $a0, minus
				syscall
					
				li $v0, 1
				move $a0, $s3
				syscall
					
				li $v0, 4
				la $a0, equals
				syscall
					
				sub $t2, $t2, $s3
					
				li $v0, 1
				move $a0, $t2
				syscall
					
				li $v0, 4
				la $a0, newline
				syscall
				syscall
				
				blt $t2, 1, jackieKilledW
				
				j jackieFightW
				
			jackieSpell:
				li $v0, 4
				la $a0, spellGuess
				syscall
				
				li $v0, 5
				syscall
				add $s7, $v0, $zero
				
				li $v0, 4
				la $a0, newline
				syscall
				
				beq $s7, $s5, jackieCorrectSpell
				
				li $v0, 4
				la $a0, newline
				syscall
				
				la $a0, failedSpell
				syscall
				
				li $v0, 4
				la $a0, newline
				syscall
				
				j wizardTurnJ
				
				jackieCorrectSpell:
				
				li $v0, 4
				la $a0, correct
				syscall
				
				la $a0, newline
				syscall
				syscall
				
				la $a0, the
				syscall
				
				la $a0, jackieName
				syscall
				
				la $a0, correctSpell
				syscall
				
				la $a0, newline
				syscall
				syscall
				
				j wizardKilled
				
				jackieKilledW:
					li $v0, 4
					la $a0, dashes
					syscall
					
					la $a0, jackieName
					syscall
					
					la $a0, battleLost
					syscall
					
					la $a0, newline
					syscall
					syscall
					
					la $a0, gameOverMsg
					syscall
					
					li $s4, 1
				
					j wizardEnd
	
	wizardKilled:
		li $v0, 4
		la $a0, dashes
		syscall
		
		beq $t0, 1, rogueWin
		beq $t0, 2, paladinWin
		beq $t0, 3, jackieWin
			
		rogueWin:
			la $a0, rogueName
			syscall
			
			j wizardEndText
			
		paladinWin:
			la $a0, paladinName
			syscall
			
			j wizardEndText
			
		jackieWin:
			la $a0, jackieName
			syscall
			
		wizardEndText:
		
		li $v0, 4
		la $a0, battleWon
		syscall
		
		la $a0, newline
		syscall
		syscall
		
	wizardEnd:
	
.end_macro

.data
	welcome: 	.asciiz "Adventure Game - Start!"
	newline: 	.asciiz "\n"
	characters:	.asciiz "Here are the characters."
	rogue: 		.asciiz "1. Rouge"
	paladin: 	.asciiz "2. Paladin"
	jackie: 	.asciiz "3. Jackie Chan"
	characterQ: 	.asciiz "Which character do you choose?: "
	youChose: 	.asciiz "You chose: "
	rogueName: 	.asciiz "Rogue "
	paladinName: 	.asciiz "Paladin "
	jackieName: 	.asciiz "Jackie Chan "
	wizardIntro1: 	.asciiz "The Evil Wizard must be defeated! He is in The Castle. To get to"
	wizardIntro2: 	.asciiz "The Castle, you must travel through either:"
	wizardIntro3: 	.asciiz "1. The Forest"
	wizardIntro4: 	.asciiz "2. The Graveyard"
	pathQ: 		.asciiz "Which path will you take? "
	forest: 	.asciiz "The Forest"
	graveyard: 	.asciiz "The Graveyard"
	forestEncounter: .asciiz "Once you enter The Forest, you encounter 3 Goblins! Time for battle!"
	graveyardEncounter: .asciiz "Once you enter The Graveyard, you encounter 5 Skeletons! Time for battle!"
	stars: 		.asciiz "***"
	vs:		.asciiz "vs "
	goblinName:	.asciiz "Goblin "
	skeletonName: 	.asciiz "Skeleton "
	attacks:	.asciiz "attacks with ATK = "
	HP_Report:	.asciiz "HP is now "
	plus:		.asciiz " + "
	minus: 		.asciiz " - "
	equals:		.asciiz " = "
	defeated:	.asciiz "defeated "
	exclamation:	.asciiz "!"
	dashes:		.asciiz "--"
	battleWon:	.asciiz "wins the battle!--"
	battleLost:	.asciiz "is defeated in battle!--"
	gameOverMsg: 	.asciiz "GAME OVER"
	HP_ReadOut:	.asciiz "Your HP is: "
	rewardText:	.asciiz "Please choose a reward."
	reward1:	.asciiz "1. Healing Potion"
	reward2:	.asciiz "2. Ring of Strength"
	rewardQ:	.asciiz "Which item do you choose?: "
	HP_Increase: 	.asciiz "Your HP has increased to "
	STR_Increase: 	.asciiz "Your Strength has increased to "
	HP_Potion:	.asciiz "Healing Potion "
	Ring_of_STR:	.asciiz "Ring of Strength "
	castleIntro: 	.asciiz "You have reached The Castle! Time to batlle The Evil Wizard!"
	evilWizard: 	.asciiz "The Evil Wizard***"
	wizardName: 	.asciiz "Wizard "
	actionChoice: 	.asciiz "Choose your action: "
	action1:	.asciiz "1. Attack"
	action2: 	.asciiz "2. Attempt Spell Cast"
	actionQ:	.asciiz "What would you like to do?: "
	spellGuess: 	.asciiz "Enter your guess (1-5): "
	failedSpell:	.asciiz "The spell cast failed! No damage is dealt to The Wizard!"
	the:		.asciiz "The "
	correctSpell:	.asciiz "'s spell is cast successfully! The Wizard's HP is now 0!"
	correct:	.asciiz "Correct!"
	congrats: 	.asciiz "You win! Congratulations!"
	
.text 
	seedRNG
	gameWelcome
	pickCharacter
	pathChoice
	firstBattle
	beq $s4, 1, finishLoss
	pickItem
	wizardFight
	beq $s4, 1, finishLoss
	
	finishWin:
		li $v0, 4
		la $a0, congrats
		syscall
	
	finishLoss:
		li $v0, 10
		syscall
