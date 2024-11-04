#CS 2640
#Program #1
#11/1/2024
#Kripa Sigdel

.data
prompt1: .asciiz "Please enter an int: "
prompt2: .asciiz "Please enter another int: "
output: .asciiz "Your numbers were: "
space: .asciiz " and "
addition: .asciiz "\nAddition: "
subtraction: .asciiz "\nSubtraction: "
multiplication: .asciiz "\nMultiplication: "
division: .asciiz "\nDivision: "
equalOutput: .asciiz "\nUser inputs are the same"
unequalOutput: .asciiz "\nUser inputs are different"

.text
main:

#part 1
	
	#printing prompt1
	li $v0, 4
	la $a0, prompt1
	syscall
	
	#get the input
	li $v0, 5
	syscall
	move $s0, $v0
	
	#printing prompt2
	li $v0, 4
	la $a0, prompt2
	syscall
	
	#get the input
	li $v0, 5
	syscall
	move $s1, $v0
	
	#print statement for result
	li $v0, 4
	la $a0, output
	syscall
	
	#print int 1
	move $a0, $s0
	li $v0, 1
	syscall
	
	#print and between numbers
	li $v0, 4
	la $a0, space
	syscall
	
	#print int 2
	move $a0, $s1
	li $v0, 1
	syscall
	
#part 2
	
	#add int1 and int2
	add $s2, $s0, $s1
	
	#print message
	li $v0, 4
	la $a0, addition
	syscall
	
	#print operation result
	move $a0, $s2
	li $v0, 1
	syscall
	
	#subtract int1 and int2
	sub $s3, $s0, $s1
	
	#print message
	li $v0, 4
	la $a0, subtraction
	syscall
	
	#print operation result
	move $a0, $s3
	li $v0, 1
	syscall
	
	#multiply int1 and int2
	mul $s4, $s0, $s1
	
	#print message
	li $v0, 4
	la $a0, multiplication
	syscall
	
	#print operation result
	move $a0, $s4
	li $v0, 1
	syscall
	
	#divide int1 and int2
	div $s5, $s0, $s1
	
	#print message
	li $v0, 4
	la $a0, division
	syscall
	
	#print operation result
	move $a0, $s5
	li $v0, 1
	syscall
	
#part 3

	beq $s0, $s1, equal
	bne $s0, $s1, nonequal
	
equal:
	li $v0, 4
	la $a0, equalOutput
	syscall
	
	#exit syscall
	li $v0, 10
	syscall
	
nonequal:
	li $v0, 4
	la $a0, unequalOutput
	syscall

	#exit program
	li $v0, 10
	syscall
