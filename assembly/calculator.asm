# Name: Ida Voong
# Name: Jenna Chan
			.global main
	.text
main:
	li s0, 'n'	# compare y/n
	li s1, 0	# num of operations done
	li s2, 1	# compare operation
	li s3, 0	# user operation select
	# prints welcome message
	la a0, welcome	
	jal printstring
	# prints options for operations
	la a0, oper
	jal printstring
program_loop:
	# prints numOper
	la a0, numOper
	jal printstring
	# prints # of operations done
	mv a0, s1
	jal printint
	# prompt user for 1st number
	la a0, num1
	jal printstring
	jal readint
	mv s4, a0	# store num1 in s4
	# prompt user for 2nd number
	la a0, num2
	jal printstring
	jal readint
	mv s5, a0	# store num2 in t1
	# prmopt user to choose operation
	la a0, chooseOper
	jal printstring
	jal readint
	mv s3, a0	# store chosen operation in s3
	# print "Result: "
	la a0,result
	jal printstring
if_add:	
	# moving 2 numbers into a0 and a1 
	# calling subroutine and printing result
	bne s2, s3, if_sub
	mv a0, s4		
	mv a1, s5
	jal addnums
	jal printint
	b end_if
if_sub:
	# moving 2 numbers into a0 and a1 
	# calling subroutine and printing result
	addi s2, s2, 1
	bne s2, s3, if_mult
	mv a0, s4		
	mv a1, s5
	jal subnums
	jal printint
	b end_if
if_mult:
	# moving 2 numbers into a0 and a1 
	# calling subroutine and printing result
	addi s2, s2, 1
	bne s2, s3, if_div
	mv a0, s4		
	mv a1, s5
	jal multnums
	jal printint
	b end_if
if_div:
	# moving 2 numbers into a0 and a1 
	# calling subroutine and printing result
	addi s2, s2, 1
	bne s2, s3, if_and
	mv a0, s4		
	mv a1, s5
	jal divnums
	jal printint
	b end_if
if_and:
	# moving 2 numbers into a0 and a1 
	# calling subroutine and printing result
	addi s2, s2, 1
	bne s2, s3, if_or
	mv a0, s4		
	mv a1, s5
	jal andnums
	jal printint
	b end_if
if_or:
	# moving 2 numbers into a0 and a1 
	# calling subroutine and printing result
	addi s2, s2, 1
	bne s2, s3, if_xor
	mv a0, s4		
	mv a1, s5
	jal ornums
	jal printint
	b end_if
if_xor:
	# moving 2 numbers into a0 and a1 
	# calling subroutine and printing result
	addi s2, s2, 1
	bne s2, s3, if_lShift
	mv a0, s4		
	mv a1, s5
	jal xornums
	jal printint
	b end_if
if_lShift:
	# moving 2 numbers into a0 and a1 
	# calling subroutine and printing result
	addi s2, s2, 1
	bne s2, s3, if_rShift
	mv a0, s4		
	mv a1, s5
	jal lshiftnums
	jal printint
	b end_if
if_rShift:
	# moving 2 numbers into a0 and a1 
	# calling subroutine and printing result
	addi s2, s2, 1
	bne s2, s3, if_other
	mv a0, s4		
	mv a1, s5
	jal rshiftnums
	jal printint
	b end_if
if_other:
	# printing invalid statement
	la a0, invalid
	jal printstring
	b end_if
end_if:		
	# ask if user wants to continue
	la a0, continue
	jal printstring
	jal readchar
	# edit variables
	addi s1, s1, 1
	li s2, 1
	li s3, 0
	beq a0, s0, end_program_loop # check if user input 'n'
	b program_loop
end_program_loop:
	# prints number of operations done
	la a0, numOper
	jal printstring
	mv a0, s1
	jal printint
	# exit program
	la a0, exit
	jal printstring
	jal exit0
	
	.data	
welcome:	.string "Welcome to the Calculator program.\n"
oper:		.string "Operations - 1:add 2:subtract 3:multiply 4:divide 5:and 6:or 7:xor 8:lshift 9:rshift"
numOper:	.string "\n\nNumber of operations performed: "
num1: 		.string "\nEnter number: "
num2:		.string "Enter second number: "
chooseOper:	.string "Select operation: "
result:		.string "Result: "
invalid:	.string "Invalid Operation"
continue:	.string "\nContinue (y/n)?: "
exit:		.string "\nExiting"
